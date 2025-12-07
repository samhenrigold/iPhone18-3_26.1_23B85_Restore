uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 >= *(result + 2))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 2) < *(result + 2))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 2) < *(result + 2))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 2) < *(a3 + 2))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 2) < *(a2 + 2))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 2) < *(result + 2))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 12);
      v7 = *(a1 + 20);
      v8 = *(a2 - 1);
      if (v7 < *(a1 + 8))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 1) >= *(a1 + 20))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 1);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 1);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 1);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 1) = v23;
LABEL_50:
      if (*(a1 + 20) < *(a1 + 8))
      {
        v55 = *(a1 + 8);
        v56 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v56;
        *(a1 + 20) = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,buildHierarchy(NSArray<NSString *> *,std::vector<simd_float4x4> const&,std::vector<simd_float4x4>&)::$_0 &,TopSortElement *,0>(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
      return 1;
    }

    v18 = *(a1 + 20);
    v19 = *(a1 + 8);
    v20 = *(a1 + 32);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 20) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v47 = *(a1 + 8);
      v48 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v48;
      *(a1 + 20) = v47;
      if (v20 >= *(a1 + 20))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 1) >= *(a1 + 32))
    {
      return 1;
    }

    v49 = a2 - 12;
    v50 = *(a1 + 32);
    v51 = *(a1 + 24);
    v52 = *(a2 - 1);
    *(a1 + 24) = *(a2 - 12);
    *(a1 + 32) = v52;
    *v49 = v51;
    *(v49 + 8) = v50;
    if (*(a1 + 32) >= *(a1 + 20))
    {
      return 1;
    }

    v53 = *(a1 + 20);
    v54 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v54;
    *(a1 + 32) = v53;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < *(a1 + 8))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 1);
      *a1 = *(a2 - 12);
      *(a1 + 8) = v5;
      *(a2 - 12) = v4;
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 24);
  v13 = *(a1 + 20);
  v14 = *(a1 + 8);
  v15 = *(a1 + 32);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 20) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 20))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v39 + 2);
    if (v42 < *(v12 + 2))
    {
      v43 = *v39;
      v44 = v40;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 36) = *(a1 + v44 + 24);
        *(v45 + 44) = *(a1 + v44 + 32);
        if (v44 == -24)
        {
          break;
        }

        v44 -= 12;
        if (v42 >= *(v45 + 20))
        {
          v46 = a1 + v44 + 36;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v43;
      *(v46 + 8) = v42;
      if (++v41 == 8)
      {
        return (v39 + 12) == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 = (v39 + 12);
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t findStringInArray(void *a1, void *a2)
{
  v4 = 999999;
  if ([a2 count])
  {
    v5 = 0;
    while (([a1 isEqualToString:{objc_msgSend(a2, "objectAtIndexedSubscript:", v5)}] & 1) == 0)
    {
      if (++v5 >= [a2 count])
      {
        return v4;
      }
    }

    return v5;
  }

  return v4;
}

uint64_t *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<PCVector2<double>>::__vallocate[abi:ne200100](a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

void sub_260135ED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_260135F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SceneInfo::~SceneInfo(SceneInfo *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void sub_260136038(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<OZLi3DEngineTexturedObjectData>::shared_ptr[abi:ne200100]<OZLi3DEngineTexturedObjectData,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<Li3DEngineObjectData *,std::shared_ptr<Li3DEngineObjectData>::__shared_ptr_default_delete<Li3DEngineObjectData,Li3DEngineObjectData>,std::allocator<Li3DEngineObjectData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<Li3DEngineObjectData *,std::shared_ptr<Li3DEngineObjectData>::__shared_ptr_default_delete<Li3DEngineObjectData,Li3DEngineObjectData>,std::allocator<Li3DEngineObjectData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::vector<PCURL>::__init_with_size[abi:ne200100]<PCURL*,PCURL*>(uint64_t *result, PCURL *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PCString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_260136128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PCURL>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

PCURL *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PCURL>,PCURL*,PCURL*,PCURL*>(int a1, CFURLRef *a2, CFURLRef *a3, PCURL *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      PCURL::PCURL(this, v6++);
      this = (this + 8);
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_2601361A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      PCURL::~PCURL(v4);
      v4 = (v5 - 8);
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28728D190;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::operator()(uint64_t a1, NSString **a2, uint64_t a3, unsigned int *a4, unsigned int *a5, id *a6)
{
  v6 = *a2;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  v10 = *(a1 + 8);
  v11 = [*a6 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet", a3)}];
  if (![v11 count])
  {
    [v9 length];
    return 1;
  }

  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v9 length];
  if (!v12)
  {
    return 1;
  }

  v14 = v13;
  if (![v12 isEqualToString:@"mtllib"])
  {
    return 1;
  }

  v15 = [v11 count];
  if (v15 < 2)
  {
    return 0;
  }

  v16 = v15;
  v26 = v14;
  v27 = v7;
  v17 = v15 - 1;
  v18 = &stru_2872E16E0;
  v19 = 2;
  v20 = 1;
  do
  {
    v21 = -[__CFString stringByAppendingString:](v18, "stringByAppendingString:", [v11 objectAtIndexedSubscript:v20]);
    v18 = v21;
    if (v17 > v20)
    {
      v18 = [(__CFString *)v21 stringByAppendingString:@" "];
    }

    v20 = v19;
  }

  while (v16 > v19++);
  if (!v18)
  {
    return 0;
  }

  result = [(__CFString *)v18 length];
  if (result)
  {
    v24 = [AbsoluteNSURL(&v18->isa v6)];
    [*(v10 + 376) setObject:objc_msgSend(v24 forKeyedSubscript:{"path"), v18}];
    PCURL::PCURL(&v28, v24);
    std::vector<PCURL>::push_back[abi:ne200100](*(v10 + 176), &v28);
    [*(v10 + 352) addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v27)}];
    v25 = objc_opt_new();
    [v25 setLineByteOffset:v8];
    [v25 setNextLineByteOffset:v8 + v26 + 1];
    [*(v10 + 360) setObject:v25 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v27)}];

    PCURL::~PCURL(&v28);
    return 1;
  }

  return result;
}

void sub_260136478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_0>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28728D220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::operator()(uint64_t a1, NSString **a2, uint64_t *a3, unsigned int *a4, uint64_t a5, id *a6)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 8);
  v11 = [*a6 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")}];
  if ([v11 count])
  {
    v12 = [objc_msgSend(v11 objectAtIndexedSubscript:{0), "stringByReplacingOccurrencesOfString:withString:", @"\, @"/""}];
  }

  else
  {
    v12 = 0;
  }

  if ([v11 count] < 2)
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = [objc_msgSend(v11 objectAtIndexedSubscript:{1), "stringByReplacingOccurrencesOfString:withString:", @"\, @"/""}];
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  if (([v12 hasPrefix:@"map_"] & 1) == 0 && (objc_msgSend(v12, "hasPrefix:", @"disp") & 1) == 0 && (objc_msgSend(v12, "hasPrefix:", @"decal") & 1) == 0 && (objc_msgSend(v12, "hasPrefix:", @"bump") & 1) == 0 && !objc_msgSend(v12, "hasPrefix:", @"refl"))
  {
LABEL_24:
    if (!v13 || ![v13 hasPrefix:@"spectral"])
    {
      return 1;
    }

    if ([v11 count] >= 2)
    {
      result = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
      if (!result)
      {
        return result;
      }

      v20 = result;
      if ([objc_msgSend(result "pathExtension")])
      {
LABEL_31:
        result = [v20 length];
        if (!result)
        {
          return result;
        }

        v21 = [*(v10 + 384) objectForKeyedSubscript:v8];
        if (!v21)
        {
          v21 = objc_opt_new();
          [*(v10 + 384) setObject:v21 forKeyedSubscript:v8];
        }

        v22 = [AbsoluteNSURL(v20 v7)];
        v23 = [v22 path];
        if (**(a1 + 16) == 1)
        {
          ++**(a1 + 24);
          if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
          {
            ++**(a1 + 32);
          }
        }

        [v21 setObject:v23 forKeyedSubscript:v20];
        PCURL::PCURL(&v24, v22);
        std::vector<PCURL>::push_back[abi:ne200100](*(v10 + 176), &v24);
        v19 = [*(v10 + 368) objectForKeyedSubscript:v8];
        if (!v19)
        {
          v19 = objc_opt_new();
          [*(v10 + 368) setObject:v19 forKeyedSubscript:v8];
        }

        goto LABEL_23;
      }

      if ([v11 count] >= 3)
      {
        result = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 2}];
        v20 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_31;
      }
    }

    return 0;
  }

  if ([v11 count] < 2)
  {
    return 0;
  }

  result = [objc_msgSend(v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1), "stringByReplacingOccurrencesOfString:withString:", @"\, @"/""}];
  if (result)
  {
    v15 = result;
    result = [result length];
    if (result)
    {
      v16 = [*(v10 + 384) objectForKeyedSubscript:v8];
      if (!v16)
      {
        v16 = objc_opt_new();
        [*(v10 + 384) setObject:v16 forKeyedSubscript:v8];
      }

      v17 = [AbsoluteNSURL(v15 v7)];
      v18 = [v17 path];
      if (**(a1 + 16) == 1)
      {
        ++**(a1 + 24);
        if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
        {
          ++**(a1 + 32);
        }
      }

      [v16 setObject:v18 forKeyedSubscript:v15];
      PCURL::PCURL(&v24, v17);
      std::vector<PCURL>::push_back[abi:ne200100](*(v10 + 176), &v24);
      v19 = [*(v10 + 368) objectForKeyedSubscript:v8];
      if (!v19)
      {
        v19 = objc_opt_new();
        [*(v10 + 368) setObject:v19 forKeyedSubscript:v8];
      }

LABEL_23:
      [v19 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v9)}];
      PCURL::~PCURL(&v24);
      return 1;
    }
  }

  return result;
}

void sub_260136A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1,std::allocator<OZ3DEngineSceneFileImplOBJ::populateAssociatedURLs(BOOL)::$_1>,BOOL ()(NSString *,NSString *,unsigned int,unsigned int,NSString *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<simd_float4x4>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TXLineMetrics>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_260136C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OMVertex>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<simd_quatd>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_260136D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<simd_float4x4>::__assign_with_size[abi:ne200100]<simd_float4x4*,simd_float4x4*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
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

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TXLineMetrics>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
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

uint64_t *std::__tree<std::__value_type<int,PCBox<double>>,std::__map_value_compare<int,std::__value_type<int,PCBox<double>>,std::less<int>,true>,std::allocator<std::__value_type<int,PCBox<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 32);
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

OZChannelRef *OZRigEditModeEntry::OZRigEditModeEntry(OZChannelRef *a1, const std::string *a2)
{
  OZChannelRef::OZChannelRef(a1);
  OZChannelRef::operator=(v4, a2);
  *(a1 + 3) = a2[1].__r_.__value_.__l.__data_;
  return a1;
}

std::string *OZRigEditModeEntry::operator=(std::string *a1, const std::string *a2)
{
  OZChannelRef::operator=(a1, a2);
  a1[1].__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  return a1;
}

void OZRigWidget::OZRigWidget(OZRigWidget *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  *v5 = &unk_28728D2A0;
  v5[2] = &unk_28728D778;
  v5[6] = &unk_28728D9D0;
  v5[136] = 0;
  PCURL::PCURL(&v8, @"Rig Widget Options Folder");
  OZChannelFolder::OZChannelFolder((this + 1096), &v8, (this + 448), 0x67u, 0, 0);
  PCString::~PCString(&v8);
  *(this + 155) = 0;
  *(this + 1224) = 0u;
  PCString::PCString(&v8, "Hidden");
  Instance = OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(v6);
  OZChannelUint32::OZChannelUint32((this + 1248), 0, &v8, (this + 448), 0x66u, 0, Instance, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Rig Widget Snapshots");
  OZChannelFolder::OZChannelFolder((this + 1400), &v8, (this + 448), 0x65u, 2, 0);
  PCString::~PCString(&v8);
  *(this + 193) = 0;
  *(this + 1528) = 0u;
  *(this + 194) = this + 1552;
  *(this + 195) = this + 1552;
  *(this + 196) = 0;
  *(this + 394) = 1;
  *(this + 1581) = 0;
  *(this + 198) = this + 1584;
  *(this + 199) = this + 1584;
  *(this + 200) = 0;
  OZChannelBase::resetFlag((this + 56), 0x80000, 0);
  OZChannelBase::resetFlag((this + 1096), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1096));
}

void sub_260137198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1248));
  OZChannelFolder::~OZChannelFolder((v10 + 1096));
  OZSceneNode::~OZSceneNode(v10);
  _Unwind_Resume(a1);
}

void OZRigWidget::OZRigWidget(OZRigWidget *this, const OZRigWidget *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  *v5 = &unk_28728D2A0;
  *(v5 + 16) = &unk_28728D778;
  *(v5 + 48) = &unk_28728D9D0;
  OZChannelFolder::OZChannelFolder((v5 + 1096), (a2 + 1096), (this + 448));
  OZChannel::OZChannel((this + 1248), (a2 + 1248), (this + 448));
  *(this + 156) = &unk_287246400;
  *(this + 158) = &unk_287246760;
  OZChannelFolder::OZChannelFolder((this + 1400), (a2 + 1400), (this + 448));
  *(this + 193) = 0;
  *(this + 1528) = 0u;
  std::list<unsigned int>::list(this + 194, a2 + 1552);
  *(this + 394) = *(a2 + 394);
  *(this + 1580) = 0;
  *(this + 1581) = *(a2 + 1581);
  *(this + 198) = this + 1584;
  *(this + 199) = this + 1584;
  *(this + 200) = 0;
  *(this + 136) = 0;
  *(this + 153) = 0;
  *(this + 155) = 0;
  *(this + 154) = 0;
  if (*(a2 + 136))
  {
    OZRigWidget::copyWidget(this, a2);
  }
}

void sub_2601373A4(_Unwind_Exception *a1)
{
  std::__list_imp<OZRigEditModeEntry>::clear(v3);
  std::__list_imp<unsigned int>::clear((v1 + 1552));
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 1536) = v6;
    operator delete(v6);
  }

  OZChannelFolder::~OZChannelFolder((v1 + 1400));
  OZChannel::~OZChannel(v2);
  OZChannelFolder::~OZChannelFolder((v1 + 1096));
  OZSceneNode::~OZSceneNode(v1);
  _Unwind_Resume(a1);
}

void OZRigWidget::copyWidget(OZRigWidget *this, const OZRigWidget *a2)
{
  v4 = *(a2 + 153);
  if (v4)
  {
    v5 = (*(*v4 + 248))(v4);
    if (v5)
    {
    }

    *(this + 153) = v5;
    v6 = (*(**(a2 + 154) + 248))(*(a2 + 154));
    if (v6)
    {
    }

    *(this + 154) = v6;
    OZChannelFolder::push_back((this + 1096), *(this + 153));
    OZChannelFolder::push_back((this + 1096), *(this + 154));
    (*(**(this + 153) + 504))();
    (*(**(this + 154) + 504))();
  }

  v7 = *(a2 + 155);
  if (v7)
  {
    v8 = (*(*v7 + 248))(v7);
    if (v8)
    {
    }

    else
    {
      v9 = 0;
    }

    *(this + 155) = v9;
    OZChannelFolder::push_back((this + 1096), v9);
    (*(**(this + 155) + 504))(*(this + 155), 0, 0);
  }

  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = (*(*v10 + 248))(v10);
    *(this + 136) = v12;
    OZChannelFolder::push_back((this + 448), v12);
    if (*(this + 394) != 3)
    {
      (*(**(this + 136) + 504))(*(this + 136), 0, 0);
    }
  }

  OZChannelBase::operator=(this + 1248, a2 + 1248);
  *(this + 1581) = *(a2 + 1581);
  if (*(a2 + 191) != *(a2 + 192))
  {
    operator new();
  }
}

void OZRigWidget::~OZRigWidget(OZRigWidget *this)
{
  *this = &unk_28728D2A0;
  *(this + 2) = &unk_28728D778;
  *(this + 6) = &unk_28728D9D0;
  v2 = *(this + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 136) = 0;
  v3 = *(this + 153);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 153) = 0;
  v4 = *(this + 154);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 154) = 0;
  v5 = *(this + 155);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 155) = 0;
  v6 = *(this + 191);
  v7 = *(this + 192);
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(**v6 + 8))(*v6);
    }

    *v6++ = 0;
  }

  std::__list_imp<OZRigEditModeEntry>::clear(this + 198);
  std::__list_imp<unsigned int>::clear(this + 194);
  v8 = *(this + 191);
  if (v8)
  {
    *(this + 192) = v8;
    operator delete(v8);
  }

  OZChannelFolder::~OZChannelFolder((this + 1400));
  OZChannel::~OZChannel((this + 1248));
  OZChannelFolder::~OZChannelFolder((this + 1096));

  OZSceneNode::~OZSceneNode(this);
}

{
  OZRigWidget::~OZRigWidget(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRigWidget::~OZRigWidget(OZRigWidget *this)
{
  OZRigWidget::~OZRigWidget((this - 16));
}

{
  OZRigWidget::~OZRigWidget((this - 48));
}

{
  OZRigWidget::~OZRigWidget((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRigWidget::~OZRigWidget((this - 48));

  JUMPOUT(0x2666E9F00);
}

OZRigWidget *OZRigWidget::create(OZRigWidget *this, const PCString *a2)
{
  v2 = a2;
  v5 = xmmword_2603473B0;
  SceneNode = OZApplication::createSceneNode(theApp, &v5);
  OZRigWidget::setWidgetType(SceneNode, v2);
  return SceneNode;
}

uint64_t OZRigWidget::setWidgetType(OZRigWidget *this, int a2)
{
  *(this + 394) = a2;
  OZRigWidget::createValueChannelForType(this, a2);
  switch(a2)
  {
    case 3:
      operator new();
    case 2:
      PCURL::PCURL(&v6, @"Rig Widget Initial Entry");
      v4 = *(this + 136);
      if (v4)
      {
      }

      operator new();
    case 1:
      operator new();
  }

  return OZChannel::setValue((this + 1248), MEMORY[0x277CC08F0], 1.0, 0);
}

uint64_t OZRigWidget::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = *(a1 + 1088);
  if (v6)
  {
    (*(*a1 + 888))(a1, *(a1 + 1088));
    OZChannelFolder::removeDescendant((a1 + 448), *(a1 + 1088));
    v7 = *(a1 + 1088);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(a1 + 1088) = 0;
  }

  v8 = *(a1 + 1224);
  if (v8)
  {
    OZChannelFolder::removeDescendant((a1 + 1096), v8);
    OZChannelFolder::removeDescendant((a1 + 1096), *(a1 + 1232));
    v9 = *(a1 + 1224);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 1224) = 0;
    v10 = *(a1 + 1232);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *(a1 + 1232) = 0;
  }

  v11 = *(a1 + 1240);
  if (v11)
  {
    OZChannelFolder::removeDescendant((a1 + 1096), v11);
    v12 = *(a1 + 1240);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    *(a1 + 1240) = 0;
  }

  v13 = *(a1 + 1528);
  v14 = *(a1 + 1536);
  if (v13 != v14)
  {
    do
    {
      if (*v13)
      {
        (*(**v13 + 8))(*v13);
      }

      *v13++ = 0;
    }

    while (v13 != v14);
    v13 = *(a1 + 1528);
  }

  *(a1 + 1536) = v13;
  OZRigWidget::copyWidget(a1, v5);
  result = OZChannel::setValue((a1 + 1248), MEMORY[0x277CC08F0], 0.0, 0);
  if (v6 && *(a1 + 1088))
  {
    v16 = *(*a1 + 896);

    return v16(a1);
  }

  return result;
}

uint64_t OZRigWidget::deleteThis(OZRigWidget *this, OZChannelBase *a2)
{
  v4 = (*(*this + 272))(this);
  v14 = &v14;
  v15 = &v14;
  v16 = 0;
  if (v4)
  {
    v5 = v4;
    if ((*(*this + 640))(this) == a2 && (OZChannelBase::isObjectRef(v5[198]) & 1) == 0 && (OZChannelBase::isObjectRef(v5[198]) & 1) == 0 && &v14 != (this + 1552))
    {
      std::list<unsigned int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<unsigned int,void *>,std::__list_const_iterator<unsigned int,void *>>(&v14, *(this + 195), this + 1552);
    }

    v6 = v15;
    if (v16 && v15 != &v14)
    {
      do
      {
        Object = OZScene::getObject(v5, *(v6 + 4));
        if (Object)
        {
          if (v8)
          {
            v9 = v8;
            PCSharedCount::PCSharedCount(&v13);
            (*(v9[2] + 176))(v9 + 2, &v13, 2);
            PCString::~PCString(&v13);
            v10 = (*(*v9 + 312))(v9);
            (*(*v9 + 432))(v9, v10);
          }
        }

        v6 = v6[1];
      }

      while (v6 != &v14);
    }
  }

  v11 = OZSceneNode::deleteThis(this, a2);
  std::__list_imp<unsigned int>::clear(&v14);
  return v11;
}

void sub_26013832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZRigWidget::writeBody(OZRigWidget *this, PCSerializerWriteStream *a2, uint64_t a3, _BOOL4 a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZRigWidgetScope);
  v10 = *(this + 394);
  if (v10 != 4)
  {
    (*(*a2 + 16))(a2, 700);
    (*(*a2 + 56))(a2, v10);
    (*(*a2 + 24))(a2);
  }

  v11 = *(this + 191);
  v12 = *(this + 192);
  while (v11 != v12)
  {
    v13 = *v11++;
    v14 = *(v13 + 32);
    (*(*a2 + 16))(a2, 701);
    (*(*a2 + 56))(a2, v14);
    (*(*a2 + 24))(a2);
  }

  OZSceneNode::writeBody(this, a2, a3, a4, a5);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZRigWidget::parseBegin(OZRigWidget *this, PCSerializerReadStream *a2)
{
  v3 = OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZRigWidgetScope);
  return v3;
}

uint64_t non-virtual thunk toOZRigWidget::parseBegin(OZRigWidget *this, PCSerializerReadStream *a2)
{
  v3 = OZSceneNode::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZRigWidgetScope);
  return v3;
}

uint64_t OZRigWidget::parseElement(OZRigWidget *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = *(a3 + 2);
  if (v6 == 701)
  {
    v10 = 0;
    if (PCSerializerReadStream::getAsUInt32(a2, a3, &v10))
    {
      operator new();
    }
  }

  else if (v6 == 700)
  {
    v9[0] = 0;
    if (PCSerializerReadStream::getAsUInt32(a2, a3, v9))
    {
      v7 = v9[0];
      *(this + 394) = v9[0];
      if (v7 != 4)
      {
        OZRigWidget::createValueChannelForType(this, v7);
      }
    }
  }

  OZSceneNode::parseElement(this, a2, a3);
  return 1;
}

void OZRigWidget::createValueChannelForType(OZRigWidget *this, int a2)
{
  Name = OZObjectManipulator::getName((this + 16));
  PCString::PCString(&v6, Name);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      operator new();
    }

    if (a2 == 4)
    {
      operator new();
    }
  }

  else
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }
  }

  v5 = *(this + 136);
  if (v5)
  {
    OZChannelFolder::push_back((this + 448), v5);
  }

  PCString::~PCString(&v6);
}

void sub_260138AAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCString a10, PCString a11, PCString a12)
{
  MEMORY[0x2666E9F00](v12, 0x10E1C409BAC03F7, a3, a4, a5, a6, a7, a8);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

uint64_t OZRigWidget::parseEnd(OZChannel **this, PCSerializerReadStream *a2)
{
  if (*(this + 394) == 3)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble(this[153], MEMORY[0x277CC08F0], 0.0);
    v6 = v5;
    OZChannel::getValueAsDouble(this[154], v4, 0.0);
    v8 = v7;
    OZChannel::setOffset(this[136], v6);
    OZChannel::setScale(this[136], v8 - v6);
    OZChannelBase::setFlag(this[136], 256, 1);
  }

  v9 = this[136];
  if (v9)
  {
    (*(v9->var0 + 13))(v9, 1, 1);
  }

  return OZSceneNode::parseEnd(this, a2);
}

