void sub_26B51EAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(va);
  v18 = *(v16 - 144);
  if (v18)
  {
    *(v16 - 136) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void fst::ShortestDistance<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v11 = 0;
  *v12 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v15 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  a2[1] = *a2;
  v4 = fst::internal::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ShortestDistance(v8, *(a3 + 12));
  if (v17[20] == 1)
  {
    a2[1] = *a2;
    v6 = fst::TropicalWeightTpl<float>::NoWeight(v4, v5);
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, v6, v7);
  }

  if (__p[1])
  {
    *v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    operator delete(v15[0]);
  }

  if (v13[1])
  {
    *&v14 = v13[1];
    operator delete(v13[1]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void std::vector<fst::TropicalWeightTpl<float>>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<fst::TropicalWeightTpl<float>>::__append(result, a2 - v4, a3, a4);
  }
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C090E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v5 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v9 = 0;
        __p[0] = v4;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v9;
        v7 = 0u;
        v8 = 0u;
        fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, __p, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B51F85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*a1 + 112))(a1, &v32);
  while (1)
  {
    result = v32;
    if (!v32)
    {
      if (v34 >= v33)
      {
        return result;
      }

LABEL_11:
      v15 = v34;
      goto LABEL_12;
    }

    v14 = (*(*v32 + 16))(v32);
    result = v32;
    if (v14)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    v15 = (*(*v32 + 24))();
LABEL_12:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    (*(*a1 + 120))(a1, v15, &v29);
    while (1)
    {
      v17 = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      v18 = (*(*v29 + 16))(v29);
      v17 = v29;
      if (v18)
      {
        break;
      }

      if (v29)
      {
        v17 = (*(*v29 + 24))();
        v19 = v17;
        goto LABEL_19;
      }

LABEL_18:
      v19 = *(&v29 + 1) + 16 * v31;
LABEL_19:
      v20 = *(*a2 + 4 * v15);
      if (v20 == *(*a2 + 4 * *(v19 + 12)))
      {
        v21 = *a3;
        if (!a4 || (v22 = fst::TropicalWeightTpl<float>::One(v17, v16), v23 = (v19 + 8), v17 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v19 + 8), v22), (v17 & 1) != 0))
        {
          v24 = 1;
          goto LABEL_23;
        }

        if ((v21[v20] | 2) == 2)
        {
          v17 = fst::TropicalWeightTpl<float>::Zero(v17, v16);
          v36 = *v23;
          v35 = *v17;
          if (v36 == v35 || (v17 = fst::TropicalWeightTpl<float>::One(v17, v16), v36 = *v23, v35 = *v17, v36 == v35))
          {
            v24 = 2;
          }

          else
          {
            v24 = 3;
          }

LABEL_23:
          v21[v20] = v24;
        }

        *a5 = 0;
      }

      v25 = fst::TropicalWeightTpl<float>::Zero(v17, v16);
      v36 = *(v19 + 8);
      v35 = *v25;
      v26.n128_f32[0] = v36;
      if (v36 != v35)
      {
        v27 = fst::TropicalWeightTpl<float>::One(v25, v16);
        v36 = *(v19 + 8);
        v35 = *v27;
        v26.n128_f32[0] = v36;
        if (v36 != v35)
        {
          *a6 = 0;
        }
      }

      if (v29)
      {
        (*(*v29 + 32))(v29, v26);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v30 + 1))
    {
      --**(&v30 + 1);
    }

LABEL_40:
    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      ++v34;
    }
  }

  if (v32)
  {
    return (*(*v32 + 8))();
  }

  return result;
}

void sub_26B51FE24(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2, v2, 0);
}

void sub_26B520018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B520868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_114:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = fst::TropicalWeightTpl<float>::Zero(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *fst::TropicalWeightTpl<float>::Zero(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *fst::TropicalWeightTpl<float>::Zero(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = fst::TropicalWeightTpl<float>::One(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = fst::TropicalWeightTpl<float>::One(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *fst::TropicalWeightTpl<float>::One(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = fst::TropicalWeightTpl<float>::Zero(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *fst::TropicalWeightTpl<float>::Zero(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *fst::TropicalWeightTpl<float>::Zero(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = fst::TropicalWeightTpl<float>::Zero(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *fst::TropicalWeightTpl<float>::Zero(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (v90)
      {
        if ((*(*v90 + 16))(v90))
        {
          goto LABEL_103;
        }

        v46 = v90;
        if (v90)
        {
          v46 = (*(*v90 + 24))(v90);
          v47 = v46;
          goto LABEL_45;
        }
      }

      else if (v92 >= v91)
      {
LABEL_103:
        v87 = 1;
        goto LABEL_105;
      }

      v47 = *(&v90 + 1) + 16 * v92;
LABEL_45:
      v48 = a1[1];
      v49 = (v48 + 8);
      for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
      {
        v51 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
        v52 = *v49;
        if (*v49 >= *(v48 + 16))
        {
          v53 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v48, v51);
        }

        else
        {
          *v52 = *v51;
          v53 = v52 + 1;
        }

        *v49 = v53;
        v55 = *fst::TropicalWeightTpl<float>::Zero(v53, v51);
        HIDWORD(v93) = v55;
        v56 = a1[6];
        if (v56 >= a1[7])
        {
          v57 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v93 + 1);
        }

        else
        {
          *v56 = v55;
          v57 = (v56 + 1);
        }

        a1[6] = v57;
        v58 = *fst::TropicalWeightTpl<float>::Zero(v57, v54);
        HIDWORD(v93) = v58;
        v59 = a1[9];
        if (v59 >= a1[10])
        {
          v60 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v93 + 1);
        }

        else
        {
          *v59 = v58;
          v60 = (v59 + 1);
        }

        a1[9] = v60;
        BYTE4(v93) = 0;
        std::vector<BOOL>::push_back((a1 + 11), &v93 + 4);
        v48 = a1[1];
        v49 = (v48 + 8);
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v61 = a1[14];
          LODWORD(j) = *(v47 + 12);
          if (j < ((a1[15] - v61) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
        }

        if (*(v61 + 4 * j) != *(a1 + 34))
        {
          v62 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
          v63 = *(v47 + 12);
          *(*a1[1] + 4 * v63) = *v62;
          v64 = a1[5];
          v66 = fst::TropicalWeightTpl<float>::Zero(v62, v65);
          *(v64 + 4 * v63) = *v66;
          v67 = *(v47 + 12);
          v68 = a1[8];
          v46 = fst::TropicalWeightTpl<float>::Zero(v66, v69);
          *(v68 + 4 * v67) = *v46;
          v70 = *(v47 + 12);
          *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
          *(a1[14] + 4 * v70) = *(a1 + 34);
          LODWORD(j) = *(v47 + 12);
        }
      }

      v71 = *a1[1];
      v72 = a1[5];
      v73 = a1[8];
      if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
      {
        v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
        v75 = *v46;
      }

      else
      {
        v76 = v74 == INFINITY || v43 == INFINITY;
        v77 = v43 + v74;
        v75 = v76 ? INFINITY : v77;
      }

      v78 = *(v71 + 4 * j);
      if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
      {
        v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
        v79 = *v46;
        v78 = *(v71 + 4 * j);
      }

      else
      {
        v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
      }

      v80 = *(a1 + 7);
      v81 = v79 + v80;
      v82 = v80 + v78;
      if (v78 > v81 || v79 > v82)
      {
        break;
      }

LABEL_100:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_100;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_26B521338(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void *fst::internal::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ShortestDistanceState(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_26B52147C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ImplToMutableFst(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = &unk_287C08FC0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_287C08E98;
  return a1;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C090E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

float fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Final@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

unint64_t fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,0>();
  }

  return a1;
}

unint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(v6, v4, &v8);
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a1 + 8) + 24))(*(a1 + 8), a3 & 4) != (a3 & 4 & a2))
  {
    fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst8internal13VectorFstImplINS1_11VectorStateINS1_10ReverseArcINS1_6ArcTplINS1_17TropicalWeightTplIfEEEEEENS_9allocatorISA_EEEEEENSB_ISE_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v2 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v2);
  result = (*(*v2 + 16))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 56);

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst8internal13VectorFstImplINS1_11VectorStateINS1_10ReverseArcINS1_6ArcTplINS1_17TropicalWeightTplIfEEEEEENS_9allocatorISA_EEEEEENSB_ISE_EEEC2B8ne200100IJESF_Li0EEESF_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C08D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C08DC8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_26B52212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_287C08E38;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);
}

void fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_287C08E68;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B522430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B522530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v12, __p);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "TestProperties: stored FST properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (stored: props1, computed: props2)", 35);
      LogMessage::~LogMessage(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 1);
  }
}

void sub_26B5226F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v50 = 0;
  v51 = v9;
  v48 = 0;
  v49 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v43 = &v48;
    *&v44 = 0;
    *(&v44 + 1) = &v51;
    v46 = 0u;
    v47 = 0u;
    fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, &v43, 0);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v38 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v51 = v13;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  (*(*a1 + 112))(a1, &v38);
  v14 = 0;