void OZRigWidget::allowDrag(uint64_t (***this)(OZRigWidget **), OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, unsigned int a7)
{
  *a5 = 0;
  v14 = *(a2 + 1);
  v17 = xmmword_260848360;
  if (OZFactory::isKindOfClass(v14, &v17) && (*this)[80](this) == a3)
  {
    if (OZRigWidget::CanRigChannel(v15, v16) && v15 != this[136] && v15 != this[153] && v15 != this[154] && v15 != this[155])
    {
      *a5 = a4 & 1;
      *a6 = 1;
    }
  }

  else
  {
    OZSceneNode::allowDrag(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t OZRigWidget::CanRigChannel(uint64_t this, const OZChannelBase *a2)
{
  if (this)
  {
    v2 = this;
    this = OZChannelBase::getObjectManipulator(this);
    if (this)
    {
      v4 = this;
      v5 = *(v2 + 1);
      if ((OZRigWidget::IsChannelRigged(v2, v3) & 1) != 0 || OZChannelBase::testFlag(v2, 8))
      {
        return 0;
      }

      v11 = xmmword_260848370;
      if ((OZFactory::isKindOfClass(v5, &v11) & 1) != 0 || (v11 = xmmword_2603484D0, this = OZFactory::isKindOfClass(v5, &v11), this))
      {
        v11 = xmmword_2608486B0;
        if (OZFactory::isKindOfClass(v5, &v11))
        {
          return 0;
        }

        ObjectManipulator = OZChannelBase::getObjectManipulator(v2);
        this = (*(*ObjectManipulator + 416))(ObjectManipulator, v2);
        if (this)
        {
          v11 = xmmword_260848610;
          if (OZFactory::isKindOfClass(v5, &v11))
          {
            return 0;
          }

          v11 = xmmword_260848620;
          if (OZFactory::isKindOfClass(v5, &v11))
          {
            return 0;
          }

          v11 = xmmword_260848630;
          if (OZFactory::isKindOfClass(v5, &v11))
          {
            return 0;
          }

          v11 = xmmword_260848600;
          if (OZFactory::isKindOfClass(v5, &v11))
          {
            return 0;
          }

          v7 = *((*(*v4 + 256))(v4) + 8);
          v11 = xmmword_2603473C0;
          if (OZFactory::isKindOfClass(v7, &v11))
          {
            return 0;
          }

          while (1)
          {
            v2 = *(v2 + 6);
            if (!v2)
            {
              break;
            }

            v8 = *(v2 + 1);
            v11 = xmmword_2608485A0;
            if (OZFactory::isKindOfClass(v8, &v11))
            {
              break;
            }

            v9 = *(v2 + 1);
            v11 = xmmword_260848700;
            isKindOfClass = OZFactory::isKindOfClass(v9, &v11);
            this = 0;
            if (isKindOfClass)
            {
              return this;
            }
          }

          return 1;
        }
      }
    }
  }

  return this;
}

uint64_t OZRigWidget::performDragOperation(OZRigWidget *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  if (lpsrc)
  {
  }

  else
  {
    v16 = 0;
  }

  if ((*(*this + 640))(this) == a3 && v16 != 0)
  {
    OZRigWidget::addChannel(this, v16, 0);
  }

  return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
}

void OZRigWidget::addChannel(OZRigWidget *this, OZChannelBase *a2, const OZChannelBase *a3)
{
  v5 = *((*(*this + 272))(this) + 1584);
  PCURL::PCURL(&v9, @"Rig Widget Undo Add Channel");
  OZChannelBase::setRangeName(v5, &v9);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Rig Widget Undo Add Channel");
  (*(*(this + 2) + 176))(this + 16, &v9, 0);
  PCString::~PCString(&v9);
  ObjectManipulator = OZChannelBase::getObjectManipulator(a2);
  v7 = (*(*ObjectManipulator + 232))(ObjectManipulator);
  PCURL::PCURL(&v9, @"Rig Widget Undo Add Channel");
  (*(*(v7 + 16) + 176))(v7 + 16, &v9, 0);
  PCString::~PCString(&v9);
  OZChannelBase::setRangeName(v5, v8);
  v9 = xmmword_2603473C0;
  OZApplication::createBehavior(theApp, &v9);
  operator new();
}

OZScene *OZRigWidget::dirty(OZRigWidget *this)
{
  OZSceneNode::dirty(this);
  result = (*(*this + 272))(this);
  if (result)
  {
    v3 = *(this + 195);
    if (v3 != (this + 1552))
    {
      v4 = result;
      do
      {
        result = OZScene::getObject(v4, *(v3 + 16));
        if (result)
        {
          if (result)
          {
            v5 = result;
            (*(*result + 352))(result);
            result = (*(*v5 + 320))(v5);
            if (result)
            {
              v6 = (*(*v5 + 320))(v5);
              result = (*(*v6 + 496))(v6);
            }
          }
        }

        v3 = *(v3 + 8);
      }

      while (v3 != (this + 1552));
    }
  }

  return result;
}

uint64_t OZRigWidget::didAddToScene(OZRigWidget *this, OZScene *a2)
{
  OZSceneNode::didAddToScene(this, a2);
  result = *(this + 136);
  if (result)
  {
    v4 = *(*result + 104);

    return v4();
  }

  return result;
}

void OZRigWidget::willRemoveFromScene(OZChannelBase *this, OZScene *a2)
{
  OZSceneNode::willRemoveFromScene(this, a2);
  if (*(*(a2 + 198) + 288) == this)
  {

    OZChannelBase::setRangeName(this, v4);
  }
}

void OZRigWidget::didUndoLastChange(OZRigWidget *this)
{
  OZSceneNode::didUndoLastChange(this);
  v2 = *((*(*this + 272))(this) + 1584);

  OZDocument::postNotification(v2, 0x80000);
}

void OZRigWidget::setName(OZRigWidget *this, const PCString *a2, int a3)
{
  OZObjectManipulator::setName((this + 16), a2, a3);
  if (a3)
  {
    v6 = *(this + 136);
    PCSharedCount::PCSharedCount(&v7);
    (*(*v6 + 344))(v6, &v7);
    PCString::~PCString(&v7);
  }

  OZChannelBase::setName(*(this + 136), a2, 0);
}

void OZRigWidget::getIconName(OZRigWidget *this@<X0>, PCURL *a2@<X8>)
{
  PCURL::PCURL(a2, @"M_LayersList_ObjectIconColor-RigSlider");
  v4 = *(this + 394) - 1;
  if (v4 < 3)
  {
    PCString::set(a2, off_279AAA2B8[v4]);
  }
}

void OZRigWidget::getIconNameBW(OZRigWidget *this@<X0>, PCURL *a2@<X8>)
{
  PCURL::PCURL(a2, @"M_LayersList_ObjectIconGrey-RigSlider");
  v4 = *(this + 394) - 1;
  if (v4 < 3)
  {
    PCString::set(a2, off_279AAA2D0[v4]);
  }
}

uint64_t OZRigWidget::getIconID(OZRigWidget *this)
{
  v1 = *(this + 394);
  if (v1 == 2)
  {
    v2 = 33;
  }

  else
  {
    v2 = 32;
  }

  if (v1 == 1)
  {
    return 34;
  }

  else
  {
    return v2;
  }
}

void OZRigWidget::getSnapshotIDsForValue(OZRigWidget *this, double a2, unsigned int *a3, unsigned int *a4, double *a5)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0.0;
  v9 = *(this + 394);
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v10 = *(this + 191);
        v11 = *(this + 192);
        if (v10 == v11)
        {
          return;
        }

        v12 = MEMORY[0x277CC08F0];
        while (1)
        {
          v13 = *v10;
          OZChannel::getValueAsDouble((*v10 + 136), v12, 0.0);
          if (vabdd_f64(v14, a2) < 0.0000001)
          {
            break;
          }

          if (++v10 == v11)
          {
            return;
          }
        }

LABEL_44:
        v26 = *(v13 + 32);
        goto LABEL_45;
      }

LABEL_25:
      PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZRigWidget.cpp", 1119);

      pcAbortImpl();
    }

    __y = 0.0;
    modf(a2, &__y);
    v26 = *(*(*(this + 191) + 8 * __y) + 32);
LABEL_45:
    *a3 = v26;
    *a5 = 0.0;
    return;
  }

  if (v9 == 3)
  {
    v27 = *(this + 191);
    v28 = *(this + 192);
    if (v27 == v28)
    {
      return;
    }

    v13 = *v27;
    OZChannel::getValueAsDouble((*v27 + 136), MEMORY[0x277CC08F0], 0.0);
    if (v29 >= a2)
    {
      v32 = 0;
LABEL_36:
      if (v32)
      {
LABEL_39:
        if (!v13)
        {
          v26 = *(v32 + 32);
          goto LABEL_45;
        }
      }
    }

    else
    {
      v30 = v27 + 1;
      v31 = MEMORY[0x277CC08F0];
      while (1)
      {
        v32 = v13;
        if (v30 == v28)
        {
          break;
        }

        v33 = *v30++;
        v13 = v33;
        OZChannel::getValueAsDouble((v33 + 136), v31, 0.0);
        if (v34 >= a2)
        {
          goto LABEL_36;
        }
      }

      v13 = 0;
      if (v32)
      {
        goto LABEL_39;
      }
    }

    if (!v13)
    {
      return;
    }

    if (!v32)
    {
      goto LABEL_44;
    }

    OZChannel::getValueAsDouble((v13 + 136), MEMORY[0x277CC08F0], 0.0);
    if (vabdd_f64(v35, a2) < 0.0000001)
    {
      goto LABEL_44;
    }

    v42 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((v32 + 136), MEMORY[0x277CC08F0], 0.0);
    v44 = v43;
    OZChannel::getValueAsDouble((v13 + 136), v42, 0.0);
    v41 = OZRigSnapshot::applyInterpolation(v32, (a2 - v44) / (v45 - v44));
    *a3 = *(v32 + 32);
    v40 = *(v13 + 32);
    goto LABEL_49;
  }

  if (v9 != 4)
  {
    goto LABEL_25;
  }

  v16 = *(this + 191);
  v17 = *(this + 192);
  if (v16 != v17)
  {
    v18 = 0;
    v19 = v16 + 8;
    v20 = MEMORY[0x277CC08F0];
    do
    {
      v21 = v18;
      v18 = *(v19 - 8);
      OZChannel::getValueAsDouble((v18 + 136), v20, 0.0);
      v24 = v22 >= a2 && v21 != 0 || v19 == v17;
      v19 += 8;
    }

    while (!v24);
    if (v18)
    {
      if (!v21 || (OZChannel::getValueAsDouble((v18 + 136), MEMORY[0x277CC08F0], 0.0), vabdd_f64(v25, a2) < 0.0000001))
      {
        v26 = *(v18 + 32);
        goto LABEL_45;
      }

      v36 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((v21 + 136), MEMORY[0x277CC08F0], 0.0);
      v38 = v37;
      OZChannel::getValueAsDouble((v18 + 136), v36, 0.0);
      *a3 = *(v21 + 32);
      v40 = *(v18 + 32);
      v41 = (a2 - v38) / (v39 - v38);
LABEL_49:
      *a4 = v40;
      *a5 = v41;
    }
  }
}

uint64_t OZRigWidget::getCurrentSnapshot(OZChannel **this)
{
  OZChannel::getValueAsDouble(this[136], MEMORY[0x277CC08F0], 0.0);

  return OZRigWidget::getSnapshotForValue(this, v2, 0.0000001);
}

uint64_t OZRigWidget::getSnapshotForValue(OZRigWidget *this, double a2, double a3)
{
  v3 = *(this + 191);
  v4 = *(this + 192);
  if (v3 == v4)
  {
    return 0;
  }

  v7 = MEMORY[0x277CC08F0];
  while (1)
  {
    v8 = *v3;
    OZChannel::getValueAsDouble((*v3 + 136), v7, 0.0);
    if (vabdd_f64(v9, a2) < a3)
    {
      break;
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t OZRigWidget::doPassThrough(OZRigWidget *this, const CMTime *a2)
{
  result = OZChannel::getValueAsInt((this + 1248), MEMORY[0x277CC08F0], 0.0);
  if (result)
  {
    for (i = *(this + 191); ; ++i)
    {
      if (i == *(this + 192))
      {
        return 0;
      }

      v6 = *i;
      if (*(*i + 32) == result)
      {
        break;
      }
    }

    OZChannel::getValueAsDouble(*(this + 136), a2, 0.0);
    v8 = v7;
    OZChannel::getValueAsDouble((v6 + 136), MEMORY[0x277CC08F0], 0.0);
    return vabdd_f64(v9, v8) < 0.0000001;
  }

  return result;
}

void OZRigWidget::getCurrentSnapshotIDs(OZChannel **this, const CMTime *a2, unsigned int *a3, unsigned int *a4, double *a5)
{
  OZChannel::getValueAsDouble(this[136], a2, 0.0);

  OZRigWidget::getSnapshotIDsForValue(this, v9, a3, a4, a5);
}

void OZRigWidget::willSetActiveSnapshot(OZRigWidget *this)
{
  PCSharedCount::PCSharedCount(&v9);
  OZChannelBase::addToUndo((this + 1248), &v9);
  PCString::~PCString(&v9);
  *(this + 1580) = 1;
  v2 = (*(*this + 272))(this);
  if (v2)
  {
    v3 = *(this + 195);
    if (v3 != (this + 1552))
    {
      v4 = v2;
      do
      {
        Object = OZScene::getObject(v4, *(v3 + 16));
        if (Object)
        {
          if (v6)
          {
            ChanBase = OZSingleChannelBehavior::getChanBase(v6);
            if (ChanBase)
            {
              v8 = ChanBase;
              PCSharedCount::PCSharedCount(&v9);
              (*(*v8 + 344))(v8, &v9);
              PCString::~PCString(&v9);
            }
          }
        }

        v3 = *(v3 + 8);
      }

      while (v3 != (this + 1552));
    }
  }
}

void OZRigWidget::setActiveSnapshot(OZRigWidget *this, int a2, int a3)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 1248), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt != a2)
  {
    v7 = ValueAsInt;
    if (OZChannelFolder::getDescendant((this + 1400), ValueAsInt))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(this + 1580);
    if ((v9 & 1) == 0)
    {
      OZRigWidget::willSetActiveSnapshot(this);
    }

    OZChannel::setValue((this + 1248), MEMORY[0x277CC08F0], a2, 0);
    v10 = (*(*this + 272))(this);
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + 1504);
      if (v12)
      {
        OZChannelBase::setRangeName(v12, 1);
      }

      v13 = this + 1552;
      v14 = *(this + 195);
      v26 = v9;
      if (v14 != (this + 1552))
      {
        if (v8)
        {
          v15 = a3;
        }

        else
        {
          v15 = 0;
        }

        do
        {
          Object = OZScene::getObject(v11, *(v14 + 16));
          if (Object)
          {
            if (v17)
            {
              v18 = v17;
              if (v15)
              {
                OZRigBehavior::copyTargetToSnapshot(v17, v8);
              }

              if (a2)
              {
                OZRigBehavior::copySnapshotToTarget(v18, a2);
              }
            }
          }

          v14 = *(v14 + 8);
        }

        while (v14 != v13);
        v14 = *(this + 195);
      }

      for (; v14 != v13; v14 = *(v14 + 8))
      {
        v19 = OZScene::getObject(v11, *(v14 + 16));
        if (v19)
        {
          if (v20)
          {
            v21 = v20;
            ChanBase = OZSingleChannelBehavior::getChanBase(v20);
            ObjectManipulator = OZChannelBase::getObjectManipulator(ChanBase);
            if (ObjectManipulator)
            {
              v24 = ObjectManipulator;
              {
                (*(*v25 + 240))(v25, v21);
              }
            }
          }
        }
      }

      if ((v26 & 1) == 0)
      {
        *(this + 1580) = 0;
      }
    }
  }
}

uint64_t OZRigWidget::registerRigBehavior(uint64_t this, OZRigBehavior *a2)
{
  v2 = *(a2 + 20);
  v3 = this + 1552;
  v4 = *(this + 1560);
  if (v4 == this + 1552)
  {
    goto LABEL_11;
  }

  v5 = *(this + 1560);
  while (*(v5 + 16) != v2)
  {
    v5 = *(v5 + 8);
    if (v5 == v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 == v5)
  {
LABEL_10:
    while (v4 != v3 && *(v4 + 16) <= v2)
    {
      v4 = *(v4 + 8);
    }

LABEL_11:
    operator new();
  }

  return this;
}

void OZRigWidget::unregisterRigBehavior(void *a1, uint64_t a2)
{
  v2 = a1 + 194;
  v3 = a1[195];
  if (v3 != a1 + 194)
  {
    while (*(v3 + 4) != *(a2 + 80))
    {
      v3 = v3[1];
      if (v3 == v2)
      {
        return;
      }
    }

    if (v2 != v3)
    {
      v5 = *v3;
      v4 = v3[1];
      *(v5 + 8) = v4;
      *v4 = v5;
      --a1[196];
      operator delete(v3);
    }
  }
}

OZScene *OZRigWidget::getRiggedNodeIDs(void *a1, uint64_t a2)
{
  result = (*(*a1 + 272))(a1);
  if (result)
  {
    v5 = a1[195];
    if (v5 != a1 + 194)
    {
      v6 = result;
      do
      {
        result = OZScene::getObject(v6, *(v5 + 16));
        if (result)
        {
          if (result)
          {
            result = OZSingleChannelBehavior::getAffectedObject(result);
            if (result)
            {
              result = (*(*result + 232))(result);
              if (result)
              {
                v7 = *(result + 20);
                result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, &v7, &v7);
              }
            }
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != a1 + 194);
    }
  }

  return result;
}

void OZRigWidget::willModifyChannel(OZRigWidget *this, const OZChannelBase *a2)
{
  var6 = a2->var6;
  v5 = a2;
  if (var6)
  {
    if ((*(*var6 + 120))(a2->var6))
    {
      v5 = var6;
    }

    else
    {
      v5 = a2;
    }
  }

  if ((a2->var7 & 2) == 0 && OZRigWidget::CanRigChannel(v5, a2) && *(this + 136) != a2)
  {
    OZChannelRef::OZChannelRef(v8, v5, 0);
    v9 = 0;
    v6 = this + 1584;
    for (i = *(this + 199); ; i = *(i + 8))
    {
      if (i == v6)
      {
        goto LABEL_13;
      }

      if (OZChannelRef::operator==((i + 16), v8))
      {
        break;
      }
    }

    if (v6 == i)
    {
LABEL_13:
      v9 = (*(v5->var0 + 31))(v5);
      std::__list_imp<OZRigEditModeEntry>::__create_node[abi:ne200100]<OZRigEditModeEntry const&>(this + 1584, 0, 0, v8);
    }

    OZChannelRef::~OZChannelRef(v8);
  }
}

uint64_t OZRigWidget::IsChannelRigged(OZRigWidget *this, const OZChannelBase *a2)
{
  if ((*(this + 57) & 0x10) != 0)
  {
    if (v6)
    {
      v7 = *v6;
      if (*v6 != v6[1])
      {
        do
        {
          IsChannelRigged = OZRigWidget::IsChannelRigged(*v7, v5);
          if (IsChannelRigged)
          {
            break;
          }

          ++v7;
        }

        while (v7 != v6[1]);
        return IsChannelRigged;
      }
    }

    return 0;
  }

  v10 = &v10;
  v11 = &v10;
  v12 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this, &v10, 1);
  v2 = v11;
  if (v11 == &v10)
  {
LABEL_5:
    std::__list_imp<unsigned int>::clear(&v10);
    return 0;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = *((*(*v3 + 344))(v3) + 8);
    v13 = xmmword_2603473C0;
    if (OZFactory::isKindOfClass(v4, &v13))
    {
      break;
    }

    v2 = v2[1];
    if (v2 == &v10)
    {
      goto LABEL_5;
    }
  }

  IsChannelRigged = (*(v3[2] + 24))(v3 + 2, 0, 1);
  std::__list_imp<unsigned int>::clear(&v10);
  return IsChannelRigged;
}

void sub_26013A8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *OZRigWidget::copyTargetChansToActiveSnapshot(OZRigWidget *this)
{
  v2 = (*(*this + 272))(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 1248), MEMORY[0x277CC08F0], 0.0);
  result = OZChannelFolder::getDescendant((this + 1400), ValueAsInt);
  if (!result)
  {
    ValueAsInt = 0;
  }

  if (ValueAsInt)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    for (i = *(this + 195); i != (this + 1552); i = *(i + 8))
    {
      result = OZScene::getObject(v2, *(i + 16));
      if (result)
      {
        if (result)
        {
          result = OZRigBehavior::copyTargetToSnapshot(result, ValueAsInt);
        }
      }
    }
  }

  return result;
}

uint64_t OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(void)::OZRigWidget_activeSnapshotIDChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(void)::OZRigWidget_activeSnapshotIDChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::_OZRigWidget_activeSnapshotIDChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_activeSnapshotIDChanImpl::_OZRigWidget_activeSnapshotIDChan)
  {
    operator new();
  }
}

void OZChannelUint32::OZChannelUint32(OZChannelUint32 *this, unsigned int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelUint32_FactoryBase = getOZChannelUint32_FactoryBase(this);
  OZChannel::OZChannel(this, OZChannelUint32_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287246400;
  this->var2 = &unk_287246760;
  OZChannelUint32Info = OZChannelUint32::createOZChannelUint32Info(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint32::_OZChannelUint32Info;
    this->var17 = OZChannelUint32::_OZChannelUint32Info;
  }

  this->var16 = var17;
  OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32Info);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint32::_OZChannelUint32Impl;
    this->var15 = OZChannelUint32::_OZChannelUint32Impl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void std::__list_imp<OZRigEditModeEntry>::clear(void **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        OZChannelRef::~OZChannelRef(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t OZRigWidget::OZRigWidget_valueDoubleImpl::getInstance(OZRigWidget::OZRigWidget_valueDoubleImpl *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_valueDoubleImpl::getInstance(void)::OZRigWidget_valueDoubleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_valueDoubleImpl::getInstance(void)::OZRigWidget_valueDoubleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueDoubleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_valueDoubleImpl::_OZRigWidget_valueDouble;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueDoubleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_valueDoubleImpl::_OZRigWidget_valueDouble)
  {
    operator new();
  }
}

uint64_t OZRigWidget::OZRigWidget_valueDoubleInfo::getInstance(OZRigWidget::OZRigWidget_valueDoubleInfo *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_valueDoubleInfo::getInstance(void)::OZRigWidget_valueDoubleInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_valueDoubleInfo::getInstance(void)::OZRigWidget_valueDoubleInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueDoubleInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_valueDoubleInfo::_OZRigWidget_valueDoubleInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueDoubleInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_valueDoubleInfo::_OZRigWidget_valueDoubleInfo)
  {
    operator new();
  }
}

OZRigWidget::OZRigWidget_valueDoubleInfo *OZRigWidget::OZRigWidget_valueDoubleInfo::OZRigWidget_valueDoubleInfo(OZRigWidget::OZRigWidget_valueDoubleInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 0.1, 0.01, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28728DB30;
  *(this + 10) = &unk_28728DB50;
  return this;
}

uint64_t OZRigWidget::OZRigWidget_pSliderMinChanImpl::getInstance(OZRigWidget::OZRigWidget_pSliderMinChanImpl *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_pSliderMinChanImpl::getInstance(void)::OZRigWidget_pSliderMinChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_pSliderMinChanImpl::getInstance(void)::OZRigWidget_pSliderMinChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_pSliderMinChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_pSliderMinChanImpl::_OZRigWidget_pSliderMinChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_pSliderMinChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_pSliderMinChanImpl::_OZRigWidget_pSliderMinChan)
  {
    operator new();
  }
}

uint64_t OZRigWidget::OZRigWidget_pSliderMaxChanImpl::getInstance(OZRigWidget::OZRigWidget_pSliderMaxChanImpl *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_pSliderMaxChanImpl::getInstance(void)::OZRigWidget_pSliderMaxChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_pSliderMaxChanImpl::getInstance(void)::OZRigWidget_pSliderMaxChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_pSliderMaxChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_pSliderMaxChanImpl::_OZRigWidget_pSliderMaxChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_pSliderMaxChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_pSliderMaxChanImpl::_OZRigWidget_pSliderMaxChan)
  {
    operator new();
  }
}

uint64_t OZRigWidget::OZRigWidget_valueAspectRatioImpl::getInstance(OZRigWidget::OZRigWidget_valueAspectRatioImpl *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_valueAspectRatioImpl::getInstance(void)::OZRigWidget_valueAspectRatioImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_valueAspectRatioImpl::getInstance(void)::OZRigWidget_valueAspectRatioImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueAspectRatioImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_valueAspectRatioImpl::_OZRigWidget_valueAspectRatio;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueAspectRatioImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_valueAspectRatioImpl::_OZRigWidget_valueAspectRatio)
  {
    operator new();
  }
}

uint64_t OZRigWidget::OZRigWidget_valueAspectRatioInfo::getInstance(OZRigWidget::OZRigWidget_valueAspectRatioInfo *this)
{
  if (atomic_load_explicit(&OZRigWidget::OZRigWidget_valueAspectRatioInfo::getInstance(void)::OZRigWidget_valueAspectRatioInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget::OZRigWidget_valueAspectRatioInfo::getInstance(void)::OZRigWidget_valueAspectRatioInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueAspectRatioInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget::OZRigWidget_valueAspectRatioInfo::_OZRigWidget_valueAspectRatioInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget::OZRigWidget_valueAspectRatioInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigWidget::OZRigWidget_valueAspectRatioInfo::_OZRigWidget_valueAspectRatioInfo)
  {
    operator new();
  }
}

OZRigWidget::OZRigWidget_valueAspectRatioInfo *OZRigWidget::OZRigWidget_valueAspectRatioInfo::OZRigWidget_valueAspectRatioInfo(OZRigWidget::OZRigWidget_valueAspectRatioInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.1, 2.0, 0.1, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28728DD10;
  *(this + 10) = &unk_28728DD30;
  return this;
}

uint64_t *std::list<unsigned int>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void OZ3DEngineSceneFile::OZ3DEngineSceneFile(OZ3DEngineSceneFile *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNodeFile::OZSceneNodeFile(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 1576));
  *this = &unk_28728DD88;
  *(this + 2) = &unk_28728E3D0;
  *(this + 6) = &unk_28728E628;
  *(this + 197) = &unk_28728E680;
  PCURL::PCURL(&v6, @"3D Scene File Inspector Linked Textures");
  OZChannelFolder::OZChannelFolder((this + 1600), &v6, (this + 448), 0x66u, 0, 0);
  PCString::~PCString(&v6);
  *(this + 216) = 0;
  OZChannelBase::setFlag((this + 1600), 8, 0);
  OZChannelFolder::setFoldFlag((this + 1600), 0x800000);
  OZChannelBase::resetFlag((this + 1600), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1600));
}

void sub_26013B964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBase::setRangeName(v11, v13);
  OZSceneNodeFile::~OZSceneNodeFile(v10);
  _Unwind_Resume(a1);
}

void OZ3DEngineSceneFile::OZ3DEngineSceneFile(OZ3DEngineSceneFile *this, OZ3DEngineSceneFile *a2, char a3)
{
  OZSceneNodeFile::OZSceneNodeFile(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 1576));
  *this = &unk_28728DD88;
  *(this + 2) = &unk_28728E3D0;
  *(this + 6) = &unk_28728E628;
  *(this + 197) = &unk_28728E680;
  OZChannelFolder::OZChannelFolder((this + 1600), (a2 + 1600), (this + 448));
  *(this + 216) = 0;
}

void sub_26013BA78(_Unwind_Exception *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(v3, a2);
  OZSceneNodeFile::~OZSceneNodeFile(v2);
  _Unwind_Resume(a1);
}

void OZ3DEngineSceneFile::~OZ3DEngineSceneFile(OZ3DEngineSceneFile *this)
{
  *this = &unk_28728DD88;
  *(this + 2) = &unk_28728E3D0;
  *(this + 6) = &unk_28728E628;
  v2 = (this + 1576);
  *(this + 197) = &unk_28728E680;
  v3 = *(this + 216);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 216) = 0;
  }

  OZChannelFolder::~OZChannelFolder((this + 1600));
  OZChannelBase::setRangeName(v2, v4);

  OZSceneNodeFile::~OZSceneNodeFile(this);
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEngineSceneFile::~OZ3DEngineSceneFile(OZ3DEngineSceneFile *this)
{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 16));
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 48));
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 1576));
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineSceneFile::~OZ3DEngineSceneFile((this - 1576));

  JUMPOUT(0x2666E9F00);
}

OZ3DEngineSceneFileImplUSDZ *OZ3DEngineSceneFile::getFileImpl(OZ3DEngineSceneFile *this)
{
  result = *(this + 216);
  if (!result)
  {
    if ((*(*this + 1408))(this))
    {
      v3 = (*(*this + 1408))(this);
      result = New3DEngineSceneFileImpl(this, v3);
      *(this + 216) = result;
    }

    else
    {
      return *(this + 216);
    }
  }

  return result;
}

void OZ3DEngineSceneFile::getKindName(OZ3DEngineSceneFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if ((*(*this + 1432))(this))
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {

    PCURL::PCURL(a2, @"Media Info 3D Object");
  }
}

void OZ3DEngineSceneFile::getCodecName(OZ3DEngineSceneFile *this@<X0>, PCSharedCount *a2@<X8>)
{
  if ((*(*this + 1432))(this))
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    (*(*this + 1232))(&v7, this);
    PCURL::getExtension(&v7, &v8);
    PCURL::~PCURL(&v7.var0);
    PCString::PCString(&v7, "usdz");
    v4 = PCString::caseInsensitiveCompare(&v8, &v7);
    PCString::~PCString(&v7);
    v5 = @"Media Info USDZ Object File";
    if (v4)
    {
      PCString::PCString(&v7, "obj");
      v6 = PCString::caseInsensitiveCompare(&v8, &v7);
      PCString::~PCString(&v7);
      if (!v6)
      {
        v5 = @"Media Info Wavefront Object File";
      }
    }

    PCURL::PCURL(a2, v5);
    PCString::~PCString(&v8);
  }
}

void sub_26013BF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineSceneFile::getFrames(OZ3DEngineSceneFile *this)
{
  if ((*(*this + 1432))(this))
  {
    return 1;
  }

  result = (*(*this + 272))(this);
  if (result)
  {
    FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
    if (!FileImpl || !(*(*FileImpl + 56))(FileImpl))
    {
      return 1;
    }

    OriginalFileDurationInSeconds = OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(this);
    return (OriginalFileDurationInSeconds * (*(*this + 1328))(this));
  }

  return result;
}

Float64 OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(OZ3DEngineSceneFile *this)
{
  if (!OZ3DEngineSceneFile::getFileImpl(this))
  {
    return 0.0;
  }

  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  result = (*(*FileImpl + 96))(FileImpl);
  if (fabs(result) < 0.0000001)
  {
    v4 = *(this + 121);
    if (v4)
    {
      OZSceneSettings::getFrameDuration(&time, (v4 + 336));
      return CMTimeGetSeconds(&time);
    }
  }

  return result;
}

uint64_t OZ3DEngineSceneFile::getDurationInFrames(OZ3DEngineSceneFile *this)
{
  if ((*(*this + 1432))(this))
  {
    return 1;
  }

  result = (*(*this + 272))(this);
  if (result)
  {
    if (!OZ3DEngineSceneFile::getFileImpl(this))
    {
      return 1;
    }

    FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
    if (!(*(*FileImpl + 56))(FileImpl))
    {
      return 1;
    }

    OriginalFileDurationInSeconds = OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(this);
    return (OriginalFileDurationInSeconds * (*(*this + 1328))(this));
  }

  return result;
}

Float64 OZ3DEngineSceneFile::getMaximumDuration(OZ3DEngineSceneFile *this)
{
  v2 = *(this + 121);
  if (OZ3DEngineSceneFile::getFileImpl(this))
  {
    return OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(this) * *(v2 + 368);
  }

  else
  {
    return 1.0;
  }
}

uint64_t OZ3DEngineSceneFile::getNumPolygons(OZ3DEngineSceneFile *this)
{
  if (((*(*this + 1432))(this) & 1) != 0 || !OZ3DEngineSceneFile::getFileImpl(this))
  {
    return 0;
  }

  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);

  return OZ3DEngineSceneFileImpl::getNumPolygons(FileImpl);
}

uint64_t OZ3DEngineSceneFile::updateModifiedDate(OZ3DEngineSceneFile *this)
{
  result = OZ3DEngineSceneFile::getFileImpl(this);
  if (result)
  {
    FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
    v4 = (*(*FileImpl + 72))(FileImpl);
    if (*(this + 384) == v4)
    {
      return 0;
    }

    else
    {
      *(this + 384) = v4;
      return 1;
    }
  }

  return result;
}

OZ3DEngineSceneFileImplUSDZ *OZ3DEngineSceneFile::updateAssociatedResourcesAvailable(OZ3DEngineSceneFile *this)
{
  result = OZ3DEngineSceneFile::getFileImpl(this);
  if (result)
  {
    v3 = *(*OZ3DEngineSceneFile::getFileImpl(this) + 80);

    return v3();
  }

  return result;
}

uint64_t OZ3DEngineSceneFile::updateMissingFile(const __CFURL ***this)
{
  if (OZ3DEngineSceneFile::getFileImpl(this) || !this[193])
  {
    result = ((*this)[179])(this);
    if (result)
    {
      OZSceneNodeFile::setIsFileMissing(this, 0);
      return 0;
    }
  }

  else
  {
    OZSceneNodeFile::setIsFileMissing(this, 1);
    PCURL::getAsURLString(this[193], &v3);
    PCString::set(this + 196, &v3);
    PCString::~PCString(&v3);
    return 1;
  }

  return result;
}

uint64_t OZ3DEngineSceneFile::supportsAnimation(OZ3DEngineSceneFile *this)
{
  v1 = *(*OZ3DEngineSceneFile::getFileImpl(this) + 40);

  return v1();
}

uint64_t OZ3DEngineSceneFile::getAssociatedFileURLs(OZ3DEngineSceneFile *this)
{
  v1 = *(*OZ3DEngineSceneFile::getFileImpl(this) + 88);

  return v1();
}

OZ3DEngineSceneFileImplUSDZ *OZ3DEngineSceneFile::dirty(OZ3DEngineSceneFile *this)
{
  result = OZ3DEngineSceneFile::getFileImpl(this);
  if (result)
  {
    v3 = *(*OZ3DEngineSceneFile::getFileImpl(this) + 16);

    return v3();
  }

  return result;
}

void OZ3DEngineSceneFile::get3DEngineSceneElements(const void **__return_ptr a1@<X8>, OZ3DEngineSceneFile *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(this + 121);
  if (v3)
  {
    DependantNodes = OZScene::getDependantNodes(v3, *(this + 20));
    if (DependantNodes)
    {
      v6 = DependantNodes + 1;
      v7 = *DependantNodes;
      if (*DependantNodes != DependantNodes + 1)
      {
        do
        {
          Node = OZScene::getNode(*(this + 121), *(v7 + 7));
          if (Node)
          {
            if (v9)
            {
              v11 = a1[1];
              v10 = a1[2];
              if (v11 >= v10)
              {
                v13 = (v11 - *a1) >> 3;
                if ((v13 + 1) >> 61)
                {
                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                v14 = v10 - *a1;
                v15 = v14 >> 2;
                if (v14 >> 2 <= (v13 + 1))
                {
                  v15 = v13 + 1;
                }

                if (v14 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v16 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v16 = v15;
                }

                if (v16)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v16);
                }

                v17 = (8 * v13);
                *v17 = v9;
                v12 = (8 * v13 + 8);
                v18 = a1[1] - *a1;
                v19 = v17 - v18;
                memcpy(v17 - v18, *a1, v18);
                v20 = *a1;
                *a1 = v19;
                a1[1] = v12;
                a1[2] = 0;
                if (v20)
                {
                  operator delete(v20);
                }
              }

              else
              {
                *v11 = v9;
                v12 = v11 + 8;
              }

              a1[1] = v12;
            }
          }

          v21 = v7[1];
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
              v22 = v7[2];
              v23 = *v22 == v7;
              v7 = v22;
            }

            while (!v23);
          }

          v7 = v22;
        }

        while (v22 != v6);
      }
    }
  }
}

void sub_26013C828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZ3DEngineSceneFile::getNaturalDurationFlags(OZ3DEngineSceneFile *this)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  if ((*(*FileImpl + 56))(FileImpl))
  {
    return 1;
  }

  else
  {
    return 6;
  }
}

uint64_t non-virtual thunk toOZ3DEngineSceneFile::getNaturalDurationFlags(OZ3DEngineSceneFile *this)
{
  FileImpl = OZ3DEngineSceneFile::getFileImpl((this - 16));
  if ((*(*FileImpl + 56))(FileImpl))
  {
    return 1;
  }

  else
  {
    return 6;
  }
}

double OZ3DEngineSceneFile::getNaturalDuration@<D0>(OZ3DEngineSceneFile *this@<X0>, __n128 *a2@<X8>)
{
  if (!(*(*this + 272))(this))
  {
    v7 = MEMORY[0x277CC08F0];
    v5 = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    v6 = *(v7 + 16);
    goto LABEL_5;
  }

  FileImpl = OZ3DEngineSceneFile::getFileImpl(this);
  if ((*(*FileImpl + 56))(FileImpl))
  {
    v5 = *(this + 232);
    *a2 = v5;
    v6 = *(this + 31);
LABEL_5:
    a2[1].n128_u64[0] = v6;
    return v5.n128_f64[0];
  }

  v8 = ((*(*this + 272))(this) + 336);

  v5.n128_u64[0] = OZSceneSettings::getFrameDuration(a2, v8).n128_u64[0];
  return v5.n128_f64[0];
}

double OZ3DEngineSceneFile::get3DFileTime@<D0>(OZ3DEngineSceneFile *this@<X0>, const CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v5 = *(*(*this + 640))(this);
  (*(v5 + 712))(&v7);
  *a3 = *a2;
  v8 = v7;
  v9 = *a2;
  return PC_CMTimeSaferAdd(&v9, &v8, a3);
}

uint64_t OZ3DEngineSceneFile::writeBody(OZ3DEngineSceneFile *this, PCSerializerWriteStream *a2, unsigned int a3, _BOOL4 a4, int a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZ3DEngineSceneFileScope);
  if ((*(*this + 272))(this))
  {
    v48 = *(*((*(*this + 272))(this) + 1584) + 160);
  }

  else
  {
    v48 = 0;
  }

  v50 = a4;
  *v51 = a5;
  v49 = a3;
  if ((*(*this + 272))(this) && !*(*((*(*this + 272))(this) + 1584) + 320))
  {
    if ((*(*this + 1432))(this) && (v10 = *(this + 193)) != 0)
    {
      PCURL::getAsURLString(v10, v64);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, v64);
      (*(*a2 + 24))(a2);
      v11 = v64;
    }

    else
    {
      (*(*this + 1272))(&v63, this);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, &v63);
      (*(*a2 + 24))(a2);
      v11 = &v63;
    }

    PCString::~PCString(v11);
    v52 = 1;
  }

  else
  {
    v52 = 0;
  }

  if (v12 && ((*(*this + 1432))(this) & 1) == 0)
  {
    URL = PCXMLWriteStream::getURL(v12);
    PCURL::getAsFileSystemString(URL, &v62);
    (*(*this + 1264))(&v61, this);
    v14 = PCXMLWriteStream::getURL(v12);
    PCURL::getContainingFolderAsURLString(v14, &v60);
    v15 = PCString::cf_str(&v62);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v15, @"/");
    v17 = PCString::cf_str(&v61);
    v18 = CFStringCreateArrayBySeparatingStrings(0, v17, @"/");
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    v20 = CFArrayGetCount(v18);
    v21 = v20;
    if (Count >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = Count;
    }

    if (v22 >= 1)
    {
      v23 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v23);
        v25 = CFArrayGetValueAtIndex(v18, v23);
        if (CFStringCompare(ValueAtIndex, v25, 1uLL))
        {
          break;
        }

        if (v22 == ++v23)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v22) = v23;
      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_23:
      if (v22 != 1 || (v26 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), CFStringGetLength(v26)))
      {
        PCSharedCount::PCSharedCount(&v59);
        if (~v22 + Count >= 1)
        {
          v27 = Count - v22;
          do
          {
            PCString::append(&v59, "../");
            --v27;
          }

          while (v27 > 1);
        }

        if (v22 < v21)
        {
          v28 = v22;
          do
          {
            v29 = CFArrayGetValueAtIndex(v18, v28);
            PCURL::PCURL(&v58, v29);
            PCString::append(&v59, &v58);
            PCString::~PCString(&v58);
            if (v21 - 1 > v28)
            {
              PCString::append(&v59, "/");
            }

            ++v28;
          }

          while (v28 < v21);
        }

        PCURL::PCURL(&v58, &v59, 0);
        PCSharedCount::PCSharedCount(&v57);
        PCURL::getAsURLString(&v58, &v56);
        (*(*a2 + 16))(a2, 2);
        (*(*a2 + 104))(a2, &v56);
        (*(*a2 + 24))(a2);
        PCString::~PCString(&v56);
        PCString::~PCString(&v57);
        PCURL::~PCURL(&v58.var0);
        PCString::~PCString(&v59);
      }
    }

LABEL_34:
    CFRelease(ArrayBySeparatingStrings);
    CFRelease(v18);
    PCString::~PCString(&v60);
    PCString::~PCString(&v61);
    PCString::~PCString(&v62);
  }

  if (v52)
  {
    return OZSceneNode::writeBody(this, a2, v49, v50, *v51);
  }

  if (!(*(*this + 1432))(this))
  {
    (*(*this + 1272))(&v62, this);
    if (v12)
    {
      v32 = PCXMLWriteStream::getURL(v12);
      PCURL::getAsURLString(v32, &v61);
      v33 = PCString::cf_str(&v61);
      v34 = CFStringCreateArrayBySeparatingStrings(0, v33, @"/");
      v35 = PCString::cf_str(&v62);
      v36 = CFStringCreateArrayBySeparatingStrings(0, v35, @"/");
      v37 = CFArrayGetCount(v34);
      if (CFArrayGetCount(v36) >= v37)
      {
        if (v37 < 2)
        {
          v38 = 0;
        }

        else
        {
          v40 = 0;
          v41 = v37 - 1;
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = v41 - 1;
          do
          {
            v43 = CFArrayGetValueAtIndex(v34, v40);
            v44 = CFArrayGetValueAtIndex(v36, v40);
            v45 = CFStringCompare(v43, v44, 1uLL);
            v38 = v45 != kCFCompareEqualTo;
            if (v45)
            {
              break;
            }
          }

          while (v42 != v40++);
        }
      }

      else
      {
        v38 = 1;
      }

      CFRelease(v34);
      CFRelease(v36);
      PCString::~PCString(&v61);
    }

    else
    {
      v38 = 0;
    }

    PCString::PCString(&v61, "Contents/LibraryContent");
    if (*(this + 1540) == 1)
    {
      if (!(v38 | (PCString::find(&v62, &v61) >= 0) | v48 & 1))
      {
        goto LABEL_60;
      }
    }

    else if (((v48 | v38) & 1) == 0)
    {
LABEL_60:
      PCString::~PCString(&v61);
      v31 = &v62;
      goto LABEL_61;
    }

    PCString::PCString(&v53, &v62);
    (*(*a2 + 16))(a2, 1);
    (*(*a2 + 104))(a2, &v53);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v53);
    goto LABEL_60;
  }

  v30 = *(this + 194);
  if (v30)
  {
    PCURL::getAsURLString(v30, v55);
    (*(*a2 + 16))(a2, 2);
    (*(*a2 + 104))(a2, v55);
    (*(*a2 + 24))(a2);
    v31 = v55;
LABEL_61:
    PCString::~PCString(v31);
    return OZSceneNode::writeBody(this, a2, v49, v50, *v51);
  }

  v39 = *(this + 193);
  if (((v39 != 0) & v48) == 1)
  {
    PCURL::getAsURLString(v39, v54);
    (*(*a2 + 16))(a2, 1);
    (*(*a2 + 104))(a2, v54);
    (*(*a2 + 24))(a2);
    v31 = v54;
    goto LABEL_61;
  }

  return OZSceneNode::writeBody(this, a2, v49, v50, *v51);
}

void sub_26013D4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, PCString a22, PCString a23, PCString a24, PCString a25, PCString a26, PCString a27, PCString a28)
{
  PCString::~PCString(&a23);
  PCURL::~PCURL(&a24.var0);
  PCString::~PCString(&a25);
  PCString::~PCString(&a26);
  PCString::~PCString(&a27);
  PCString::~PCString(&a28);
  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineSceneFile::parseBegin(OZ3DEngineSceneFile *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZ3DEngineSceneFileScope);
  return 1;
}

uint64_t non-virtual thunk toOZ3DEngineSceneFile::parseBegin(OZ3DEngineSceneFile *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZ3DEngineSceneFileScope);
  return 1;
}

uint64_t OZ3DEngineSceneFile::parseElement(OZ3DEngineSceneFile *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v24);
  v6 = (*(*this + 272))(this);
  if (v6 && (v7 = *(v6 + 1584)) != 0)
  {
    v8 = *(v7 + 160);
  }

  else
  {
    v8 = 0;
  }

  *(this + 1540) = 1;
  OZSceneNode::parseElement(this, a2, a3);
  v9 = *(a3 + 2);
  if (v9 != 2)
  {
    if (v9 == 1 && ((*(this + 1541) & 1) != 0 || (*(*this + 1432))(this)) && PCSerializerReadStream::getAsString(a2, a3, &v24))
    {
      PCURL::PCURL(&v23, &v24, 0);
      if ((*(*this + 1400))(this, &v23))
      {
        *(this + 1541) = 0;
        if (((v8 | *(this + 1540)) & 1) == 0)
        {
          (*(*this + 104))(this);
        }
      }

      PCURL::~PCURL(&v23);
    }

    goto LABEL_27;
  }

  if ((*(this + 1541) & 1) == 0 && !(*(*this + 1432))(this))
  {
    goto LABEL_27;
  }

  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  if (!PCSerializerReadStream::getAsString(a2, a3, &v24))
  {
    goto LABEL_27;
  }

  v12 = PCString::cf_str(&v24);
  v13 = CFURLCreateStringByReplacingPercentEscapes(0, v12, &stru_2872E16E0);
  PCURL::PCURL(&v22, v13);
  PCURL::PCURL(&v23, &v22, 0);
  PCString::~PCString(&v22);
  v14 = (*(*this + 1416))(this, &v23);
  PCURL::~PCURL(&v23);
  if (!(*(*this + 1432))(this) || !*PCXMLReadStream::getURL(v11))
  {
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  URL = PCXMLReadStream::getURL(v11);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, *URL);
  v17 = MEMORY[0x2666E8750](0, v13, 0, 0, PathComponent);
  v18 = CFURLCopyAbsoluteURL(v17);
  PCURL::PCURL(&v23, v18);
  v19 = (*(*this + 1400))(this, &v23);
  if (*(this + 1540) == 1)
  {
    v19 = (*(*this + 1416))(this, &v23);
  }

  v20 = v19;
  CFRelease(v13);
  CFRelease(PathComponent);
  CFRelease(v17);
  CFRelease(v18);
  PCURL::~PCURL(&v23);
  if (v20)
  {
LABEL_25:
    *(this + 1541) = 0;
    OZSceneNodeFile::setIsFileMissing(this, 0);
    if (((v8 | *(this + 1540)) & 1) == 0)
    {
      (*(*this + 104))(this);
    }
  }

LABEL_27:
  PCString::~PCString(&v24);
  return 1;
}

void OZRigWidgetAspectRatio::OZRigWidgetAspectRatio(OZRigWidgetAspectRatio *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZRigWidget::OZRigWidget(this, a2, a3, a4);
  *v4 = &unk_28728E790;
  *(v4 + 2) = &unk_28728EC68;
  *(v4 + 6) = &unk_28728EEC0;
  OZRigWidget::setWidgetType(v4, 4);
}

void OZRigWidgetAspectRatio::OZRigWidgetAspectRatio(OZRigWidgetAspectRatio *this, const OZRigWidgetAspectRatio *a2, char a3)
{
  OZRigWidget::OZRigWidget(this, a2, a3);
  *v3 = &unk_28728E790;
  v3[2] = &unk_28728EC68;
  v3[6] = &unk_28728EEC0;
}

void non-virtual thunk toOZRigWidgetAspectRatio::~OZRigWidgetAspectRatio(OZRigWidgetAspectRatio *this)
{
  OZRigWidget::~OZRigWidget((this - 16));
}

{
  OZRigWidget::~OZRigWidget((this - 48));
}