LABEL_13:
  if (!v38)
  {
    if (v40 >= v39)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v38 + 16))(v38))
  {
    if (v38)
    {
      v15 = (*(*v38 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      (*(*a1 + 120))(a1, v15, &v43);
      v17 = 1;
      while (v43)
      {
        if ((*(*v43 + 16))(v43))
        {
          if (v43)
          {
            (*(*v43 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v44 + 1))
          {
            --**(&v44 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v51 = v51 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v29 = (*(*a1 + 24))(&v52, a1, v15);
          v31 = fst::TropicalWeightTpl<float>::Zero(v29, v30);
          LODWORD(v43) = v52;
          HIDWORD(v52) = *v31;
          if (*&v52 == *(&v52 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v52) != 1)
            {
              v51 = v51 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v33 = fst::TropicalWeightTpl<float>::One(v31, v32);
            LODWORD(v43) = v52;
            HIDWORD(v52) = *v33;
            v34.n128_u32[0] = v52;
            if (*&v52 != *(&v52 + 1))
            {
              v51 = v51 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }

            ++v14;
          }

          if (v38)
          {
            (*(*v38 + 32))(v38, v34);
          }

          else
          {
            ++v40;
          }

          goto LABEL_13;
        }

        if (!v43)
        {
          goto LABEL_29;
        }

        v18 = (*(*v43 + 24))();
LABEL_30:
        if (v42 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v42, v18))
        {
          v51 = v51 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        v19 = v41;
        if (v41)
        {
          v19 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v41, v18 + 1);
          if (v19)
          {
            v51 = v51 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
          }
        }

        v20 = *v18;
        v21 = *v18;
        if (*v18 != v18[1])
        {
          v51 = v51 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v21 = v18[1];
        }

        if (v20 | v21)
        {
          if (v20)
          {
            if (!v21)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v22 = v51;
        }

        else
        {
          v22 = v51 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v51 = v22 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v21)
        {
LABEL_46:
          v51 = v51 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v17)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v17)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v20 < v11)
        {
          v51 = v51 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v21 < SHIDWORD(v11))
        {
          v51 = v51 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v23 = fst::TropicalWeightTpl<float>::One(v19, v16);
        HIDWORD(v52) = v18[2];
        LODWORD(v52) = *v23;
        v24.n128_u32[0] = HIDWORD(v52);
        if (*(&v52 + 1) != *&v52)
        {
          v25 = fst::TropicalWeightTpl<float>::Zero(v23, v16);
          HIDWORD(v52) = v18[2];
          LODWORD(v52) = *v25;
          v24.n128_u32[0] = HIDWORD(v52);
          if (*(&v52 + 1) != *&v52)
          {
            v26 = v51;
            v27 = v51 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            v51 = v27;
            if ((v26 & 0x800000000000) != 0 && v48[v15] == v48[v18[3]])
            {
              v51 = v27 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v28 = v18[3];
        if (v28 <= v15)
        {
          v51 = v51 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v28 != v15 + 1)
        {
          v51 = v51 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v18;
        if (v42)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v42, v18, v18);
        }

        if (v41)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v41, v18 + 1, v18 + 1);
        }

        if (v43)
        {
          (*(*v43 + 32))(v43, v24);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          ++v45;
        }
      }

      if (v45 >= v44)
      {
        goto LABEL_69;
      }

LABEL_29:
      v18 = (*(&v43 + 1) + 16 * v45);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v40;
    goto LABEL_19;
  }

  if (v38)
  {
    (*(*v38 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v51 = v51 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v41)
  {
    v35 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v41);
    MEMORY[0x26D6787B0](v35, 0x10A0C408EF24B1CLL);
  }

  if (v42)
  {
    v36 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v42);
    MEMORY[0x26D6787B0](v36, 0x10A0C408EF24B1CLL);
  }

  v9 = v51;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v9;
}

void sub_26B522F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va, 0);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va1, 0);
  v15 = *(v13 - 128);
  if (v15)
  {
    *(v13 - 120) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_26B523874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_26B523C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FinishState(uint64_t a1, int a2, int a3)
{
  v6 = (*(**(a1 + 32) + 24))(&v22);
  result = fst::TropicalWeightTpl<float>::Zero(v6, v7);
  v23 = v22;
  HIDWORD(v22) = *result;
  if (*&v22 != *(&v22 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v9 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v9 + 4 * a2))
  {
    goto LABEL_16;
  }

  v10 = 0;
  v11 = *(a1 + 80);
  v12 = **(a1 + 16);
  v13 = (*(v11 + 8) - 4);
  v14 = v13;
  do
  {
    v15 = *v14--;
    v10 |= *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
  }

  while (v15 != a2);
  v16 = *a1;
  v17 = **(a1 + 72);
  while (1)
  {
    v18 = *v13;
    if (v16)
    {
      *(*v16 + 4 * v18) = *(a1 + 48);
    }

    result = v18 >> 6;
    v19 = 1 << v18;
    if ((v10 & 1) == 0)
    {
      break;
    }

    *(v12 + 8 * result) |= v19;
    *(v17 + 8 * result) &= ~v19;
    if (v18 == a2)
    {
      *(v11 + 8) = v13;
      goto LABEL_15;
    }

LABEL_13:
    --v13;
  }

  *(v17 + 8 * result) &= ~v19;
  if (v18 != a2)
  {
    goto LABEL_13;
  }

  *(v11 + 8) = v13;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v20 = **(a1 + 16);
    if ((*(v20 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v20 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v21 = *(v9 + 4 * a2);
    if (v21 < *(v9 + 4 * a3))
    {
      *(v9 + 4 * a3) = v21;
    }
  }

  return result;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06248;
  a1[1] = &unk_287C06270;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v9);
}

void sub_26B52418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(void *a1, void *a2, uint64_t *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  v6 = -1;
  v32 = 0;
  v33 = 0;
  v31 = -1;
  v31 = (*(*a1 + 16))(a1);
  v32 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v32 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1);
    goto LABEL_5;
  }

  v25 = a2 + *(*a2 - 24);
  if ((v25[32] & 5) == 0)
  {
    (*(**(v25 + 5) + 32))(__p);
    v6 = v35;
    if (v35 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v26, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v26;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v26, __p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
LABEL_29:
    LogMessage::~LogMessage(&v26);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v32 == v11)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v26, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v32 = v11;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    operator delete(v27[0]);
  }

  return updated;
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7, a2);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t **a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  MEMORY[0x26D678620](v26);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __p = 0u;
    v29 = 0u;
    v36 = a8;
    (*(*v17 + 40))(v27);
    if (v27[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x26D678630](v26);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(v27, &__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = a3[1];
    }
  }

  else
  {
    fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v27, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = a3[1];
      }
    }

    else
    {
      MEMORY[0x26D678620](v27, a2);
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v36 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x26D678630](v27);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v27, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = a3[1];
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  LogMessage::~LogMessage(v27);
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFile(uint64_t a1, uint64_t a2)
{
  v28[19] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::ofstream::basic_ofstream(&v22, a2, 20);
    if ((v27[*(v22.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(&v21, &__p);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: Can't open file: ", 29);
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      goto LABEL_31;
    }

    v10 = FLAGS_fst_align;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v17 = 257;
    v18 = 1;
    v19 = v10;
    v20 = 0;
    v12 = (*(*a1 + 80))(a1, &v22, &__p);
    v13 = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      v22.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
      *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
      MEMORY[0x26D6785E0](&v22.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x26D678750](v28);
      return v11;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v21, &__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    LogMessage::~LogMessage(&v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 0;
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v9 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v23 = 257;
  v24 = 1;
  v25 = v9;
  v26 = 0;
  v11 = (*(*a1 + 80))(a1, MEMORY[0x277D82678], &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C08DC8;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState(a1);
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

void std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2);
    }

    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_26B5258FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B525AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> &,0>();
  }
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> &,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C08D78;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

float fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(void *a1, uint64_t a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(v9, a3);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  v5 = (*(a1 + 64) - *(a1 + 56)) >> 3;
  v39 = 0;
  std::vector<int>::vector[abi:ne200100](__p, v5, &v39);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = __p[0];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      v9[v10] = -1;
      --v8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  if (*(a1 + 64) == v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(__p[0] + v12) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v11 + 8 * v12));
      }

      else
      {
        *(__p[0] + v12) = v13;
        if (v12 != v13)
        {
          *(v11 + 8 * v13) = *(v11 + 8 * v12);
        }

        ++v13;
      }

      ++v12;
      v11 = *(a1 + 56);
    }

    while (v12 < (*(a1 + 64) - v11) >> 3);
    v14 = v13;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, v14);
  v15 = *(a1 + 56);
  if (*(a1 + 64) != v15)
  {
    v16 = 0;
    do
    {
      v17 = *(v15 + 8 * v16);
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *(v17 + 8);
      v22 = v19 - v18;
      v21 = v19 == v18;
      if (v19 == v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v17 + 24);
      }

      if (v21)
      {
        v25 = 0;
        v32 = v22 >> 4;
        v33 = *(v17 + 16);
        v34 = *(v17 + 8);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = (v23 + 12);
        do
        {
          v27 = *(__p[0] + *v26);
          if (v27 == -1)
          {
            v29 = *(v26 - 3);
            v30.i64[0] = v29;
            v30.i64[1] = HIDWORD(v29);
            v20 = vaddq_s64(v20, vceqzq_s64(v30));
          }

          else
          {
            *v26 = v27;
            if (v24 != v25)
            {
              v28 = v23 + 16 * v25;
              *v28 = *(v26 - 3);
              *(v28 + 8) = *(v26 - 1);
              *(v28 + 12) = v27;
              v15 = *v4;
            }

            ++v25;
          }

          v17 = *(v15 + 8 * v16);
          ++v24;
          v31 = *(v17 + 32) - *(v17 + 24);
          v26 += 4;
        }

        while (v24 < v31 >> 4);
        v32 = v31 >> 4;
        v33 = v20.i64[1];
        v34 = v20.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(v17, v32 - v25);
      v15 = *(a1 + 56);
      v35 = *(a1 + 64);
      v36 = *(v15 + 8 * v16);
      *(v36 + 8) = v34;
      *(v36 + 16) = v33;
      ++v16;
    }

    while (v16 < (v35 - v15) >> 3);
  }

  v37 = *(a1 + 80);
  if (v37 == -1)
  {
    v38 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v38 = __p[0];
    *(a1 + 80) = *(__p[0] + v37);
  }

  __p[1] = v38;
  operator delete(v38);
}

void sub_26B525F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetValue(uint64_t a1, float *a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  v10 = fst::TropicalWeightTpl<float>::Zero(a1, a2);
  if (*(v4 + 8) != *v10 && *(v4 + 8) != *fst::TropicalWeightTpl<float>::One(v10, v11))
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v14 = *a2;
  v15 = *(a2 + 1);
  if (*a2 != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14 == 0.0)
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_19;
    }
  }

  else if (!v15)
  {
    v16 = *(a1 + 16);
    v17 = *v16;
LABEL_19:
    *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  result = fst::TropicalWeightTpl<float>::Zero(v12, v13);
  if (a2[2] != *result)
  {
    result = fst::TropicalWeightTpl<float>::One(result, v20);
    if (a2[2] != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08888;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v5 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v9 = 0;
        __p[0] = v4;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v9;
        v7 = 0u;
        v8 = 0u;
        fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a2, __p, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26B526CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  LogMessage::~LogMessage(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    MEMORY[0x26D6787B0](v30, 0x60C405BB7FD7CLL);
  }

  if (a10)
  {
    MEMORY[0x26D6787B0](a10, 0xC400A2AC0F1);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::NaturalLess<fst::TropicalWeightTpl<float>,void>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*a1 + 112))(a1, &v32);
  while (1)
  {
    result = v32;
    if (!v32)
    {
      if (v34 >= v33)
      {
        return result;
      }

LABEL_11:
      v15 = v34;
      goto LABEL_12;
    }

    v14 = (*(*v32 + 16))(v32);
    result = v32;
    if (v14)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    v15 = (*(*v32 + 24))();
LABEL_12:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    (*(*a1 + 120))(a1, v15, &v29);
    while (1)
    {
      v17 = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      v18 = (*(*v29 + 16))(v29);
      v17 = v29;
      if (v18)
      {
        break;
      }

      if (v29)
      {
        v17 = (*(*v29 + 24))();
        v19 = v17;
        goto LABEL_19;
      }

LABEL_18:
      v19 = *(&v29 + 1) + 16 * v31;
LABEL_19:
      v20 = *(*a2 + 4 * v15);
      if (v20 == *(*a2 + 4 * *(v19 + 12)))
      {
        v21 = *a3;
        if (!a4 || (v22 = fst::TropicalWeightTpl<float>::One(v17, v16), v23 = (v19 + 8), v17 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(a4, (v19 + 8), v22), (v17 & 1) != 0))
        {
          v24 = 1;
          goto LABEL_23;
        }

        if ((v21[v20] | 2) == 2)
        {
          v17 = fst::TropicalWeightTpl<float>::Zero(v17, v16);
          v36 = *v23;
          v35 = *v17;
          if (v36 == v35 || (v17 = fst::TropicalWeightTpl<float>::One(v17, v16), v36 = *v23, v35 = *v17, v36 == v35))
          {
            v24 = 2;
          }

          else
          {
            v24 = 3;
          }

LABEL_23:
          v21[v20] = v24;
        }

        *a5 = 0;
      }

      v25 = fst::TropicalWeightTpl<float>::Zero(v17, v16);
      v36 = *(v19 + 8);
      v35 = *v25;
      v26.n128_f32[0] = v36;
      if (v36 != v35)
      {
        v27 = fst::TropicalWeightTpl<float>::One(v25, v16);
        v36 = *(v19 + 8);
        v35 = *v27;
        v26.n128_f32[0] = v36;
        if (v36 != v35)
        {
          *a6 = 0;
        }
      }

      if (v29)
      {
        (*(*v29 + 32))(v29, v26);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v30 + 1))
    {
      --**(&v30 + 1);
    }

LABEL_40:
    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      ++v34;
    }
  }

  if (v32)
  {
    return (*(*v32 + 8))();
  }

  return result;
}

void sub_26B5272C4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_287C08968;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  fst::DfsVisit<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TopOrderVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a2, v2, 0);
}