{
  OZRigWidget::~OZRigWidget((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRigWidget::~OZRigWidget((this - 48));

  JUMPOUT(0x2666E9F00);
}

void OZRigWidgetAspectRatio::~OZRigWidgetAspectRatio(OZRigWidgetAspectRatio *this)
{
  OZRigWidget::~OZRigWidget(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRigWidgetAspectRatio::parseEnd(OZRigWidgetAspectRatio *this, PCSerializerReadStream *a2)
{
  v4 = *(this + 191);
  v5 = *(this + 192);
  if (v4 != v5)
  {
    v6 = MEMORY[0x277CC08F0];
    do
    {
      v7 = *v4;
      OZChannel::getValueAsDouble((*v4 + 136), v6, 0.0);
      OZRigWidgetAspectRatio::GetNameForAspectRatio(&v10, v8);
      OZChannelBase::setName((v7 + 8), &v10, 0);
      PCString::~PCString(&v10);
      ++v4;
    }

    while (v4 != v5);
  }

  return OZRigWidget::parseEnd(this, a2);
}

void OZRigWidgetAspectRatio::GetNameForAspectRatio(PCSharedCount *__return_ptr a1@<X8>, double a2@<D0>)
{
  {
    OZRigWidgetAspectRatio::GetNameForAspectRatio(double)::gRatioToNameMap = 0x3FF5555555555555;
    PCURL::PCURL(&unk_280C5C5B0, @"Rig Aspect Ratio 4:3");
    qword_280C5C5B8 = 0x3FF8000000000000;
    PCURL::PCURL(&unk_280C5C5C0, @"Rig Aspect Ratio 3:2");
    qword_280C5C5C8 = 0x3FFC71C71C71C71CLL;
    PCURL::PCURL(&unk_280C5C5D0, @"Rig Aspect Ratio 16:9");
    qword_280C5C5D8 = 0x3FFD22C3F35BA784;
    PCURL::PCURL(&unk_280C5C5E0, @"Rig Aspect Ratio 1.8:1");
    qword_280C5C5E8 = 0x3FF0000000000000;
    PCURL::PCURL(&unk_280C5C5F0, @"Rig Aspect Ratio 1:1");
    qword_280C5C5F8 = 0x3FE2000000000000;
    PCURL::PCURL(&unk_280C5C600, @"Rig Aspect Ratio 9:16");
    __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_25F8F0000);
  }

  v4 = &unk_280C5C5B0;
  v5 = 6;
  while (vabdd_f64(a2, *&v4[-1].var0) >= 0.01)
  {
    v4 += 2;
    if (!--v5)
    {
      PCSharedCount::PCSharedCount(a1);
      PCURL::PCURL(&v8, @"Rig Aspect Ratio Custom Format");
      v6 = PCString::cf_str(&v8);
      PCURL::PCURL(&v9, v6);
      PCString::~PCString(&v8);
      v7 = PCString::createVerifiedFormatString(&v9, "%f");
      if (v7)
      {
        PCString::sprintf(a1, v7, *&a2);
        free(v7);
      }

      PCString::~PCString(&v9);
      return;
    }
  }

  PCString::PCString(a1, v4);
}

uint64_t OZRigWidgetAspectRatio::didFinishLoadingIntoMotionEffect(OZRigWidgetAspectRatio *this)
{
  OZRigWidget::copyTargetChansToActiveSnapshot(this);

  return OZSceneNode::didFinishLoadingIntoMotionEffect(this);
}

uint64_t non-virtual thunk toOZRigWidgetAspectRatio::didFinishLoadingIntoMotionEffect(OZRigWidgetAspectRatio *this)
{
  v1 = this - 16;
  OZRigWidget::copyTargetChansToActiveSnapshot((this - 16));

  return OZSceneNode::didFinishLoadingIntoMotionEffect(v1);
}

void OZRigWidgetAspectRatio::setTargetDisplayAspectRatio(OZRigWidgetAspectRatio *this, double a2, int a3)
{
  (*(**(this + 136) + 712))(*(this + 136), MEMORY[0x277CC08F0], 0, a2);
  CurrentSnapshot = OZRigWidget::getCurrentSnapshot(this);
  if (CurrentSnapshot)
  {
    v6 = *(CurrentSnapshot + 32);
  }

  else
  {
    v6 = 0;
  }

  OZRigWidget::setActiveSnapshot(this, v6, a3);
}

PCString *__cxx_global_array_dtor_1()
{
  result = &unk_280C5C600;
  v1 = -96;
  do
  {
    PCString::~PCString(result);
    result = (v2 - 16);
    v1 += 16;
  }

  while (v1);
  return result;
}

void OZRigSnapshot::OZRigSnapshot(OZRigSnapshot *this, OZChannelFolder *a2, unsigned int a3)
{
  *this = &unk_28728EF30;
  v6 = (this + 8);
  PCURL::PCURL(&v12, @"Rig Snapshot Root");
  OZChannelFolder::OZChannelFolder(v6, &v12, a2, a3, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Rig Snapshot Value");
  Instance = OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(v7);
  OZChannelDouble::OZChannelDouble((this + 136), 0.0, &v12, v6, 1u, 0, Instance, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Rig Snapshot Interpolation Enum");
  PCURL::PCURL(&v11, @"Rig Snapshot Interpolation");
  v10 = OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(v9);
  OZChannelEnum::OZChannelEnum((this + 288), 1u, &v12, &v11, v6, 2u, 0, v10, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
}

void sub_26013E3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v13 + 136));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZRigSnapshot::OZRigSnapshot(OZRigSnapshot *this, const OZRigSnapshot *a2, OZChannelFolder *a3)
{
  *this = &unk_28728EF30;
  v5 = (this + 136);
  OZChannelFolder::OZChannelFolder((this + 8), (a2 + 8), a3);
  OZChannel::OZChannel(v5, (a2 + 136), (this + 8));
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 288), (a2 + 288), (this + 8));
}

void sub_26013E4CC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelFolder::~OZChannelFolder((v1 + 8));
  _Unwind_Resume(a1);
}

void OZRigSnapshot::~OZRigSnapshot(OZRigSnapshot *this)
{
  *this = &unk_28728EF30;
  v2 = *(this + 7);
  if (v2)
  {
    OZChannelFolder::removeDescendant(v2, (this + 8));
  }

  OZChannelEnum::~OZChannelEnum(this + 36);
  OZChannel::~OZChannel((this + 136));
  OZChannelFolder::~OZChannelFolder((this + 8));
}

{
  OZRigSnapshot::~OZRigSnapshot(this);

  JUMPOUT(0x2666E9F00);
}

double OZRigSnapshot::applyInterpolation(OZRigSnapshot *this, double a2)
{
  v3 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 288), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt)
  {
    if (ValueAsInt == 2)
    {
      v7 = 0.0;
      PCMath::easeInOut(&v7, a2, 0.5, 0.5, 0.0, 1.0, 0, v5);
      return v7;
    }

    else
    {
      if (ValueAsInt != 1)
      {
        PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZRigSnapshot.cpp", 64);
        pcAbortImpl();
      }

      return a2;
    }
  }

  return v3;
}

uint64_t OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(OZRigSnapshot::OZRigSnapshot_valueChanImpl *this)
{
  if (atomic_load_explicit(&OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(void)::OZRigSnapshot_valueChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(void)::OZRigSnapshot_valueChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigSnapshot::OZRigSnapshot_valueChanImpl::_OZRigSnapshot_valueChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigSnapshot::OZRigSnapshot_valueChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigSnapshot::OZRigSnapshot_valueChanImpl::_OZRigSnapshot_valueChan)
  {
    operator new();
  }
}

uint64_t OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(OZRigSnapshot::OZRigSnapshot_interpolationChanImpl *this)
{
  if (atomic_load_explicit(&OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(void)::OZRigSnapshot_interpolationChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(void)::OZRigSnapshot_interpolationChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::_OZRigSnapshot_interpolationChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZRigSnapshot::OZRigSnapshot_interpolationChanImpl::_OZRigSnapshot_interpolationChan)
  {
    operator new();
  }
}

double FaceTextureDOD@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_260851BB0;
  return result;
}

uint64_t ApplyMetalTextureToNode(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_msgSend(a1 "geometry")];
  [v5 setLightingModelName:a3];
  [objc_msgSend(v5 "specular")];
  [objc_msgSend(v5 "diffuse")];
  [v5 setLitPerPixel:1];

  return [v5 setDoubleSided:1];
}

void ImageSourceTransformPairs(uint64_t *__return_ptr a1@<X8>, OZChannelBase *this@<X1>, OZChannel ***a3@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a3 != a3[1])
  {
    MakeImageSourceTransformPair(**a3, this);
  }
}

void sub_26013F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  PCSharedCount::~PCSharedCount(v9 + 1);
  std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_26013F5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12.var0 = va_arg(va1, PC_Sp_counted_base *);
  PCSharedCount::~PCSharedCount(va);
  OZRenderParams::~OZRenderParams(va1);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x5C0]);
  LiGraphBuilder::~LiGraphBuilder(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t *HGNodeForImageSourceTransformPair@<X0>(uint64_t *__return_ptr a1@<X8>, LiAgent *this@<X1>, LiImageSource **a3@<X0>, uint64_t a4@<X2>)
{
  LiAgent::getHelium(a1, this, *a3);
  v7 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v7);
  (*(*v7 + 120))(v7, 0, *a1);
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  *&v13[16] = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v12 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  PCMatrix44Tmpl<double>::leftTranslate(&v11, COERCE_UNSIGNED_INT64(vcvtd_n_f64_s32(*(a4 + 8), 1uLL)), 0.0 - vcvtd_n_f64_s32(*(a4 + 12), 1uLL), 0.0);
  PCMatrix44Tmpl<double>::rightMult(&v11, a3 + 2);
  *&v13[8] = vnegq_f64(*&v13[8]);
  v14 = vnegq_f64(v14);
  PGHelium::convertPCMatrix44(&v11, &v10);
  (*(*v7 + 576))(v7, v10);
  v8 = *a1;
  if (*a1 != v7)
  {
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    *a1 = v7;
    (*(*v7 + 16))(v7);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  return (*(*v7 + 24))(v7);
}

void sub_26013F804(_Unwind_Exception *a1)
{
  (*(*v2 + 24))(v2);
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__emplace_back_slow_path<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>>(a1, v6);
  }

  v7 = 144 * v2;
  v20 = 0;
  v21 = v7;
  v22 = v7;
  *v7 = *a2;
  PCSharedCount::PCSharedCount((v7 + 8), (a2 + 8));
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v10 = *(a2 + 32);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = v10;
  *(v7 + 48) = v8;
  *(v7 + 64) = v9;
  v11 = *(a2 + 80);
  v12 = *(a2 + 96);
  v13 = *(a2 + 128);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 128) = v13;
  *(v7 + 80) = v11;
  *(v7 + 96) = v12;
  *&v22 = v22 + 144;
  v14 = a1[1];
  v15 = v21 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::~__split_buffer(&v20);
  return v19;
}

void sub_26013FA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>,std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>*>(uint64_t a1, PCSharedCount *a2, PCSharedCount *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = &v6[v7];
      v9 = (a4 + v7 * 8);
      *(a4 + v7 * 8) = v6[v7];
      PCSharedCount::PCSharedCount((a4 + v7 * 8 + 8), &v6[v7 + 1]);
      v10 = *&v6[v7 + 2].var0;
      v11 = *&v6[v7 + 4].var0;
      v12 = *&v6[v7 + 8].var0;
      v9[3] = *&v6[v7 + 6].var0;
      v9[4] = v12;
      v9[1] = v10;
      v9[2] = v11;
      v13 = *&v6[v7 + 10].var0;
      v14 = *&v6[v7 + 12].var0;
      v15 = *&v6[v7 + 16].var0;
      v9[7] = *&v6[v7 + 14].var0;
      v9[8] = v15;
      v9[5] = v13;
      v9[6] = v14;
      v7 += 18;
    }

    while (&v8[18] != a3);
    while (v6 != a3)
    {
      PCSharedCount::~PCSharedCount(v6 + 1);
      v6 += 18;
    }
  }
}

void sub_26013FADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 136);
    do
    {
      PCSharedCount::~PCSharedCount(v5);
      v5 = (v6 - 144);
      v4 += 144;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    PCSharedCount::~PCSharedCount((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void OZRigBehavior::OZRigBehavior(OZRigBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_28728F050;
  v5[2] = &unk_28728F398;
  v5[6] = &unk_28728F5F0;
  v5[42] = &unk_28728F648;
  v5[67] = &unk_28728F670;
  PCSharedMutex::PCSharedMutex((v5 + 112));
  PCURL::PCURL(&v6, @"Rig Behavior Widget Ref");
  OZChanObjectRefWithPicker::OZChanObjectRefWithPicker((this + 1000), &v6, (this + 56), 0xC8u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Rig Behavior Snapshots");
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 1208), &v6, (this + 56), 0xCAu, 2);
  PCString::~PCString(&v6);
  *(this + 668) = 0;
  OZChannelBase::setFlag((this + 56), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 56));
  v6 = xmmword_2603473B0;
  OZChanObjectRefWithPicker::addAcceptedFactoryUUID(this + 1000, &v6);
}

void sub_26013FCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v9 + 1000));
  PCSharedMutex::~PCSharedMutex((v9 + 896));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v9);
  _Unwind_Resume(a1);
}

void OZRigBehavior::OZRigBehavior(OZRigBehavior *this, const OZRigBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_28728F050;
  v5[2] = &unk_28728F398;
  v5[6] = &unk_28728F5F0;
  v5[42] = &unk_28728F648;
  v5[67] = &unk_28728F670;
  PCSharedMutex::PCSharedMutex((v5 + 112));
  OZChanObjectRefWithPicker::OZChanObjectRefWithPicker((this + 1000), (a2 + 1000), (this + 56));
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 1208), (a2 + 1208), (this + 56));
  *(this + 668) = 0;
  OZChannelBase::setFlag((this + 56), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 56));
  v6 = xmmword_2603473B0;
  OZChanObjectRefWithPicker::addAcceptedFactoryUUID(this + 1000, &v6);
}

void sub_26013FEA8(_Unwind_Exception *a1)
{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v1 + 1000));
  PCSharedMutex::~PCSharedMutex((v1 + 896));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

uint64_t OZRigBehavior::copy(OZRigBehavior *this, const OZBehavior *lpsrc)
{
  if (result)
  {
    v4 = result;
    OZChanObjectRefWithPicker::operator=(this + 1000, result + 1000);
    result = OZChannelFolder::operator=(this + 1208);
    *(this + 1336) = *(v4 + 1336);
  }

  return result;
}

void OZRigBehavior::~OZRigBehavior(OZRigBehavior *this)
{
  *this = &unk_28728F050;
  *(this + 2) = &unk_28728F398;
  *(this + 6) = &unk_28728F5F0;
  *(this + 42) = &unk_28728F648;
  *(this + 67) = &unk_28728F670;
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this + 1208));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 1000));
  PCSharedMutex::~PCSharedMutex(this + 14);

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZRigBehavior::~OZRigBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRigBehavior::~OZRigBehavior(OZRigBehavior *this)
{
  OZRigBehavior::~OZRigBehavior((this - 16));
}

{
  OZRigBehavior::~OZRigBehavior((this - 48));
}

{
  OZRigBehavior::~OZRigBehavior((this - 336));
}

{
  OZRigBehavior::~OZRigBehavior((this - 536));
}

{
  OZRigBehavior::~OZRigBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRigBehavior::~OZRigBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRigBehavior::~OZRigBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZRigBehavior::~OZRigBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRigBehavior::parseBegin(OZRigBehavior *this, PCSerializerReadStream *a2)
{
  v2 = *(a2 + 26);
  if (v2 < 5 || (v2 == 5 ? (v3 = *(a2 + 27) > 0xCu) : (v3 = 1), !v3))
  {
    *(this + 1336) = 1;
  }

  return OZSingleChannelBehavior::parseBegin(this, a2);
}

uint64_t non-virtual thunk toOZRigBehavior::parseBegin(OZRigBehavior *this, PCSerializerReadStream *a2)
{
  v2 = *(a2 + 26);
  if (v2 < 5 || (v2 == 5 ? (v3 = *(a2 + 27) > 0xCu) : (v3 = 1), !v3))
  {
    *(this + 1288) = 1;
  }

  return OZSingleChannelBehavior::parseBegin((this - 48), a2);
}

OZChannelBase *OZRigBehavior::didFinishLoadingIntoScene(OZRigBehavior *this)
{
  v2 = this + 16;
  OZRigBehavior::registerWithWidget(this);
  OZRigBehavior::adjustToSnapshotCount(this);
  if (*(this + 1336) == 1)
  {
    OZRigBehavior::adjustTo2DChannelsPromotedTo3D(this);
    *(this + 1336) = 0;
  }

  Widget = OZRigBehavior::getWidget(this);
  result = (*(*(this + 2) + 24))(v2, 0, 1);
  if ((Widget != 0) != result)
  {
    v5 = *(this + 2);
    if (Widget)
    {
      (*(v5 + 32))(v2, 1);

      return OZChannelBase::resetFlag((this + 56), 8, 1);
    }

    else
    {
      (*(v5 + 40))(v2, 1);

      return OZChannelBase::setFlag((this + 56), 8, 1);
    }
  }

  return result;
}

void *OZRigBehavior::registerWithWidget(OZRigBehavior *this)
{
  result = OZSingleChannelBehavior::getChanBase(this);
  if (result)
  {
    result = OZRigBehavior::getWidget(this);
    if (result)
    {

      return OZRigWidget::registerRigBehavior(result, this);
    }
  }

  return result;
}

void OZRigBehavior::adjustToSnapshotCount(OZRigBehavior *this)
{
  Widget = OZRigBehavior::getWidget(this);
  if (OZSingleChannelBehavior::getChanBase(this) && Widget)
  {
    v3 = OZRigWidget::numberOfSnapshots(Widget);
    v4 = *(this + 165);
    if (v4)
    {
      v4 = ((v4[1] - *v4) >> 3);
    }

    if (v3 != v4)
    {
      v5 = *(Widget + 191);
      v6 = *(Widget + 192);
      while (v5 != v6)
      {
        v7 = *v5;
        if (!OZChannelFolder::getDescendant((this + 1208), *(*v5 + 32)))
        {
          OZRigBehavior::createDefaultSnapshotHelper(this, *(v7 + 32), 0);
        }

        ++v5;
      }

      OZRigBehavior::sortSnapshotChannels(this);
    }
  }
}

void OZRigBehavior::adjustTo2DChannelsPromotedTo3D(OZRigBehavior *this)
{
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  if (ChanBase)
  {
    v3 = *(this + 165);
    if (v3)
    {
      v4 = *v3;
      v5 = *(v3 + 8);
      v6 = v5 - *v3;
      if ((v6 & 0x7FFFFFFF8) != 0)
      {
        if ((v7 = ChanBase, v8 = *v4, v9 = *(*(ChanBase + 8) + 8), (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_2608484A0)))) & 1) == 0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v8 + 8) + 8), xmmword_260848460)))) & 1) == 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_260848470)))) & 1) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v8 + 8) + 8), xmmword_260848410)))) & 1) == 0)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(&v15, v4, v5, v6 >> 3);
          OZChannelFolder::removeAllDescendants((this + 1208), 1);
          v10 = v15;
          v11 = v16;
          if (v15 != v16)
          {
            do
            {
              v12 = *v10;
              DefaultSnapshotHelper = OZRigBehavior::createDefaultSnapshotHelper(this, (*v10)->var3, v7);
              v14 = OZRigBehavior::copyValues(this, v12, DefaultSnapshotHelper);
              (*(v12->var0 + 1))(v12, v14);
              ++v10;
            }

            while (v10 != v11);
            v10 = v15;
          }

          if (v10)
          {
            v16 = v10;
            operator delete(v10);
          }
        }
      }
    }
  }
}

void sub_2601405FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *OZRigBehavior::getWidget(OZRigBehavior *this)
{
  result = OZChanObjectManipRef::getObject((this + 1000));
  if (result)
  {
  }

  return result;
}

void *OZRigBehavior::didAddToNode(OZRigBehavior *this, OZSceneNode *a2)
{
  OZSingleChannelBehavior::didAddToNode(this, a2);

  return OZRigBehavior::registerWithWidget(this);
}

void OZRigBehavior::willRemove(OZRigBehavior *this)
{
  OZRigBehavior::unregisterWithWidget(this);

  OZSingleChannelBehavior::willRemove(this);
}

void OZRigBehavior::unregisterWithWidget(OZRigBehavior *this)
{
  Widget = OZRigBehavior::getWidget(this);
  if (Widget)
  {

    OZRigWidget::unregisterRigBehavior(Widget, this);
  }
}

void *OZRigBehavior::didAddSceneNodeToScene(OZRigBehavior *this, OZScene *a2)
{
  OZSingleChannelBehavior::didAddSceneNodeToScene(this, a2);

  return OZRigBehavior::registerWithWidget(this);
}

OZNotificationManager *OZRigBehavior::willRemoveSceneNodeFromScene(OZRigBehavior *this, OZScene *a2)
{
  OZRigBehavior::unregisterWithWidget(this);

  return OZChannelBehavior::willRemoveSceneNodeFromScene(this, a2);
}

void OZRigBehavior::willDeleteObject(OZRigBehavior *this, OZObjectManipulator *a2)
{
  if (OZSingleChannelBehavior::getAffectedObject(this) == a2)
  {
    Widget = OZRigBehavior::getWidget(this);
    if (Widget)
    {
      OZRigWidget::unregisterRigBehavior(Widget, this);
    }
  }

  OZSingleChannelBehavior::willDeleteObject(this, a2);
}

OZObjectManipulator *OZRigBehavior::didUndoDeleteOfObject(OZRigBehavior *this, OZObjectManipulator *a2)
{
  OZSingleChannelBehavior::didUndoDeleteOfObject(this, a2);
  result = OZSingleChannelBehavior::getAffectedObject(this);
  if (result == a2)
  {

    return OZRigBehavior::registerWithWidget(this);
  }

  return result;
}

void OZRigBehavior::willDeleteMaterialLayer(OZRigBehavior *this, OZChannelBase *a2)
{
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  if (ChanBase && OZChannelBase::isDescendantOf(ChanBase, a2))
  {
    OZRigBehavior::unregisterWithWidget(this);
  }

  OZSingleChannelBehavior::willDeleteMaterialLayer(this, a2);
}

void OZRigBehavior::willDeleteChannel(OZRigBehavior *this, OZChannelBase *a2)
{
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  if (ChanBase)
  {
    if (ChanBase == a2)
    {
      Widget = OZRigBehavior::getWidget(this);
      if (Widget)
      {
        OZRigWidget::unregisterRigBehavior(Widget, this);
      }
    }
  }

  OZSingleChannelBehavior::willDeleteChannel(this, a2);
}

OZChannelBase *OZRigBehavior::didUndoDeleteChannel(OZRigBehavior *this, OZChannelBase *a2)
{
  OZSingleChannelBehavior::didUndoDeleteChannel(this, a2);
  result = OZSingleChannelBehavior::getChanBase(this);
  if (result && result == a2)
  {

    return OZRigBehavior::registerWithWidget(this);
  }

  return result;
}

void OZRigBehavior::getEvalDepChansForRef(int a1, int a2, void *lpsrc, uint64_t *a4)
{
  if (lpsrc)
  {
    {
      operator new();
    }
  }
}

void *OZRigBehavior::getTimeExtent@<X0>(OZRigBehavior *this@<X0>, uint64_t a2@<X8>)
{
  AffectedObject = OZSingleChannelBehavior::getAffectedObject(this);
  if (!AffectedObject)
  {
    result = (*(*this + 328))(this);
    if (!result)
    {
      v10 = MEMORY[0x277CC08F0];
      v11 = *MEMORY[0x277CC08F0];
      *a2 = *MEMORY[0x277CC08F0];
      v12 = *(v10 + 16);
      *(a2 + 16) = v12;
      *(a2 + 24) = v11;
      *(a2 + 40) = v12;
      return result;
    }

    goto LABEL_8;
  }

  v5 = AffectedObject;
  v6 = *AffectedObject;
  if (result)
  {
LABEL_8:
    v9 = *(*result + 1128);

    return v9();
  }

  if (v8)
  {
    v9 = *(*v8 + 608);
  }

  else
  {
    if (v13)
    {
      v9 = *(*v13 + 592);
    }

    else
    {
      v9 = *(*(*(v6 + 216))(v5) + 712);
    }
  }

  return v9();
}

void **OZRigBehavior::calcStaticHash(OZRigBehavior *a1, void *a2, uint64_t **a3)
{
  OZBehavior::calcStaticHash(a1, a2, a3);
  result = OZRigBehavior::getWidget(a1);
  if (result)
  {
    v5 = *(*result[136] + 408);

    return v5();
  }

  return result;
}

void *OZRigBehavior::calcHashForState(OZRigBehavior *a1, void *a2, CMTime *a3, uint64_t **a4)
{
  OZBehavior::calcHashForState(a1, a2, a3, a4);
  result = OZRigBehavior::getWidget(a1);
  if (result)
  {
    v8 = result[136];
    v9 = *&a3->value;
    epoch = a3->epoch;
    return (*(*v8 + 448))(v8, a2, &v9);
  }

  return result;
}

void OZRigBehavior::cacheCurrentSnapshotID(OZRigBehavior *this, const CMTime *a2)
{
  PCSharedMutex::lock(this + 14);
  Widget = OZRigBehavior::getWidget(this);
  v5 = Widget;
  if (Widget)
  {
    *(this + 880) = OZRigWidget::doPassThrough(Widget, a2);
    OZRigWidget::getCurrentSnapshotIDs(v5, a2, this + 216, this + 217, this + 109);
    *(this + 888) = 1;
  }

  PCSharedMutex::unlock(this + 14);
}

void OZRigBehavior::clearCurrentSnapshotIDCache(std::mutex *this)
{
  PCSharedMutex::lock(this + 14);
  this[13].__m_.__opaque[48] = 0;
  PCSharedMutex::unlock(this + 14);
}

double OZRigBehavior::solveNode(std::mutex *this, int a2, const CMTime *a3, double a4, double a5)
{
  Widget = OZRigBehavior::getWidget(this);
  if (Widget)
  {
    v14 = *&this[20].__m_.__opaque[32];
    if (v14)
    {
      if (((v14[1] - *v14) & 0x7FFFFFFF8) != 0)
      {
        v15 = Widget;
        PCSharedMutex::lock_shared(this + 14);
        v16 = this[13].__m_.__opaque[48];
        if (v16 == 1)
        {
          v5 = *&this[13].__m_.__opaque[24];
          v6 = *&this[13].__m_.__opaque[28];
          v8 = *&this[13].__m_.__opaque[32];
          v7 = this[13].__m_.__opaque[40];
        }

        PCSharedMutex::unlock_shared(this + 14);
        memset(&v20, 0, sizeof(v20));
        (*(**(*&this[5].__m_.__opaque[48] + 32) + 336))(&v20);
        if (v16)
        {
          if ((v7 & 1) == 0)
          {
            v19[0] = v6;
            v19[1] = v5;
            v18 = v8;
            return OZRigBehavior::getRiggedValue(this, a2, v5, v6, v8, &v20);
          }
        }

        else if ((OZRigWidget::doPassThrough(v15, a3) & 1) == 0)
        {
          v18 = 0.0;
          *v19 = 0;
          OZRigWidget::getCurrentSnapshotIDs(v15, &v20, &v19[1], v19, &v18);
          v6 = v19[0];
          v5 = v19[1];
          v8 = v18;
          return OZRigBehavior::getRiggedValue(this, a2, v5, v6, v8, &v20);
        }
      }
    }
  }

  return a5;
}

double OZRigBehavior::getRiggedValue(OZRigBehavior *this, int a2, int a3, int a4, double a5, const CMTime *a6)
{
  memset(&v37, 0, sizeof(v37));
  TimeOffset = OZChannelObjectRootBase::getTimeOffset(&v34, (this + 56));
  (*(**(*(this + 47) + 32) + 320))(&v33, TimeOffset);
  *&v39.value = v34;
  v39.epoch = v35;
  v38 = v33;
  PC_CMTimeSaferSubtract(&v39, &v38, &v36);
  v39 = *a6;
  v38 = v36;
  PC_CMTimeSaferAdd(&v39, &v38, &v37);
  Descendant = OZChannelFolder::getDescendant((this + 1208), a3);
  v14 = Descendant;
  if (a5 != 0.0)
  {
    v17 = OZChannelFolder::getDescendant((this + 1208), a4);
    v15 = 0.0;
    if (!v14)
    {
      return v15;
    }

    v18 = v17;
    if (!v17)
    {
      return v15;
    }

    if ((v14[7] & 0x1000) != 0)
    {
      v24 = OZChannelFolder::getDescendant(v22, a2);
      if (v24)
      {
      }

      else
      {
        v19 = 0;
      }

      v25 = OZChannelFolder::getDescendant(v23, a2);
      if (!v25)
      {
        v26 = 0;
LABEL_18:
        var1 = v19->var1;
        *&v39.value = xmmword_260848660;
        if ((OZFactory::isKindOfClass(var1, &v39) & 1) == 0)
        {
          *&v39.value = xmmword_260848500;
          if ((OZFactory::isKindOfClass(var1, &v39) & 1) == 0)
          {
            *&v39.value = xmmword_2608512C0;
            if (!OZFactory::isKindOfClass(var1, &v39))
            {
              OZChannel::getValueAsDouble(v19, &v37, 0.0);
              v31 = v30;
              OZChannel::getValueAsDouble(v26, &v37, 0.0);
              return v31 + (v32 - v31) * a5;
            }
          }
        }

        v16 = v19;
        goto LABEL_22;
      }

      v18 = v25;
    }

    else
    {
    }

    goto LABEL_18;
  }

  v15 = 0.0;
  if (Descendant)
  {
    if ((Descendant[7] & 0x1000) == 0)
    {
LABEL_22:
      OZChannel::getValueAsDouble(v16, &v37, 0.0);
      return v28;
    }

    v21 = OZChannelFolder::getDescendant(v20, a2);
    if (v21)
    {
      if (v16)
      {
        goto LABEL_22;
      }
    }
  }

  return v15;
}

BOOL OZRigBehavior::canAddToChannelAfterMismatch(OZRigBehavior *this, OZChannelBase *a2)
{
  if (*(this + 1337))
  {
    return 0;
  }

  v5 = (*(*this + 336))(this);
  if (!v5)
  {
    return 1;
  }

  if (*(v5 + 1576) != 1)
  {
    return 1;
  }

  v6 = *(this + 165);
  if (!v6)
  {
    return 1;
  }

  v7 = *v6;
  if (((*(*(this + 165) + 8) - v7) & 0x7FFFFFFF8) == 0)
  {
    return 1;
  }

  v8 = *v7;
  if (a2->var1 != *(*v7 + 8))
  {
    return 0;
  }

  if ((v8[57] & 0x10) == 0 || (a2->var7 & 0x1000) == 0)
  {
    return 1;
  }

  v11 = v9[14];
  if (v11)
  {
    v11 = ((v11[1] - *v11) >> 3);
  }

  v12 = v10[14];
  if (v12)
  {
    v12 = ((v12[1] - *v12) >> 3);
  }

  return v11 == v12;
}

OZChannelBase *OZRigBehavior::createDefaultSnapshotHelper(OZRigBehavior *this, unsigned int a2, const OZChannelBase *a3)
{
  ChanBase = a3;
  if (!a3)
  {
    ChanBase = OZSingleChannelBehavior::getChanBase(this);
  }

  v6 = (*(ChanBase->var0 + 31))(ChanBase);
  OZChannelBase::setFlags(v6, ChanBase->var7 & 0xFFFFFFFFFFFFFFFELL);
  OZChannelBase::setID(v6, a2);
  OZChannelFolder::push_back((this + 1208), v6);
  return v6;
}

const OZChannelBase *OZRigBehavior::copyTargetToSnapshot(OZRigBehavior *this, int a2)
{
  Descendant = OZChannelFolder::getDescendant((this + 1208), a2);
  result = OZSingleChannelBehavior::getChanBase(this);
  if (result && Descendant)
  {
    v5 = result;
    OZRigBehavior::copyScales(this, result, Descendant);
    v6 = *(Descendant->var0 + 32);

    return v6(Descendant, v5);
  }

  return result;
}

OZChannelInfo *OZRigBehavior::copyScales(OZRigBehavior *this, const OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    v8 = *(result + 14);
    if (v8)
    {
      v9 = *(result + 14);
      v10 = *v8;
      v11 = v8[1];
      v12 = *v9;
      v13 = v9[1];
      v14 = v10 == v11 || v12 == v13;
      if (!v14)
      {
        v15 = v10 + 8;
        v16 = v12 + 8;
        do
        {
          result = OZRigBehavior::copyScales(this, *(v15 - 8), *(v16 - 8));
          if (v15 == v11)
          {
            break;
          }

          v15 += 8;
          v14 = v16 == v13;
          v16 += 8;
        }

        while (!v14);
      }
    }
  }

  else
  {
    if (a3)
    {
    }

    else
    {
      v5 = 0;
    }

    v17 = *(v4[16] + 40);

    return OZChannel::setScale(v5, v17);
  }

  return result;
}

double OZRigBehavior::copySnapshotToTarget(OZRigBehavior *this, int a2)
{
  Descendant = OZChannelFolder::getDescendant((this + 1208), a2);
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  if (Descendant && ChanBase)
  {

    return OZRigBehavior::copyValues(this, Descendant, ChanBase);
  }

  return result;
}

double OZRigBehavior::copyValues(OZRigBehavior *this, const OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    if (v7)
    {
      v10 = *v7;
      v11 = v7[1];
      v12 = *v9;
      v13 = v9[1];
      v14 = v10 == v11 || v12 == v13;
      if (!v14)
      {
        v15 = v10 + 8;
        v16 = v12 + 8;
        do
        {
          result = OZRigBehavior::copyValues(this, *(v15 - 8), *(v16 - 8));
          if (v15 == v11)
          {
            break;
          }

          v15 += 8;
          v14 = v16 == v13;
          v16 += 8;
        }

        while (!v14);
      }
    }
  }

  else
  {
    if (a3)
    {
    }

    else
    {
      v5 = 0;
    }

    CurveInterface = OZChannel::getCurveInterface(v4);
    if (CurveInterface)
    {
    }

    else
    {
      v18 = 0;
    }

    v19 = OZChannel::getCurveInterface(v5);
    if (v19)
    {
    }

    *&result = OZCurve::operator=(v19, v18).n128_u64[0];
  }

  return result;
}

uint64_t OZRigBehavior::doesCreateAnimation(OZRigBehavior *this)
{
  result = OZRigBehavior::getWidget(this);
  if (result)
  {
    Widget = OZRigBehavior::getWidget(this);
    if ((*(*Widget[136] + 560))(Widget[136]))
    {
      return 1;
    }

    else
    {
      v4 = *(*(this + 151) + 560);

      return v4();
    }
  }

  return result;
}

void *OZRigBehavior::DuplicateAffectingRigBehaviors(OZRigBehavior *this, OZObjectManipulator *a2, OZObjectManipulator *a3)
{
  v5 = *((*(*this + 256))(this, a2, a3) + 8);
  v21 = xmmword_26084FAD0;
  if ((OZFactory::isKindOfClass(v5, &v21) & 1) != 0 || (v6 = *((*(*this + 256))(this) + 8), v21 = xmmword_26084FAE0, result = OZFactory::isKindOfClass(v6, &v21), result))
  {
    result = (*(*this + 232))(this);
    if (result)
    {
      v8 = result;
      std::list<OZBehavior *>::list(v21.i64, (result + 125));
      for (i = v21.i64[1]; i != &v21; i = i->i64[1])
      {
        v10 = i[1].i64[0];
        v11 = v10[1];
        v19 = xmmword_2603473C0;
        if (OZFactory::isKindOfClass(v11, &v19))
        {
          if ((*(v10[2] + 24))(v10 + 2, 0, 1))
          {
            if (OZSingleChannelBehavior::getAffectedObject(v12) == this)
            {
              *(&v19 + 1) = 0;
              v20 = 0;
              *&v19 = &v19 + 8;
              v13 = (*(*this + 256))(this);
              v18 = (*(*v13 + 56))(v13);
              v14 = (*(*a2 + 256))(a2);
              v15 = (*(*v14 + 56))(v14);
              v22.var0 = &v18;
              *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v19, &v18, &std::piecewise_construct, &v22) + 8) = v15;
              v16 = (*(**(v12 + 1) + 24))(*(v12 + 1), v12, 2);
              if (v16)
              {
              }

              else
              {
                v17 = 0;
              }

              (*(*v17 + 552))(v17, &v19);
              (*(*v17 + 776))(v17, v8);
              PCURL::PCURL(&v22, @"Undo Duplicate");
              (*(v17[2] + 176))(v17 + 2, &v22, 1);
              PCString::~PCString(&v22);
              std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v19, *(&v19 + 1));
            }
          }
        }
      }

      return std::__list_imp<unsigned int>::clear(&v21);
    }
  }

  return result;
}

void sub_26014207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  PCString::~PCString((v9 - 88));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va, v13);
  std::__list_imp<unsigned int>::clear(va1);
  _Unwind_Resume(a1);
}