void sub_26B5274B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B527D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::internal::ShortestDistanceState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_114:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = fst::TropicalWeightTpl<float>::Zero(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *fst::TropicalWeightTpl<float>::Zero(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *fst::TropicalWeightTpl<float>::Zero(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    std::vector<BOOL>::push_back((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = fst::TropicalWeightTpl<float>::One(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = fst::TropicalWeightTpl<float>::One(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *fst::TropicalWeightTpl<float>::One(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = fst::TropicalWeightTpl<float>::Zero(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *fst::TropicalWeightTpl<float>::Zero(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *fst::TropicalWeightTpl<float>::Zero(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      std::vector<BOOL>::push_back((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = fst::TropicalWeightTpl<float>::Zero(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *fst::TropicalWeightTpl<float>::Zero(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (v90)
      {
        if ((*(*v90 + 16))(v90))
        {
          goto LABEL_103;
        }

        v46 = v90;
        if (v90)
        {
          v46 = (*(*v90 + 24))(v90);
          v47 = v46;
          goto LABEL_45;
        }
      }

      else if (v92 >= v91)
      {
LABEL_103:
        v87 = 1;
        goto LABEL_105;
      }

      v47 = *(&v90 + 1) + 16 * v92;
LABEL_45:
      v48 = a1[1];
      v49 = (v48 + 8);
      for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
      {
        v51 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
        v52 = *v49;
        if (*v49 >= *(v48 + 16))
        {
          v53 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(v48, v51);
        }

        else
        {
          *v52 = *v51;
          v53 = v52 + 1;
        }

        *v49 = v53;
        v55 = *fst::TropicalWeightTpl<float>::Zero(v53, v51);
        HIDWORD(v93) = v55;
        v56 = a1[6];
        if (v56 >= a1[7])
        {
          v57 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 5), &v93 + 1);
        }

        else
        {
          *v56 = v55;
          v57 = (v56 + 1);
        }

        a1[6] = v57;
        v58 = *fst::TropicalWeightTpl<float>::Zero(v57, v54);
        HIDWORD(v93) = v58;
        v59 = a1[9];
        if (v59 >= a1[10])
        {
          v60 = std::vector<fst::Adder<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::Adder<fst::TropicalWeightTpl<float>>>((a1 + 8), &v93 + 1);
        }

        else
        {
          *v59 = v58;
          v60 = (v59 + 1);
        }

        a1[9] = v60;
        BYTE4(v93) = 0;
        std::vector<BOOL>::push_back((a1 + 11), &v93 + 4);
        v48 = a1[1];
        v49 = (v48 + 8);
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v61 = a1[14];
          LODWORD(j) = *(v47 + 12);
          if (j < ((a1[15] - v61) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 14, &fst::kNoStateId);
        }

        if (*(v61 + 4 * j) != *(a1 + 34))
        {
          v62 = fst::TropicalWeightTpl<float>::Zero(v46, v45);
          v63 = *(v47 + 12);
          *(*a1[1] + 4 * v63) = *v62;
          v64 = a1[5];
          v66 = fst::TropicalWeightTpl<float>::Zero(v62, v65);
          *(v64 + 4 * v63) = *v66;
          v67 = *(v47 + 12);
          v68 = a1[8];
          v46 = fst::TropicalWeightTpl<float>::Zero(v66, v69);
          *(v68 + 4 * v67) = *v46;
          v70 = *(v47 + 12);
          *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
          *(a1[14] + 4 * v70) = *(a1 + 34);
          LODWORD(j) = *(v47 + 12);
        }
      }

      v71 = *a1[1];
      v72 = a1[5];
      v73 = a1[8];
      if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
      {
        v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
        v75 = *v46;
      }

      else
      {
        v76 = v74 == INFINITY || v43 == INFINITY;
        v77 = v43 + v74;
        v75 = v76 ? INFINITY : v77;
      }

      v78 = *(v71 + 4 * j);
      if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
      {
        v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
        v79 = *v46;
        v78 = *(v71 + 4 * j);
      }

      else
      {
        v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
      }

      v80 = *(a1 + 7);
      v81 = v79 + v80;
      v82 = v80 + v78;
      if (v78 > v81 || v79 > v82)
      {
        break;
      }

LABEL_100:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *fst::TropicalWeightTpl<float>::NoWeight(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_100;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_26B5287D8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::TropicalWeightTpl<float>>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      a4.i32[0] = *a3;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = v6 + 4 * a2;
      v16 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v17 = (v6 + 8);
      do
      {
        v18 = vdupq_n_s64(v12);
        v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_26B548380)));
        if (vuzp1_s16(v19, a4).u8[0])
        {
          *(v17 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v19, a4).i8[2])
        {
          *(v17 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_26B548370)))).i32[1])
        {
          *v17 = a4.i32[0];
          v17[1] = a4.i32[0];
        }

        v12 += 4;
        v17 += 4;
      }

      while (v16 != v12);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v30 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v11);
    }

    v20 = 0;
    __p = 0;
    v27 = 4 * v9;
    v29 = 0;
    a4.i32[0] = *a3;
    v21 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = vdupq_n_s64(v21);
    v23 = (4 * v9 + 8);
    do
    {
      v24 = vdupq_n_s64(v20);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_26B548380)));
      if (vuzp1_s16(v25, a4).u8[0])
      {
        *(v23 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v25, a4).i8[2])
      {
        *(v23 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_26B548370)))).i32[1])
      {
        *v23 = a4.i32[0];
        v23[1] = a4.i32[0];
      }

      v20 += 4;
      v23 += 4;
    }

    while (v21 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4 != v20);
    v28 = 4 * v9 + 4 * a2;
    std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
    if (v28 != v27)
    {
      v28 += (v27 - v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_26B528AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float>>(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26B528BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26B528CB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Insert(uint64_t **a1, unsigned int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = a1[9];
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(a1, *(v6 + v8), *a2))
      {
        break;
      }

      v9 = a1[6];
      v10 = *(v9 + v3);
      v11 = *(v9 + v8);
      *(v9 + v3) = v11;
      v12 = a1[3];
      *(v12 + v11) = v3;
      *(v9 + v8) = v10;
      *(v12 + v10) = v8;
      v6 = a1[9];
      LODWORD(v10) = *(v6 + v3);
      *(v6 + v3) = *(v6 + v8);
      *(v6 + v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(a1[6] + v8);
      }
    }
  }

  v8 = v3;
  return *(a1[6] + v8);
}

BOOL fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t **a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = **a1;
  if (a2 >= (((*a1)[1] - v6) >> 2))
  {
    v7 = fst::TropicalWeightTpl<float>::Zero(a1, a2);
  }

  else
  {
    v7 = (v6 + 4 * a2);
  }

  v8 = *v7;
  v9 = *a1[1];
  if (v5 >= (a1[1][1] - v9) >> 2)
  {
    v10 = fst::TropicalWeightTpl<float>::Zero(v7, a2);
  }

  else
  {
    v10 = (v9 + 4 * v5);
  }

  if (v8 == -INFINITY || (v11 = *v10, *v10 >= -INFINITY) && *v10 <= -INFINITY)
  {
    v10 = fst::TropicalWeightTpl<float>::NoWeight(v10, a2);
    v12 = *v10;
  }

  else
  {
    v13 = v11 == INFINITY || v8 == INFINITY;
    v12 = v8 + v11;
    if (v13)
    {
      v12 = INFINITY;
    }
  }

  v24 = v12;
  v14 = **a1;
  if (a3 >= (((*a1)[1] - v14) >> 2))
  {
    v15 = fst::TropicalWeightTpl<float>::Zero(v10, a2);
  }

  else
  {
    v15 = (v14 + 4 * a3);
  }

  v16 = *v15;
  v17 = *a1[1];
  if (a3 >= ((a1[1][1] - v17) >> 2))
  {
    v18 = fst::TropicalWeightTpl<float>::Zero(v15, a2);
  }

  else
  {
    v18 = (v17 + 4 * a3);
  }

  if (v16 == -INFINITY || (v19 = *v18, *v18 >= -INFINITY) && *v18 <= -INFINITY)
  {
    v20 = *fst::TropicalWeightTpl<float>::NoWeight(v18, a2);
  }

  else
  {
    v21 = v19 == INFINITY || v16 == INFINITY;
    v20 = v16 + v19;
    if (v21)
    {
      v20 = INFINITY;
    }
  }

  v23 = v20;
  return fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()((a1 + 2), &v24, &v23);
}

BOOL fst::Heap<int,fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 96) || !(result = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v4), *(*(v3 + 72) + 4 * a2))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 96))
    {
      result = fst::internal::PruneCompare<int,fst::TropicalWeightTpl<float>>::operator()(v3, *(*(v3 + 72) + 4 * v5), *(*(v3 + 72) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 48);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 24);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 72);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *fst::internal::RmEpsilonState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>>::~RmEpsilonState(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[35];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  a1[35] = 0;
  v5 = a1[32];
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<int>::~deque[abi:ne200100](a1 + 26);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 20));
  v6 = a1[16];
  if (v6)
  {
    a1[17] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t fst::AutoQueue<int>::~AutoQueue(uint64_t a1)
{
  *a1 = &unk_287C08888;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 24);
  std::vector<std::unique_ptr<fst::QueueBase<int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B529168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B5291F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,(void *)0>(uint64_t a1, uint64_t a2, float **a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
    *v12 = 0;
    LODWORD(v13) = 0;
    if (fst::internal::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a3, a4, &v13, &v10))
    {
      fst::internal::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v10, v13);
    }

    else
    {
      (*(*a2 + 168))(a2, 4, 4);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else if (v7 >= 1)
  {
    if ((*(a4 + 29) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a3, a4), a3[1] - *a3 != 4) || (v8 = **a3, v8 < -INFINITY) || v8 > -INFINITY)
    {
      fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFst(&v13);
    }

    v9 = *(*a2 + 168);

    v9(a2, 4, 4);
  }
}

void sub_26B5295E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 104) = &unk_287C090E8;
  v23 = *(v21 - 88);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, int **a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  v9 = (*(*a1 + 16))(a1);
  if (v9 == -1)
  {
    return 1;
  }

  memset(__p, 0, sizeof(__p));
  v11 = *a3;
  v12 = *(a3 + 3);
  if (v12 == -1)
  {
    v9 = (*(*a1 + 16))(a1);
    v12 = v9;
  }

  v13 = *fst::TropicalWeightTpl<float>::Zero(v9, v10);
  a2[1] = *a2;
  v14 = (*(**(v11 + 16) + 56))(*(v11 + 16));
  while (v12 > (a2[1] - *a2))
  {
    v16 = fst::TropicalWeightTpl<float>::Zero(v14, v15);
    v17 = a2[1];
    if (v17 >= a2[2])
    {
      v18 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v16);
    }

    else
    {
      *v17 = *v16;
      v18 = v17 + 1;
    }

    a2[1] = v18;
    LOBYTE(v58) = 0;
    std::vector<BOOL>::push_back(__p, &v58);
    v58 = xmmword_26B5483C0;
    std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v58);
  }

  v19 = fst::TropicalWeightTpl<float>::One(v14, v15);
  v20 = a2[1];
  if (v20 >= a2[2])
  {
    v21 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v19);
  }

  else
  {
    *v20 = *v19;
    v21 = v20 + 1;
  }

  a2[1] = v21;
  v58 = xmmword_26B5483C0;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v58);
  (*(**(v11 + 16) + 24))(*(v11 + 16), v12);
  LOBYTE(v58) = 1;
  std::vector<BOOL>::push_back(__p, &v58);
  v56 = 0;
  v55 = a3;