void OZRigBehavior::sortSnapshotChannels(OZRigBehavior *this)
{
  v2 = *(this + 165);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(&v7, *v2, *(v2 + 8), (*(v2 + 8) - *v2) >> 3);
  v3 = 126 - 2 * __clz((v8 - v7) >> 3);
  v10 = chanIDLessThan;
  if (v8 == v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,false>(v7, v8, &v10, v4, 1);
  OZChannelFolder::removeAllDescendants((this + 1208), 1);
  v5 = v7;
  v6 = v8;
  if (v7 != v8)
  {
    do
    {
      OZChannelFolder::push_back((this + 1208), *v5++);
    }

    while (v5 != v6);
    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }
}

void sub_2601421B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::list<OZBehavior *>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,false>(uint64_t result, int8x16_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
LABEL_98:
        a2[-1].i64[1] = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(v9, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(v9, a2->i64, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,OZChannelBase**>(v9->i64, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(a2[-1].i64[1], v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v25 = v8[v13];
            v8[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(a2[-1].i64[0], v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = v8[v26];
            v8[v26] = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(a2[-2].i64[1], v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = a2[-2].i64[1];
          a2[-2].i64[1] = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(a2[-2].i64[1]))
          {
            v40 = v8[v34];
            v8[v34] = a2[-2].i64[1];
            a2[-2].i64[1] = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = a2[-2].i64[1];
        a2[-2].i64[1] = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(a2[-1].i64[1], *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(a2[-1].i64[1]))
        {
          v32 = *v8;
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = a2[-1].i64[1];
      a2[-1].i64[1] = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OZChannelBase **,BOOL (*&)(OZChannelBase const*,OZChannelBase const*)>(v8, a2->i64, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OZChannelBase **,BOOL (*&)(OZChannelBase const*,OZChannelBase const*)>(v8, a2->i64, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(v8, v49, a3);
    v9 = &v49->u64[1];
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(&v49->i64[1], a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = &v49->u64[1];
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,0>(v9, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(a2[-1].i64[1], v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(a2[-1].i64[1]);
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OZChannelBase **,BOOL (*&)(OZChannelBase const*,OZChannelBase const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OZChannelBase **,BOOL (*&)(OZChannelBase const*,OZChannelBase const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**,OZChannelBase**>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZChannelBase const*,OZChannelBase const*),OZChannelBase**>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void OZLinkChannelExpression::OZLinkChannelExpression(OZLinkChannelExpression *this, OZLinkBehavior *a2, const OZChannelRef *a3, int a4)
{
  *this = &unk_28728F6E8;
  *(this + 1) = a2;
  OZChannelRef::OZChannelRef((this + 16), a3);
  OZChannelRef::OZChannelRef((this + 64));
  OZChannelRef::OZChannelRef((this + 88));
  OZChannelRef::OZChannelRef((this + 112));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (a4)
  {
    OZLinkChannelExpression::createParamChannels(this);
  }
}

void sub_2601435FC(_Unwind_Exception *a1)
{
  OZChannelRef::~OZChannelRef(v1 + 14);
  OZChannelRef::~OZChannelRef(v1 + 11);
  OZChannelRef::~OZChannelRef(v1 + 8);
  OZChannelRef::~OZChannelRef(v1 + 2);
  _Unwind_Resume(a1);
}

void OZLinkChannelExpression::createParamChannels(OZLinkChannelExpression *this)
{
  PCSharedCount::PCSharedCount(&v3);
  SourceChannel = OZLinkChannelExpression::getSourceChannel(this);
  if (SourceChannel)
  {
    PCString::set(&v3, SourceChannel + 4);
  }

  else
  {
    PCString::set(&v3, "source");
  }

  operator new();
}

void sub_2601439C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  PCString::~PCString(&a11);
  MEMORY[0x2666E9F00](v14, 0x10E1C409BAC03F7);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

void OZLinkChannelExpression::OZLinkChannelExpression(OZLinkChannelExpression *this, const OZLinkChannelExpression *a2, OZLinkBehavior *a3)
{
  *this = &unk_28728F6E8;
  *(this + 1) = a3;
  OZChannelRef::OZChannelRef((this + 16), (a2 + 16));
  OZChannelRef::OZChannelRef((this + 64));
  OZChannelRef::OZChannelRef((this + 88));
  OZChannelRef::OZChannelRef((this + 112));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  OZLinkChannelExpression::copyParamChannels(this, a2);
}

void sub_260143B40(_Unwind_Exception *a1)
{
  OZChannelRef::~OZChannelRef(v1 + 14);
  OZChannelRef::~OZChannelRef(v1 + 11);
  OZChannelRef::~OZChannelRef(v1 + 8);
  OZChannelRef::~OZChannelRef(v1 + 2);
  _Unwind_Resume(a1);
}

std::string *OZLinkChannelExpression::copyParamChannels(OZLinkChannelExpression *this, const OZLinkChannelExpression *a2)
{
  if (*(a2 + 5))
  {
    operator new();
  }

  OZChannelRef::operator=((this + 64), (a2 + 64));
  if (*(a2 + 6))
  {
    operator new();
  }

  OZChannelRef::operator=((this + 88), (a2 + 88));
  if (*(a2 + 7))
  {
    operator new();
  }

  return OZChannelRef::operator=((this + 112), (a2 + 112));
}

void OZLinkChannelExpression::~OZLinkChannelExpression(OZLinkChannelExpression *this)
{
  *this = &unk_28728F6E8;
  v2 = *(this + 1);
  if (v2)
  {
    OZLinkBehavior::deleteExpressionParamChannels(v2, this, 0);
  }

  OZChannelRef::~OZChannelRef(this + 14);
  OZChannelRef::~OZChannelRef(this + 11);
  OZChannelRef::~OZChannelRef(this + 8);
  OZChannelRef::~OZChannelRef(this + 2);
}

{
  OZLinkChannelExpression::~OZLinkChannelExpression(this);

  JUMPOUT(0x2666E9F00);
}

void OZLinkChannelExpression::getParamChannelRefs(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a1 + 64;
    std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v4);
    v4 = a1 + 88;
    std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v4);
    v4 = a1 + 112;
    std::vector<TXTabStop *>::push_back[abi:ne200100](a2, &v4);
  }
}

uint64_t OZLinkChannelExpression::resolveChannelRefs(OZLinkChannelExpression *this)
{
  result = *(this + 1);
  if (result)
  {
    v3 = *(this + 5);
    v4 = (*(*result + 312))(result);
    Channel = OZChannelRef::getChannel((this + 64), v4);
    if (Channel)
    {
    }

    *(this + 5) = Channel;
    v6 = *(this + 6);
    v7 = (*(**(this + 1) + 312))(*(this + 1));
    v8 = OZChannelRef::getChannel((this + 88), v7);
    if (v8)
    {
    }

    *(this + 6) = v8;
    v9 = *(this + 7);
    v10 = (*(**(this + 1) + 312))(*(this + 1));
    v11 = OZChannelRef::getChannel((this + 112), v10);
    if (v11)
    {
    }

    *(this + 7) = v11;
    if (!v3)
    {
      v12 = *(this + 5);
      if (v12)
      {
        OZLinkBehavior::addExpressionParamChannel(*(this + 1), this, v12, 0);
      }
    }

    if (!v6)
    {
      v13 = *(this + 6);
      if (v13)
      {
        OZLinkBehavior::addExpressionParamChannel(*(this + 1), this, v13, 0);
      }
    }

    if (!v9)
    {
      v14 = *(this + 7);
      if (v14)
      {
        OZLinkBehavior::addExpressionParamChannel(*(this + 1), this, v14, 0);
      }
    }

    return *(this + 5) && *(this + 6) && *(this + 7) != 0;
  }

  return result;
}

void *OZLinkChannelExpression::getSourceChannel(OZLinkChannelExpression *this)
{
  if (!(*(**(this + 1) + 336))(*(this + 1)))
  {
    return 0;
  }

  if (!OZChanObjectManipRef::getObject((*(this + 1) + 1064)))
  {
    return 0;
  }

  Object = OZChanObjectManipRef::getObject((*(this + 1) + 1064));
  v3 = (*(*Object + 216))(Object);
  Channel = OZChannelRef::getChannel((this + 16), v3);
  if (!Channel)
  {
    return 0;
  }
}

void OZLinkChannelExpression::fixParamChannelNames(OZChannelBase **this)
{
  PCSharedCount::PCSharedCount(&v10);
  SourceChannel = OZLinkChannelExpression::getSourceChannel(this);
  if (SourceChannel)
  {
    PCString::set(&v10, SourceChannel + 4);
  }

  else
  {
    PCString::set(&v10, "source");
  }

  v3 = this[5];
  if (v3)
  {
    PCString::PCString(&v7, " ");
    PCString::PCString(&v8, &v10);
    PCString::append(&v8, &v7);
    PCURL::PCURL(&v6, @"Link Behavior Value Offset");
    PCString::PCString(&v9, &v8);
    PCString::append(&v9, &v6);
    OZChannelBase::setName(v3, &v9, 0);
    PCString::~PCString(&v9);
    PCString::~PCString(&v6);
    PCString::~PCString(&v8);
    PCString::~PCString(&v7);
  }

  v4 = this[6];
  if (v4)
  {
    PCString::PCString(&v7, " ");
    PCString::PCString(&v8, &v10);
    PCString::append(&v8, &v7);
    PCURL::PCURL(&v6, @"Link Behavior Value Range Min");
    PCString::PCString(&v9, &v8);
    PCString::append(&v9, &v6);
    OZChannelBase::setName(v4, &v9, 0);
    PCString::~PCString(&v9);
    PCString::~PCString(&v6);
    PCString::~PCString(&v8);
    PCString::~PCString(&v7);
  }

  v5 = this[7];
  if (v5)
  {
    PCString::PCString(&v7, " ");
    PCString::PCString(&v8, &v10);
    PCString::append(&v8, &v7);
    PCURL::PCURL(&v6, @"Link Behavior Value Range Max");
    PCString::PCString(&v9, &v8);
    PCString::append(&v9, &v6);
    OZChannelBase::setName(v5, &v9, 0);
    PCString::~PCString(&v9);
    PCString::~PCString(&v6);
    PCString::~PCString(&v8);
    PCString::~PCString(&v7);
  }

  PCString::~PCString(&v10);
}

void sub_2601444D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  PCString::~PCString(&a11);
  PCString::~PCString(&a14);
  _Unwind_Resume(a1);
}

std::string *OZLinkChannelExpression::copy(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  OZChannelRef::operator=((a1 + 16), (a2 + 16));
  OZChannelRef::operator=((a1 + 64), (a2 + 64));
  OZChannelRef::operator=((a1 + 88), (a2 + 88));

  return OZChannelRef::operator=((a1 + 112), (a2 + 112));
}

double OZLinkChannelExpression::getSourceSliderRange(OZLinkChannelExpression *this)
{
  SourceChannel = OZLinkChannelExpression::getSourceChannel(this);
  if (SourceChannel)
  {
    return (*(*SourceChannel + 808))(SourceChannel) - *(SourceChannel[16] + 16);
  }

  else
  {
    return 0.0;
  }
}

void *OZLinkChannelExpression::getSourceValueRange(OZLinkChannelExpression *this)
{
  result = OZLinkChannelExpression::getSourceChannel(this);
  if (result)
  {
    v2 = result;
    v3 = 0;
    (*(**(result[14] + 8) + 256))(*(result[14] + 8), &v3);
    v3 = 0;
    return (*(**(v2[14] + 8) + 264))();
  }

  return result;
}

OZChannel *OZLinkChannelExpression::syncChannelRanges(OZLinkChannelExpression *this, int a2)
{
  result = OZLinkChannelExpression::getSourceChannel(this);
  if (result)
  {
    v5 = result;
    OZLinkBehavior::getSourceChannelUUID(v26.i64, *(this + 1), 1);
    result = *(this + 5);
    if (result)
    {
      if (*(this + 6) && *(this + 7))
      {
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v26, xmmword_260848490)))))
        {
          v6 = (*(v5->var0 + 101))(v5);
          v7 = *(this + 5);
          if (v6 >= 3.40282347e38)
          {
            OZChannel::setSliderMin(*(this + 5), -100.0);
            v11 = *(this + 5);
            v10 = 100.0;
          }

          else
          {
            v8 = (*(v5->var0 + 101))(v5);
            OZChannel::setSliderMin(v7, -v8);
            v9 = *(this + 5);
            (*(v5->var0 + 101))(v5);
            v11 = v9;
          }
        }

        else
        {
          OZChannel::setSliderMin(result, -6.28318531);
          v11 = *(this + 5);
          v10 = 6.28318531;
        }

        OZChannel::setSliderMax(v11, v10);
        OZChannel::setDefaultValue(*(this + 5), 0.0);
        OZChannel::setScale(*(this + 5), *(v5->var16 + 5));
        OZChannel::setCoarseDelta(*(this + 5), *(v5->var16 + 4));
        OZChannel::setFineDelta(*(this + 5), *(v5->var16 + 3));
        OZLinkChannelExpression::syncAutoShrinkScaleOffset(this);
        v12 = *(this + 6);
        v27 = 0.0;
        (*(**(v5->var14 + 1) + 264))();
        OZChannel::setMin(v12, v27);
        v13 = *(this + 6);
        v27 = 0.0;
        (*(**(v5->var14 + 1) + 256))();
        OZChannel::setMax(v13, v27);
        v14 = *(v5->var16 + 2);
        if (v14 <= 1.17549435e-38)
        {
          v14 = -100.0;
        }

        OZChannel::setSliderMin(*(this + 6), v14);
        v15 = (*(v5->var0 + 101))(v5);
        v16 = *(this + 6);
        if (v15 >= 3.40282347e38)
        {
          v17 = 100.0;
        }

        else
        {
          (*(v5->var0 + 101))(v5);
        }

        OZChannel::setSliderMax(v16, v17);
        OZChannel::setDefaultValue(*(this + 6), *(*(*(this + 6) + 128) + 16));
        OZChannel::setScale(*(this + 6), *(v5->var16 + 5));
        v18 = *(this + 7);
        v27 = 0.0;
        (*(**(v5->var14 + 1) + 264))();
        OZChannel::setMin(v18, v27);
        v19 = *(this + 7);
        v27 = 0.0;
        (*(**(v5->var14 + 1) + 256))();
        OZChannel::setMax(v19, v27);
        v20 = *(v5->var16 + 2);
        if (v20 <= 1.17549435e-38)
        {
          v20 = -100.0;
        }

        OZChannel::setSliderMin(*(this + 7), v20);
        v21 = (*(v5->var0 + 101))(v5);
        v22 = *(this + 7);
        if (v21 >= 3.40282347e38)
        {
          v23 = 100.0;
        }

        else
        {
          (*(v5->var0 + 101))(v5);
        }

        OZChannel::setSliderMax(v22, v23);
        v24 = *(this + 7);
        v25 = (*(v24->var0 + 101))(v24);
        OZChannel::setDefaultValue(v24, v25);
        result = OZChannel::setScale(*(this + 7), *(v5->var16 + 5));
        if (a2)
        {
          (*(**(this + 5) + 288))(*(this + 5), 0);
          (*(**(this + 6) + 288))();
          return (*(**(this + 7) + 288))();
        }
      }
    }
  }

  return result;
}

OZChannelInfo *OZLinkChannelExpression::syncAutoShrinkScaleOffset(OZLinkChannelExpression *this)
{
  result = OZChanObjectManipRef::getObject((*(this + 1) + 1064));
  if (result)
  {
    v3 = result;
    v4 = *((*(*result + 256))(result) + 8);
    v5 = xmmword_260347A50;
    result = OZFactory::isKindOfClass(v4, &v5);
    if (result)
    {
      result = OZLinkChannelExpression::getSourceChannel(this);
      if ((v3 + 61248) == result)
      {
        OZChannel::setMin(*(this + 5), 0.0);
        return OZChannel::setSliderMax(*(this + 5), 1.0);
      }
    }
  }

  return result;
}

void *OZLinkChannelExpression::sourceIsBool(OZLinkChannelExpression *this)
{
  result = OZLinkChannelExpression::getSourceChannel(this);
  if (result)
  {
  }

  return result;
}

void *OZLinkChannelExpression::sourceIsEnum(OZLinkChannelExpression *this)
{
  result = OZLinkChannelExpression::getSourceChannel(this);
  if (result)
  {
  }

  return result;
}

BOOL OZLinkChannelExpression::isWithinLimits(OZLinkChannelExpression *this, const CMTime *a2)
{
  v3 = 1;
  OZLinkChannelExpression::solve(this, 0.0, a2, &v4, &v3);
  return v3;
}

void OZLinkChannelExpression::solve(uint64_t this, double a2, const CMTime *a3, double *a4, BOOL *a5)
{
  if (!a4)
  {
    return;
  }

  OZLinkBehavior::getMixFactor(*(this + 8), a3);
  v11 = v10;
  if (fabs(v10) < 0.0000001)
  {
    if (a5)
    {
      *a5 = 1;
    }

LABEL_8:
    *a4 = a2;
    return;
  }

  SourceChannel = OZLinkChannelExpression::getSourceChannel(this);
  if (!SourceChannel)
  {
    goto LABEL_8;
  }

  v13 = SourceChannel;
  if ((OZLinkChannelExpression::sourceIsBool(this) & 1) != 0 || OZLinkChannelExpression::sourceIsEnum(this))
  {
    goto LABEL_8;
  }

  v14 = MEMORY[0x277CC08F0];
  v15 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((*(this + 8) + 2776), MEMORY[0x277CC08F0], 0.0);
  OZChannel::getValueAsDouble(v13, a3, 0.0);
  v18 = v17;
  if (!OZChannel::getValueAsInt((*(this + 8) + 2520), v14, 0.0))
  {
    goto LABEL_56;
  }

  v19 = OZChannel::getValueAsInt((*(this + 8) + 2520), MEMORY[0x277CC08F0], 0.0);
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        goto LABEL_56;
      }

      v20 = *(this + 56);
      if (v20)
      {
        OZChannel::getValueAsDouble(v20, a3, 0.0);
      }

      else
      {
        v21 = 1.0;
      }

      v26 = v18 <= v21;
      if (v18 <= v21 || ValueAsInt != 1)
      {
LABEL_46:
        if (!v26)
        {
          goto LABEL_47;
        }

LABEL_56:
        v39 = *(this + 40);
        if (v39)
        {
          OZChannel::getValueAsDouble(v39, a3, 0.0);
          v15 = v40;
        }

        v41 = v18 + v15;
        InternalScale = OZLinkBehavior::getInternalScale(*(this + 8));
        OZChannel::getValueAsDouble((*(this + 8) + 1808), a3, 0.0);
        v44 = v41 * (InternalScale * v43);
        v45 = OZChannel::getValueAsInt((*(this + 8) + 1552), MEMORY[0x277CC08F0], 0.0);
        v46 = v44 * a2;
        v47 = v44 + a2;
        if (v45)
        {
          v47 = v44;
        }

        if (v45 != 1)
        {
          v46 = v47;
        }

        a2 = (1.0 - v11) * a2 + v11 * v46;
        v34 = 1;
        goto LABEL_63;
      }

      goto LABEL_53;
    }

    goto LABEL_34;
  }

  if (v19 != 3)
  {
    if (v19 != 4)
    {
      goto LABEL_56;
    }

    v22 = *(this + 56);
    if (v22)
    {
      OZChannel::getValueAsDouble(v22, a3, 0.0);
    }

    else
    {
      v23 = 1.0;
    }

    if (v18 > v23)
    {
      goto LABEL_56;
    }

    v27 = *(this + 48);
    if (v27)
    {
      OZChannel::getValueAsDouble(v27, a3, 0.0);
    }

    else
    {
      v28 = 0.0;
    }

    v26 = v18 < v28;
    if (v18 < v28 || ValueAsInt != 1)
    {
      goto LABEL_46;
    }

    v32 = *(this + 56);
    if (v32)
    {
      OZChannel::getValueAsDouble(v32, a3, 0.0);
    }

    else
    {
      v33 = 1.0;
    }

    v35 = v33 - v18;
    v36 = *(this + 48);
    if (v36)
    {
      OZChannel::getValueAsDouble(v36, a3, 0.0);
    }

    else
    {
      v37 = 0.0;
    }

    if (v35 >= v18 - v37)
    {
LABEL_39:
      v31 = *(this + 48);
      if (!v31)
      {
        v18 = 0.0;
        goto LABEL_56;
      }

LABEL_54:
      OZChannel::getValueAsDouble(v31, a3, 0.0);
      v18 = v38;
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v24 = *(this + 56);
  if (v24)
  {
    OZChannel::getValueAsDouble(v24, a3, 0.0);
  }

  else
  {
    v25 = 1.0;
  }

  if (v18 <= v25)
  {
LABEL_34:
    v29 = *(this + 48);
    if (v29)
    {
      OZChannel::getValueAsDouble(v29, a3, 0.0);
    }

    else
    {
      v30 = 0.0;
    }

    v26 = v18 >= v30;
    if (v18 >= v30 || ValueAsInt != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (ValueAsInt == 1)
  {
LABEL_53:
    v31 = *(this + 56);
    if (!v31)
    {
      v18 = 1.0;
      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_47:
  v34 = 0;
LABEL_63:
  *a4 = a2;
  if (a5)
  {
    *a5 = v34;
  }
}

void OZ3DEngineCore::getMotionLights(CMTime *a1@<X1>, OZChannel *a2@<X2>, OZElement *a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = a2;
    while (1)
    {
      ValueAsInt = OZChannel::getValueAsInt(v6 + 56, a1, 0.0);
      if (ValueAsInt == 1)
      {
        break;
      }

      if (ValueAsInt == 2)
      {
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *a4 = &unk_2871F25A8;
        *(a4 + 24) = 0;
        return;
      }

      var6 = v6[6].var6;
      if (var6)
      {
        if (v6)
        {
          continue;
        }
      }

      break;
    }
  }

  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = &unk_2871F25A8;
  *(a4 + 24) = 0;
  v10 = *(a3 + 3);
  if (v10 > 0)
  {
    v11 = 2 * v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a4, v10, v11);
  if (*(a3 + 3) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      LiLight::operator=(*(a4 + 16) + v12, *(a3 + 2) + v12);
      ++v13;
      v12 += 944;
    }

    while (v13 < *(a3 + 3));
  }

  *(a4 + 24) = *(a3 + 24);
}

void OZ3DEngineCore::buildRenderGraph(uint64_t a1, const OZRenderParams *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4, uint64_t a5, uint64_t a6, OZElement *a7, uint64_t a8)
{
  {
    MEMORY[0x2666E9C50](&OZ3DEngineCore::buildRenderGraph(OZRenderParams &,LiGraphBuilder *,OZRenderGraphState const&,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m);
    __cxa_atexit(MEMORY[0x277D82658], &OZ3DEngineCore::buildRenderGraph(OZRenderParams &,LiGraphBuilder *,OZRenderGraphState const&,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m, &dword_25F8F0000);
  }

  std::recursive_mutex::lock(&OZ3DEngineCore::buildRenderGraph(OZRenderParams &,LiGraphBuilder *,OZRenderGraphState const&,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m);
  v12 = *(a7 + 120);
  v15 = a7;
  while (1)
  {
    v15 = *(v15 + 120);
    if (!v15)
    {
      break;
    }

    v16 = *v15;
    {
      break;
    }

    if ((*(v16 + 416))(v15))
    {
      v17 = 1;
      goto LABEL_12;
    }
  }

  v17 = 0;
LABEL_12:
  v18 = (*(*a7 + 1656))(a7, MEMORY[0x277CC08F0]);
  LiGraphBuilder::getCurrentInsertionGroup(&v20, a3);
  value = v20.value;
  PCSharedCount::~PCSharedCount(&v20.timescale);
  OZRenderGraphState::OZRenderGraphState(v22, a4);
  if (value && *(*(*value + 248))(value) == 1)
  {
    v24[40] = 1;
    v25 = *((*(*value + 248))(value) + 4);
    v26 = *((*(*value + 248))(value) + 20);
  }

  if (((v18 | v17 & v14) & 1) == 0)
  {
    operator new();
  }

  OZRenderParams::OZRenderParams(&v20, a2);
  v21 = 0;
  LiGraphBuilder::partitionWorld(a3);
  OZElement::buildRenderGraph(a7, &v20, a3, v22);
  LiGraphBuilder::partitionWorld(a3);
  OZRenderParams::~OZRenderParams(&v20);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v24);
  std::__list_imp<unsigned int>::clear(v23);
  std::recursive_mutex::unlock(&OZ3DEngineCore::buildRenderGraph(OZRenderParams &,LiGraphBuilder *,OZRenderGraphState const&,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m);
}

void OZ3DEngineCore::build3DEngineRenderGraph(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, OZChannel *a7)
{
  OZRenderState::OZRenderState(time, a2);
  *&v80[40] = 0x3FF0000000000000;
  *v80 = 0x3FF0000000000000;
  *&v77[40] = 0x3FF0000000000000;
  *v77 = 0x3FF0000000000000;
  memset(&v77[8], 0, 32);
  v78 = 0u;
  v79 = 0u;
  memset(&v80[8], 0, 32);
  if (*(&time[3] + 1) == a7)
  {
    LiGraphBuilder::getCurrentLocalToWorld(&v69, a3);
    v79 = v73;
    *v80 = v74;
    *&v80[16] = v75;
    *&v80[32] = v76;
    *v77 = v69;
    *&v77[16] = v70;
    *&v77[32] = v71;
    v78 = v72;
  }

  else
  {
    v13 = a7;
    do
    {
      if (!v13)
      {
        goto LABEL_8;
      }

      var6 = v13[6].var6;
      if (!var6)
      {
        goto LABEL_8;
      }

      if (!v15)
      {
        goto LABEL_8;
      }

      v13 = v15;
    }

    while (!(*(v15->var0 + 204))(v15));
    *(&time[3] + 1) = v13;
    BYTE8(time[12]) = 0;
LABEL_8:
    BYTE9(time[12]) = 1;
    (*(a7->var0 + 157))(a7, v77, time);
  }

  for (i = 0; i != 4; ++i)
  {
    v17 = *(a5 + 16 * i);
    v18 = (&v68 + 32 * i);
    *v18 = vcvtq_f64_f32(*v17.f32);
    v18[1] = vcvt_hight_f64_f32(v17);
  }

  PCMatrix44Tmpl<double>::operator*(v77, &v68.value, &v69);
  v79 = v73;
  *v80 = v74;
  *&v80[16] = v75;
  *&v80[32] = v76;
  *v77 = v69;
  *&v77[16] = v70;
  *&v77[32] = v71;
  v78 = v72;
  if (*(a2 + 1296))
  {
    v19 = *(a2 + 1296);
  }

  else
  {
    v19 = *(a2 + 1280);
  }

  v20 = (*(*v19 + 688))();
  v21 = 0;
  *&v77[24] = v20 * *&v77[24];
  do
  {
    v67[v21] = vcvt_hight_f32_f64(vcvt_f32_f64(*&v77[32 * v21]), *&v77[32 * v21 + 16]);
    ++v21;
  }

  while (v21 != 4);
  if (*(a2 + 242) == 1)
  {
    v22 = (*(a7->var0 + 34))(a7);
    WorkingGamut = OZRenderParams::getWorkingGamut(a2);
    v24 = *(a2 + 1296);
    if (!v24)
    {
      v24 = *(a2 + 1280);
    }

    *&time[0] = v24;
    if (v24)
    {
      v25 = (v24 + *(*v24 - 24));
    }

    else
    {
      v25 = 0;
    }

    PCSharedCount::PCSharedCount(time + 1, v25);
    LiGraphBuilder::prepare3DEngine(a3, WorkingGamut, time, *(v22 + 344), *(v22 + 348), 0);
  }

  else
  {
    v26 = OZRenderParams::getWorkingGamut(a2);
    *&time[0] = 0;
    PCSharedCount::PCSharedCount(time + 1);
    LiGraphBuilder::prepare3DEngine(a3, v26, time, 0, 0, 0);
  }

  PCSharedCount::~PCSharedCount(time + 1);
  v66 = *a2;
  time[0] = *a2;
  *&time[1] = *(a2 + 16);
  Seconds = CMTimeGetSeconds(time);
  time[0] = *a6;
  *&time[1] = *(a6 + 16);
  v28 = CMTimeGetSeconds(time);
  LiGraphBuilder::get3DEngineGeode(a3, time);
  if (!*&time[0])
  {
    throw_PCNullPointerException(1);
  }

  (*(**&time[0] + 160))(&lpsrc);
  PCSharedCount::~PCSharedCount(time + 1);
  if (lpsrc)
  {
    v30 = v29;
    if (v29)
    {
      v31 = vcvt_s32_f32(vcvt_f32_u32(*(a2 + 324)));
      v29[25] = 0;
      v29[26] = v31;
      if (*(a2 + 202))
      {
        OZRenderParams::getResolution(time, a2);
        v32 = time[0];
      }

      else
      {
        OZRenderParams::getPixelTransform(time, a2);
        memset(v77, 0, 24);
        v69 = 0uLL;
        *&v70 = 0;
        getScaleTranslate(time, v77, &v69);
        v32 = *v77;
      }

      *(v30 + 264) = v32;
      *(v30 + 280) = Seconds;
      v33 = (*(a7->var0 + 34))(a7);
      CustomEnvironmentMap = OZScene::getCustomEnvironmentMap(v33);
      if (!CustomEnvironmentMap)
      {
        v35 = (*(a7->var0 + 34))(a7);
        if (v35[73] / 100.0 <= 0.0)
        {
          CustomEnvironmentMap = 0;
        }

        else
        {
          CustomEnvironmentMap = OZ3DEngineCore::getCachedEnvironmentMap(v35);
        }
      }

      *(v30 + 288) = CustomEnvironmentMap;
      *(v30 + 296) = *((*(a7->var0 + 34))(a7) + 584) / 100.0;
    }
  }

  else
  {
    v30 = 0;
  }

  OZ3DEngineCore::getMotionLights(&v66, a7, (a3 + 112), &v69);
  v37.n128_u32[0] = a4[67];
  v38.n128_u32[0] = a4[68];
  v39.n128_u32[0] = a4[69];
  v40.n128_u32[0] = a4[70];
  v41.n128_u32[0] = a4[71];
  (*(*v36 + 2272))(&v64, v28, v37, v38, v39, v40, v41);
  v42 = v64;
  *(v42 + 568) = OZChannel::getValueAsInt((v36 + 24080), MEMORY[0x277CC08F0], 0.0) != 0;
  v43 = a7[6].var6;
  if (v43)
  {
    if (v44)
    {
      if ((OZChannelBase::isEnabled((v44 + 20744), 1, 1) & 1) == 0)
      {
        OZRenderParams::getFFInputNode(&v63, a2, 1u);
        Li3DEngineImageSource::setMatteNode(v30, &v63);
        if (v63)
        {
          (*(*v63 + 24))(v63);
        }

        OZRenderParams::getFFInputNode(&v62, a2, 2u);
        Li3DEngineImageSource::setDepthNode(v30, &v62);
        if (v62)
        {
          (*(*v62 + 24))(v62);
        }

        v45 = (*(a7->var0 + 34))(a7);
        OZScene::setARFrameForObject(v45, v30);
      }
    }
  }

  *&v77[16] = xmmword_2603429E0;
  *&v77[32] = xmmword_2603429E0;
  *v77 = xmmword_2603429E0;
  (*(a7->var0 + 170))(a7, v77, a2);
  for (j = 0; j != 4; ++j)
  {
    v47 = *(a5 + 16 * j);
    v48 = &time[2 * j];
    *v48 = vcvtq_f64_f32(*v47.f32);
    v48[1] = vcvt_hight_f64_f32(v47);
  }

  PCMatrix44Tmpl<double>::invert(time, time, 0.0);
  v49 = 0;
  v50 = 0;
  v51 = -1.0;
  v52 = 1.0;
  v53 = 1.0;
  v54 = -1.0;
  v55 = 1.0;
  v56 = -1.0;
  while (1)
  {
    v57 = &v77[24];
    if ((v50 & 2) != 0)
    {
      v57 = &v77[16];
    }

    v58 = *v57;
    v59 = &v77[40];
    if (v50 >= 4)
    {
      v59 = &v77[32];
    }

    v60 = *v59;
    v68.value = *(v77 | v49 & 8 ^ 8);
    *&v68.timescale = v58;
    v68.epoch = v60;
    PCMatrix44Tmpl<double>::transform<double>(time, &v68.value, &v68.value);
    if (v49)
    {
      if (v52 >= *&v68.value)
      {
        v52 = *&v68.value;
      }

      if (v51 <= *&v68.value)
      {
        v51 = *&v68.value;
      }

      if (v53 >= *&v68.timescale)
      {
        v53 = *&v68.timescale;
      }

      if (v54 <= *&v68.timescale)
      {
        v54 = *&v68.timescale;
      }

      if (v55 >= *&v68.epoch)
      {
        v55 = *&v68.epoch;
      }

      if (v56 <= *&v68.epoch)
      {
        v56 = *&v68.epoch;
      }
    }

    else
    {
      v54 = *&v68.timescale;
      v56 = *&v68.epoch;
      v55 = *&v68.epoch;
      v53 = *&v68.timescale;
      v51 = *&v68.value;
      v52 = *&v68.value;
    }

    ++v50;
    v49 += 8;
    if (v49 == 64)
    {
      v61 = v64;
      v64[15] = v52;
      v61[16] = v51;
      v61[17] = v53;
      v61[18] = v54;
      v61[19] = v55;
      v61[20] = v56;
      operator new();
    }
  }
}

void sub_2601462B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, PCSharedCount a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a11)
  {
    (*(*a11 + 24))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&a45);
  PCSharedCount::~PCSharedCount(&a16);
  _Unwind_Resume(a1);
}

void OZ3DEngineCore::makeRenderImageSource()
{
  {
    OZ3DEngineCore::makeRenderImageSource();
  }

  std::mutex::lock(&OZ3DEngineCore::makeRenderImageSource(OZRenderParams const&,OZRenderGraphState const&,BOOL,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m);
  operator new();
}

{
  {
    __cxa_atexit(MEMORY[0x277D82690], &OZ3DEngineCore::makeRenderImageSource(OZRenderParams const&,OZRenderGraphState const&,BOOL,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m, &dword_25F8F0000);
  }
}

void sub_260146844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13.var0 = va_arg(va1, PC_Sp_counted_base *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  PCSharedCount::~PCSharedCount(va);
  OZRenderParams::~OZRenderParams(va1);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&STACK[0x6C0]);
  std::__list_imp<unsigned int>::clear(&STACK[0x620]);
  std::unique_ptr<LiGraphBuilder>::reset[abi:ne200100]((v11 - 128), 0);
  PCSharedCount::~PCSharedCount((v11 - 112));
  std::mutex::unlock(&OZ3DEngineCore::makeRenderImageSource(OZRenderParams const&,OZRenderGraphState const&,BOOL,PCMatrix44Tmpl<float> const&,CMTime const&,OZElement *,Li3DEngineScene *)::m);
  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineCore::getEnvironmentMap(OZ3DEngineCore *this, OZScene *a2)
{
  if (*(this + 73) / 100.0 <= 0.0)
  {
    return 0;
  }

  else
  {
    return OZ3DEngineCore::getCachedEnvironmentMap(this);
  }
}

uint64_t Li3DEngineImageSource::setMatteNode(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 232);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 232) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t Li3DEngineImageSource::setDepthNode(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 224);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 224) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t OZ3DEngineCore::getCachedEnvironmentMap(OZ3DEngineCore *this)
{
  v1 = OZ3DEngineCore::getCachedEnvironmentMap(void)::environmentMap;
  if (!OZ3DEngineCore::getCachedEnvironmentMap(void)::environmentMap)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ProVideoiOS"];
    if (!v2)
    {
      v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iMovie.ProVideoiOS"];
    }

    v3 = CFStringCreateWithCString(0, [objc_msgSend(objc_msgSend(v2 "resourcePath")], 0x600u);
    v4 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 0);
    CFRelease(v3);
    PCLoadBitmap(v4, &v6);
    CFRelease(v4);
    if (v6)
    {
      CreateCGImageFromPCBitmap(&v6, 16);
    }

    v1 = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    OZ3DEngineCore::getCachedEnvironmentMap(void)::environmentMap = 0;
  }

  return v1;
}

void sub_260146BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

float OZMaterialLayerBase::calcTextureScale(OZMaterialLayerBase *this)
{
  v1 = OZPreferenceManager::Instance(this);
  TextureResolution = OZPreferenceManager::getTextureResolution(v1);
  if (!TextureResolution)
  {
    if (PCInfo::texturesShouldUseQuarterRes(TextureResolution))
    {
      LODWORD(TextureResolution) = 3;
    }

    else
    {
      LODWORD(TextureResolution) = 1;
    }
  }

  result = 1.0;
  if (TextureResolution == 2)
  {
    result = 0.5;
  }

  if (TextureResolution == 3)
  {
    return 0.25;
  }

  return result;
}

OZChannelBase *OZMaterialLayerBase::initBase(OZMaterialLayerBase *this)
{
  OZMaterialLayerBase::setLayerTypeStrings(this);
  OZMaterialLayerBase::setLayerSubtypeStrings(this);
  OZMaterialLayerBase::showHideLayerSubtypeChannel(this);
  (*(*this + 128))(this);
  OZChannelBase::setInspectorCtlrClassName(this, @"TXMaterialLayerFolderGroupController");
  OZChannelBase::setLabelCtlrClassName(this, @"TXMaterialLayerFolderLabelController");
  OZChannelFolder::setFoldFlag(this, 655360);
  OZChannelBase::setFlag((this + 648), 2, 0);
  OZChannelBase::setFlag((this + 648), 0x100000000, 0);
  OZChannelBase::setFlag((this + 936), 0x100000000, 0);
  OZChannelBase::setParameterCtlrClassName((this + 936), @"OZMaterialLayerSubtypeEnumController");

  return OZChannelBase::setFlag(this, 128, 0);
}

void OZChannelStringEnum::~OZChannelStringEnum(PCString *this)
{
  this->var0 = &unk_2872905C0;
  this[2].var0 = &unk_287290930;
  PCString::~PCString(this + 35);
  v2 = this + 32;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZChannelEnum::~OZChannelEnum(this);
}

{
  this->var0 = &unk_2872905C0;
  this[2].var0 = &unk_287290930;
  PCString::~PCString(this + 35);
  v2 = this + 32;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZChannelEnum::~OZChannelEnum(this);
  MEMORY[0x2666E9F00]();
}

void OZMaterialLayerBase::OZMaterialLayerBase(OZMaterialLayerBase *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v5 = &unk_28728F720;
  *(v5 + 16) = &unk_28728FAC0;
  *(v5 + 128) = 0;
  PCURL::PCURL(&v7, @"Material Layer Selection Enum");
  PCURL::PCURL(&v6, @"Material Layer Selection");
  OZChannelEnum::OZChannelEnum((this + 136), &v7, &v6, this, 1u, 0xAu, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Layer Subselection Enum");
  PCURL::PCURL(&v6, @"Material Layer Subselection");
  OZChannelEnum::OZChannelEnum((this + 392), &v7, &v6, this, 2u, 0xAu, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Layer Selection Enum");
  PCURL::PCURL(&v6, @"Material Layer Selection");
  OZChannelStringEnum::OZChannelStringEnum((this + 648), &v7, &v6, this, 3u, 2u);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Material Layer Subselection Enum");
  PCURL::PCURL(&v6, @"Material Layer Subselection");
  OZChannelEnum::OZChannelEnum((this + 936), &v7, &v6, this, 4u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  *(this + 75) = 0u;
  *(this + 149) = this + 1200;
  *(this + 304) = 0;
  OZMaterialLayerBase::initBase(this);
}

void sub_260147020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  v12 = v11;
  PCSpinLock::~PCSpinLock((v10 + 1216));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v10 + 1192, *v12);
  OZChannelEnum::~OZChannelEnum((v10 + 936));
  OZChannelStringEnum::~OZChannelStringEnum((v10 + 648));
  OZChannelEnum::~OZChannelEnum((v10 + 392));
  OZChannelEnum::~OZChannelEnum((v10 + 136));
  OZChannelFolder::~OZChannelFolder(v10);
  _Unwind_Resume(a1);
}

void sub_2601470E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  JUMPOUT(0x2601470D4);
}

void OZMaterialLayerBase::OZMaterialLayerBase(OZMaterialLayerBase *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_28728F720;
  *(v5 + 16) = &unk_28728FAC0;
  *(v5 + 128) = 0;
  OZChannelEnum::OZChannelEnum((v5 + 136), &a2[1].var3, this);
  OZChannelEnum::OZChannelEnum((this + 392), &a2[3].var7, this);
  OZChannelStringEnum::OZChannelStringEnum((this + 648), &a2[5].var11, this);
  OZChannelEnum::OZChannelEnum((this + 936), &a2[8].var5, this);
  *(this + 75) = 0u;
  *(this + 149) = this + 1200;
  *(this + 304) = 0;
  OZChannelBase::setFlag(this, 128, 0);
}

void sub_2601471E4(_Unwind_Exception *a1)
{
  v3 = v2;
  PCSpinLock::~PCSpinLock((v1 + 1216));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v1 + 1192, *v3);
  OZChannelEnum::~OZChannelEnum((v1 + 936));
  OZChannelStringEnum::~OZChannelStringEnum((v1 + 648));
  OZChannelEnum::~OZChannelEnum((v1 + 392));
  OZChannelEnum::~OZChannelEnum((v1 + 136));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZMaterialLayerBase::setLayerTypeStrings(PCString *this)
{
  v2 = (this->var0[27].isa)(this);
  if (v2)
  {
    v3 = v2;
    OZChannelEnum::clearStrings(this + 81);
    PCURL::PCURL(&v4, v3);
    OZChannelStringEnum::setStrings(this + 81, &v4, 1);
    PCString::~PCString(&v4);
  }
}

uint64_t OZMaterialLayerBase::setLayerSubtypeStrings(PCString *this)
{
  v2 = (this->var0[27].info)(this);
  if (v2)
  {
    v3 = v2;
    OZChannelEnum::clearStrings(this + 117);
    PCURL::PCURL(&v5, v3);
    OZChannelEnum::setStrings(this + 117, &v5, 1);
    PCString::~PCString(&v5);
    (this->var0[27].data)(&v5, this);
    OZChannelEnum::setImages(&this[117], &v5);
    PCString::~PCString(&v5);
  }

  return (this->var0[24].data)(this);
}

OZChannelBase *OZMaterialLayerBase::showHideLayerSubtypeChannel(OZMaterialLayerBase *this)
{
  if ((*(*this + 872))(this))
  {

    return OZChannelBase::resetFlag((this + 936), 0x400000, 0);
  }

  else
  {

    return OZChannelBase::setFlag((this + 936), 0x400000, 0);
  }
}

void OZMaterialLayerBase::~OZMaterialLayerBase(OZMaterialLayerBase *this)
{
  *this = &unk_28728F720;
  *(this + 2) = &unk_28728FAC0;
  PCSpinLock::~PCSpinLock(this + 304);
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(this + 1192, *(this + 150));
  OZChannelEnum::~OZChannelEnum(this + 117);
  *(this + 81) = &unk_2872905C0;
  *(this + 83) = &unk_287290930;
  PCString::~PCString(this + 116);
  v2 = (this + 904);
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZChannelEnum::~OZChannelEnum(this + 81);
  OZChannelEnum::~OZChannelEnum(this + 49);
  OZChannelEnum::~OZChannelEnum(this + 17);
  OZChannelFolder::~OZChannelFolder(this);
}

void OZMaterialLayerBase::collectInternalTexturesFromLayeredMaterial(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *OZMaterialLayerBase::removeThisFromBehaviors(OZChannelBase *this)
{
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    v3 = result[158];
    if (v3)
    {
      {
        v4 = result + 125;
        for (i = result[126]; i != v4; i = *(i + 8))
        {
          result = (*(**(i + 16) + 160))(*(i + 16), this);
        }
      }
    }
  }

  return result;
}

uint64_t OZMaterialLayerBase::parseEnd(OZMaterialLayerBase *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelFolder::parseEnd(this, a2);
  if (!OZChannelBase::testFlag((this + 392), 2))
  {
    v4 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((this + 136), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setValue((this + 648), v4, ValueAsInt, 0);
    v6 = OZChannel::getValueAsInt((this + 392), v4, 0.0);
    OZChannel::setValue((this + 936), v4, v6, 0);
  }

  OZChannelBase::setFlag((this + 136), 10, 0);
  OZChannelBase::setFlag((this + 392), 10, 0);
  OZChannelBase::setFlag((this + 648), 2, 0);
  OZChannelBase::resetFlag((this + 648), 0x400000, 0);
  OZChannelBase::resetFlag((this + 936), 0x400000, 0);
  OZChannelBase::resetFlag((this + 936), 2, 0);
  OZChannelFolder::setFoldFlag(this, 0x80000);
  OZMaterialLayerBase::setLayerSubtypeStrings(this);
  OZMaterialLayerBase::showHideLayerSubtypeChannel(this);
  OZChannelBase::setFlag(this, 128, 0);
  return v3;
}

OZChannelBase *OZMaterialLayerBase::setLayerType(OZMaterialLayerBase *this, uint64_t a2)
{
  v4 = this + 648;
  v5 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  (*(*(this + 81) + 712))(v4, v5, 0, a2);
  if (ValueAsInt != a2)
  {
    v7.n128_f64[0] = (*(*this + 904))(this, a2);
    (*(*(this + 117) + 712))(this + 936, MEMORY[0x277CC08F0], 0, v7);
    OZMaterialLayerBase::setLayerSubtypeStrings(this);
  }

  return OZMaterialLayerBase::showHideLayerSubtypeChannel(this);
}

OZChannelObjectRootBase *OZMaterialLayerBase::markFactoriesForSerialization(OZFactory **this, OZChannelFolder *a2)
{
  OZFactory::setNeedsSaving(this[1], 1);

  return OZChannelObjectRootBase::markVaryingFolderFactoriesForSerialization(this, a2, v4);
}

OZChannelObjectRootBase *non-virtual thunk toOZMaterialLayerBase::markFactoriesForSerialization(OZFactory **this, OZChannelFolder *a2)
{
  v3 = (this - 2);
  OZFactory::setNeedsSaving(*(this - 1), 1);

  return OZChannelObjectRootBase::markVaryingFolderFactoriesForSerialization(v3, a2, v4);
}

uint64_t OZMaterialLayerBase::writeHeader(OZChannelBase *this, OZFactory *a2, int a3)
{
  var1 = this->var1;
  v7 = OZFactory::fileRefID(var1, a2);
  OZFactory::setFileRefID(var1, v7);

  return OZChannelBase::writeHeader(this, a2, a3);
}

uint64_t OZMaterialLayerBase::writeBody(OZChannelFolder *this, PCSerializerWriteStream *a2, BOOL a3, int a4)
{
  OZChannelBase::writeFlags(this, a2, 1);

  return OZChannelFolder::writeBody(this, a2, 0, a4, 0);
}

uint64_t non-virtual thunk toOZMaterialLayerBase::writeBody(OZMaterialLayerBase *this, PCSerializerWriteStream *a2, BOOL a3, int a4)
{
  v6 = (this - 16);
  OZChannelBase::writeFlags(this - 16, a2, 1);

  return OZChannelFolder::writeBody(v6, a2, 0, a4, 0);
}

BOOL OZMaterialLayerBase::allowsAssignment(OZMaterialLayerBase *this, const OZChannelBase *a2)
{
  result = 0;
  if (a2)
  {
    var1 = a2->var1;
    if (var1)
    {
      v4 = *(this + 1);
      if (v4)
      {
        v6 = *(v4 + 8);
        if (OZFactory::isKindOfClass(var1, &v6))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *OwningMaterialLayerMapChannel(OZChannelFolder *a1)
{
  while (1)
  {
    a1 = *(a1 + 6);
    if (!a1)
    {
      break;
    }

    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *OwningMaterialMapTransformChannel(OZChannelFolder *a1)
{
  while (1)
  {
    a1 = *(a1 + 6);
    if (!a1)
    {
      break;
    }

    if (result)
    {
      return result;
    }
  }

  return 0;
}

void OZMaterialLayerBase::channelValueWillBeSet(OZChannelBase *this, void ***a2, const CMTime *a3, double a4)
{
  v7 = OwningMaterialLayerMapChannel(a2);
  if (v7)
  {
    v8 = v7;
    if ((v7 + 1968) == a2)
    {
      ObjectManipulator = OZChannelBase::getObjectManipulator(this);
      if (ObjectManipulator)
      {
        v10 = (ObjectManipulator - 16);
      }

      else
      {
        v10 = 0;
      }

      OZChannelMaterialLayerMap::willSetSharedTransform(v8, a4, v10);
    }
  }

  v11 = OwningMaterialMapTransformChannel(a2);
  if (v11)
  {
    v12 = v11;
    if (&v11[1].var2 == a2)
    {
      v13 = OZChannelBase::getObjectManipulator(this);
      if (v13)
      {
        v14 = (v13 - 16);
      }

      else
      {
        v14 = 0;
      }

      OZChannelBase::setRangeName(v12, v14);
    }
  }
}

uint64_t OZMaterialLayerBase::resetToDefault(OZChannelFolder *this, uint64_t a2)
{
  OZChannelFolder::resetToDefault(this, a2);

  return OZMaterialLayerBase::setLayerSubtypeStrings(this);
}

void sub_260147E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t OZMaterialLayerBase::getSequenceChannels(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  if (ObjectManipulator)
  {
    v3 = ObjectManipulator - 16;
  }

  else
  {
    v3 = 0;
  }

  return OZLayeredMaterial::getSequenceChannelsForMaterialLayer(v3, this);
}

void OZMaterialLayerBase::getTextureTokensLock(OZMaterialLayerBase *this@<X0>, os_unfair_lock_s **a2@<X8>)
{
  v2 = (this + 1216);
  *a2 = v2;
  PCSpinLock::lock(v2);
}

void *OZMaterialLayerBase::findToken@<X0>(OZMaterialLayerBase *this@<X0>, const PCHash128 *a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(this + 1192, a2);
  if ((this + 1200) == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = result[7];
    *a3 = result[6];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void OZMaterialLayerBase::addToken(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a3[1];
  v5 = *a3;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,std::weak_ptr<LiTextureStoreTokenImpl>>>((a1 + 1192), &v4, &v4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_260147F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AddGradientToMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9)
{
  v10 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5).n128_u64[0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v89 = v17;
  v19 = v18;
  v20 = v9;
  v21 = *&v10;
  v23 = v22;
  v25 = v24;
  v123[520] = *MEMORY[0x277D85DE8];
  v117 = 0x3FF0000000000000;
  v114 = 0x3FF0000000000000;
  v111 = 0x3FF0000000000000;
  v108 = 0x3FF0000000000000;
  v109 = 0u;
  v110 = 0u;
  v112 = 0u;
  v113 = 0u;
  v115 = 0u;
  v116 = 0u;
  v26 = *(v9 + 588);
  if (*(v9 + 584) <= v26)
  {
    v27 = 2 * (v26 + 1) + 1;
  }

  else
  {
    v27 = *(v9 + 584);
  }

  PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v20 + 576), v26 + 1, v27);
  v28 = *(v20 + 592) + 152 * *(v20 + 588);
  *(v28 - 152) = *(v19 + 80);
  ProShade::Value::set(v28 - 144, 3, 7, &v108);
  SamplerInfo = LiMaterial::getSamplerInfo(v20, *(v19 + 16));
  v106 = *(SamplerInfo + 324);
  v107 = *(SamplerInfo + 328);
  v30 = *(SamplerInfo + 329);
  v87 = *(SamplerInfo + 330);
  v88 = *(SamplerInfo + 338);
  v31 = v12 != 0;
  ProGL::GL::GL(v105);
  if (OZChannel::getValueAsInt((v16 + 800), v25, 0.0))
  {
    OZChannel::getValueAsDouble((v16 + 1192), v25, 0.0);
    v33 = v32;
    OZChannel::getValueAsDouble((v16 + 1344), v25, 0.0);
    v35 = v34;
    OZChannel::getValueAsDouble((v16 + 1896), v25, 0.0);
    v37 = v36;
    OZChannel::getValueAsDouble((v16 + 2048), v25, 0.0);
    v39 = sqrt((v37 - v33) * (v37 - v33) + (v38 - v35) * (v38 - v35));
    v40 = *(v14 + 24);
    v41 = 512.0 / v39;
    if (v39 <= 512.0)
    {
      v41 = 1.0;
    }

    v86 = v41;
    PCHashWriteStream::PCHashWriteStream(v123);
    PCString::PCString(v118, "OZMaterialLayer::gradient2d");
    PCHashWriteStream::writeValue(v123, v118);
    PCString::~PCString(v118);
    OZChannelGradient::getGradientHash(v16, v25, 1, 0, 256);
    PCHashWriteStream::writeValue(v123, v118);
    Hash = PCHashWriteStream::getHash(v123);
    v104 = *Hash;
    v43 = OZCacheManager::Instance(Hash);
    OZCacheManager::getTextureForKey(v43, v23, &v104, 0, v103);
    PCWorkingColorVector::PCWorkingColorVector(&v102);
    if (!v103[0])
    {
      operator new();
    }

    PGTexture::getPGLTexture(v118, v103[0]);
    v44 = *v118;
    *&v118[8] = 0;
    *v118 = 0;
    v45 = *&v102.f64[1];
    v102 = v44;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      if (*&v118[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v118[8]);
      }
    }

    v44.f64[0] = 0.0 - v33;
    *&v122[32] = 0x3FF0000000000000;
    v121 = 0x3FF0000000000000;
    *&v118[40] = 0x3FF0000000000000;
    *v118 = 0x3FF0000000000000;
    memset(&v118[8], 0, 32);
    v119 = 0u;
    v120 = 0u;
    memset(v122, 0, 32);
    PCMatrix44Tmpl<double>::leftTranslate(v118, v44, v40 * 0.5 - v35, 0.0);
    if (v86 != 1.0)
    {
      *v118 = vmulq_n_f64(*v118, v86);
      *&v118[16] = vmulq_n_f64(*&v118[16], v86);
      *&v118[32] = vmulq_n_f64(*&v118[32], v86);
      v119 = vmulq_n_f64(v119, v86);
    }

    v74 = *(v20 + 588);
    if (*(v20 + 584) <= v74)
    {
      v75 = 2 * (v74 + 1) + 1;
    }

    else
    {
      v75 = *(v20 + 584);
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v20 + 576), v74 + 1, v75);
    v76 = *(v20 + 592) + 152 * *(v20 + 588);
    *(v76 - 152) = *(v89 + 16);
    ProShade::Value::set(v76 - 144, 3, 7, v118);
    v77 = *(v20 + 588);
    if (*(v20 + 584) <= v77)
    {
      v78 = 2 * (v77 + 1) + 1;
    }

    else
    {
      v78 = *(v20 + 584);
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v20 + 576), v77 + 1, v78);
    v79 = *(v20 + 592) + 152 * *(v20 + 588);
    *(v79 - 152) = *(v19 + 48);
    v91 = 0uLL;
    *v92 = vdupq_n_s64(0x4090000000000000uLL);
    ProShade::Value::set(v79 - 144, 3, 4, &v91);
    ProShade::SamplerNode::setWrapMode(*(v19 + 16), 3u);
    v91 = 0x3FF0000000000000uLL;
    *&v92[8] = xmmword_260851C00;
    v93 = xmmword_2603426F0;
    *v92 = 0;
    v94 = 0x4080000000000000;
    v95 = 0;
    v96 = 0;
    v97 = 0x3FF0000000000000;
    v98 = 0u;
    v99 = 0u;
    v100 = 0x3FF0000000000000;
    LiMaterial::setTexture(v20, v19, &v102, &v91);
    if (*&v102.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v102.f64[1]);
    }

    if (v103[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103[1]);
    }

    PCHashWriteStream::~PCHashWriteStream(v123);
    v73 = 0;
    v80 = 0;
    v31 = 0;
    v30 = 1;
  }

  else
  {
    PCHashWriteStream::PCHashWriteStream(v123);
    (*(*v16 + 448))(v16, v123, v25);
    v46 = PCHashWriteStream::getHash(v123);
    v91 = *v46;
    v47 = OZCacheManager::Instance(v46);
    OZCacheManager::getTextureForKey(v47, v23, &v91, 0, v101);
    PCWorkingColorVector::PCWorkingColorVector(v90);
    if (!v101[0])
    {
      OZChannelGradient::getGradient(v16, v25, 1, a9, v118, 0x100u, 0, &kPCNoToneMapMethod);
      ProGL::createTexture();
    }

    PGTexture::getPGLTexture(v118, v101[0]);
    v48 = *v118;
    *&v118[8] = 0;
    *v118 = 0;
    v49 = *(&v90[0] + 1);
    v90[0] = v48;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      if (*&v118[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v118[8]);
      }
    }

    *&v122[32] = 0x3FF0000000000000;
    v121 = 0x3FF0000000000000;
    *&v118[40] = 0x3FF0000000000000;
    *v118 = 0x3FF0000000000000;
    memset(&v118[8], 0, 32);
    v119 = 0u;
    v120 = 0u;
    memset(v122, 0, 32);
    LiMaterial::setTexture(v20, v19, v90, v118);
    v50 = *(v20 + 588);
    if (*(v20 + 584) <= v50)
    {
      v51 = 2 * (v50 + 1) + 1;
    }

    else
    {
      v51 = *(v20 + 584);
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v20 + 576), v50 + 1, v51);
    v52 = *(v20 + 592) + 152 * *(v20 + 588);
    *(v52 - 152) = *(v19 + 48);
    *&v118[8] = 0;
    *v118 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v118[16] = _Q0;
    ProShade::Value::set(v52 - 144, 3, 4, v118);
    *&v122[32] = 0x3FF0000000000000;
    v121 = 0x3FF0000000000000;
    *&v118[40] = 0x3FF0000000000000;
    *v118 = 0x3FF0000000000000;
    memset(&v118[8], 0, 32);
    v119 = 0u;
    v120 = 0u;
    memset(v122, 0, 32);
    if (OZChannel::getValueAsInt((v16 + 2984), MEMORY[0x277CC08F0], 0.0) == 1)
    {
      v58 = 1.0 / v21;
      v59 = *v118;
      if (1.0 / v21 == 1.0)
      {
        v60 = *&v118[16];
      }

      else
      {
        v59 = vmulq_n_f64(*v118, v58);
        v60 = vmulq_n_f64(*&v118[16], v58);
      }

      *v118 = vaddq_f64(*&v122[8], v59);
      *&v118[16] = vaddq_f64(*&v122[24], v60);
      v73 = 1;
    }

    else
    {
      OZChannel::getValueAsDouble((v16 + 1192), v25, 0.0);
      v62 = v61;
      OZChannel::getValueAsDouble((v16 + 1344), v25, 0.0);
      v64 = v63;
      OZChannel::getValueAsDouble((v16 + 1896), v25, 0.0);
      v66 = v65;
      OZChannel::getValueAsDouble((v16 + 2048), v25, 0.0);
      v67 = v66 - v62;
      v69 = v68 - v64;
      v70 = -atan2(v68 - v64, v67);
      v71.f64[0] = -v62;
      PCMatrix44Tmpl<double>::leftTranslate(v118, v71, -v64, 0.0);
      PCMatrix44Tmpl<double>::leftRotate(v118, 2, v70);
      v72 = 1.0 / sqrt(v67 * v67 + v69 * v69);
      v73 = 0;
      if (v72 != 1.0)
      {
        *v118 = vmulq_n_f64(*v118, v72);
        *&v118[16] = vmulq_n_f64(*&v118[16], v72);
      }
    }

    v81 = *(v20 + 588);
    if (*(v20 + 584) <= v81)
    {
      v82 = 2 * (v81 + 1) + 1;
    }

    else
    {
      v82 = *(v20 + 584);
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize((v20 + 576), v81 + 1, v82);
    v83 = *(v20 + 592) + 152 * *(v20 + 588);
    *(v83 - 152) = *(v89 + 16);
    ProShade::Value::set(v83 - 144, 3, 7, v118);
    ProShade::SamplerNode::setWrapMode(*(v19 + 16), 3u);
    if (*(&v90[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v90[0] + 1));
    }

    if (v101[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v101[1]);
    }

    PCHashWriteStream::~PCHashWriteStream(v123);
    v80 = 1;
  }

  ValueAsInt = OZChannel::getValueAsInt((v16 + 2728), MEMORY[0x277CC08F0], 0.0);
  v85 = LiMaterial::obtainSamplerInfo(v20, *(v19 + 16));
  *(v85 + 158) = 1;
  *(v85 + 318) = v73;
  *(v85 + 319) = 0;
  *(v85 + 80) = 3;
  *(v85 + 81) = v106;
  *(v85 + 328) = v107;
  *(v85 + 329) = v30;
  *(v85 + 165) = v87;
  *(v85 + 83) = ValueAsInt == 1;
  *(v85 + 336) = v80;
  *(v85 + 337) = v31;
  *(v85 + 338) = v88;
  *(v85 + 312) = 1;
  ProGL::GL::~GL(v105);
}

void sub_260149030(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(&STACK[0x298]);
  if (STACK[0x2A8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2A8]);
  }

  if (STACK[0x2B8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2B8]);
  }

  PCHashWriteStream::~PCHashWriteStream(&STACK[0x1388]);
  ProGL::GL::~GL(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void AddTextureToMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v75 = v9;
  v76 = v10;
  v77 = v11;
  v13 = v12;
  v80 = v14;
  v84 = v15;
  v128 = *MEMORY[0x277D85DE8];
  v81 = *(v16 + 16);
  v73 = *(v16 + 24);
  v85 = v16;
  v17 = *v16;
  SamplerInfo = LiMaterial::getSamplerInfo(*v16, *(v12 + 16));
  v19 = *(SamplerInfo + 317);
  v20 = *(SamplerInfo + 319);
  v21 = *(SamplerInfo + 320);
  v22 = *(SamplerInfo + 324);
  v23 = *(SamplerInfo + 328);
  v122 = *(SamplerInfo + 331);
  v121 = *(SamplerInfo + 329);
  v24 = *(SamplerInfo + 332);
  v25 = *(SamplerInfo + 336);
  v26 = *(SamplerInfo + 337);
  v27 = *(SamplerInfo + 338);
  v78 = v17;
  v79 = v13;
  v28 = *(v13 + 16);
  v29 = v23;
  v126 = *(SamplerInfo + 329);
  v127 = *(SamplerInfo + 331);
  v30 = LiMaterial::obtainSamplerInfo(v17, v28);
  *(v30 + 316) = 0;
  *(v30 + 317) = v19;
  *(v30 + 319) = v20;
  *(v30 + 80) = v21;
  *(v30 + 81) = v22;
  *(v30 + 328) = v29;
  *(v30 + 329) = v126;
  *(v30 + 331) = v127;
  *(v30 + 83) = v24;
  v74 = v25;
  *(v30 + 336) = v25;
  *(v30 + 337) = v26;
  v83 = v27;
  *(v30 + 338) = v27;
  *(v30 + 312) = 1;
  ImageNode = OZChanElementOrFootageRef::getImageNode((v84 + 136));
  if (ImageNode)
  {
    v32 = ImageNode;
    ValueAsInt = OZChannel::getValueAsInt((v84 + 1968), MEMORY[0x277CC08F0], 0.0);
    v34 = *v81;
    v120.epoch = *(v81 + 2);
    *&v120.value = v34;
    v118 = 0uLL;
    v119 = 0;
    OZChannelImageWithOptions::getFrame(&v118, v84, &v120);
    OZRenderParams::OZRenderParams(v115, v81);
    *&v115[0]._pcColorDesc._colorSpaceRef._obj = v118;
    v117 = 0;
    *&v115[0]._pcColorDesc._toneMapMethod._gain = v119;
    v116 = 0;
    Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v114, v32, v115);
    PCHashWriteStream::PCHashWriteStream(&v126);
    v113[0] = v113;
    v113[1] = v113;
    v113[2] = 0;
    (*(*v32 + 48))(&v112, v32, &v126, v115, v113);
    PCHashWriteStream::PCHashWriteStream(v125);
    PCHashWriteStream::setHash(v125, &v112);
    v35 = OZRenderParams::setReducedResolutionOverride(v115, 1);
    v36 = OZMaterialLayerBase::calcTextureScale(v35);
    PCHashWriteStream::writeValue(v125, v36);
    v37 = OZChannel::getValueAsInt((v84 + 5744), &v120, 0.0) != 0;
    PCHashWriteStream::writeValue(v125, v37);
    if (v22)
    {
      PCHashWriteStream::writeValue(v125, v22);
      PCHashWriteStream::writeValue(v125, v29 & 1);
    }

    WorkingColorSpace = OZRenderParams::getWorkingColorSpace(v115);
    if (v22)
    {
      if (v29)
      {
        v40 = PCColorSpaceCache::cgsRGB(WorkingColorSpace, v39);
      }

      else
      {
        v40 = 0;
      }
    }

    else if (v83)
    {
      v40 = 0;
    }

    else
    {
      v40 = WorkingColorSpace;
    }

    PCColorSpaceHandle::getMD5(v40, &v101);
    PCHashWriteStream::writeValue(v125, &v101);
    PCHashWriteStream::writeValue(v125, *(v81 + 202));
    Hash = PCHashWriteStream::getHash(v125);
    v111 = *Hash;
    v42 = OZCacheManager::Instance(Hash);
    v110 = 0x3FF0000000000000;
    v107 = 0x3FF0000000000000;
    v104 = 0x3FF0000000000000;
    v101 = 0x3FF0000000000000;
    v102 = 0u;
    v103 = 0u;
    v105 = 0u;
    v106 = 0u;
    v108 = 0u;
    v109 = 0u;
    OZRenderParams::getRenderGPU(&v99, *(v85 + 16));
    OZCacheManager::getTextureForKey(v42, &v99, &v111, &v101, &v97);
    v95 = 0;
    PCSharedCount::PCSharedCount(&v96);
    if (!v97)
    {
      (*(*v32 + 176))(v89, v32, v115, v73, 0);
      v95 = *v89;
      PCSharedCount::PCSharedCount(v123, &v89[8]);
      PCSharedCount::operator=(&v96, v123);
      PCSharedCount::~PCSharedCount(v123);
      PCSharedCount::~PCSharedCount(&v89[8]);
    }

    v82 = v37;
    if (ValueAsInt)
    {
      v43 = (v80 + 896);
    }

    else
    {
      v43 = (v84 + 2736);
    }

    v44 = OZChannel::getValueAsInt(v43, MEMORY[0x277CC08F0], 0.0);
    v45 = OZChannel::getValueAsInt((v84 + 1328), &v120, 0.0);
    v93[0] = 0;
    v93[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v94 = _Q0;
    (*(*v32 + 88))(v32, v93, v115);
    *&v92[40] = 0x3FF0000000000000;
    *v92 = 0x3FF0000000000000;
    *&v89[40] = 0x3FF0000000000000;
    *v89 = 0x3FF0000000000000;
    memset(&v89[8], 0, 32);
    v90 = 0u;
    v91 = 0u;
    memset(&v92[8], 0, 32);
    if (v89 != v77)
    {
      v51 = *(v77 + 80);
      v91 = *(v77 + 64);
      *v92 = v51;
      v52 = *(v77 + 112);
      *&v92[16] = *(v77 + 96);
      *&v92[32] = v52;
      v53 = *(v77 + 16);
      *v89 = *v77;
      *&v89[16] = v53;
      v54 = *(v77 + 48);
      *&v89[32] = *(v77 + 32);
      v90 = v54;
    }

    if (v97)
    {
      PGTexture::getPGLTexture(v123, v97);
      v55 = v79;
      LiMaterial::setTexture(v78, v79, v123, &v101);
      if (v123[1].var0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123[1].var0);
      }

      v88 = xmmword_26084A5D0;
      PGTexture::getTexCoords(v97, &v88);
      v56 = v88;
      os_unfair_lock_opaque = v78[147]._os_unfair_lock_opaque;
      if (v78[146]._os_unfair_lock_opaque <= os_unfair_lock_opaque)
      {
        v58 = 2 * (os_unfair_lock_opaque + 1) + 1;
      }

      else
      {
        v58 = v78[146]._os_unfair_lock_opaque;
      }

      PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v78[144]._os_unfair_lock_opaque, os_unfair_lock_opaque + 1, v58);
      v59 = *&v78[148]._os_unfair_lock_opaque + 152 * v78[147]._os_unfair_lock_opaque;
      *(v59 - 152) = *(v79 + 48);
      *&v123[0].var0 = vcvtq_f64_f32(*v56.f32);
      v124 = vcvtq_f64_f32(*&v56.u32[2]);
      ProShade::Value::set(v59 - 144, 3, 4, v123);
      v60 = *(v85 + 128);
      PGTexture::getPGLTexture(v123, v97);
      OZMaterialStatistics::registerTexture(v60, v123, v61, v62, v63);
      v64 = v44 != 2;
      if (v123[1].var0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123[1].var0);
      }
    }

    else
    {
      v64 = v44 != 2;
      v86.var0 = v95;
      PCSharedCount::PCSharedCount(&v87, &v96);
      v55 = v79;
      LiMaterial::setTexture(v78, v79, &v86, v40, &v111, v36);
      PCSharedCount::~PCSharedCount(&v87);
    }

    v65 = *(v55 + 16);
    if (!v65)
    {
      throw_PCNullPointerException(1);
    }

    ProShade::SamplerNode::setWrapMode(v65, v45);
    v66 = v78[147]._os_unfair_lock_opaque;
    if (v78[146]._os_unfair_lock_opaque <= v66)
    {
      v67 = 2 * (v66 + 1) + 1;
    }

    else
    {
      v67 = v78[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v78[144]._os_unfair_lock_opaque, v66 + 1, v67);
    v68 = *&v78[148]._os_unfair_lock_opaque + 152 * v78[147]._os_unfair_lock_opaque;
    *(v68 - 152) = *(v55 + 80);
    ProShade::Value::set(v68 - 144, 3, 7, &v101);
    v69 = v78[147]._os_unfair_lock_opaque;
    if (v78[146]._os_unfair_lock_opaque <= v69)
    {
      v70 = 2 * (v69 + 1) + 1;
    }

    else
    {
      v70 = v78[146]._os_unfair_lock_opaque;
    }

    PCArray<LiMaterial::UniformValue,PCArray_Traits<LiMaterial::UniformValue>>::resize(&v78[144]._os_unfair_lock_opaque, v69 + 1, v70);
    v71 = *&v78[148]._os_unfair_lock_opaque + 152 * v78[147]._os_unfair_lock_opaque;
    *(v71 - 152) = *(v76 + 16);
    ProShade::Value::set(v71 - 144, 3, 7, v89);
    v72 = LiMaterial::obtainSamplerInfo(v78, *(v55 + 16));
    *(v72 + 316) = 1;
    *(v72 + 317) = v64;
    *(v72 + 318) = v44 == 0;
    *(v72 + 319) = v82;
    *(v72 + 80) = v45;
    *(v72 + 81) = v22;
    *(v72 + 328) = v29;
    *(v72 + 331) = v122;
    *(v72 + 329) = v121;
    *(v72 + 83) = v75;
    *(v72 + 336) = v74;
    *(v72 + 337) = a9 != 0;
    *(v72 + 338) = v83;
    *(v72 + 312) = 1;
    PCSharedCount::~PCSharedCount(&v96);
    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    PCHashWriteStream::~PCHashWriteStream(v125);
    std::__list_imp<unsigned int>::clear(v113);
    PCHashWriteStream::~PCHashWriteStream(&v126);
    Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(v114);
    OZRenderParams::~OZRenderParams(v115);
  }
}

void sub_260149AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, PCSharedCount a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(v65 + 1);
  PCSharedCount::~PCSharedCount(&a46);
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  PCHashWriteStream::~PCHashWriteStream(&STACK[0x848]);
  std::__list_imp<unsigned int>::clear(&a65);
  PCHashWriteStream::~PCHashWriteStream(&STACK[0x1888]);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&STACK[0x208]);
  OZRenderParams::~OZRenderParams(&STACK[0x250]);
  _Unwind_Resume(a1);
}

__n128 MaterialTextureTransformer::composeTextureMatrix@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  result.n128_u64[0] = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  if (a1 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v6 = a3 + i;
      result = *(a1 + i);
      v7 = *(a1 + i + 16);
      *v6 = result;
      *(v6 + 16) = v7;
    }
  }

  if (a2 == 1)
  {
    v27 = 0x3FF0000000000000;
    v24 = 0x3FF0000000000000;
    v21 = 0x3FF0000000000000;
    v18 = 0x3FF0000000000000;
    v19 = 0u;
    v20 = 0u;
    v22 = 0u;
    v23 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16[0] = 0.0;
    v16[1] = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v17 = _Q0;
    _Q0.n128_u64[0] = 0x400921FB54442D18;
    PCMatrix44Tmpl<double>::rotate(&v18, v16, 0, _Q0);
    PCMatrix44Tmpl<double>::operator*(a3, &v18, v16);
    if (v16 != a3)
    {
      for (j = 0; j != 16; j += 4)
      {
        v14 = a3 + j * 8;
        result = *&v16[j];
        v15 = *&v16[j + 2];
        *v14 = result;
        *(v14 + 16) = v15;
      }
    }
  }

  return result;
}

void OZMaterialStatistics::registerTexture(OZMaterialStatistics *this, const ProGL::TextureHandle *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v6 = v5;
  v8 = v7;
  v20[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v20);
  Name = ProGL::TextureHandle::getName(v6);
  PCHashWriteStream::writeValue(v20, Name);
  Hash = PCHashWriteStream::getHash(v20);
  if (!std::__tree<PCHash128>::__count_unique<PCHash128>((v8 + 2), Hash))
  {
    std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(v8 + 2, Hash, Hash);
    v11 = *(v8 + 2) + vcvtd_n_f64_u64(ProGL::TextureHandle::getSize(v6), 0x14uLL);
    ++*(v8 + 1);
    *(v8 + 2) = v11;
    if (v11 >= *(v8 + 3))
    {
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "OZMaterialStatistics(#textures:", 31);
      v13 = MEMORY[0x2666E9B50](v12, *(v8 + 1));
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", megs:", 7);
      v15 = MEMORY[0x2666E9B50](v14, *(v8 + 2));
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")  maxAvail:", 12);
      v17 = MEMORY[0x2666E9B50](v16, *v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v19, "exceeded texture memory available");
      PCException::PCException(exception, &v19);
    }
  }

  PCHashWriteStream::~PCHashWriteStream(v20);
}

void sub_260149EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCString::~PCString(&a9);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

double MaterialTextureTransformer::composeTextureTransform@<D0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  PCMatrix44Tmpl<double>::leftTranslate(a3, COERCE_UNSIGNED_INT64(-*a1), -a1[1], 0.0);
  PCMatrix44Tmpl<double>::leftRotate(a3, 2, -a4);
  v7 = 1.0 / *a2;
  v8 = 1.0 / a2[1];

  *&result = *&PCMatrix44Tmpl<double>::leftScale(a3, v7, v8, 1.0);
  return result;
}

void MaterialTextureTransformer::composeTextureTransform(uint64_t *__return_ptr a1@<X8>, CMTime *this@<X0>, const CMTime *a3@<X1>, const OZChannel2D *a4@<X2>, const OZChannelRotation3D *a5@<X3>)
{
  OZChannel::getValueAsDouble(&a3[5].epoch, this, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble(&a3[12], this, 0.0);
  v18[0] = v11;
  v18[1] = v12;
  OZChannel::getValueAsDouble((a4 + 440), this, 0.0);
  v14 = v13;
  OZChannel::getValueAsDouble((a5 + 136), this, 0.0);
  v17[0] = v15;
  OZChannel::getValueAsDouble((a5 + 288), this, 0.0);
  v17[1] = v16;
  MaterialTextureTransformer::composeTextureTransform(v18, v17, a1, v14);
}

double MaterialTextureTransformer::decomposeTextureTransform(__int128 *a1, double *a2, double *a3, float64x2_t *a4)
{
  memset(v31, 0, sizeof(v31));
  v32 = 4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  PCMatrix44Tmpl<double>::getTransformation(a1, v31);
  __asm { FMOV            V1.2D, #1.0 }

  *a4 = vdivq_f64(_Q1, *(&v31[1] + 8));
  v13 = -*&v34;
  *a3 = -*&v34;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v24 = 0x3FF0000000000000;
  v21 = 1.0;
  v22 = 0u;
  v23 = 0u;
  v25 = 0u;
  v26 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = a4->f64[0];
  v14 = a4->f64[1];
  if (a4->f64[0] != 1.0)
  {
    v21 = a4->f64[0];
    *&v22 = v15 * 0.0;
    *(&v22 + 1) = v15 * 0.0;
    *&v23 = v15 * 0.0;
  }

  if (v14 != 1.0)
  {
    *(&v23 + 1) = v14 * 0.0;
    v24 = *&v14;
    *&v25 = v14 * 0.0;
    *(&v25 + 1) = v14 * 0.0;
  }

  PCMatrix44Tmpl<double>::leftRotate(&v21, 2, v13);
  PCMatrix44Tmpl<double>::operator*(&v21, a1, &v18);
  result = -v19;
  v17 = -v20;
  *a2 = -v19;
  a2[1] = v17;
  return result;
}

uint64_t MaterialTextureTransformer::setTextureTransformChannels(CMTime *a1, __int128 *a2, OZChannel2D *a3, uint64_t a4, OZChannel2D *a5)
{
  v12[0] = 0.0;
  v12[1] = 0.0;
  v11 = 0;
  v10 = 0uLL;
  MaterialTextureTransformer::decomposeTextureTransform(a2, v12, &v11, &v10);
  return MaterialTextureTransformer::setTextureTransformChannels(a1, v12, &v11, v10.f64, a3, a4, a5);
}

uint64_t MaterialTextureTransformer::setTextureTransformChannels(CMTime *a1, double *a2, unint64_t *a3, double *a4, OZChannel2D *this, uint64_t a6, OZChannel2D *a7)
{
  OZChannel2D::setValue(this, a1, *a2, a2[1], 0);
  v12.n128_u64[0] = *a3;
  (*(*(a6 + 440) + 712))(a6 + 440, a1, 0, v12);
  v13 = *a4;
  v14 = a4[1];

  return OZChannel2D::setValue(a7, a1, v13, v14, 0);
}

void MaterialTextureTransformer::composeTextureTransform(const CMTime *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, uint64_t a10, double *a11, unsigned int *a12)
{
  if (OZChannel::getValueAsInt((a2 + 128), MEMORY[0x277CC08F0], 0.0))
  {
    if (!a3)
    {
      v77 = 0.0;
      v78 = 0.0;
      v38 = 0;
      v34 = 1.0;
      v22 = 0.0;
      v79 = 0.0;
      v75 = 0.0;
      v76 = 0.0;
      v30 = 1.0;
      goto LABEL_60;
    }

    v75 = 0.0;
    OZChannel::getValueAsDouble((a3 + 2856), a1, 0.0);
    v79 = v20;
    OZChannel::getValueAsDouble((a3 + 3008), a1, 0.0);
    v22 = v21;
    OZChannel::getValueAsDouble((a3 + 5048), a1, 0.0);
    v78 = v23;
    OZChannel::getValueAsDouble((a3 + 3560), a1, 0.0);
    v25 = v24;
    OZChannel::getValueAsDouble((a3 + 3712), a1, 0.0);
    if (v26 >= 0.0 || v26 <= -0.001)
    {
      v28 = v26;
    }

    else
    {
      v28 = -0.001;
    }

    if (v26 >= 0.0 && v26 < 0.001)
    {
      v30 = 0.001;
    }

    else
    {
      v30 = v28;
    }

    if (v25 >= 0.0 || v25 <= -0.001)
    {
      v32 = v25;
    }

    else
    {
      v32 = -0.001;
    }

    if (v25 >= 0.0 && v25 < 0.001)
    {
      v34 = 0.001;
    }

    else
    {
      v34 = v32;
    }

    v35 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a3 + 1952), MEMORY[0x277CC08F0], 0.0);
    v37 = OZChannel::getValueAsInt((a3 + 3864), v35, 0.0);
    v38 = v37 != 0;
    v76 = 0.0;
    v77 = 0.0;
    if (v37)
    {
      v77 = OZChannel::getValueAsInt((a3 + 4016), MEMORY[0x277CC08F0], 0.0);
      OZChannel::getValueAsDouble((a3 + 4304), a1, 0.0);
      v76 = v39;
      OZChannel::getValueAsDouble((a3 + 4456), a1, 0.0);
      v75 = v40;
    }

    v41 = (a3 + 1568);
  }

  else
  {
    v75 = 0.0;
    OZChannel::getValueAsDouble((a2 + 1288), a1, 0.0);
    v79 = v42;
    OZChannel::getValueAsDouble((a2 + 1440), a1, 0.0);
    v22 = v43;
    OZChannel::getValueAsDouble((a2 + 3480), a1, 0.0);
    v78 = v44;
    OZChannel::getValueAsDouble((a2 + 1992), a1, 0.0);
    v46 = v45;
    OZChannel::getValueAsDouble((a2 + 2144), a1, 0.0);
    if (v47 >= 0.0 || v47 <= -0.001)
    {
      v49 = v47;
    }

    else
    {
      v49 = -0.001;
    }

    if (v47 >= 0.0 && v47 < 0.001)
    {
      v30 = 0.001;
    }

    else
    {
      v30 = v49;
    }

    if (v46 >= 0.0 || v46 <= -0.001)
    {
      v52 = v46;
    }

    else
    {
      v52 = -0.001;
    }

    if (v46 >= 0.0 && v46 < 0.001)
    {
      v34 = 0.001;
    }

    else
    {
      v34 = v52;
    }

    v54 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((a2 + 384), MEMORY[0x277CC08F0], 0.0);
    v55 = OZChannel::getValueAsInt((a2 + 2296), v54, 0.0);
    v38 = v55 != 0;
    v76 = 0.0;
    v77 = 0.0;
    if (v55)
    {
      v77 = OZChannel::getValueAsInt((a2 + 2448), MEMORY[0x277CC08F0], 0.0);
      OZChannel::getValueAsDouble((a2 + 2736), a1, 0.0);
      v76 = v56;
      OZChannel::getValueAsDouble((a2 + 2888), a1, 0.0);
      v75 = v57;
    }

    v41 = a2;
  }

  OZChannelMaterialMapTransform::getPreviewScale(v41, a1, v82);
  if (ValueAsInt <= 1)
  {
    *a12 = ValueAsInt;
  }

LABEL_60:
  v58 = 0.0;
  v59 = 0.0;
  v60 = 0.0;
  if (a5 && a4)
  {
    OZChannel::getValueAsDouble((a5 + 136), a1, a8);
    v62 = v61;
    OZChannel::getValueAsDouble((a5 + 288), a1, a8);
    v59 = v62;
    v60 = v63;
  }

  if (a7 && a4)
  {
    v64 = v59;
    OZChannel::getValueAsDouble((a7 + 136), a1, a8);
    OZChannel::getValueAsDouble((a7 + 288), a1, a8);
    OZChannel::getValueAsDouble((a7 + 440), a1, a8);
    v59 = v64;
    v58 = v65;
  }

  v66 = 1.0;
  v67 = 1.0;
  if (a6 && a4)
  {
    v68 = v58;
    v69 = v59;
    OZChannel::getValueAsDouble((a6 + 136), a1, a8);
    v67 = v70;
    OZChannel::getValueAsDouble((a6 + 288), a1, a8);
    v59 = v69;
    v58 = v68;
  }

  if (v38)
  {
    v34 = a9 / v77 * v76 * v34;
    v30 = a9 / v77 * v75 * v30;
    v79 = a9 / v77 * v79;
    v22 = a9 / v77 * v22;
  }

  v81[0] = v59 + v79;
  v81[1] = v60 + v22;
  v80[0] = v67 * v34;
  v80[1] = v66 * v30;
  MaterialTextureTransformer::composeTextureTransform(v81, v80, v82, v78 + v58);
  if (v82 != a11)
  {
    for (i = 0; i != 16; i += 4)
    {
      v72 = &a11[i];
      v73 = *&v82[i + 2];
      *v72 = *&v82[i];
      *(v72 + 1) = v73;
    }
  }
}