LABEL_14:
  if ((*(**(v11 + 16) + 48))(*(v11 + 16)) & 1) != 0 || (v23 = (*(**(v11 + 16) + 16))(*(v11 + 16)), (*(**(v11 + 16) + 32))(*(v11 + 16)), *(__p[0] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23), v24 = *&(*a2)[v23], (*(a3 + 30) & v56) && (LODWORD(v58) = (*a2)[v23], *&v57 = v13, fst::internal::FirstPathSelect<int,fst::TropicalWeightTpl<float>,fst::AutoQueue<int>>::operator()(v62, v23, &v58, &v57)))
  {
    v22 = 1;
    goto LABEL_91;
  }

  v25 = (*(*a1 + 24))(v62, a1, v23);
  v27 = fst::TropicalWeightTpl<float>::Zero(v25, v26);
  *&v58 = v62[0];
  LODWORD(v57) = *v27;
  if (v62[0] == *&v57)
  {
    goto LABEL_36;
  }

  v28 = (*(*a1 + 24))(&v58, a1, v23, v62[0]);
  if (v24 == -INFINITY || *&v58 >= -INFINITY && *&v58 <= -INFINITY)
  {
    v28 = fst::TropicalWeightTpl<float>::NoWeight(v28, v29);
    v30 = *v28;
  }

  else
  {
    v31 = *&v58 == INFINITY || v24 == INFINITY;
    v30 = v24 + *&v58;
    if (v31)
    {
      v30 = INFINITY;
    }
  }

  if (v13 == -INFINITY || v30 >= -INFINITY && v30 <= -INFINITY)
  {
    v30 = *fst::TropicalWeightTpl<float>::NoWeight(v28, v29);
  }

  else if (v13 < v30)
  {
    v30 = v13;
  }

  *&v58 = v13;
  *&v57 = v30;
  if (v13 != v30)
  {
    *a4 = v23;
    v13 = v30;
  }

  v22 = 0;
  v56 = 1;
  if (v13 != -INFINITY)
  {
LABEL_36:
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    (*(*a1 + 120))(a1, v23, &v58);
    while (1)
    {
      v33 = v58;
      if (v58)
      {
        v34 = (*(*v58 + 16))(v58);
        v33 = v58;
        if (v34)
        {
          v48 = 1;
LABEL_83:
          if (v33)
          {
            (*(*v33 + 8))(v33);
            a3 = v55;
            goto LABEL_88;
          }

LABEL_86:
          a3 = v55;
          if (*(&v59 + 1))
          {
            --**(&v59 + 1);
          }

LABEL_88:
          if ((v48 & 1) == 0)
          {
            v22 = 0;
            break;
          }

          goto LABEL_14;
        }

        if (v58)
        {
          v33 = (*(*v58 + 24))();
          v35 = v33;
          goto LABEL_43;
        }
      }

      else if (v60 >= v59)
      {
        v48 = 1;
        goto LABEL_86;
      }

      v35 = *(&v58 + 1) + 16 * v60;
LABEL_43:
      while (1)
      {
        v36 = *a2;
        v37 = *(v35 + 12);
        if (v37 < a2[1] - *a2)
        {
          break;
        }

        v38 = fst::TropicalWeightTpl<float>::Zero(v33, v32);
        v39 = a2[1];
        if (v39 >= a2[2])
        {
          v40 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float> const&>(a2, v38);
        }

        else
        {
          *v39 = *v38;
          v40 = v39 + 1;
        }

        a2[1] = v40;
        LOBYTE(v57) = 0;
        std::vector<BOOL>::push_back(__p, &v57);
        v57 = xmmword_26B5483C0;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v57);
      }

      if (v24 == -INFINITY || (v41 = *(v35 + 8), v41 >= -INFINITY) && v41 <= -INFINITY)
      {
        v33 = fst::TropicalWeightTpl<float>::NoWeight(v33, v32);
        v42 = *v33;
      }

      else
      {
        v43 = v41 == INFINITY || v24 == INFINITY;
        v44 = v24 + v41;
        if (v43)
        {
          v42 = INFINITY;
        }

        else
        {
          v42 = v44;
        }
      }

      v45 = *&v36[v37];
      if (v45 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
      {
        v33 = fst::TropicalWeightTpl<float>::NoWeight(v33, v32);
        v46 = *v33;
        v45 = *&v36[v37];
      }

      else if (v45 >= v42)
      {
        v46 = v42;
      }

      else
      {
        v46 = *&v36[v37];
      }

      *&v57 = v45;
      v62[0] = v46;
      if (v45 != v46)
      {
        v47 = *&v36[v37];
        if (v47 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
        {
          v47 = *fst::TropicalWeightTpl<float>::NoWeight(v33, v32);
        }

        else if (v47 >= v42)
        {
          v47 = v42;
        }

        v48 = 0;
        *&v36[v37] = v47;
        v33 = v58;
        if (v47 == -INFINITY)
        {
          goto LABEL_83;
        }

        if (v58)
        {
          v49 = (*(*v58 + 40))();
        }

        else
        {
          v49 = v60;
        }

        v50 = *(v35 + 12);
        v51 = *a5 + 16 * v50;
        *v51 = v23;
        *(v51 + 8) = v49;
        v52 = **(v11 + 16);
        if ((*(__p[0] + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v50))
        {
          (*(v52 + 40))();
        }

        else
        {
          (*(v52 + 24))();
          *(__p[0] + ((*(v35 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v35 + 12);
        }
      }

      if (v58)
      {
        (*(*v58 + 32))(v58);
      }

      else
      {
        ++v60;
      }
    }
  }

LABEL_91:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_26B529E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::internal::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 200))(a2);
  v8 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v8);
  v9 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    v12 = -1;
    while (1)
    {
      v13 = (*(*a2 + 176))(a2);
      if (v10 != -1)
      {
        break;
      }

      (*(*a1 + 24))(&v22, a1, a4);
      (*(*a2 + 160))(a2, v13, &v22);
LABEL_15:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      v12 = v13;
      if (v11 == -1)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    (*(*a1 + 120))(a1, v11, &v22);
    v14 = *(*a3 + 16 * v10 + 8);
    if (v22)
    {
      (*(*v22 + 56))(v22, v14);
      if (v22)
      {
        v15 = (*(*v22 + 24))(v22);
        goto LABEL_11;
      }

      v14 = v24;
    }

    else
    {
      v24 = *(*a3 + 16 * v10 + 8);
    }

    v15 = *(&v22 + 1) + 16 * v14;
LABEL_11:
    v19 = *v15;
    v20 = *(v15 + 8);
    v21 = v12;
    (*(*a2 + 184))(a2, v13, &v19);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    else if (*(&v23 + 1))
    {
      --**(&v23 + 1);
    }

    goto LABEL_15;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_18:
  (*(*a2 + 152))(a2, v13);
  if ((*(*a1 + 56))(a1, 4, 0))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  v16 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 1);
  return (*(*a2 + 168))(a2, v17, 0xFFFFFFFF0007);
}

void sub_26B52A384(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::TropicalWeightTpl<float>>::insert(char **a1, char *a2, float *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v9 = *a1;
    v10 = ((v6 - *a1) >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v11 = a2 - v9;
    v12 = v5 - v9;
    if (v12 >> 1 > v10)
    {
      v10 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    v14 = v11 >> 2;
    v25 = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v13);
    }

    __p = 0;
    v22 = 4 * v14;
    v23 = 4 * v14;
    v24 = 0;
    std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(&__p, a3);
    v3 = std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p, v3);
    if (v23 != v22)
    {
      v23 += (v22 - v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v7 = v6 - 4;
    if (v6 < 4)
    {
      v8 = a1[1];
    }

    else
    {
      *v6 = *v7;
      v8 = (v6 + 4);
    }

    a1[1] = v8;
    if (v6 != a2 + 4)
    {
      v15 = (a2 - v6 + 4);
      v16 = v6 - 8;
      do
      {
        v17 = *v16;
        v16 -= 4;
        *v7 = v17;
        v7 -= 4;
        v15 += 4;
      }

      while (v15);
    }

    v18 = v8 <= a3 || a2 > a3;
    v19 = 1;
    if (v18)
    {
      v19 = 0;
    }

    *a2 = a3[v19];
  }

  return v3;
}

void sub_26B52A554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::NShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, float *a5, int a6, float a7)
{
  v103 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    return;
  }

  (*(*a2 + 200))(a2);
  v14 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v14);
  v15 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v15);
  __p = 0;
  v95 = 0;
  v96 = 0;
  if ((*(*a1 + 16))(a1) != -1)
  {
    v18 = *a3;
    v17 = a3[1];
    if ((*(*a1 + 16))(a1) < ((v17 - v18) >> 2))
    {
      v19 = (*(*a1 + 16))(a1);
      v20 = v19;
      v21 = *a3;
      v23 = fst::TropicalWeightTpl<float>::Zero(v19, v22);
      LODWORD(v100) = *(v21 + 4 * v20);
      LODWORD(v97[0]) = *v23;
      v16.n128_u32[0] = v100;
      if (*&v100 != *v97)
      {
        v25 = fst::TropicalWeightTpl<float>::One(v23, v24);
        v26 = !fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v93, a5, v25);
        if (!a6)
        {
          LOBYTE(v26) = 0;
        }

        if (v26)
        {
          v27 = (*(*a2 + 176))(a2);
          (*(*a2 + 152))(a2, v27);
          v28 = (*(*a2 + 176))(a2);
          v92 = v28;
          LODWORD(v100) = *fst::TropicalWeightTpl<float>::One(v28, v29);
          v30 = (*(*a2 + 160))(a2, v28, &v100);
          if (v28 >= ((v95 - __p) >> 3))
          {
            do
            {
              v32 = fst::TropicalWeightTpl<float>::Zero(v30, v31);
              LODWORD(v100) = -1;
              v33 = *v32;
              DWORD1(v100) = *v32;
              v34 = v95;
              if (v95 >= v96)
              {
                v30 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, &v100);
              }

              else
              {
                *v95 = -1;
                *(v34 + 1) = v33;
                v30 = (v34 + 8);
              }

              v95 = v30;
            }

            while (v92 >= ((v30 - __p) >> 3));
          }

          v35 = (*(*a1 + 16))(a1);
          v36 = v35;
          v38 = *fst::TropicalWeightTpl<float>::One(v35, v37);
          v39 = __p + 8 * v92;
          *v39 = v36;
          v39[1] = v38;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          std::vector<int>::push_back[abi:ne200100](&v89, &v92);
          v40 = (*(*a1 + 16))(a1);
          v42 = *(*a3 + 4 * v40);
          v80 = a6;
          if (v42 == -INFINITY || (v43 = *a5, *a5 >= -INFINITY) && *a5 <= -INFINITY)
          {
            v40 = fst::TropicalWeightTpl<float>::NoWeight(v40, v41);
            v44 = *v40;
          }

          else
          {
            v45 = v43 == INFINITY || v42 == INFINITY;
            v44 = v42 + v43;
            if (v45)
            {
              v44 = INFINITY;
            }
          }

          v88 = v44;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v47 = v89;
          v46 = v90;
          if (v89 == v90)
          {
            goto LABEL_99;
          }

          while (1)
          {
            *&v100 = &__p;
            *(&v100 + 1) = a3;
            LODWORD(v101) = -1;
            *(&v101 + 1) = a7;
            v48 = (v46 - v47) >> 2;
            if (v48 >= 2)
            {
              v49 = *v47;
              v40 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v47, &v100, v48);
              v41 = v40;
              v50 = (v46 - 4);
              if (v46 - 4 == v40)
              {
                *v40 = v49;
              }

              else
              {
                *v40 = *v50;
                *v50 = v49;
                v40 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v47, v40 + 4, &v100, (v40 + 4 - v47) >> 2);
              }
            }

            v51 = *(v90 - 1);
            v52 = (__p + 8 * v51);
            v53 = *v52;
            v54 = v52[1];
            --v90;
            if (v53 == -1)
            {
              v55 = fst::TropicalWeightTpl<float>::One(v40, v41);
            }

            else if (v53 >= (a3[1] - *a3) >> 2)
            {
              v55 = fst::TropicalWeightTpl<float>::Zero(v40, v41);
            }

            else
            {
              v55 = (*a3 + 4 * v53);
            }

            v56 = *v55;
            if (*v55 == -INFINITY || v54 >= -INFINITY && v54 <= -INFINITY)
            {
              v57 = *fst::TropicalWeightTpl<float>::NoWeight(v55, v41);
            }

            else
            {
              v58 = v56 == INFINITY || v54 == INFINITY;
              v57 = v54 + v56;
              if (v58)
              {
                v57 = INFINITY;
              }
            }

            *&v100 = v57;
            v40 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()(&v93, &v88, &v100);
            if (v40)
            {
              goto LABEL_98;
            }

            if (v80 != -1)
            {
              v40 = (*(*a2 + 136))(a2);
              if (v40 >= v80)
              {
                goto LABEL_98;
              }
            }

            v59 = v53 + 1;
            while (v59 >= (v86 - v85) >> 2)
            {
              LODWORD(v100) = 0;
              std::vector<int>::push_back[abi:ne200100](&v85, &v100);
            }

            v60 = *(v85 + v59);
            *(v85 + v59) = v60 + 1;
            if (v53 == -1)
            {
              v70 = (*(*a2 + 16))(a2);
              v72 = *fst::TropicalWeightTpl<float>::One(v70, v71);
              *&v100 = 0;
              *(&v100 + 1) = __PAIR64__(v51, v72);
              v40 = (*(*a2 + 184))(a2, v70, &v100);
              if (*v85 != a4)
              {
                goto LABEL_98;
              }

              goto LABEL_99;
            }

            if (v60 >= a4)
            {
              goto LABEL_98;
            }

            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            (*(*a1 + 120))(a1, v53, &v100);
            while (1)
            {
              if (!v100)
              {
                if (v102 >= v101)
                {
                  goto LABEL_81;
                }

LABEL_60:
                v62 = *(&v100 + 1) + 16 * v102;
                goto LABEL_61;
              }

              if ((*(*v100 + 16))(v100))
              {
                break;
              }

              if (!v100)
              {
                goto LABEL_60;
              }

              v62 = (*(*v100 + 24))(v100);
LABEL_61:
              v63 = *(v62 + 8);
              v64 = *(v62 + 12);
              v82 = *v62;
              v83 = v63;
              v84 = v64;
              if (v54 == -INFINITY || v63 >= -INFINITY && v63 <= -INFINITY)
              {
                LODWORD(v65) = *fst::TropicalWeightTpl<float>::NoWeight(v62, v61);
              }

              else
              {
                v66 = v63 == INFINITY || v54 == INFINITY;
                v67 = v54 + v63;
                if (v66)
                {
                  v65 = INFINITY;
                }

                else
                {
                  v65 = v67;
                }
              }

              v81 = (*(*a2 + 176))(a2);
              v97[0] = __PAIR64__(LODWORD(v65), v84);
              v68 = v95;
              if (v95 >= v96)
              {
                v69 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, v97);
              }

              else
              {
                *v95 = v84;
                *(v68 + 1) = v65;
                v69 = (v68 + 8);
              }

              v95 = v69;
              v84 = v51;
              (*(*a2 + 184))(a2, v81, &v82);
              std::vector<int>::push_back[abi:ne200100](&v89, &v81);
              v97[0] = &__p;
              v97[1] = a3;
              v98 = -1;
              v99 = a7;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v89, v90, v97, (v90 - v89) >> 2);
              if (v100)
              {
                (*(*v100 + 32))(v100);
              }

              else
              {
                ++v102;
              }
            }

            if (v100)
            {
              (*(*v100 + 8))(v100);
            }

            else
            {
LABEL_81:
              if (*(&v101 + 1))
              {
                --**(&v101 + 1);
              }
            }

            v73 = (*(*a1 + 24))(&v100, a1, v53);
            LODWORD(v74) = v100;
            v40 = fst::TropicalWeightTpl<float>::Zero(v73, v75);
            *&v100 = v74;
            LODWORD(v97[0]) = *v40;
            if (v74 != *v97)
            {
              if (v54 == -INFINITY || v74 >= -INFINITY && v74 <= -INFINITY)
              {
                v76 = *fst::TropicalWeightTpl<float>::NoWeight(v40, v41);
              }

              else if (v74 == INFINITY || v54 == INFINITY)
              {
                v76 = INFINITY;
              }

              else
              {
                v76 = v54 + v74;
              }

              LODWORD(v97[0]) = (*(*a2 + 176))(a2);
              LODWORD(v100) = -1;
              *(&v100 + 1) = v76;
              v78 = v95;
              if (v95 >= v96)
              {
                v79 = std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(&__p, &v100);
              }

              else
              {
                *v95 = -1;
                *(v78 + 1) = v76;
                v79 = (v78 + 8);
              }

              v95 = v79;
              *&v100 = 0;
              *(&v100 + 1) = __PAIR64__(v51, LODWORD(v74));
              (*(*a2 + 184))(a2, LODWORD(v97[0]), &v100);
              std::vector<int>::push_back[abi:ne200100](&v89, v97);
              *&v100 = &__p;
              *(&v100 + 1) = a3;
              LODWORD(v101) = -1;
              *(&v101 + 1) = a7;
              v40 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v89, v90, &v100, (v90 - v89) >> 2);
            }

LABEL_98:
            v47 = v89;
            v46 = v90;
            if (v89 == v90)
            {
LABEL_99:
              fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 56))(a1, 4, 0, v16))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }
}

void sub_26B52B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFst(void *a1)
{
  *a1 = &unk_287C098C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(a1, v10);
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

BOOL fst::internal::FirstPathSelect<int,fst::TropicalWeightTpl<float>,fst::AutoQueue<int>>::operator()(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v5 = *a3;
  if (*a3 == -INFINITY || (v6 = *a4, *a4 >= -INFINITY) && *a4 <= -INFINITY)
  {
    v5 = *fst::TropicalWeightTpl<float>::NoWeight(a1, a2);
    v6 = *a4;
  }

  else if (v5 >= v6)
  {
    v5 = *a4;
  }

  return v6 == v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(unint64_t *a1, float *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v8 = v2 - *a1;
      v7 = v8 == 0;
      v9 = v8 >> 1;
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1[4], v10);
    }

    v5 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
    v3 = v5;
    if (v4 != v2)
    {
      v3 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
      do
      {
        v6 = *v4++;
        *v3++ = v6;
      }

      while (v4 != v2);
    }

    a1[1] = v5;
  }

  result = *a2;
  *v3 = *a2;
  a1[2] = (v3 + 1);
  return result;
}

uint64_t std::vector<fst::TropicalWeightTpl<float>>::__swap_out_circular_buffer(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      v9 = *v7;
      v7 += 4;
      *v8++ = v9;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v10 = *a1;
  v11 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = *a1;
    v13 = (result + *a1 - a3);
    do
    {
      v14 = *v12;
      v12 += 4;
      *v13++ = v14;
    }

    while (v12 != a3);
  }

  a2[1] = v11;
  v15 = *a1;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::TropicalWeightTpl<float>>>(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B52B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<int,fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(void *result, void *a2)
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
      v5 += 2;
      v6 += 2;
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

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(int *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, *(a2 - 4));
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
        v8 = (v6 + 4 * v7);
        result = fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t **a1, int a2, int a3)
{
  v4 = **a1;
  v5 = (v4 + 8 * a2);
  v6 = (v4 + 8 * a3);
  fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight(a1, *v5, &v30);
  if (v30 == -INFINITY || (v9 = v5[1], v9 >= -INFINITY) && v9 <= -INFINITY)
  {
    v10 = *fst::TropicalWeightTpl<float>::NoWeight(v7, v8);
  }

  else
  {
    v11 = v9 == INFINITY || v30 == INFINITY;
    v10 = v30 + v9;
    if (v11)
    {
      v10 = INFINITY;
    }
  }

  v31 = v10;
  fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight(a1, *v6, &v29);
  if (v29 == -INFINITY || (v14 = v6[1], v14 >= -INFINITY) && v14 <= -INFINITY)
  {
    v15 = *fst::TropicalWeightTpl<float>::NoWeight(v12, v13);
  }

  else
  {
    v16 = v14 == INFINITY || v29 == INFINITY;
    v15 = v29 + v14;
    if (v16)
    {
      v15 = INFINITY;
    }
  }

  v30 = v15;
  v17 = *(a1 + 4);
  v18 = *v6;
  if (*v5 != v17 || LODWORD(v18) == v17)
  {
    v21 = *v5 == v17 || LODWORD(v18) != v17;
    v22 = fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()((a1 + 3), &v30, &v31);
    v23 = v21 && v22;
    if (!v21 && v22)
    {
      v24 = *(a1 + 5);
      v23 = v30 > (v24 + v31);
      if (v31 > (v24 + v30))
      {
        v23 = 1;
      }
    }
  }

  else if (fst::NaturalLess<fst::TropicalWeightTpl<float>,void>::operator()((a1 + 3), &v30, &v31))
  {
    v23 = 1;
  }

  else
  {
    v25 = *(a1 + 5);
    v27 = v31 > (v25 + v30);
    v26 = v25 + v31;
    v27 = v27 || v30 > v26;
    v23 = !v27;
  }

  return v23 & 1;
}

float fst::internal::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::PWeight@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  if (*(a1 + 16) == a2)
  {
    v4 = fst::TropicalWeightTpl<float>::One(a1, a2);
  }

  else
  {
    v5 = **(a1 + 8);
    if (a2 >= ((*(*(a1 + 8) + 8) - v5) >> 2))
    {
      v4 = fst::TropicalWeightTpl<float>::Zero(a1, a2);
    }

    else
    {
      v4 = (v5 + 4 * a2);
    }
  }

  result = *v4;
  *a3 = *v4;
  return result;
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  std::allocate_shared[abi:ne200100]<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>,std::allocator<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::vector<fst::TropicalWeightTpl<float>> const*&,std::vector<fst::TropicalWeightTpl<float>>*&,fst::DeterminizeFstOptions<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>> const&,0>();
}

void sub_26B52BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *v14 = v15;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFst(void *a1)
{
  *a1 = &unk_287C098C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

unint64_t fst::ImplToFst<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

void std::__shared_ptr_emplace<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> const&,std::vector<fst::TropicalWeightTpl<float>> const*&,std::vector<fst::TropicalWeightTpl<float>>*&,fst::DeterminizeFstOptions<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>> const&,std::allocator<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C093C0;
  fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::DeterminizeFsaImpl(a1 + 3, a2, *a3, *a4, a5);
}

void std::__shared_ptr_emplace<fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C093C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

void sub_26B52C2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](v18 + 23);
  v20 = v18[22];
  v18[22] = 0;
  if (v20)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100]((v18 + 22), v20);
  }

  fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_26B52C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v2);
    MEMORY[0x26D6787B0](v3, 0x10E0C404B1F5D25);
  }

  return a1;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_287C094C0;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_287C09410;
  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](a1 + 23);
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100]((a1 + 22), v2);
  }

  *a1 = &unk_287C094C0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_287C09410;
  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](a1 + 23);
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100]((a1 + 22), v2);
  }

  *a1 = &unk_287C094C0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 56))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, v4 + 5);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetArcs(a1, a2);
  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(&v8, v9[0]);
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 16))(*(a1 + 136));
  if (result != -1)
  {
    fst::TropicalWeightTpl<float>::One(result, v2);
    operator new();
  }

  return result;
}

int *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 112) + 8 * a2);
  result = fst::TropicalWeightTpl<float>::Zero(a1, a2);
  v7 = *result;
  for (i = *v5; i; i = *i)
  {
    result = (*(**(a1 + 136) + 24))(&v13);
    v10 = i[3];
    if (v10 == -INFINITY || *&v13 >= -INFINITY && *&v13 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight(result, v9);
      v11 = *result;
    }

    else
    {
      v12 = *&v13 == INFINITY || v10 == INFINITY;
      v11 = v10 + *&v13;
      if (v12)
      {
        v11 = INFINITY;
      }
    }

    if (v7 == -INFINITY || v11 >= -INFINITY && v11 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight(result, v9);
      v7 = *result;
    }

    else if (v7 >= v11)
    {
      v7 = v11;
    }

    if (v7 >= -INFINITY && v7 <= -INFINITY)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  *a3 = v7;
  return result;
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C09510;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_26B52CCD0(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v2, 0x10A0C40690396FALL);
  if (*v3)
  {
    operator delete(*v3);
  }

  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(uint64_t a1)
{
  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x26D6787B0);
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_26B52CE3C(_Unwind_Exception *a1)
{
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(v2);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v1 + 7);
  v5 = *v3;
  if (*v3)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

void *fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(void *result, uint64_t **a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 3);
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(v3 + 6);
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(*a2);
    v3[8] = result[7];
    result[7] = v3;
  }

  return result;
}