void OZMaterialStatistics::OZMaterialStatistics(OZMaterialStatistics *this)
{
  *(this + 4) = 0;
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = this + 24;
}

uint64_t OZChannelEnumWithList_Factory::getInstance(OZChannelEnumWithList_Factory *this)
{
  if (atomic_load_explicit(&OZChannelEnumWithList_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnumWithList_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnumWithList_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnumWithList_Factory::_instance;
}

void OZChannelEnumWithList::OZChannelEnumWithList(OZChannelEnumWithList *this, unsigned int a2, const PCString *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7)
{
  OZChannelEnum::OZChannelEnum(this, a2, a3, a4, a5, a6, a7, 0, 0);
  *v8 = &unk_28728FB30;
  *(v8 + 2) = &unk_28728FEA0;
  *(this + 1) = OZChannelEnumWithList_Factory::getInstance(v8);
}

void OZChannelEnumWithList::writeBody(OZChannel *this, PCSerializerWriteStream *a2, int a3, BOOL a4, BOOL a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelEnumWithListScope);
  OZChannel::writeBody(this, a2, a3, a4, a5);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  StringTablesMapLock = OZChannelEnum::getStringTablesMapLock(this);
  PCSharedMutex::lock_shared(StringTablesMapLock);
  StringTablesMap = OZChannelEnum::getStringTablesMap(this);
  var0 = this[1].var0;
  if (var0 != (StringTablesMap + 8) && &v19 != (var0 + 5))
  {
    std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(&v19, var0[5], var0[6], (var0[6] - var0[5]) >> 3);
  }

  PCSharedMutex::unlock_shared(StringTablesMapLock);
  v13 = v19;
  v14 = v20;
  if (v19 != v20)
  {
    var2 = this[1].var2;
    v16 = *&this[1].var3;
    if (var2 != v16)
    {
      v17 = (var2 + 4);
      do
      {
        (*(*a2 + 16))(a2, 170);
        (*(*a2 + 200))(a2, 1, v13);
        (*(*a2 + 152))(a2, 2, *(v17 - 1));
        (*(*a2 + 24))(a2);
        v13 += 8;
        if (v13 == v14)
        {
          break;
        }

        v18 = v17 == v16;
        v17 = (v17 + 4);
      }

      while (!v18);
    }
  }

  PCSerializerWriteStream::popScope(a2);
  v22 = &v19;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_26014AB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  PCSharedMutex::unlock_shared(v12);
  a12 = &a9;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t OZChannelEnumWithList::parseBegin(PCString *this, PCSerializerReadStream *a2)
{
  OZChannelEnum::clearStrings(this);
  this[22].var0 = this[21].var0;
  OZChannel::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelEnumWithListScope);
  return 1;
}

uint64_t OZChannelEnumWithList::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  DefaultValue = OZChannel::getDefaultValue(this);
  v5 = *&this[1].var3;
  var2 = this[1].var2;
  if (var2 != v5)
  {
    v7 = this[1].var2;
    while (*v7 != DefaultValue)
    {
      v7 = (v7 + 4);
      if (v7 == v5)
      {
        goto LABEL_7;
      }
    }

    if (v7 != v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    OZChannel::setDefaultValue(this, *var2);
  }

LABEL_8:

  return OZChannel::parseEnd(this, a2);
}

uint64_t OZChannelEnumWithList::parseElement(OZChannelEnumWithList *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannel::parseElement(this, a2, a3);
  if (*(a3 + 2) == 170)
  {
    PCSharedCount::PCSharedCount(&v18);
    if (PCSerializerReadStream::getAttributeAsString(a2, a3, 1, &v18))
    {
      v17 = 0;
      if (PCSerializerReadStream::getAttributeAsInt32(a2, a3, 2, &v17))
      {
        memset(v16, 0, sizeof(v16));
        StringTablesMapLock = OZChannelEnum::getStringTablesMapLock(this);
        PCSharedMutex::lock_shared(StringTablesMapLock);
        StringTablesMap = OZChannelEnum::getStringTablesMap(this);
        v8 = *(this + 19);
        if (v8 != StringTablesMap + 8 && v16 != (v8 + 40))
        {
          std::vector<PCString>::__assign_with_size[abi:ne200100]<PCString*,PCString*>(v16, *(v8 + 40), *(v8 + 48), (*(v8 + 48) - *(v8 + 40)) >> 3);
        }

        PCSharedMutex::unlock_shared(StringTablesMapLock);
        if (!PCString::empty(this + 20))
        {
          PCString::append(this + 20, ";");
        }

        PCString::append(this + 20, &v18);
        std::vector<PCString>::push_back[abi:ne200100](v16, &v18);
        v9 = OZChannelEnum::getStringTablesMapLock(this);
        PCSharedMutex::lock(v9);
        v10 = OZChannelEnum::getStringTablesMap(this);
        *(this + 19) = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(v10, this + 20);
        if (*(this + 19) == OZChannelEnum::getStringTablesMap(this) + 8)
        {
          v11 = OZChannelEnum::getStringTablesMap(this);
          v12 = OZChannelEnum::getStringTablesMap(this);
          std::pair<PCString,std::vector<PCString>>::pair[abi:ne200100]<PCString,std::vector<PCString>&,0>(&v14, this + 20, v16);
          *(this + 19) = std::__tree<std::__value_type<PCString,std::vector<PCString>>,std::__map_value_compare<PCString,std::__value_type<PCString,std::vector<PCString>>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,std::vector<PCString>>>>::__emplace_hint_unique_key_args<PCString,std::pair<PCString,std::vector<PCString>>>(v11, v12 + 1, &v14, &v14);
          v19 = &v15;
          std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v19);
          PCString::~PCString(&v14);
        }

        PCSharedMutex::unlock(v9);
        std::vector<int>::push_back[abi:ne200100](this + 21, &v17);
        v14.var0 = v16;
        std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v14);
      }
    }

    PCString::~PCString(&v18);
  }

  return 1;
}