void std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__destroy_vector::operator()[abi:ne200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v1[1] = v2;
    fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(uint64_t **a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = v4[7];
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = v4[7];
LABEL_22:
    v4[7] = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = v4[7];
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = v4[7];
    goto LABEL_22;
  }

  operator delete(__p);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x80)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06EF8;
  a1[1] = &unk_287C06F20;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x100)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C06FB8;
  a1[1] = &unk_287C06FE0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x200)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07078;
  a1[1] = &unk_287C070A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x400)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07138;
  a1[1] = &unk_287C07160;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x800)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C071F8;
  a1[1] = &unk_287C07220;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x1000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C072B8;
  a1[1] = &unk_287C072E0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x2000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07378;
  a1[1] = &unk_287C073A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x4000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x801uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07578;
  a1[1] = &unk_287C075A0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

void *fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1 + 2;
  if ((a1[3] - v1) <= 0x8000)
  {
    std::vector<std::unique_ptr<fst::MemoryPoolBase>>::resize(a1 + 2, 0x1001uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

void *fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C07638;
  a1[1] = &unk_287C07660;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(uint64_t a1)
{
  *a1 = &unk_287C09510;
  if (*(a1 + 129) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorCacheStore(v2);
      MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
    }
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  return fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);
}

uint64_t *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorCacheStore(uint64_t *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(a1);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 10);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 9);
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator(a1 + 7);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(uint64_t *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::unordered_set((a1 + 4), a2, a1 + 2, a1 + 3);
}

void sub_26B52EDD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x26D6787B0](v3, 0xC400A2AC0F1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = v4[7];
      v4[7] = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

void *fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(void *a1)
{
  v4 = a1 + 14;
  v2 = a1[14];
  v3 = v4[1];
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        *v6 = 0;
        MEMORY[0x26D6787B0](v6, 0x1020C405F07FB98);
        v2 = a1[14];
        v3 = a1[15];
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::~__hash_table((a1 + 5));
  v9 = a1[2];
  a1[2] = 0;
  if (v9)
  {
    MEMORY[0x26D6787B0](v9, 0xC400A2AC0F1);
  }

  v10 = a1[1];
  a1[1] = 0;
  if (v10)
  {
    MEMORY[0x26D6787B0](v10, 0xC400A2AC0F1);
  }

  return a1;
}

void std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x26D6787B0);
  }
}

void sub_26B52F2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::~unique_ptr[abi:ne200100](v18 + 23);
  v20 = v18[22];
  v18[22] = 0;
  if (v20)
  {
    std::default_delete<fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator()[abi:ne200100]((v18 + 22), v20);
  }

  fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_26B52F464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_287C08E68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_287C09510;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_26B52F65C(_Unwind_Exception *a1)
{
  MEMORY[0x26D6787B0](v3, 0x10A0C40690396FALL);
  if (*v2)
  {
    operator delete(*v2);
  }

  fst::internal::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::CopyStates(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v14 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v13 = 0;
    std::vector<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, a2 + 1, &v13);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate((a1 + 72), 1uLL);
  *v7 = *fst::TropicalWeightTpl<float>::Zero(v7, v8);
  v7[5] = 0;
  *(v7 + 3) = 0u;
  *(v7 + 1) = 0u;
  v9 = *(a1 + 80);
  v7[6] = v9;
  ++*(v9 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v10 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(a1 + 32, 0, 0, &v14);
    v11 = *(a1 + 32);
    *v10 = v11;
    v10[1] = a1 + 32;
    *(v11 + 8) = v10;
    *(a1 + 32) = v10;
    ++*(a1 + 48);
  }

  return v7;
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,0>(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::allocate(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<2>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<136ul>::Allocate(v2 + 1, 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<1>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate(v2 + 1, 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 58))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<64>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<4104ul>::Allocate(v2 + 1, 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<32>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<2056ul>::Allocate(v2 + 1, 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<16>>(*a1);
        result = v2[7];
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<1032ul>::Allocate(v2 + 1, 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<8>>(*a1);
      result = v2[7];
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<520ul>::Allocate(v2 + 1, 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::TN<4>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<264ul>::Allocate(v2 + 1, 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  v2[7] = v4;
  return result;
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,0>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(a1, a2, a3, (a3 - a2) >> 4);
  return a1;
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
      *(v7 + 12) = *(a2 + 12);
      a2 += 16;
      v7 += 16;
    }

    v6[1] = v7;
  }

  return result;
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__vallocate[abi:ne200100](uint64_t **a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(uint64_t **a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<2>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<40ul>::Allocate(v2 + 1, 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<1>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<24ul>::Allocate(v2 + 1, 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 60))
            {

              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<64>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<1032ul>::Allocate(v2 + 1, 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<32>>(*a1);
          result = v2[7];
          if (!result)
          {
            result = fst::internal::MemoryArenaImpl<520ul>::Allocate(v2 + 1, 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<16>>(*a1);
        result = v2[7];
        if (!result)
        {
          result = fst::internal::MemoryArenaImpl<264ul>::Allocate(v2 + 1, 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<8>>(*a1);
      result = v2[7];
      if (!result)
      {
        result = fst::internal::MemoryArenaImpl<136ul>::Allocate(v2 + 1, 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::TN<4>>(*a1);
    result = v2[7];
    if (!result)
    {
      result = fst::internal::MemoryArenaImpl<72ul>::Allocate(v2 + 1, 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  v2[7] = v4;
  return result;
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *result, int a2, void *a3)
{
  v5 = **(*(result[23] + 112) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = result[17];
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      (*(*v7 + 120))(v7, v6, &v23);
      v9 = v23;
      if (!v23)
      {
        break;
      }

      v10 = (*(*v23 + 16))(v23);
      v9 = v23;
      if (!v10)
      {
        if (v23)
        {
          v9 = (*(*v23 + 24))();
          v11 = v9;
        }

        else
        {
LABEL_7:
          v11 = *(&v23 + 1) + 16 * v25;
        }

        v12 = *(v11 + 12);
        v13 = v5[3];
        if (v13 == -INFINITY || (v14 = *(v11 + 8), v14 >= -INFINITY) && v14 <= -INFINITY)
        {
          v15 = *fst::TropicalWeightTpl<float>::NoWeight(v9, v8);
        }

        else
        {
          v16 = v14 == INFINITY || v13 == INFINITY;
          v15 = v13 + v14;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        v22[0] = v12;
        *&v22[1] = v15;
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FilterArc(result[22], v11, (v5 + 2), v22, a3);
      }

      if (!v23)
      {
        goto LABEL_20;
      }

      (*(*v23 + 8))();
LABEL_22:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    if (v25 < v24)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (*(&v24 + 1))
    {
      --**(&v24 + 1);
    }

    goto LABEL_22;
  }

LABEL_23:
  v19 = *a3;
  v17 = a3 + 1;
  v18 = v19;
  if (v19 != v17)
  {
    do
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::NormArc(result, (v18 + 5));
      v20 = v18[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v18[2];
          v16 = *v21 == v18;
          v18 = v21;
        }

        while (!v16);
      }

      v18 = v21;
    }

    while (v21 != v17);
  }
}

void sub_26B530110(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::AddArc(void *a1, uint64_t a2, float ***a3)
{
  v5 = *a3;
  v6 = *(a3 + 1);
  State = fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::FindState(a1, a3[1]);
  v10[0] = v5;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = State;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(a1[15], a2);
  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::push_back[abi:ne200100](MutableState + 3, v10);
}

void fst::internal::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[3];
  v6 = MutableState[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 64);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 64) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(a1, v2);
  *(MutableState + 14) |= 0xAu;
}

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FilterArc(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v8 = a2;
  v5 = std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2, &std::piecewise_construct, &v8, &v7);
  if (*(v5 + 10) != -1)
  {
    operator new();
  }

  fst::TropicalWeightTpl<float>::Zero(v5, v6);
  operator new();
}

void fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::sort[abi:ne200100](v4);
  v7 = *v4;
  if (*v4)
  {
    v8 = *v4;
    do
    {
      v9 = *(a2 + 4);
      if (v9 == -INFINITY || (v10 = *(v8 + 3), v10 >= -INFINITY) && v10 <= -INFINITY)
      {
        v5 = fst::TropicalWeightTpl<float>::NoWeight(v5, v6);
        v9 = *v5;
      }

      else if (v9 >= v10)
      {
        v9 = *(v8 + 3);
      }

      *(a2 + 4) = v9;
      if (v7 == v8 || *(v8 + 2) != *(v7 + 2))
      {
        v13 = *v8;
        v7 = v8;
      }

      else
      {
        v11 = *(v7 + 3);
        if (v11 == -INFINITY || (v12 = *(v8 + 3), v12 >= -INFINITY) && v12 <= -INFINITY)
        {
          v11 = *fst::TropicalWeightTpl<float>::NoWeight(v5, v6);
        }

        else if (v11 >= v12)
        {
          v11 = *(v8 + 3);
        }

        *(v7 + 3) = v11;
        if (v11 >= -INFINITY && v11 <= -INFINITY)
        {
          *(a1 + 8) |= 4uLL;
        }

        v13 = *v8;
        v14 = *v7;
        *v7 = **v7;
        operator delete(v14);
      }

      v8 = v13;
    }

    while (v13);
    for (i = *v4; i; i = *i)
    {
      v16 = *(i + 3);
      if (v16 == -INFINITY || (v17 = *(a2 + 4), v17 >= -INFINITY) && v17 <= -INFINITY)
      {
        v5 = fst::TropicalWeightTpl<float>::NoWeight(v5, v6);
        v18 = *v5;
      }

      else
      {
        v19 = v16 == INFINITY;
        v18 = v16 - v17;
        if (v19)
        {
          v18 = INFINITY;
        }

        if (v17 == INFINITY)
        {
          v18 = NAN;
        }
      }

      if ((LODWORD(v18) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v18 = *(a1 + 144) * floorf((v18 / *(a1 + 144)) + 0.5);
      }

      *(i + 3) = v18;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    std::__tree<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::internal::DeterminizeArc<fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

void sub_26B53065C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::sort[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      ++v3;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  result = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(v2, v3, &v6);
  *a1 = result;
  return result;
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v4 = *result;
      if (*(*result + 8) < *(result + 2))
      {
        *v4 = result;
        *result = 0;
        return v4;
      }
    }

    else
    {
      v8 = a2 / 2;
      v9 = a2 - a2 / 2;
      v10 = result;
      if (a2 >= 4)
      {
        v11 = v8;
        v10 = result;
        do
        {
          --v11;
          v10 = *v10;
        }

        while (v11 > 1);
      }

      v12 = *v10;
      *v10 = 0;
      v13 = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(result, v8, a3);
      v14 = std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__sort<std::__less<void,void>>(v12, v9, a3);

      return std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__merge<std::__less<void,void>>(v13, v14);
    }
  }

  return result;
}

uint64_t *std::forward_list<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__merge<std::__less<void,void>>(uint64_t *a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 2);
      if (*(a2 + 2) >= v2)
      {
        v3 = a2;
        a2 = a1;
      }

      else
      {
        v3 = a2;
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3 && *(v3 + 2) < v2);
        *v4 = a1;
      }

      v5 = *a1;
      v6 = v3 != 0;
      if (*a1)
      {
        v7 = v3 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        do
        {
          v8 = v5;
          v9 = *(v5 + 8);
          if (*(v3 + 2) < v9)
          {
            v10 = v3;
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10 && *(v10 + 2) < v9);
            *a1 = v3;
            v3 = *v11;
            *v11 = v8;
          }

          v5 = *v8;
          v6 = v3 != 0;
          if (*v8)
          {
            v12 = v3 == 0;
          }

          else
          {
            v12 = 1;
          }

          a1 = v8;
        }

        while (!v12);
        a1 = v8;
      }

      if (v6)
      {
        *a1 = v3;
      }
    }

    else
    {
      return a1;
    }
  }

  return a2;
}

uint64_t fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::FindState(void *a1, float **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::FindState(a1[23], a2);
  v5 = State;
  if (a1[19])
  {
    v6 = a1[20];
    if (State >= ((v6[1] - *v6) >> 2))
    {
      fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2, &v10);
      v7 = v6[1];
      if (v7 >= v6[2])
      {
        v8 = std::vector<fst::TropicalWeightTpl<float>>::__emplace_back_slow_path<fst::TropicalWeightTpl<float>>(v6, &v10);
      }

      else
      {
        *v7 = v10;
        v8 = (v7 + 1);
      }

      v6[1] = v8;
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[15] - a1[14]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
  if (Id != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      MEMORY[0x26D6787B0](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

int *fst::internal::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>>::ComputeDistance@<X0>(uint64_t a1@<X0>, float **a2@<X1>, float *a3@<X8>)
{
  result = fst::TropicalWeightTpl<float>::Zero(a1, a2);
  v8 = *result;
  for (i = *a2; i; i = *i)
  {
    v10 = *(i + 2);
    v11 = **(a1 + 152);
    if (v10 >= (*(*(a1 + 152) + 8) - v11) >> 2)
    {
      result = fst::TropicalWeightTpl<float>::Zero(result, v7);
    }

    else
    {
      result = (v11 + 4 * v10);
    }

    v12 = i[3];
    if (v12 == -INFINITY || (v13 = *result, *result >= -INFINITY) && *result <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight(result, v7);
      v14 = *result;
    }

    else
    {
      v15 = v12 == INFINITY || v13 == INFINITY;
      v14 = v13 + v12;
      if (v15)
      {
        v14 = INFINITY;
      }
    }

    if (v8 == -INFINITY || v14 >= -INFINITY && v14 <= -INFINITY)
    {
      result = fst::TropicalWeightTpl<float>::NoWeight(result, v7);
      v8 = *result;
    }

    else if (v8 >= v14)
    {
      v8 = v14;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[16] = a2;
  if (a3)
  {
    v5 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 4, &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey, &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
    if (v6)
    {
      v7 = a1[13];
      v8 = a1[14];
      v9 = a1[15];
      v10 = (v8 - v7) >> 3;
      *(v5 + 16) = v10;
      if (v8 >= v9)
      {
        v13 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v7;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<CMDPToken>>>((a1 + 13), v15);
        }

        *(8 * v10) = *a2;
        v11 = 8 * v10 + 8;
        v16 = a1[13];
        v17 = a1[14] - v16;
        v18 = (8 * v10 - v17);
        memcpy(v18, v16, v17);
        v19 = a1[13];
        a1[13] = v18;
        a1[14] = v11;
        a1[15] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = *a2;
        v11 = (v8 + 1);
      }

      a1[14] = v11;
    }

    else
    {
      return *(v5 + 16);
    }
  }

  else
  {
    v12 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 4, &fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
    if (v12)
    {
      return *(v12 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v7 = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(a1 + 6, *a2);
  v8 = v7;
  v9 = a1[1];
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 8);
        if (v14 == v8)
        {
          if (fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 8, *(i + 16), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v15 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate(a1 + 4, 1uLL);
  v27[0] = v15;
  v27[1] = (a1 + 4);
  v27[2] = 1;
  *v15 = 0;
  v15[1] = v8;
  *(v15 + 4) = *a3;
  v16 = (a1[5] + 1);
  v17 = *(a1 + 14);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)3>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v21);
    v9 = a1[1];
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = a1[3];
    a1[3] = v24;
    v22[v3] = (a1 + 3);
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v25 >= v9)
        {
          v25 %= v9;
        }
      }

      else
      {
        v25 &= v9 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  v27[0] = 0;
  ++a1[5];
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v27, 0);
  return i;
}

void sub_26B530E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

unint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(uint64_t *a1, unsigned int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  if (a2 == -1)
  {
    v3 = *(v2 + 128);
  }

  else
  {
    v3 = (*(v2 + 104) + 8 * a2);
  }

  v5 = *v3;
  for (result = *(v5 + 8); ; result ^= (2 * result) ^ (32 * *(v5 + 2)) ^ (*(v5 + 2) >> 59) ^ *(v5 + 3))
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }
  }

  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  result = 0;
  if (a2 >= -1 && a3 >= -1)
  {
    v5 = *a1;
    if (a2 == -1)
    {
      v6 = *(v5 + 128);
    }

    else
    {
      v6 = (*(v5 + 104) + 8 * a2);
    }

    v7 = *v6;
    if (a3 == -1)
    {
      v8 = *(v5 + 128);
    }

    else
    {
      v8 = (*(v5 + 104) + 8 * a3);
    }

    if (*(*v8 + 8) == *(v7 + 8))
    {
      return std::operator==[abi:ne200100]<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(*v8, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,std::allocator<fst::internal::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, unsigned int *a2)
{
  v4 = fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(a1 + 6, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (fst::CompactHashBiTable<int,fst::internal::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(uint64_t a1, uint64_t a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 104) == 1)
  {
    v5 = *(MutableState + 14);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 14) = v5 | 4;
      v6 = MutableState[4] - MutableState[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 14) |= 4u;
      std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::reserve((MutableState + 3), 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = *fst::TropicalWeightTpl<float>::Zero(a1, a2);
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  if (*(a1 + 120) != 1)
  {
    return;
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(v40, __p);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Enter GC: object = ", 33);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
    v10 = MEMORY[0x26D678650](v9, a1);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "), free recently cached = ", 26);
    v12 = MEMORY[0x26D678660](v11, a3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cache size = ", 15);
    v14 = MEMORY[0x26D678690](v13, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache frac = ", 15);
    v15 = std::ostream::operator<<();
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", cache limit = ", 16);
    v17 = MEMORY[0x26D678690](v16, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
    LogMessage::~LogMessage(v40);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = (*(a1 + 112) * a4);
  v19 = *(a1 + 40);
  *(a1 + 64) = v19;
  while (v19 != a1 + 32)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v20 - 1);
    }

    else
    {
      v21 = *(a1 + 92);
    }

    MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1, v21);
    v23 = *(a1 + 128);
    if (v23 <= v18 || *(MutableState + 15))
    {
LABEL_12:
      *(MutableState + 14) &= ~8u;
      v19 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v19;
    }

    else
    {
      if (a3)
      {
        if (MutableState == a2)
        {
          goto LABEL_12;
        }

        v24 = *(MutableState + 14);
      }

      else
      {
        v24 = *(MutableState + 14);
        if ((v24 & 8) != 0 || MutableState == a2)
        {
          goto LABEL_12;
        }
      }

      if ((v24 & 4) != 0)
      {
        v25 = MutableState[4] - MutableState[3] + 64;
        v26 = v23 > v25;
        v27 = v23 - v25;
        if (v26)
        {
          *(a1 + 128) = v27;
        }
      }

      fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Delete(a1);
      v19 = *(a1 + 64);
    }
  }

  if ((a3 & 1) != 0 || *(a1 + 128) <= v18)
  {
    v28 = *(a1 + 128);
    if (v18)
    {
      if (v28 > v18)
      {
        v29 = *(a1 + 112);
        do
        {
          v29 *= 2;
          v26 = v28 > 2 * v18;
          v18 *= 2;
        }

        while (v26);
        *(a1 + 112) = v29;
      }
    }

    else if (v28)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v43, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore:GC: Unable to free all cached states", 49);
      LogMessage::~LogMessage(&v43);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, a2, 1, a4);
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v40, "INFO");
    LogMessage::LogMessage(&v42, v40);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "GCCacheStore: Exit GC: object = ", 32);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(", 1);
    v32 = MEMORY[0x26D678650](v31, a1);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "), free recently cached = ", 26);
    v34 = MEMORY[0x26D678660](v33, a3);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", cache size = ", 15);
    v36 = MEMORY[0x26D678690](v35, *(a1 + 128));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", cache frac = ", 15);
    v37 = std::ostream::operator<<();
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", cache limit = ", 16);
    v39 = MEMORY[0x26D678690](v38, *(a1 + 112));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
    LogMessage::~LogMessage(&v42);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }
}

void sub_26B5315C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > (*(result + 16) - *result) >> 4)
  {
    if (a2 >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = *(result + 8) - *result;
    v5[4] = result + 24;
    v5[0] = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate((result + 24), a2);
    v5[1] = v5[0] + v4;
    v5[2] = v5[0] + v4;
    v5[3] = v5[0] + 16 * a2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v5);
    return std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(v5);
  }

  return result;
}

void sub_26B5316C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::deallocate(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::Delete(uint64_t **a1)
{
  v1 = *(a1[8] + 4);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(uint64_t **a1)
{
  fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Destroy(a1[1][*(a1[8] + 4)], a1 + 9);
  a1[1][*(a1[8] + 4)] = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  a1[6] = (a1[6] - 1);

  return std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100]((a1 + 4), v2);
}

void *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::push_back[abi:ne200100](void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
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

    v11 = (result + 3);
    v14[4] = v3 + 3;
    if (v10)
    {
      v12 = fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::allocate(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v7];
    v14[0] = v12;
    v14[1] = v13;
    v14[3] = &v12[2 * v10];
    *v13 = *a2;
    *(v13 + 2) = *(a2 + 8);
    *(v13 + 3) = *(a2 + 12);
    v14[2] = v13 + 2;
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(v3, v14);
    v6 = v3[1];
    result = std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(v14);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

void sub_26B5318E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Start(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(*a1 + 24))(a1, 4))
    {
      *(a1 + 56) = 1;
    }

    else if ((*(a1 + 56) & 1) == 0)
    {
      v2 = (*(*a1 + 48))(a1);
      if (v2 != -1)
      {
        *(a1 + 60) = v2;
        *(a1 + 56) = 1;
        if (*(a1 + 64) <= v2)
        {
          *(a1 + 64) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 60);
}

float fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 56))(&v11, a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v11;
    MutableState[14] |= 9u;
  }

  v7 = a1[15];
  if (*(v7 + 92) == a2)
  {
    v8 = (v7 + 96);
  }

  else
  {
    v8 = (*(v7 + 8) + 8 * a2 + 8);
  }

  v9 = *v8;
  result = *v9;
  *a3 = *v9;
  return result;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 32))(v4);
    std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::shared_ptr[abi:ne200100]<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,0>(&v8, v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v6;
  *a1 = &unk_287C092F8;
  return a1;
}

void sub_26B531DA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::shared_ptr[abi:ne200100]<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,0>();
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

uint64_t std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::shared_ptr<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__shared_ptr_default_delete<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 64))
  {
    return 0;
  }

  v5 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 64))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 64);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 64) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 64);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 64));
  return v4;
}

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::PoolAllocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 15);
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::internal::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 40))(a1, a2);
  }

  return fst::internal::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

int *fst::ComputeTotalWeight<fst::ArcTpl<fst::TropicalWeightTpl<float>>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, float *a4@<X8>)
{
  if (a3)
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7 >= ((a2[1] - *a2) >> 2))
    {
      result = fst::TropicalWeightTpl<float>::Zero(v7, v8);
    }

    else
    {
      result = (*a2 + 4 * (*(*a1 + 16))(a1));
    }

    v10 = *result;
  }

  else
  {
    result = fst::TropicalWeightTpl<float>::Zero(a1, a2);
    v10 = *result;
    v11 = *a2;
    if (a2[1] != *a2)
    {
      v12 = 0;
      do
      {
        result = (*(*a1 + 24))(&v17, a1, v12);
        v14 = *(v11 + 4 * v12);
        if (v14 == -INFINITY || *&v17 >= -INFINITY && *&v17 <= -INFINITY)
        {
          result = fst::TropicalWeightTpl<float>::NoWeight(result, v13);
          v15 = *result;
        }

        else
        {
          v16 = *&v17 == INFINITY || v14 == INFINITY;
          v15 = v14 + *&v17;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        if (v10 == -INFINITY || v15 >= -INFINITY && v15 <= -INFINITY)
        {
          result = fst::TropicalWeightTpl<float>::NoWeight(result, v13);
          v10 = *result;
        }

        else if (v10 >= v15)
        {
          v10 = v15;
        }

        ++v12;
        v11 = *a2;
      }

      while (v12 < (a2[1] - *a2) >> 2);
    }
  }

  *a4 = v10;
  return result;
}

uint64_t fst::Reweight<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t *a1, uint64_t *a2, int a3)
{
  result = (*(*a1 + 136))(a1);
  if (!result)
  {
    return result;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  (*(*a1 + 112))(a1, &v84);
LABEL_3:
  if (v84)
  {
    if ((*(*v84 + 16))(v84))
    {
      goto LABEL_90;
    }

    if (v84)
    {
      v8 = (*(*v84 + 24))(v84);
      goto LABEL_9;
    }
  }

  else if (v86 >= v85)
  {
    goto LABEL_90;
  }

  v8 = v86;
LABEL_9:
  v9 = v8;
  v10 = *a2;
  if (v8 != (a2[1] - *a2) >> 2)
  {
    v11 = fst::TropicalWeightTpl<float>::Zero(v8, v7);
    LODWORD(v80) = *(v10 + 4 * v9);
    LODWORD(v83) = *v11;
    v12.n128_u32[0] = v80;
    if (*&v80 == *&v83)
    {
      goto LABEL_49;
    }

    (*(*a1 + 272))(a1, v9, &v83, *&v80);
    while (1)
    {
      if ((*(*v83 + 16))(v83))
      {
        if (v83)
        {
          (*(*v83 + 8))(v83);
        }

        if (a3)
        {
LABEL_49:
          if (a3 == 1)
          {
            v24 = (*(*a1 + 24))(&v83, a1, v9, v12);
            v26 = *(v10 + 4 * v9);
            if (v26 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
            {
              goto LABEL_57;
            }

            v29 = *&v83 == INFINITY || v26 == INFINITY;
            v28 = v26 + *&v83;
            if (v29)
            {
              v28 = INFINITY;
            }

            goto LABEL_68;
          }
        }

        else
        {
          v24 = (*(*a1 + 24))(&v83, a1, v9);
          if (*&v83 == -INFINITY || (v27 = *(v10 + 4 * v9), v27 >= -INFINITY) && v27 <= -INFINITY)
          {
LABEL_57:
            v28 = *fst::TropicalWeightTpl<float>::NoWeight(v24, v25);
          }

          else
          {
            v28 = *&v83 - v27;
            if (*&v83 == INFINITY)
            {
              v28 = INFINITY;
            }

            if (v27 == INFINITY)
            {
              v28 = NAN;
            }
          }

LABEL_68:
          *&v80 = v28;
          (*(*a1 + 160))(a1, v9, &v80);
        }

        if (v84)
        {
          (*(*v84 + 32))(v84);
        }

        else
        {
          ++v86;
        }

        goto LABEL_3;
      }

      v13 = (*(*v83 + 24))(v83);
      v80 = *v13;
      v81 = *(v13 + 8);
      v82 = *(v13 + 12);
      v15 = v82;
      v16 = *a2;
      if (v82 < ((a2[1] - *a2) >> 2))
      {
        v17 = fst::TropicalWeightTpl<float>::Zero(v13, v14);
        v88 = *(v16 + 4 * v15);
        v87 = *v17;
        if (v88 != v87)
        {
          break;
        }
      }

LABEL_45:
      (*(*v83 + 32))(v83);
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_44:
        (*(*v83 + 80))(v83, &v80);
        goto LABEL_45;
      }

      v19 = *(v10 + 4 * v9);
      if (v19 == -INFINITY || v81 >= -INFINITY && v81 <= -INFINITY)
      {
        v17 = fst::TropicalWeightTpl<float>::NoWeight(v17, v18);
        v20 = *v17;
      }

      else
      {
        v20 = INFINITY;
        if (v19 == INFINITY || v81 == INFINITY)
        {
LABEL_36:
          v22 = *(v16 + 4 * v15);
          if (v22 >= -INFINITY && v22 <= -INFINITY)
          {
            goto LABEL_38;
          }

LABEL_39:
          if (v22 == INFINITY)
          {
            v23 = NAN;
          }

          else
          {
            v23 = INFINITY;
            if (v20 != INFINITY)
            {
              v23 = v20 - v22;
            }
          }

          goto LABEL_43;
        }

        v20 = v19 + v81;
      }

      if (v20 != -INFINITY)
      {
        goto LABEL_36;
      }

LABEL_38:
      v23 = *fst::TropicalWeightTpl<float>::NoWeight(v17, v18);
LABEL_43:
      v81 = v23;
      goto LABEL_44;
    }

    if (v81 == -INFINITY || (v21 = *(v16 + 4 * v15), v21 >= -INFINITY) && v21 <= -INFINITY)
    {
      v17 = fst::TropicalWeightTpl<float>::NoWeight(v17, v18);
      v20 = *v17;
    }

    else
    {
      v20 = INFINITY;
      if (v81 == INFINITY || v21 == INFINITY)
      {
        goto LABEL_29;
      }

      v20 = v81 + v21;
    }

    if (v20 == -INFINITY)
    {
      goto LABEL_38;
    }

LABEL_29:
    v22 = *(v10 + 4 * v9);
    if (v22 >= -INFINITY && v22 <= -INFINITY)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  while (1)
  {
LABEL_90:
    v30 = v84;
    if (!v84)
    {
      if (v86 >= v85)
      {
        break;
      }

      goto LABEL_75;
    }

    if ((*(*v84 + 16))(v84))
    {
      break;
    }

    v30 = v84;
    if (v84)
    {
      v30 = (*(*v84 + 24))(v84);
      v31 = v30;
      goto LABEL_76;
    }

LABEL_75:
    v31 = v86;
LABEL_76:
    if (a3 == 1)
    {
      v32 = fst::TropicalWeightTpl<float>::Zero(v30, v7);
      v33 = (*(*a1 + 24))(&v83, a1, v31);
      v35 = *v32;
      if (*v32 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
      {
        v36 = *fst::TropicalWeightTpl<float>::NoWeight(v33, v34);
      }

      else
      {
        v37 = *&v83 == INFINITY || v35 == INFINITY;
        v36 = v35 + *&v83;
        if (v37)
        {
          v36 = INFINITY;
        }
      }

      *&v80 = v36;
      (*(*a1 + 160))(a1, v31, &v80);
    }

    if (v84)
    {
      (*(*v84 + 32))(v84);
    }

    else
    {
      ++v86;
    }
  }

  v38 = (*(*a1 + 16))(a1);
  if (v38 >= ((a2[1] - *a2) >> 2))
  {
    v40 = fst::TropicalWeightTpl<float>::Zero(v38, v39);
  }

  else
  {
    v40 = (*a2 + 4 * (*(*a1 + 16))(a1));
  }

  v42 = *v40;
  v43 = fst::TropicalWeightTpl<float>::One(v40, v41);
  *&v80 = v42;
  LODWORD(v83) = *v43;
  v45.n128_f32[0] = v42;
  if (v42 == *&v83)
  {
    goto LABEL_171;
  }

  v46 = fst::TropicalWeightTpl<float>::Zero(v43, v44);
  *&v80 = v42;
  LODWORD(v83) = *v46;
  v45.n128_f32[0] = v42;
  if (v42 == *&v83)
  {
    goto LABEL_171;
  }

  v47 = (*(*a1 + 56))(a1, 0x2000000000, 1, v42);
  v48 = *a1;
  if ((v47 & 0x2000000000) == 0)
  {
    v49 = (*(v48 + 176))(a1);
    v51 = v49;
    if (a3)
    {
      v52 = fst::TropicalWeightTpl<float>::One(v49, v50);
      v54 = *v52;
      if (*v52 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
      {
        v55 = *fst::TropicalWeightTpl<float>::NoWeight(v52, v53);
      }

      else if (v42 == INFINITY)
      {
        v55 = NAN;
      }

      else
      {
        v55 = INFINITY;
        if (v54 != INFINITY)
        {
          v55 = v54 - v42;
        }
      }
    }

    else
    {
      v55 = v42;
    }

    v77 = (*(*a1 + 16))(a1);
    v80 = 0;
    v81 = v55;
    v82 = v77;
    (*(*a1 + 184))(a1, v51, &v80);
    (*(*a1 + 152))(a1, v51);
    goto LABEL_171;
  }

  v56 = (*(v48 + 16))(a1);
  (*(*a1 + 272))(a1, v56, &v83);
  while (2)
  {
    if (!(*(*v83 + 16))(v83))
    {
      v58 = (*(*v83 + 24))(v83);
      v80 = *v58;
      v60 = *(v58 + 2);
      v81 = v60;
      v82 = v58[3];
      if (a3)
      {
        v58 = fst::TropicalWeightTpl<float>::One(v58, v59);
        v61 = *v58;
        if (*v58 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
        {
          v58 = fst::TropicalWeightTpl<float>::NoWeight(v58, v59);
          v62 = *v58;
          goto LABEL_110;
        }

        if (v42 == INFINITY)
        {
          goto LABEL_117;
        }

        v62 = INFINITY;
        if (v61 != INFINITY)
        {
          v62 = v61 - v42;
LABEL_110:
          if (v62 == -INFINITY)
          {
            goto LABEL_117;
          }
        }

        if (v81 >= -INFINITY && v81 <= -INFINITY)
        {
LABEL_117:
          v63 = *fst::TropicalWeightTpl<float>::NoWeight(v58, v59);
        }

        else
        {
          v65 = v81 == INFINITY || v62 == INFINITY;
          v63 = v62 + v81;
          if (v65)
          {
            v63 = INFINITY;
          }
        }
      }

      else
      {
        if (v42 == -INFINITY || v60 >= -INFINITY && v60 <= -INFINITY)
        {
          goto LABEL_117;
        }

        v64 = v60 == INFINITY || v42 == INFINITY;
        v63 = v42 + v60;
        if (v64)
        {
          v63 = INFINITY;
        }
      }

      v81 = v63;
      (*(*v83 + 80))(v83, &v80);
      (*(*v83 + 32))(v83);
      continue;
    }

    break;
  }

  v66 = v83;
  if (v83)
  {
    v66 = (*(*v83 + 8))(v83);
  }

  if (a3)
  {
    v67 = fst::TropicalWeightTpl<float>::One(v66, v57);
    v69 = *v67;
    if (*v67 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
    {
      v70 = *fst::TropicalWeightTpl<float>::NoWeight(v67, v68);
    }

    else
    {
      v29 = v69 == INFINITY;
      v73 = v69 - v42;
      if (v29)
      {
        v73 = INFINITY;
      }

      if (v42 == INFINITY)
      {
        v70 = NAN;
      }

      else
      {
        v70 = v73;
      }
    }

    v71 = (*(*a1 + 24))(&v83, a1, v56);
    if (v70 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
    {
LABEL_155:
      v74 = *fst::TropicalWeightTpl<float>::NoWeight(v71, v72);
    }

    else
    {
      v75 = *&v83 == INFINITY || v70 == INFINITY;
      v74 = v70 + *&v83;
      if (v75)
      {
        v74 = INFINITY;
      }
    }
  }

  else
  {
    v71 = (*(*a1 + 24))(&v83, a1, v56);
    if (v42 == -INFINITY || *&v83 >= -INFINITY && *&v83 <= -INFINITY)
    {
      goto LABEL_155;
    }

    v76 = *&v83 == INFINITY || v42 == INFINITY;
    v74 = v42 + *&v83;
    if (v76)
    {
      v74 = INFINITY;
    }
  }

  *&v80 = v74;
  (*(*a1 + 160))(a1, v56, &v80);
LABEL_171:
  v78 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0, v45);
  v79 = fst::ReweightProperties(v78);
  (*(*a1 + 168))(a1, v79, 0xFFFFFFFF0007);
  result = v84;
  if (v84)
  {
    return (*(*v84 + 8))(v84);
  }

  return result;
}