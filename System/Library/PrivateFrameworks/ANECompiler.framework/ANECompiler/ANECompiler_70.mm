void sub_23CCB2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v50 - 73) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 96));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a15);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v50 - 128));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a21);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a44 & 0x80000000) == 0)
    {
LABEL_20:
      _Unwind_Resume(exception_object);
    }

LABEL_19:
    operator delete(a39);
    _Unwind_Resume(exception_object);
  }

LABEL_18:
  operator delete(a27);
  if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void operations_research::ProtoEnumToString<operations_research::sat::SatParameters_RestartAlgorithm>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v20[6] = *MEMORY[0x277D85DE8];
  v16 = a1;
  restarted = operations_research::sat::SatParameters_RestartAlgorithm_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(restarted, v2);
  if (ValueByNumber)
  {
    v6 = ValueByNumber[1];
    if (*(v6 + 23) < 0)
    {
      v12 = *v6;
      v13 = *(v6 + 1);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      v7 = *v6;
      a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a2->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    v20[0] = "Invalid enum value of: ";
    v20[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    v19[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v16);
    v19[1] = v8;
    v18[0] = " for enum type: ";
    v18[1] = 16;
    v9 = *(operations_research::sat::SatParameters_RestartAlgorithm_descriptor(v19[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v17[0] = v9;
    v17[1] = v10;
    absl::lts_20240722::StrCat(v20, v19, v18, v17, a2);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23CCB30E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string>,std::string,false>::operator()(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(a2, &v5);
  v3 = v5;
  v4 = v6;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = a1;
  v8 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v3)
  {
    v6 = v3;
    operator delete(v3);
  }
}

void sub_23CCB31D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void ***a13)
{
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22[0] = *(a1 + 16);
  if (*a1)
  {
    v3 = 0;
    while (v18 != 1)
    {
      v4 = *a1;
      v5 = *(a1 + 8);
      v6 = absl::lts_20240722::ByChar::Find(v22, *a1, v5, v3);
      if ((v4 + v5) == v6)
      {
        v18 = 1;
      }

      v8 = (v5 - v17);
      if (v5 < v17)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (v8 >= &v6[-v4 - v17])
      {
        v8 = &v6[-v4 - v17];
      }

      v19 = v4 + v17;
      v20 = v8;
      v3 = &v8[v17 + v7];
      v17 = v3;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    v18 = 2;
  }

  else
  {
    v18 = 2;
    v17 = *(a1 + 8);
  }

LABEL_13:
  while (v18 != 2)
  {
    v9 = 0;
    v10 = v19;
    v11 = v20;
LABEL_15:
    v12 = &v23[2 * v9];
    *v12 = v10;
    v12[1] = v11;
    while (v18 != 1)
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = absl::lts_20240722::ByChar::Find(v22, *a1, v14, v17);
      if ((v13 + v14) == v15)
      {
        v18 = 1;
      }

      v11 = (v14 - v17);
      if (v14 < v17)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v10 = v13 + v17;
      if (v11 >= &v15[-v13 - v17])
      {
        v11 = &v15[-v13 - v17];
      }

      v19 = v13 + v17;
      v20 = v11;
      v17 += &v11[v16];
      if (v11)
      {
        if (++v9 == 16)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }
    }

    v18 = 2;
    ++v9;
LABEL_26:
    std::vector<std::string_view>::__insert_with_size[abi:ne200100]<absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *,absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *>(a2, *(a2 + 8), v23, &v23[2 * v9], (16 * v9) >> 4);
  }
}

void sub_23CCB33E8(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

double *std::vector<std::string_view>::__insert_with_size[abi:ne200100]<absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *,absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view>::ConvertToContainer<std::vector<std::string_view>,std::string_view,false>::operator()(absl::lts_20240722::strings_internal::Splitter<absl::lts_20240722::ByChar,absl::lts_20240722::SkipEmpty,std::string_view> const&)::raw_view *>(unint64_t *a1, double *__src, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return __src;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (a5 <= (v7 - v8) >> 4)
  {
    v13 = v8 - __src;
    v14 = (v8 - __src) >> 4;
    if (v14 >= a5)
    {
      v23 = 2 * a5;
      v24 = &__src[2 * a5];
      v25 = &v8[-2 * a5];
      for (i = a1[1]; v25 < v8; ++i)
      {
        v27 = *v25;
        v25 += 2;
        *i = v27;
      }

      a1[1] = i;
      if (v8 != v24)
      {
        v28 = v8 - v24;
        v29 = v8 - v28;
        v30 = a3;
        v31 = a5;
        memmove(v29, __src, v28);
        a5 = v31;
        a3 = v30;
      }

      if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        v32 = __src;
        v33 = a3;
        if ((v6 & 0xFFFFFFFFFFFFFFFuLL) < 0x17)
        {
          goto LABEL_101;
        }

        v67 = (__src + 1) >= a3 + v23 * 8 || a3 + 8 >= &__src[v23];
        v68 = !v67;
        v69 = &__src[v23 - 1] <= a3 || __src >= a3 + v23 * 8 - 8;
        v32 = __src;
        v33 = a3;
        if (!v69)
        {
          goto LABEL_101;
        }

        v32 = __src;
        v33 = a3;
        if (v68)
        {
          goto LABEL_101;
        }

        v70 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 1;
        v71 = 2 * (v70 & 0x1FFFFFFFFFFFFFFCLL);
        v32 = &__src[v71];
        v33 = (a3 + v71 * 8);
        v72 = (a3 + 32);
        v73 = __src + 4;
        v74 = v70 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v75 = v72 - 4;
          v102 = vld2q_f64(v75);
          v106 = vld2q_f64(v72);
          v76 = v73 - 4;
          vst2q_f64(v76, v102);
          vst2q_f64(v73, v106);
          v72 += 8;
          v73 += 8;
          v74 -= 4;
        }

        while (v74);
        if (v70 != (v70 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_101:
          do
          {
            v34 = *v33;
            v35 = v33[1];
            v33 += 2;
            *v32 = v34;
            *(v32 + 1) = v35;
            v32 += 2;
          }

          while (v33 != (a3 + 16 * a5));
        }
      }

      return __src;
    }

    v15 = (a3 + v13);
    if ((a3 + v13) == a4)
    {
      v20 = a1[1];
      a1[1] = v8;
      if (v14 < 1)
      {
        return __src;
      }

      goto LABEL_46;
    }

    v16 = __src + a4 - a3 - v8 - 16;
    if (v16 >= 0x230 && ((v17 = v8 + (v16 & 0xFFFFFFFFFFFFFFF0), v17 >= v8) ? (v18 = (v8 + (v16 & 0xFFFFFFFFFFFFFFF0) + 8) >= v8 + 1) : (v18 = 0), v18))
    {
      v92 = v17 + 16;
      v93 = v8 >= v8 + (v16 & 0xFFFFFFFFFFFFFFF0) - __src + a3 + 16 || v15 >= v92;
      v19 = (a3 + v13);
      v20 = a1[1];
      if (v93)
      {
        v94 = (v16 >> 4) + 1;
        v95 = 2 * (v94 & 0x1FFFFFFFFFFFFFFCLL);
        v19 = &v15[v95 * 8];
        v20 = &v8[v95];
        v96 = v8 + 4;
        v97 = (a3 + (v8 + 4) - __src);
        v98 = v94 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v99 = v97 - 4;
          v104 = vld2q_f64(v99);
          v108 = vld2q_f64(v97);
          v100 = v96 - 4;
          vst2q_f64(v100, v104);
          vst2q_f64(v96, v108);
          v96 += 8;
          v97 += 8;
          v98 -= 4;
        }

        while (v98);
        if (v94 == (v94 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_21:
          a1[1] = v20;
          if (v14 < 1)
          {
            return __src;
          }

LABEL_46:
          v56 = &__src[2 * a5];
          v57 = &v20[-2 * a5];
          for (j = v20; v57 < v8; j += 2)
          {
            v59 = *v57;
            v57 += 2;
            *j = v59;
          }

          a1[1] = j;
          if (v20 != v56)
          {
            v60 = a3;
            memmove(v56, __src, v20 - v56);
            a3 = v60;
          }

          if (v8 == __src)
          {
            return __src;
          }

          v61 = v8 - __src - 16;
          if (v61 < 0x170 || ((v77 = __src + (v61 & 0xFFFFFFFFFFFFFFF0), v78 = (v77 + 8), v79 = a3 + (v61 & 0xFFFFFFFFFFFFFFF0), v80 = v79 + 8, v81 = v77 + 16, (__src + 1) < v79 + 16) ? (v82 = a3 + 8 >= v81) : (v82 = 1), v82 ? (v83 = 0) : (v83 = 1), v78 > a3 ? (v84 = __src >= v80) : (v84 = 1), !v84 || (v83 & 1) != 0))
          {
            v62 = __src;
            v63 = a3;
          }

          else
          {
            v85 = (v61 >> 4) + 1;
            v86 = 2 * (v85 & 0x1FFFFFFFFFFFFFFCLL);
            v62 = &__src[v86];
            v63 = (a3 + v86 * 8);
            v87 = (a3 + 32);
            v88 = __src + 4;
            v89 = v85 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v90 = v87 - 4;
              v103 = vld2q_f64(v90);
              v107 = vld2q_f64(v87);
              v91 = v88 - 4;
              vst2q_f64(v91, v103);
              vst2q_f64(v88, v107);
              v87 += 8;
              v88 += 8;
              v89 -= 4;
            }

            while (v89);
            if (v85 == (v85 & 0x1FFFFFFFFFFFFFFCLL))
            {
              return __src;
            }
          }

          do
          {
            v64 = *v63;
            v65 = *(v63 + 1);
            v63 += 16;
            *v62 = v64;
            *(v62 + 1) = v65;
            v62 += 2;
          }

          while (v63 != v15);
          return __src;
        }
      }
    }

    else
    {
      v19 = (a3 + v13);
      v20 = a1[1];
    }

    do
    {
      v21 = *v19;
      v22 = v19[1];
      v19 += 2;
      *v20 = v21;
      *(v20 + 1) = v22;
      v20 += 2;
    }

    while (v19 != a4);
    goto LABEL_21;
  }

  v9 = *a1;
  v10 = a5 + ((v8 - *a1) >> 4);
  if (v10 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v9;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v36 = (__src - v9);
  v37 = 16 * ((__src - v9) >> 4);
  v38 = v37;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_35;
  }

  v38 = (v37 + 16 * a5);
  if ((v6 & 0xFFFFFFFFFFFFFFFuLL) < 0x21 || v37 + 16 * v6 < v37 || &v36[16 * v6 + 8] < v36 + 8 || v37 < a3 + 16 * a5 && &v36[16 * a5] > a3)
  {
    v39 = a3;
    v40 = v37;
    do
    {
LABEL_34:
      v41 = *v39;
      v42 = v39[1];
      v39 += 2;
      *v40 = v41;
      *(v40 + 1) = v42;
      v40 += 16;
    }

    while (v40 != v38);
    goto LABEL_35;
  }

  v49 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 1;
  v50 = 16 * (v49 & 0x1FFFFFFFFFFFFFFCLL);
  v39 = (a3 + v50);
  v40 = (v37 + v50);
  v51 = (v37 + 32);
  v52 = (a3 + 32);
  v53 = v49 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v54 = v52 - 4;
    v101 = vld2q_f64(v54);
    v105 = vld2q_f64(v52);
    v55 = v51 - 4;
    vst2q_f64(v55, v101);
    vst2q_f64(v51, v105);
    v51 += 8;
    v52 += 8;
    v53 -= 4;
  }

  while (v53);
  if (v49 != (v49 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_34;
  }

LABEL_35:
  v43 = a1[1] - __src;
  memcpy(v38, __src, v43);
  v45 = &v38[v43];
  a1[1] = __src;
  v46 = *a1;
  v47 = __src - *a1;
  v48 = v37 - v47;
  memcpy((v37 - v47), *a1, v47);
  *a1 = v48;
  a1[1] = v45;
  a1[2] = 0;
  if (v46)
  {
    operator delete(v46);
  }

  return v37;
}

void operations_research::sat::RecordLPRelaxationValues(operations_research::sat *this, operations_research::sat::Model *a2)
{
  v2 = *(this + 3);
  if (v2 > 1)
  {
    v3 = 0;
    _X11 = *(this + 5);
    __asm { PRFM            #4, [X11] }

    v10 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d));
    v11 = vdup_n_s8(v10 & 0x7F);
    v12 = ((v10 >> 7) ^ (_X11 >> 12)) & v2;
    v13 = *(_X11 + v12);
    v14 = vceq_s8(v13, v11);
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_5:
    v15 = *(this + 6);
    while (1)
    {
      v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v2;
      if (*(v15 + 16 * v16) == &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
      {
        break;
      }

      v14 &= ((v14 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v14)
      {
LABEL_8:
        while (!*&vceq_s8(v13, 0x8080808080808080))
        {
          v3 += 8;
          v12 = (v3 + v12) & v2;
          v13 = *(_X11 + v12);
          v14 = vceq_s8(v13, v11);
          if (v14)
          {
            goto LABEL_5;
          }
        }

        return;
      }
    }

    v17 = (v15 + 16 * v16);
    if (_X11 + v16)
    {
      goto LABEL_16;
    }
  }

  else if (*(this + 4) >= 2uLL)
  {
    v17 = this + 40;
    v18 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 5) != &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
    {
      v18 = 0;
    }

    if (v18)
    {
LABEL_16:
      v19 = *(v17 + 1);
      if (v19)
      {
        v21 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(this);
        v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(this);
        v23 = v21[1] - *v21;
        if ((v23 >> 2))
        {
          if (!((v23 >> 2) >> 61))
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v24 = *v22;
        v25 = v22[1] - *v22;
        if ((v25 >> 3) >= 1)
        {
          v26 = 0;
          v27 = v21[12];
          v28 = (v21[13] - v27) >> 2;
          v29 = (v25 >> 3) & 0x7FFFFFFF;
          do
          {
            if (v28 > v26)
            {
              v30 = *(v27 + 4 * v26);
              if (v30 != -1)
              {
                *(8 * v30) = *(v24 + 8 * v26);
              }
            }

            v26 += 2;
          }

          while (v26 < v29);
        }

        __p = 0;
        v32 = 0;
        v33 = 0;
        operations_research::sat::SharedLPSolutionRepository::NewLPSolution(v19, &__p);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_23CCB3BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::GetRinsRensNeighborhood(atomic_ullong *a1@<X0>, atomic_ullong *a2@<X1>, atomic_ullong *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a5;
  v88 = *MEMORY[0x277D85DE8];
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/rins.cc", 180);
    goto LABEL_93;
  }

  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/rins.cc", 181);
LABEL_93:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v83);
  }

  absl::lts_20240722::Mutex::Lock(a2 + 4, a2);
  v12 = a2[12];
  v11 = a2[13];
  absl::lts_20240722::Mutex::Unlock(a2 + 4);
  HasSolution = operations_research::sat::SharedIncompleteSolutionManager::HasSolution(a3, v13);
  v16 = (v11 - v12) >> 6;
  if (v16 <= 0 && !HasSolution)
  {
    return;
  }

  v75 = v6;
  if (v16 > 0 && HasSolution)
  {
    if (vcvtd_n_f64_u64((a4[2])(*a4), 0x40uLL) >= 0.5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v76 = *a4;
    v77 = a4[2];
    v78 = 0;
    v79 = 0;
    v80 = 0;
    absl::lts_20240722::Mutex::Lock(a2 + 4, v15);
    v23 = a2[12];
    v22 = a2[13];
    absl::lts_20240722::Mutex::Unlock(a2 + 4);
    if (((v22 - v23) & 0x3FFFFFFFC0) != 0)
    {
      v81 = v76;
      v82 = v77;
      operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(a2, &v81, v83);
      v24 = v83[1];
      if (v84 != v83[1])
      {
        v25 = 0;
        v26 = 1;
        v27 = v79;
        do
        {
          if (v27 < v80)
          {
            v19.n128_u64[0] = v24[v25];
            *v27 = v19.n128_u64[0];
            v27 += 8;
          }

          else
          {
            v28 = v78;
            v29 = v27 - v78;
            v30 = (v27 - v78) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v32 = v80 - v78;
            if ((v80 - v78) >> 2 > v31)
            {
              v31 = v32 >> 2;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v34 = v30;
            v35 = (8 * v30);
            v36 = v24[v25];
            v37 = &v35[-v34];
            *v35 = v36;
            v27 = (v35 + 1);
            memcpy(v37, v28, v29);
            v78 = v37;
            v79 = v27;
            v80 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          v79 = v27;
          v25 = v26;
          v24 = v83[1];
          ++v26;
        }

        while (v25 < (v84 - v83[1]) >> 3);
      }

      if (v87 < 0)
      {
        operator delete(__p);
        v24 = v83[1];
      }

      if (v24)
      {
        v84 = v24;
        operator delete(v24);
      }
    }

    v20 = "lp";
    v21 = v78;
    if (v78 == v79)
    {
      goto LABEL_86;
    }

    goto LABEL_34;
  }

  if (v16 >= 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!operations_research::sat::SharedIncompleteSolutionManager::HasSolution(a3, v15))
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v21 = 0;
    goto LABEL_86;
  }

  operations_research::sat::SharedIncompleteSolutionManager::PopLast(&v78, a3, v17);
  v20 = "pump";
  v21 = v78;
  if (v78 != v79)
  {
LABEL_34:
    __s = v20;
    if (a1)
    {
      absl::lts_20240722::Mutex::Lock(a1 + 15, v18);
      v39 = a1[23];
      v38 = a1[24];
      absl::lts_20240722::Mutex::Unlock(a1 + 15);
      if (((v38 - v39) >> 6) >= 1)
      {
        v19.n128_f64[0] = vcvtd_n_f64_u64((a4[2])(*a4), 0x40uLL);
        if (v19.n128_f64[0] < 0.75)
        {
          v81 = *a4;
          v82 = a4[2];
          operations_research::sat::SharedSolutionRepository<long long>::GetRandomBiasedSolution(a1 + 11, &v81, v83);
          v41 = v83[1];
          v84 = 0;
          v85 = 0;
          v83[1] = 0;
          if (v87 < 0)
          {
            operator delete(__p);
            if (v83[1])
            {
              v84 = v83[1];
              operator delete(v83[1]);
            }
          }

          if (v79 != v78)
          {
            v42 = 0;
            v43 = 0;
            v45 = *a4;
            v44 = a4[1];
            v46 = a4[2];
            v40.n128_u64[1] = 0x3E7AD7F29ABCAF48;
            v40.n128_u64[0] = 0xBE7AD7F29ABCAF48;
            while (*(v78 + v42) == INFINITY)
            {
              v42 = ++v43;
              if ((v79 - v78) >> 3 <= v43)
              {
                goto LABEL_89;
              }
            }

            *v83 = xmmword_23CE4D830;
            *&v81 = 0;
            v62 = 0.0000002;
            v63 = 0.0000001;
            v64 = -0.0000001;
            if (v44 != absl::lts_20240722::BitGenRef::NotAMock)
            {
              if ((v44)(v45, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, v83, &v81))
              {
                goto LABEL_83;
              }

              v64 = *v83;
              v63 = *&v83[1];
              v62 = *&v83[1] - *v83;
            }

            v65 = (*&v62 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
            v66 = ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
            if (v62 >= 0.0)
            {
              v66 = 0;
              v65 = 0;
            }

            if ((*&v62 & 0x7FFFFFFFFFFFFFFFLL) == 0)
            {
              v65 = 1;
            }

            v67 = (*&v62 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v65;
            if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
            {
              v67 = 1;
            }

            if ((v67 | v66))
            {
              v46(v45);
            }

            else
            {
              do
              {
                v68 = v46(v45);
                v69 = __clz(v68);
                *&v70 = ((v68 << v69 >> 11) & 0xFFFFFFFFFFFFFLL) - (v69 << 52) + 0x3FE0000000000000;
                if (!v68)
                {
                  v70 = 0.0;
                }

                v71 = v64 + v70 * v62;
              }

              while (v71 >= v63);
            }

LABEL_83:
            operator new();
          }

LABEL_89:
          v20 = __s;
          MEMORY[0x23EED9020](48, "rins_");
          if (v41)
          {
            operator delete(v41);
          }

LABEL_85:
          v73 = strlen(v20);
          v83[0] = v20;
          v83[1] = v73;
          *&v81 = "_lns";
          *(&v81 + 1) = 4;
          absl::lts_20240722::StrAppend(v6 + 2, v83, &v81);
          v21 = v78;
          goto LABEL_86;
        }
      }
    }

    if (v79 == v78)
    {
LABEL_84:
      v6 = v75;
      MEMORY[0x23EED9020](&v75[2], "rens_", v72);
      goto LABEL_85;
    }

    v47 = 0;
    v48 = 0;
    v50 = *a4;
    v49 = a4[1];
    v51 = a4[2];
    v19.n128_u64[1] = 0x3E7AD7F29ABCAF48;
    v19.n128_u64[0] = 0xBE7AD7F29ABCAF48;
    while (*(v78 + v47) == INFINITY)
    {
      v47 = ++v48;
      if ((v79 - v78) >> 3 <= v48)
      {
        goto LABEL_84;
      }
    }

    *v83 = xmmword_23CE4D830;
    *&v81 = 0;
    v52 = 0.0000002;
    v53 = 0.0000001;
    v54 = -0.0000001;
    if (v49 != absl::lts_20240722::BitGenRef::NotAMock)
    {
      if ((v49)(v50, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, v83, &v81))
      {
        goto LABEL_63;
      }

      v54 = *v83;
      v53 = *&v83[1];
      v52 = *&v83[1] - *v83;
    }

    v55 = (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v56 = ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v52 >= 0.0)
    {
      v56 = 0;
      v55 = 0;
    }

    if ((*&v52 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v55 = 1;
    }

    v57 = (*&v52 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v55;
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v57 = 1;
    }

    if ((v57 | v56))
    {
      v51(v50);
    }

    else
    {
      do
      {
        v58 = v51(v50);
        v59 = __clz(v58);
        *&v60 = ((v58 << v59 >> 11) & 0xFFFFFFFFFFFFFLL) - (v59 << 52) + 0x3FE0000000000000;
        if (!v58)
        {
          v60 = 0.0;
        }

        v61 = v54 + v60 * v52;
      }

      while (v61 >= v53);
    }

LABEL_63:
    operator new();
  }

LABEL_86:
  if (v21)
  {
    v79 = v21;
    operator delete(v21);
  }
}

void sub_23CCB470C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  operations_research::sat::ReducedDomainNeighborhood::~ReducedDomainNeighborhood(a13);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::VarWeight *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[1])
      {
        v115 = *v12;
        *v12 = a2[-1];
        result = v115;
        a2[-1] = v115;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v52 = v12 + 1;
      v54 = v12 == a2 || v52 == a2;
      if (a4)
      {
        if (!v54)
        {
          v55 = 0;
          v56 = v12;
          do
          {
            result.n128_u64[0] = v56[1].n128_u64[1];
            v58 = v56->n128_f64[1];
            v56 = v52;
            if (result.n128_f64[0] < v58)
            {
              v59 = v52->n128_u64[0];
              v60 = v55;
              do
              {
                *(v12 + v60 + 16) = *(v12 + v60);
                if (!v60)
                {
                  v57 = v12;
                  goto LABEL_125;
                }

                v61 = *(&v12->n128_f64[-1] + v60);
                v60 -= 16;
              }

              while (result.n128_f64[0] < v61);
              v57 = (v12 + v60 + 16);
LABEL_125:
              v57->n128_u64[0] = v59;
              v57->n128_u64[1] = result.n128_u64[0];
            }

            v52 = v56 + 1;
            v55 += 16;
          }

          while (&v56[1] != a2);
        }
      }

      else if (!v54)
      {
        do
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v89 = a1->n128_f64[1];
          a1 = v52;
          if (result.n128_f64[0] < v89)
          {
            v90 = v52->n128_u64[0];
            do
            {
              *v52 = v52[-1];
              v91 = v52[-2].n128_f64[1];
              --v52;
            }

            while (result.n128_f64[0] < v91);
            v52->n128_u64[0] = v90;
            v52->n128_u64[1] = result.n128_u64[0];
          }

          v52 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v62 = (v13 - 2) >> 1;
        v63 = v62;
        do
        {
          v65 = 16 * v63;
          if (v62 >= (16 * v63) >> 4)
          {
            v66 = (v65 >> 3) | 1;
            v67 = &v12[v66];
            if ((v65 >> 3) + 2 < v13 && v67->n128_f64[1] < v67[1].n128_f64[1])
            {
              ++v67;
              v66 = (v65 >> 3) + 2;
            }

            v68 = &v12[v65 / 0x10];
            v69 = v68->n128_f64[1];
            if (v67->n128_f64[1] >= v69)
            {
              v70 = v68->n128_u64[0];
              do
              {
                v71 = v68;
                v68 = v67;
                *v71 = *v67;
                if (v62 < v66)
                {
                  break;
                }

                v72 = 2 * v66;
                v66 = (2 * v66) | 1;
                v67 = &v12[v66];
                v73 = v72 + 2;
                if (v73 < v13 && v67->n128_f64[1] < v67[1].n128_f64[1])
                {
                  ++v67;
                  v66 = v73;
                }
              }

              while (v67->n128_f64[1] >= v69);
              v68->n128_u64[0] = v70;
              v68->n128_f64[1] = v69;
            }
          }

          v64 = v63-- <= 0;
        }

        while (!v64);
        do
        {
          v74 = 0;
          v118 = *v12;
          v75 = (v13 - 2) >> 1;
          v76 = v12;
          do
          {
            while (1)
            {
              v81 = &v76[v74];
              v80 = v81 + 1;
              v82 = (2 * v74) | 1;
              v74 = 2 * v74 + 2;
              if (v74 < v13)
              {
                break;
              }

              v74 = v82;
              *v76 = *v80;
              v76 = v81 + 1;
              if (v82 > v75)
              {
                goto LABEL_156;
              }
            }

            v77 = v81[1].n128_f64[1];
            v78 = v81[2].n128_f64[1];
            v79 = v81 + 2;
            if (v77 >= v78)
            {
              v74 = v82;
            }

            else
            {
              v80 = v79;
            }

            *v76 = *v80;
            v76 = v80;
          }

          while (v74 <= v75);
LABEL_156:
          if (v80 == --a2)
          {
            result = v118;
            *v80 = v118;
          }

          else
          {
            *v80 = *a2;
            result = v118;
            *a2 = v118;
            v83 = (v80 - v12 + 16) >> 4;
            v64 = v83 < 2;
            v84 = v83 - 2;
            if (!v64)
            {
              v85 = v84 >> 1;
              v86 = &v12[v85];
              result.n128_u64[0] = v80->n128_u64[1];
              if (v86->n128_f64[1] < result.n128_f64[0])
              {
                v87 = v80->n128_u64[0];
                do
                {
                  v88 = v80;
                  v80 = v86;
                  *v88 = *v86;
                  if (!v85)
                  {
                    break;
                  }

                  v85 = (v85 - 1) >> 1;
                  v86 = &v12[v85];
                }

                while (v86->n128_f64[1] < result.n128_f64[0]);
                v80->n128_u64[0] = v87;
                v80->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v64 = v13-- <= 2;
        }

        while (!v64);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f64[1];
    if (v13 < 0x81)
    {
      v17 = v12->n128_f64[1];
      if (v17 < v14->n128_f64[1])
      {
        if (v15 < v17)
        {
          v93 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v102 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v102.n128_u64[1];
        *v12 = v102;
        if (a2[-1].n128_f64[1] < v12->n128_f64[1])
        {
          v93 = *v12;
          *v12 = *v9;
LABEL_36:
          result.n128_u64[1] = v93.n128_u64[1];
          *v9 = v93;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v15 >= v17)
      {
        goto LABEL_37;
      }

      v96 = *v12;
      *v12 = *v9;
      result.n128_u64[1] = v96.n128_u64[1];
      *v9 = v96;
      if (v12->n128_f64[1] >= v14->n128_f64[1])
      {
        goto LABEL_37;
      }

      v97 = *v14;
      *v14 = *v12;
      result.n128_u64[1] = v97.n128_u64[1];
      *v12 = v97;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      result.n128_u64[0] = v12->n128_u64[1];
      if (v12[-1].n128_f64[1] < result.n128_f64[0])
      {
        goto LABEL_62;
      }

      if (result.n128_f64[0] >= a2[-1].n128_f64[1])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v42 = *(n128_u64 + 8);
          n128_u64 += 16;
        }

        while (result.n128_f64[0] >= v42);
      }

      else
      {
        v39 = v12;
        do
        {
          v12 = v39 + 1;
          v40 = v39[1].n128_f64[1];
          ++v39;
        }

        while (result.n128_f64[0] >= v40);
      }

      v43 = a2;
      if (v12 < a2)
      {
        v44 = a2;
        do
        {
          v43 = v44 - 1;
          v45 = v44[-1].n128_f64[1];
          --v44;
        }

        while (result.n128_f64[0] < v45);
      }

      v46 = a1->n128_u64[0];
      while (v12 < v43)
      {
        v114 = *v12;
        *v12 = *v43;
        *v43 = v114;
        do
        {
          v47 = v12[1].n128_f64[1];
          ++v12;
        }

        while (result.n128_f64[0] >= v47);
        do
        {
          v48 = v43[-1].n128_f64[1];
          --v43;
        }

        while (result.n128_f64[0] < v48);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }

    else
    {
      v16 = v14->n128_f64[1];
      if (v16 >= v12->n128_f64[1])
      {
        if (v15 < v16)
        {
          v94 = *v14;
          *v14 = *v9;
          *v9 = v94;
          if (v14->n128_f64[1] < v12->n128_f64[1])
          {
            v95 = *v12;
            *v12 = *v14;
            *v14 = v95;
          }
        }
      }

      else
      {
        if (v15 >= v16)
        {
          v98 = *v12;
          *v12 = *v14;
          *v14 = v98;
          if (a2[-1].n128_f64[1] >= v14->n128_f64[1])
          {
            goto LABEL_28;
          }

          v92 = *v14;
          *v14 = *v9;
        }

        else
        {
          v92 = *v12;
          *v12 = *v9;
        }

        *v9 = v92;
      }

LABEL_28:
      v18 = v14 - 1;
      v19 = v14[-1].n128_f64[1];
      v20 = a2[-2].n128_f64[1];
      if (v19 >= v12[1].n128_f64[1])
      {
        if (v20 < v19)
        {
          v100 = *v18;
          *v18 = *v10;
          *v10 = v100;
          if (v14[-1].n128_f64[1] < v12[1].n128_f64[1])
          {
            v101 = v12[1];
            v12[1] = *v18;
            *v18 = v101;
          }
        }
      }

      else
      {
        if (v20 >= v19)
        {
          v103 = v12[1];
          v12[1] = *v18;
          *v18 = v103;
          if (a2[-2].n128_f64[1] >= v14[-1].n128_f64[1])
          {
            goto LABEL_42;
          }

          v99 = *v18;
          *v18 = *v10;
        }

        else
        {
          v99 = v12[1];
          v12[1] = *v10;
        }

        *v10 = v99;
      }

LABEL_42:
      v21 = v14[1].n128_f64[1];
      v22 = a2[-3].n128_f64[1];
      if (v21 >= v12[2].n128_f64[1])
      {
        if (v22 < v21)
        {
          v105 = v14[1];
          v14[1] = *v11;
          *v11 = v105;
          if (v14[1].n128_f64[1] < v12[2].n128_f64[1])
          {
            v106 = v12[2];
            v12[2] = v14[1];
            v14[1] = v106;
          }
        }
      }

      else
      {
        if (v22 >= v21)
        {
          v107 = v12[2];
          v12[2] = v14[1];
          v14[1] = v107;
          if (a2[-3].n128_f64[1] >= v14[1].n128_f64[1])
          {
            goto LABEL_51;
          }

          v104 = v14[1];
          v14[1] = *v11;
        }

        else
        {
          v104 = v12[2];
          v12[2] = *v11;
        }

        *v11 = v104;
      }

LABEL_51:
      v23 = v14->n128_f64[1];
      v24 = v14[1].n128_f64[1];
      if (v23 >= v14[-1].n128_f64[1])
      {
        if (v24 < v23)
        {
          v109 = *v14;
          *v14 = v14[1];
          v14[1] = v109;
          if (v14->n128_f64[1] < v14[-1].n128_f64[1])
          {
            v110 = *v18;
            *v18 = *v14;
            *v14 = v110;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v111 = *v18;
          *v18 = *v14;
          *v14 = v111;
          if (v14[1].n128_f64[1] >= v14->n128_f64[1])
          {
            goto LABEL_60;
          }

          v108 = *v14;
          *v14 = v14[1];
        }

        else
        {
          v108 = *v18;
          *v18 = v14[1];
        }

        v14[1] = v108;
      }

LABEL_60:
      v112 = *v12;
      *v12 = *v14;
      result.n128_u64[1] = v112.n128_u64[1];
      *v14 = v112;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      result.n128_u64[0] = v12->n128_u64[1];
LABEL_62:
      v25 = 0;
      v26 = v12->n128_u64[0];
      do
      {
        v27 = v12[++v25].n128_f64[1];
      }

      while (v27 < result.n128_f64[0]);
      v28 = &v12[v25];
      v29 = a2;
      if (v25 == 1)
      {
        v32 = a2;
        while (v28 < v32)
        {
          v30 = v32 - 1;
          v33 = v32[-1].n128_f64[1];
          --v32;
          if (v33 < result.n128_f64[0])
          {
            goto LABEL_70;
          }
        }

        v30 = v32;
        v12 = v28;
      }

      else
      {
        do
        {
          v30 = v29 - 1;
          v31 = v29[-1].n128_f64[1];
          --v29;
        }

        while (v31 >= result.n128_f64[0]);
LABEL_70:
        v12 = v28;
        if (v28 < v30)
        {
          v34 = v30;
          do
          {
            v113 = *v12;
            *v12 = *v34;
            *v34 = v113;
            do
            {
              v35 = v12[1].n128_f64[1];
              ++v12;
            }

            while (v35 < result.n128_f64[0]);
            do
            {
              v36 = v34[-1].n128_f64[1];
              --v34;
            }

            while (v36 >= result.n128_f64[0]);
          }

          while (v12 < v34);
        }
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u64[0] = v26;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v28 < v30)
      {
        goto LABEL_81;
      }

      {
        a2 = v12 - 1;
        if (!v37)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v37)
      {
LABEL_81:
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v50 = v12[1].n128_f64[1];
      v51 = v12[2].n128_f64[1];
      if (v50 >= v12->n128_f64[1])
      {
        if (v51 < v50)
        {
          v120 = v12[1];
          v12[1] = v12[2];
          result.n128_u64[1] = v120.n128_u64[1];
          v12[2] = v120;
          if (v12[1].n128_f64[1] < v12->n128_f64[1])
          {
            v121 = *v12;
            *v12 = v12[1];
            result.n128_u64[1] = v121.n128_u64[1];
            v12[1] = v121;
          }
        }
      }

      else
      {
        if (v51 < v50)
        {
          v117 = *v12;
          *v12 = v12[2];
          goto LABEL_180;
        }

        v123 = *v12;
        *v12 = v12[1];
        result.n128_u64[1] = v123.n128_u64[1];
        v12[1] = v123;
        if (v12[2].n128_f64[1] < v12[1].n128_f64[1])
        {
          v117 = v12[1];
          v12[1] = v12[2];
LABEL_180:
          result.n128_u64[1] = v117.n128_u64[1];
          v12[2] = v117;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] >= v12[2].n128_f64[1])
      {
        return result;
      }

      v124 = v12[2];
      v12[2] = *v9;
      result.n128_u64[1] = v124.n128_u64[1];
      *v9 = v124;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] >= v12[1].n128_f64[1])
      {
        return result;
      }

      v125 = v12[1];
      v12[1] = v12[2];
      result.n128_u64[1] = v125.n128_u64[1];
      v12[2] = v125;
LABEL_184:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] < v12->n128_f64[1])
      {
        v126 = *v12;
        *v12 = v12[1];
        result = v126;
        v12[1] = v126;
      }

      return result;
    }

    if (v13 == 5)
    {

      return result;
    }

    goto LABEL_9;
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v49 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] >= v12->n128_f64[1])
  {
    if (v49 >= result.n128_f64[0])
    {
      return result;
    }

    v119 = v12[1];
    v12[1] = *v9;
    result.n128_u64[1] = v119.n128_u64[1];
    *v9 = v119;
    goto LABEL_184;
  }

  if (v49 >= result.n128_f64[0])
  {
    v122 = *v12;
    *v12 = v12[1];
    result.n128_u64[1] = v122.n128_u64[1];
    v12[1] = v122;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] >= v12[1].n128_f64[1])
    {
      return result;
    }

    v116 = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v116 = *v12;
    *v12 = *v9;
  }

  result = v116;
  *v9 = v116;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::VarWeight *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
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
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::VarWeight *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_f64[1];
      v8 = a2[-1].n128_f64[1];
      if (v7 < a1->n128_f64[1])
      {
        if (v8 >= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_f64[1] >= a1[1].n128_f64[1])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_f64[1] >= a1->n128_f64[1])
      {
        return 1;
      }

LABEL_52:
      v37 = *a1;
      *a1 = a1[1];
      a1[1] = v37;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1[1].n128_f64[1];
      v12 = a1->n128_f64[1];
      v13 = a1[2].n128_f64[1];
      if (v11 >= v12)
      {
        if (v13 < v11)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_f64[1] < v12)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 >= v11)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 >= a1[1].n128_f64[1])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v26->n128_f64[1];
        if (v29 < v10->n128_f64[1])
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v30 = v26->n128_u64[0];
      v31 = v27;
      do
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          a1->n128_u64[0] = v30;
          a1->n128_f64[1] = v29;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v32 = *(&a1[1].n128_f64[1] + v31);
        v31 -= 16;
      }

      while (v29 < v32);
      v33 = a1 + v31;
      *(v33 + 6) = v30;
      *(v33 + 7) = v29;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1[1].n128_f64[1];
    v16 = a1->n128_f64[1];
    v17 = a1[2].n128_f64[1];
    if (v15 >= v16)
    {
      if (v17 < v15)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_f64[1] < v16)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v17 < a1[1].n128_f64[1])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_f64[1] >= a1[2].n128_f64[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f64[1] >= a1[1].n128_f64[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    if (a1[1].n128_f64[1] >= a1->n128_f64[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_f64[1] >= a1->n128_f64[1])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

void operations_research::sat::GenerateInterestingSubsets(signed int a1, int **a2, signed int a3, std::vector<int> *a4, int ***a5)
{
  v5 = a3;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (a1)
  {
    if ((a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v11 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v12 = a1;
    v32 = a2[1];
    do
    {
      if (v12 <= v5)
      {
        break;
      }

      v13 = *v11;
      do
      {
        v14 = v13;
        v13 = *(4 * v13);
      }

      while (v13 != v14);
      v15 = (4 * *v11);
      for (i = *v15; *v15 != v14; i = *v15)
      {
        *v15 = v14;
        v15 = (4 * i);
      }

      v17 = v11[1];
      v18 = v17;
      do
      {
        v19 = v17;
        v17 = *(4 * v17);
      }

      while (v17 != v19);
      v20 = (4 * v18);
      for (j = *v20; *v20 != v19; j = *v20)
      {
        *v20 = v19;
        v20 = (4 * j);
      }

      if (v14 != v19)
      {
        __src = v7;
        v22 = v8 - v7;
        v23 = v22 >> 2;
        if (v8 >= v9)
        {
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if ((v9 - __src) >> 1 > v24)
          {
            v24 = (v9 - __src) >> 1;
          }

          if (v9 - __src >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          v31 = v6;
          if (v25)
          {
            if (!(v25 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v12;
          *(4 * v23) = v23;
          memcpy(0, __src, v22);
          v7 = 0;
          v6 = v31;
          v9 = 0;
          v12 = v26;
          v8 = (4 * v23 + 4);
          *(4 * v19) = v23;
          *(4 * v14) = v23;
        }

        else
        {
          *v8++ = v23;
          v7 = __src;
          *(__src + v19) = v23;
          *(__src + v14) = v23;
        }

        v27 = v6 >> 2;
        if (((v6 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v34 = v9;
        v30 = v12;
        if (v6 >> 2 != -1)
        {
          if (!(((v6 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v27) = v23;
        memcpy(0, 0, v6);
        operator delete(0);
        v5 = a3;
        v10 = v32;
        v9 = v34;
        v6 = 4 * v27 + 4;
        v12 = v30 - 1;
        *(4 * v19) = v23;
        *(4 * v14) = v23;
      }

      v11 += 2;
    }

    while (v11 != v10);
  }

  v36 = v7;
  v37 = v8;
  v38 = v9;
  operations_research::sat::ExtractAllSubsetsFromForest(&v36, a4, a5, 0);
}

void sub_23CCB5D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (v19)
  {
    operator delete(v19);
    if (!v20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::ExtractAllSubsetsFromForest(uint64_t *a1, std::vector<int> *this, int ***a3, int a4)
{
  v7 = a1[1] - *a1;
  v8 = v7 >> 2;
  if ((v7 >> 2) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7 >> 2;
  }

  v10 = this->__end_ - this->__begin_;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      this->__end_ = &this->__begin_[v9];
    }
  }

  else
  {
    std::vector<int>::__append(this, v9 - v10);
  }

  a3[1] = *a3;
  util::StaticGraph<int,int>::StaticGraph(&v50, v7 >> 2, (v8 - 1));
  if (v8 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*a1 + 4 * v11);
      if (v11 != v12)
      {
        util::StaticGraph<int,int>::AddArc(&v50, v12, v11);
      }

      ++v11;
    }

    while (((v7 >> 2) & 0x7FFFFFFF) != v11);
  }

  util::StaticGraph<int,int>::Build(&v50, 0);
  v46 = a1;
  if ((v7 >> 2))
  {
    if (!((v7 >> 2) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *a1;
  if (a1[1] != *a1)
  {
    v48 = this;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v47 = v16;
      if (*(v13 + 4 * v14) == v16)
      {
        v18 = v17;
        v19 = v17 >> 2;
        if (((v17 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v17 >> 2 != -1)
        {
          if (!(((v17 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v19) = v47;
        v17 = 4 * v19 + 4;
        memcpy(0, 0, v18);
        while (v17)
        {
          v22 = v17 - 4;
          v21 = *(v17 - 4);
          v23 = *(4 * v21);
          if (v23 < 0)
          {
            *(4 * v21) = v15;
            v35 = *(v53 + v21);
            v36 = v21 + 1;
            v37 = v53 + 4 * v36;
            v38 = v36 < v51;
            v39 = &v52;
            if (v38)
            {
              v39 = v37;
            }

            v40 = *v39 - v35;
            if (v40)
            {
              v41 = v55 + 4 * v35;
              v42 = 4 * v40;
              do
              {
                v43 = v17;
                v44 = v17 >> 2;
                if ((v44 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (v44 != -1)
                {
                  if (!((v44 + 1) >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                MEMORY[0xFFFFFFFFFFFFFFFC] = *v41;
                v17 = 0;
                memcpy(0, 0, v43);
                ++v41;
                v42 -= 4;
              }

              while (v42);
            }
          }

          else
          {
            begin = v48->__begin_;
            if (v21 < a4)
            {
              begin[v15++] = v21;
              v23 = *(4 * v21);
            }

            v25 = &begin[v23];
            v26 = (v15 - v23);
            v28 = a3[1];
            v27 = a3[2];
            if (v28 < v27)
            {
              *v28 = v25;
              v28[1] = v26;
              v20 = v28 + 2;
            }

            else
            {
              v29 = *a3;
              v30 = v28 - *a3;
              v31 = v30 >> 4;
              v32 = (v30 >> 4) + 1;
              if (v32 >> 60)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v33 = v27 - v29;
              if (v33 >> 3 > v32)
              {
                v32 = v33 >> 3;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFF0)
              {
                v34 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                if (!(v34 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v45 = (16 * v31);
              *v45 = v25;
              v45[1] = v26;
              v20 = (16 * v31 + 16);
              memcpy(0, v29, v30);
              *a3 = 0;
              a3[1] = v20;
              a3[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            a3[1] = v20;
            v17 = v22;
          }
        }
      }

      v16 = v47 + 1;
      v14 = v47 + 1;
      v13 = *v46;
    }

    while (v14 < (v46[1] - *v46) >> 2);
  }

  v50 = &unk_284F3BF70;
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_23CCB6310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  operator delete(v15);
  util::StaticGraph<int,int>::~StaticGraph(&a15);
  _Unwind_Resume(a1);
}

void sub_23CCB632C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  util::StaticGraph<int,int>::~StaticGraph(va);
  _Unwind_Resume(a1);
}

void sub_23CCB6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  util::StaticGraph<int,int>::~StaticGraph(va);
  _Unwind_Resume(a1);
}

void sub_23CCB6354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    operator delete(v16);
    if (!v15)
    {
LABEL_3:
      util::StaticGraph<int,int>::~StaticGraph(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  util::StaticGraph<int,int>::~StaticGraph(&a15);
  _Unwind_Resume(a1);
}

void operations_research::sat::ComputeGomoryHuTree(unsigned int a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6.n128_f64[0] = operations_research::SimpleMaxFlow::SimpleMaxFlow(v11);
  v8 = *a2;
  for (i = a2[1]; v8 != i; v8 += 16)
  {
    operations_research::SimpleMaxFlow::AddArcWithCapacity(v11, *v8, *(v8 + 4), llround(*(v8 + 8) * 1000000.0));
    operations_research::SimpleMaxFlow::AddArcWithCapacity(v11, *(v8 + 4), *v8, llround(*(v8 + 8) * 1000000.0));
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a1)
  {
    if ((a1 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v23;
  v23 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9, v6);
  }

  v10 = v22;
  v22 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10, v6);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_23CCB6630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (__p)
  {
    operator delete(__p);
    operations_research::SimpleMaxFlow::~SimpleMaxFlow(va);
    _Unwind_Resume(a1);
  }

  operations_research::SimpleMaxFlow::~SimpleMaxFlow(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::SymmetrizeArcs(__n128 **a1, __n128 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (v3 != v4)
  {
    v5 = v3;
    do
    {
      v6 = v5->n128_u32[0];
      v7 = v5->n128_i32[1];
      if (v5->n128_u32[0] > v7)
      {
        v5->n128_u32[0] = v7;
        v5->n128_u32[1] = v6;
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v8 = 126 - 2 * __clz(v4 - v3);
  if (v4 == v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,false>(v3, v4, v9, 1, a2);
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = 0;
    v13 = -1;
    v14 = -1;
    do
    {
      while (v10->n128_u32[0] != v14 || v10->n128_u32[1] != v13)
      {
        (*a1)[v12++] = *v10;
        v14 = v10->n128_u32[0];
        v13 = v10->n128_i32[1];
        if (++v10 == v11)
        {
          goto LABEL_18;
        }
      }

      v16 = &(*a1)[v12 - 1];
      *(v16 + 1) = v10->n128_f64[1] + *(v16 + 1);
      ++v10;
    }

    while (v10 != v11);
LABEL_18:
    v17 = v12;
    v18 = a1[1] - *a1;
    if (v17 <= v18)
    {
      if (v17 < v18)
      {
        a1[1] = &(*a1)[v17];
      }
    }

    else
    {

      std::vector<std::array<long long,2ul>>::__append(a1, v17 - v18);
    }
  }
}

void operations_research::sat::SeparateSubtourInequalities(unsigned int a1, void *a2, uint64_t *a3, void *a4, int64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v288 = *MEMORY[0x277D85DE8];
  if (a1 < 3)
  {
    return;
  }

  v269 = 0;
  v270 = 0;
  v271 = 0;
  v10 = *(a8 + 272);
  v12 = *a4;
  v11 = a4[1];
  v267 = 0;
  v268 = 0;
  v266 = 0;
  v13 = v11 - v12;
  v233 = v10;
  if (v13)
  {
    if (!((v13 >> 2) >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a9);
  v15 = *a4;
  if (a4[1] != *a4)
  {
    v16 = v14;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = *(v15 + 4 * v17);
      v21 = *(v16 + 224);
      v22 = (*(v16 + 232) - v21) >> 2;
      if (v20 >= v22 || (v23 = *(v21 + 4 * v20), v23 == -1))
      {
        v25 = v20 ^ 1;
        if (v25 >= v22)
        {
          v26 = -8;
        }

        else
        {
          v26 = 8 * *(v21 + 4 * v25);
        }

        v24 = 1.0 - *(*v10 + v26);
        *(v266 + v17) = v24;
        if (v24 >= 0.000001)
        {
LABEL_16:
          v27 = *(*a2 + 4 * v17);
          v28 = *(*a3 + 4 * v17);
          v29 = v270;
          if (v270 >= v271)
          {
            v31 = v269;
            v32 = v270 - v269;
            v33 = (v270 - v269) >> 4;
            v34 = v33 + 1;
            if ((v33 + 1) >> 60)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v35 = v271 - v269;
            if ((v271 - v269) >> 3 > v34)
            {
              v34 = v35 >> 3;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFF0)
            {
              v36 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              if (!(v36 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v37 = 16 * v33;
            *v37 = v27;
            *(v37 + 4) = v28;
            *(v37 + 8) = v24;
            v38 = 16 * v33 + 16;
            memcpy(0, v31, v32);
            v269 = 0;
            v271 = 0;
            if (v31)
            {
              operator delete(v31);
            }

            v10 = v233;
            v30 = v19 - 1;
            v270 = v38;
          }

          else
          {
            *v270 = v27;
            *(v29 + 1) = v28;
            *(v29 + 1) = v24;
            v30 = v19 - 1;
            v270 = v29 + 16;
          }

          v39 = v18;
          v40 = v18 >> 4;
          if (((v18 >> 4) + 1) >> 60)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v18 >> 4 != -1)
          {
            if (!(((v18 >> 4) + 1) >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v41 = 16 * v40;
          *v41 = v24;
          *(v41 + 8) = v30;
          v18 = 16 * v40 + 16;
          memcpy(0, 0, v39);
        }
      }

      else
      {
        v24 = *(*v10 + 8 * v23);
        *(v266 + v17) = v24;
        if (v24 >= 0.000001)
        {
          goto LABEL_16;
        }
      }

      v17 = v19;
      v15 = *a4;
      ++v19;
      if (v17 >= (a4[1] - *a4) >> 2)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = 0;
LABEL_36:
  v42 = 126 - 2 * __clz(v18 >> 4);
  if (v18)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,false>(0, v18, &v246, v43, 1);
  v263 = 0;
  v264 = 0;
  v265 = 0;
  if (v18)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      while (1)
      {
        v46 = *(v44 + 8);
        v47 = *(*a2 + 4 * v46);
        v48 = *(*a3 + 4 * v46);
        if (v45 >= v265)
        {
          break;
        }

        *v45 = v47 | (v48 << 32);
        v45 += 8;
        v264 = v45;
        v44 += 16;
        if (v44 == v18)
        {
          goto LABEL_50;
        }
      }

      v49 = v45;
      v50 = v45 >> 3;
      v51 = v50 + 1;
      if ((v50 + 1) >> 61)
      {
        v263 = 0;
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v265 >> 2 > v51)
      {
        v51 = v265 >> 2;
      }

      if (v51)
      {
        if (!(v51 >> 61))
        {
          operator new();
        }

        v263 = 0;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v52 = (8 * v50);
      *v52 = v47 | (v48 << 32);
      v45 = (v52 + 1);
      memcpy(0, 0, v49);
      v265 = 0;
      v264 = v45;
      v44 += 16;
    }

    while (v44 != v18);
  }

LABEL_50:
  v263 = 0;
  memset(&v262, 0, sizeof(v262));
  v259 = 0;
  v260 = 0;
  v261 = 0;
  v53 = a1;
  operations_research::sat::GenerateInterestingSubsets(a1, &v263, 2, &v262, &v259);
  v258 = 0;
  if (a6)
  {
    v54 = v260;
    if (v260 >= v261)
    {
      v56 = v259;
      v57 = v260 - v259;
      v58 = (v260 - v259) >> 4;
      v59 = v58 + 1;
      if ((v58 + 1) >> 60)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v60 = v261 - v259;
      if ((v261 - v259) >> 3 > v59)
      {
        v59 = v60 >> 3;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF0)
      {
        v61 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        if (!(v61 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v62 = (16 * v58);
      *v62 = &v258;
      v62[1] = 1;
      v55 = 16 * v58 + 16;
      memcpy(0, v56, v57);
      v259 = 0;
      v261 = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v260 = &v258;
      *(v54 + 1) = 1;
      v55 = (v54 + 16);
    }

    v260 = v55;
  }

  v246 = a1;
  v247 = a7;
  v248 = a5;
  v249 = a6;
  v250 = a2;
  v251 = a3;
  v252 = a4;
  v253 = &v266;
  v254 = &v269;
  v255 = a8;
  v256 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a9);
  memset(v257, 0, sizeof(v257));
  v275[0] = 0;
  std::vector<BOOL>::assign(&v257[1], a1, v275);
  if ((a6 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v64 = (a5 + 8 * a6);
    v65 = v257[0];
    v66 = (a6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v66 <= 0x12 || v257 < v64 && &v257[1] > a5)
    {
      v67 = a5;
      do
      {
LABEL_70:
        v68 = v67->i64[0];
        v67 = (v67 + 8);
        v65 += v68;
        v257[0] = v65;
      }

      while (v67 != v64);
      goto LABEL_71;
    }

    v86 = v66 + 1;
    v87 = (v66 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v67 = (a5 + 8 * v87);
    v88 = 0uLL;
    v89 = v257[0];
    v90 = a5 + 1;
    v91 = v87;
    do
    {
      v89 = vaddq_s64(v90[-1], v89);
      v88 = vaddq_s64(*v90, v88);
      v90 += 2;
      v91 -= 4;
    }

    while (v91);
    v63 = vaddq_s64(v88, v89);
    v63.n128_u64[0] = vaddvq_s64(v63);
    v257[0] = v63.n128_u64[0];
    v65 = v63.n128_u64[0];
    if (v86 != v87)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v69 = v259;
  v70 = v260;
  if (v259 == v260)
  {
    goto LABEL_80;
  }

  v71 = 0;
  v72 = -1;
  do
  {
    v73 = *(v69 + 1);
    if (v73 >= 2)
    {
      v74 = *v69;
      v75 = (*v69 - v262.__begin_) >> 2;
      if (v72 < v75)
      {
        v245[23] = 7;
        strcpy(v245, "Circuit");
        v71 += v76;
        if (v76)
        {
          v72 = v75;
        }
      }
    }

    v69 += 16;
  }

  while (v69 != v70);
  v53 = a1;
  if (!v71)
  {
LABEL_80:
    operations_research::sat::SymmetrizeArcs(&v269, v63);
    operations_research::sat::ComputeGomoryHuTree(v53, &v269, __p);
    operations_research::sat::ExtractAllSubsetsFromForest(__p, &v262, &v259, 0x7FFFFFFF);
    v77 = v259;
    v78 = v260;
    if (v259 == v260)
    {
      goto LABEL_310;
    }

    v79 = 0;
    v80 = -1;
    do
    {
      v81 = *(v77 + 1);
      if (v81 >= 2 && v81 != a1)
      {
        v83 = *v77;
        v84 = (*v77 - v262.__begin_) >> 2;
        if (v80 < v84)
        {
          v242[23] = 12;
          strcpy(v242, "CircuitExact");
          v79 += v85;
          if (v85)
          {
            v80 = v84;
          }
        }
      }

      v77 += 16;
    }

    while (v77 != v78);
    if (!v79)
    {
LABEL_310:
      v240[0] = 0;
      v240[1] = 0;
      v241 = 0;
      if (v270 != v269)
      {
        if (((v270 - v269) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v241 = 0;
      v240[0] = 0;
      operations_research::sat::ComputeGomoryHuTree(a1, v240, v275);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v275;
      v244 = *&v275[16];
      operations_research::sat::ExtractAllSubsetsFromForest(__p, &v262, &v259, 0x7FFFFFFF);
      v93 = v259;
      v92 = v260;
      if (v259 != v260)
      {
        v94 = -1;
        v229 = v260;
        while (1)
        {
          v95 = *(v93 + 1);
          if (v95 >= 2 && v95 != a1)
          {
            v97 = *v93;
            if (v94 < ((*v93 - v262.__begin_) >> 2))
            {
              break;
            }
          }

LABEL_106:
          v93 += 16;
          if (v93 == v92)
          {
            goto LABEL_279;
          }
        }

        v234 = (*v93 - v262.__begin_) >> 2;
        v236 = v94;
        *(&v239.__r_.__value_.__s + 23) = 14;
        strcpy(&v239, "CircuitBlossom");
        v98 = v269;
        v99 = v270;
        v100 = 4 * v95;
        v238 = v95 & 0x3FFFFFFFFFFFFFFFLL;
        if ((v95 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v101 = v257[1];
          v102 = v100;
          v103 = v97;
          do
          {
            v104 = *v103++;
            *(v101 + ((v104 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v104;
            v102 -= 4;
          }

          while (v102);
        }

        v281 = xmmword_23CE306D0;
        if (v99 == v98)
        {
          v116 = 0;
LABEL_271:
          if (v238)
          {
            v223 = v257[1];
            do
            {
              v224 = *v97++;
              *(v223 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v224);
              v100 -= 4;
            }

            while (v100);
          }

          if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v239.__r_.__value_.__l.__data_);
          }

          v94 = v236;
          if (v116)
          {
            v94 = v234;
          }

          v92 = v229;
          goto LABEL_106;
        }

        v105 = 0;
        v106 = 0;
        v107 = 1.0;
        v108 = 0.0;
        v109 = 0.0;
        do
        {
          v111 = *v98;
          v112 = *(v98 + 1);
          if (((*(v257[1] + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v111) & 1) != ((*(v257[1] + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v112) & 1))
          {
            v113 = v98[1];
            if (v113 <= 0.5)
            {
              v109 = v109 + v113;
            }

            else
            {
              *&v284 = __PAIR64__(v112, v111);
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v281, &v284, v275);
              if (v275[16] == 1)
              {
                **&v275[8] = v284;
              }

              ++v105;
              v113 = v98[1];
              v108 = v108 + 1.0 - v113;
            }

            v110 = fabs(v113 * 2.0 + -1.0);
            if (v110 < v107)
            {
              v106 = v98;
              v107 = v110;
            }
          }

          v98 += 2;
        }

        while (v98 != v99);
        if (v105)
        {
          if (v109 + v108 <= 0.99)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (!v106)
          {
            goto LABEL_159;
          }

          v114 = *v106;
          v115 = *(v106 + 1);
          if (v281 <= 1)
          {
            if (*(&v281 + 1) < 2uLL || v282 != __PAIR64__(v115, v114))
            {
              goto LABEL_130;
            }

            *(&v281 + 1) = 0;
LABEL_158:
            if (v109 + v106[1] + v108 - (1.0 - v106[1]) <= 0.99)
            {
              goto LABEL_160;
            }

            goto LABEL_159;
          }

          v117 = 0;
          _X11 = v282;
          __asm { PRFM            #4, [X11] }

          v123 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v114) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v114))) + v115;
          v124 = ((v123 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v123);
          v125 = (v124 >> 7) ^ (v282 >> 12);
          v126 = vdup_n_s8(v124 & 0x7F);
          v127 = v125 & v281;
          v128 = *&v282[v125 & v281];
          v129 = vceq_s8(v128, v126);
          if (!v129)
          {
            goto LABEL_143;
          }

          do
          {
LABEL_138:
            v130 = &v283[(v127 + (__clz(__rbit64(v129)) >> 3)) & v281];
            v131 = *v130;
            v132 = v130[1];
            if (v131 == v114 && v132 == v115)
            {
              v134 = 0;
              __asm { PRFM            #4, [X11] }

              v136 = v125 & v281;
              v137 = *&v282[v136];
              v138 = vceq_s8(v137, v126);
              if (!v138)
              {
                goto LABEL_152;
              }

              do
              {
LABEL_147:
                v139 = (v136 + (__clz(__rbit64(v138)) >> 3)) & v281;
                v140 = &v283[v139];
                v142 = *v140;
                v141 = v140[1];
                if (v142 == v114 && v141 == v115)
                {
                  absl::lts_20240722::container_internal::EraseMetaOnly(&v281, v139);
                  goto LABEL_158;
                }

                v138 &= ((v138 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v138);
LABEL_152:
              while (!*&vceq_s8(v137, 0x8080808080808080))
              {
                v134 += 8;
                v136 = (v134 + v136) & v281;
                v137 = *&v282[v136];
                v138 = vceq_s8(v137, v126);
                if (v138)
                {
                  goto LABEL_147;
                }
              }

              goto LABEL_158;
            }

            v129 &= ((v129 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v129);
LABEL_143:
          while (!*&vceq_s8(v128, 0x8080808080808080))
          {
            v117 += 8;
            v127 = (v117 + v127) & v281;
            v128 = *&v282[v127];
            v129 = vceq_s8(v128, v126);
            if (v129)
            {
              goto LABEL_138;
            }
          }

LABEL_130:
          *&v284 = __PAIR64__(v115, v114);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v281, &v284, v275);
          if (v275[16] == 1)
          {
            **&v275[8] = v284;
          }

          if (v109 - v106[1] + v108 + 1.0 - v106[1] <= 0.99)
          {
LABEL_160:
            if (v249 && *(&v281 + 1) >= 2uLL)
            {
              v144 = &v282;
              v145 = &absl::lts_20240722::container_internal::kSooControl;
              if (v281 >= 2)
              {
                v145 = v282;
                v144 = v283;
                if (*v282 <= -2)
                {
                  do
                  {
                    v146 = __clz(__rbit64((*v145 | ~(*v145 >> 7)) & 0x101010101010101)) >> 3;
                    v145 = (v145 + v146);
                    v144 += v146;
                  }

                  while (*v145 < -1);
                }
              }

              while (*v144)
              {
                v148 = *(v145 + 1);
                v145 = (v145 + 1);
                LOBYTE(v147) = v148;
                ++v144;
                if (v148 <= -2)
                {
                  do
                  {
                    v149 = __clz(__rbit64((*v145 | ~(*v145 >> 7)) & 0x101010101010101)) >> 3;
                    v145 = (v145 + v149);
                    v144 += v149;
                    v147 = *v145;
                  }

                  while (v147 < -1);
                }

                if (v147 == 255)
                {
                  goto LABEL_169;
                }
              }

              goto LABEL_159;
            }

LABEL_169:
            if ((*(&v281 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v150 = &v282;
              if (v281 >= 2)
              {
                v151 = v282;
                v150 = v283;
                if (*v282 <= -2)
                {
                  do
                  {
                    v152 = __clz(__rbit64((*v151 | ~(*v151 >> 7)) & 0x101010101010101)) >> 3;
                    v151 = (v151 + v152);
                    v150 += v152;
                  }

                  while (*v151 < -1);
                }
              }

              v153 = v250[1];
              v154 = v153 - *v250;
              if (v153 == *v250)
              {
                v166 = 2;
                v161 = -1;
              }

              else
              {
                v155 = 0;
                v156 = 0;
                v157 = 0;
                v158 = *v150;
                v159 = *(v150 + 1);
                v160 = v154 >> 2;
                v161 = -1;
                do
                {
                  v162 = *(*v250 + 4 * v155);
                  if (v162 == *(*v251 + 4 * v155) && v162 != v159 && v162 != v158)
                  {
                    ++v157;
                    if (v161 == -1 || *(*v253 + v155) < *(*v253 + v161))
                    {
                      v161 = v156;
                    }
                  }

                  v155 = ++v156;
                }

                while (v160 > v156);
                v166 = v157 + 2;
              }

              if (v166 < v246)
              {
                v165 = -1;
              }

              else
              {
                v165 = v161;
              }
            }

            else
            {
              v165 = -1;
            }

            v278 = xmmword_23CE306D0;
            *v275 = v256;
            *&v275[8] = xmmword_23CE4D220;
            v276 = 0u;
            v277 = 0u;
            if (v165 != -1)
            {
              *&v284 = "_opt";
              *(&v284 + 1) = 4;
              absl::lts_20240722::StrAppend(&v239, &v284);
              if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v275, *(*v252 + 4 * v165), 2) & 1) == 0)
              {
                v225 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v284, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 374);
LABEL_297:
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v225);
              }
            }

            v167 = v250;
            v168 = *v250;
            if (v250[1] != *v250)
            {
              v169 = 0;
              v170 = 0;
              v227 = 0;
              while (1)
              {
                v180 = *(v168 + 4 * v169);
                v181 = *v251;
                v182 = *(*v251 + 4 * v169);
                if (v180 == v182 || ((*(v257[1] + ((v180 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v180) & 1) == ((*(v257[1] + ((v182 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v182) & 1))
                {
                  goto LABEL_215;
                }

                LODWORD(v274.__r_.__value_.__l.__data_) = *(v168 + 4 * v169);
                v183 = *(v181 + 4 * v169);
                HIDWORD(v274.__r_.__value_.__r.__words[0]) = v183;
                LODWORD(v272) = v183;
                v184 = *(v168 + 4 * v169);
                HIDWORD(v272) = *(v168 + 4 * v169);
                if (v183 < v180)
                {
                  break;
                }

                if (v180 >= v183)
                {
                  if (v184 < v183)
                  {
                    break;
                  }

                  data = v274.__r_.__value_.__l.__data_;
                  v186 = HIDWORD(v274.__r_.__value_.__r.__words[0]);
                  v187 = v281;
                  if (v281 > 1)
                  {
LABEL_219:
                    v188 = 0;
                    _X13 = v282;
                    __asm { PRFM            #4, [X13] }

                    v191 = v186 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + data) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + data)));
                    v192 = ((v191 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v191);
                    v193 = vdup_n_s8(v192 & 0x7F);
                    v194 = ((v282 >> 12) ^ (v192 >> 7)) & v187;
                    v195 = *&v282[v194];
                    v196 = vceq_s8(v195, v193);
                    if (!v196)
                    {
                      goto LABEL_225;
                    }

                    do
                    {
LABEL_220:
                      v197 = &v283[(v194 + (__clz(__rbit64(v196)) >> 3)) & v187];
                      v198 = *v197;
                      v199 = v197[1];
                      if (v198 == data && v199 == v186)
                      {
                        goto LABEL_229;
                      }

                      v196 &= ((v196 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    }

                    while (v196);
LABEL_225:
                    while (!*&vceq_s8(v195, 0x8080808080808080))
                    {
                      v188 += 8;
                      v194 = (v188 + v194) & v187;
                      v195 = *&v282[v194];
                      v196 = vceq_s8(v195, v193);
                      if (v196)
                      {
                        goto LABEL_220;
                      }
                    }

                    goto LABEL_213;
                  }
                }

                else
                {
                  data = v274.__r_.__value_.__l.__data_;
                  v186 = HIDWORD(v274.__r_.__value_.__r.__words[0]);
                  v187 = v281;
                  if (v281 > 1)
                  {
                    goto LABEL_219;
                  }
                }

LABEL_212:
                if (*(&v281 + 1) >= 2uLL && v282 == __PAIR64__(v186, data))
                {
LABEL_229:
                  if (v278 > 1)
                  {
                    v202 = 0;
                    _X11 = v279;
                    __asm { PRFM            #4, [X11] }

                    v205 = v183 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v180) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v180)));
                    v206 = ((v205 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v205);
                    v207 = vdup_n_s8(v206 & 0x7F);
                    v208 = ((v279 >> 12) ^ (v206 >> 7)) & v278;
                    v209 = *(v279 + v208);
                    v210 = vceq_s8(v209, v207);
                    if (!v210)
                    {
                      goto LABEL_247;
                    }

                    do
                    {
LABEL_242:
                      v211 = (v280 + 8 * ((v208 + (__clz(__rbit64(v210)) >> 3)) & v278));
                      v213 = *v211;
                      v212 = v211[1];
                      if (v213 == v180 && v212 == v183)
                      {
                        goto LABEL_213;
                      }

                      v210 &= ((v210 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    }

                    while (v210);
LABEL_247:
                    while (!*&vceq_s8(v209, 0x8080808080808080))
                    {
                      v202 += 8;
                      v208 = (v202 + v208) & v278;
                      v209 = *(v279 + v208);
                      v210 = vceq_s8(v209, v207);
                      if (v210)
                      {
                        goto LABEL_242;
                      }
                    }

LABEL_231:
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::find_or_prepare_insert<std::pair<int,int>>(&v278, &v274, &v284);
                    if (v285 == 1)
                    {
                      **(&v284 + 1) = v274.__r_.__value_.__r.__words[0];
                    }

                    if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v275, *(*v252 + 4 * v169), -1) & 1) == 0)
                    {
                      v225 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v284, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 386);
                      goto LABEL_297;
                    }

                    if (v278 > 1)
                    {
                      v178 = 0;
                      _X10 = v279;
                      __asm { PRFM            #4, [X10] }

                      v217 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v183) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v183))) + v184;
                      v218 = ((v217 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v217);
                      v179 = (v279 >> 12) ^ (v218 >> 7);
                      v219 = vdup_n_s8(v218 & 0x7F);
                      while (1)
                      {
                        v171 = v179 & v278;
                        v172 = *(v279 + v171);
                        v173 = vceq_s8(v172, v219);
                        if (v173)
                        {
                          break;
                        }

LABEL_203:
                        if (vceq_s8(v172, 0x8080808080808080))
                        {
                          goto LABEL_240;
                        }

                        v178 += 8;
                        v179 = v178 + v171;
                      }

                      while (1)
                      {
                        v174 = (v280 + 8 * ((v171 + (__clz(__rbit64(v173)) >> 3)) & v278));
                        v176 = *v174;
                        v175 = v174[1];
                        if (v176 == v183 && v175 == v184)
                        {
                          break;
                        }

                        v173 &= ((v173 & 0x8080808080808080) - 1) & 0x8080808080808080;
                        if (!v173)
                        {
                          goto LABEL_203;
                        }
                      }
                    }

                    else if (*(&v278 + 1) < 2uLL || (HIDWORD(v279) == v184 ? (v201 = v279 == v183) : (v201 = 0), !v201))
                    {
LABEL_240:
                      ++v227;
                    }

                    goto LABEL_214;
                  }

                  if (*(&v278 + 1) < 2uLL || v279 != __PAIR64__(v183, v180))
                  {
                    goto LABEL_231;
                  }
                }

LABEL_213:
                if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v275, *(*v252 + 4 * v169), 1) & 1) == 0)
                {
                  v225 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v284, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 394);
                  goto LABEL_297;
                }

LABEL_214:
                v167 = v250;
                v168 = *v250;
LABEL_215:
                v169 = ++v170;
                if (v170 >= ((v167[1] - v168) >> 2))
                {
                  goto LABEL_254;
                }
              }

              data = v272;
              v186 = v272 >> 32;
              v187 = v281;
              if (v281 > 1)
              {
                goto LABEL_219;
              }

              goto LABEL_212;
            }

            v227 = 0;
LABEL_254:
            operations_research::sat::LinearConstraintBuilder::AddConstant(v275, v227);
            if ((v227 & 1) == 0)
            {
              v116 = 0;
LABEL_265:
              if (*(&v276 + 1))
              {
                *&v277 = *(&v276 + 1);
                operator delete(*(&v276 + 1));
              }

              if (v278 >= 2)
              {
                operator delete((v279 - (BYTE8(v278) & 1) - 8));
              }

              goto LABEL_269;
            }

            v220 = v255;
            operations_research::sat::LinearConstraintBuilder::Build(v275, &v284);
            if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v274, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
            }

            else
            {
              v274 = v239;
            }

            v273 = 0;
            LOBYTE(v272) = 0;
            v116 = operations_research::sat::LinearConstraintManager::AddCut(v220, &v284, &v274, &v272);
            if (v273 < 0)
            {
              operator delete(v272);
              if ((SHIBYTE(v274.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_261:
                v221 = v287;
                v287 = 0;
                if (!v221)
                {
                  goto LABEL_263;
                }

                goto LABEL_262;
              }
            }

            else if ((SHIBYTE(v274.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_261;
            }

            operator delete(v274.__r_.__value_.__l.__data_);
            v221 = v287;
            v287 = 0;
            if (!v221)
            {
LABEL_263:
              v222 = v286;
              v286 = 0;
              if (v222)
              {
                MEMORY[0x23EED9440](v222, 0x1000C8052888210);
              }

              goto LABEL_265;
            }

LABEL_262:
            MEMORY[0x23EED9440](v221, 0x1000C8000313F17);
            goto LABEL_263;
          }
        }

LABEL_159:
        v116 = 0;
LABEL_269:
        if (v281 >= 2)
        {
          operator delete(&v282[-(BYTE8(v281) & 1) - 8]);
        }

        goto LABEL_271;
      }
    }

LABEL_279:
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v257[1])
  {
    operator delete(v257[1]);
  }

  if (v259)
  {
    operator delete(v259);
  }

  if (v262.__begin_)
  {
    v262.__end_ = v262.__begin_;
    operator delete(v262.__begin_);
  }

  if (v263)
  {
    operator delete(v263);
  }

  if (v266)
  {
    v267 = v266;
    operator delete(v266);
  }

  if (v269)
  {
    v270 = v269;
    operator delete(v269);
  }
}

void sub_23CCB7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (*(v69 - 256) < 2uLL)
  {
    if (!a23)
    {
      goto LABEL_7;
    }
  }

  else
  {
    operator delete((*(v69 - 240) - (*(v69 - 248) & 1) - 8));
    if (!a23)
    {
LABEL_7:
      if (a29 < 0)
      {
        operator delete(__p);
      }

      if (a30)
      {
        operator delete(a30);
        v72 = a36;
        if (!a36)
        {
LABEL_11:
          v73 = a54;
          if (!a54)
          {
            goto LABEL_12;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v72 = a36;
        if (!a36)
        {
          goto LABEL_11;
        }
      }

      operator delete(v72);
      v73 = a54;
      if (!a54)
      {
LABEL_12:
        v74 = a58;
        if (!a58)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_27:
      operator delete(v73);
      v74 = a58;
      if (!a58)
      {
LABEL_13:
        v75 = a61;
        if (!a61)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_28:
      operator delete(v74);
      v75 = a61;
      if (!a61)
      {
LABEL_15:
        if (a64)
        {
          operator delete(a64);
          if (!v66)
          {
LABEL_17:
            v76 = a65;
            if (!a65)
            {
LABEL_22:
              if (a66)
              {
                operator delete(a66);
              }

              _Unwind_Resume(a1);
            }

LABEL_21:
            operator delete(v76);
            goto LABEL_22;
          }
        }

        else if (!v66)
        {
          goto LABEL_17;
        }

        operator delete(v66);
        v76 = a65;
        if (!a65)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_14:
      operator delete(v75);
      goto LABEL_15;
    }
  }

  do
  {
    v71 = *v67++;
    *&a54[(v71 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v71);
    v68 -= 4;
  }

  while (v68);
  goto LABEL_7;
}

uint64_t operations_research::sat::anonymous namespace::OutgoingCutHelper::TrySubsetCut(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = a3;
  v7 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 96);
    v11 = 1;
    v12 = a3;
    v13 = &a3[a4];
    do
    {
      while (1)
      {
        v14 = *v12;
        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (*(a1 + 24))
        {
          break;
        }

        if (++v12 == v13)
        {
          goto LABEL_20;
        }
      }

      v8 |= v14 == 0;
      v9 += *(*(a1 + 16) + 8 * v14);
      ++v12;
    }

    while (v12 != v13);
    if (v8)
    {
      v9 = *(a1 + 88) - v9;
    }
  }

  else
  {
    if (!*(a1 + 24))
    {
      v11 = 1;
      v43 = *(a1 + 64);
      v19 = *v43;
      v20 = v43[1];
      if (*v43 != v20)
      {
        goto LABEL_21;
      }

LABEL_65:
      if (v11 > 0.01)
      {
        goto LABEL_28;
      }

LABEL_66:
      v41 = 0;
      goto LABEL_90;
    }

    v9 = 0;
  }

  v15 = *(a1 + 8);
  if ((v15 ^ v9) < 0 || v9 % v15 == 0)
  {
    v17 = v9 / v15;
  }

  else
  {
    v17 = v9 / v15 + 1;
  }

  if (v17 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v17;
  }

LABEL_20:
  v18 = *(a1 + 64);
  v19 = *v18;
  v20 = v18[1];
  if (*v18 == v20)
  {
    goto LABEL_65;
  }

LABEL_21:
  v21 = *(a1 + 96);
  v22 = 0.0;
  do
  {
    if (((*(v21 + ((*v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v19) & 1) != 0 && ((*(v21 + ((*(v19 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v19 + 1)) & 1) == 0)
    {
      v22 = v22 + v19[1];
    }

    v19 += 2;
  }

  while (v19 != v20);
  if (v22 + 0.01 >= v11)
  {
    goto LABEL_66;
  }

LABEL_28:
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v51 = *a2;
    v23 = *(a1 + 32);
    v24 = *v23;
    v25 = v23[1];
    v26 = v25 - *v23;
    if (v25 != *v23)
    {
      goto LABEL_30;
    }

LABEL_42:
    v29 = 0;
    v28 = 0;
    v33 = -1;
    v32 = -1;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
  v23 = *(a1 + 32);
  v24 = *v23;
  v25 = v23[1];
  v26 = v25 - *v23;
  if (v25 == *v23)
  {
    goto LABEL_42;
  }

LABEL_30:
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v26 >> 2;
  v32 = -1;
  v33 = -1;
  do
  {
    v34 = *(v24 + 4 * v27);
    if (v34 == *(**(a1 + 40) + 4 * v27))
    {
      if ((*(*(a1 + 96) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
      {
        ++v28;
        if (v32 == -1 || *(**(a1 + 56) + 8 * v27) < *(**(a1 + 56) + 8 * v32))
        {
          v32 = v30;
        }
      }

      else
      {
        ++v29;
        if (v33 == -1 || *(**(a1 + 56) + 8 * v27) < *(**(a1 + 56) + 8 * v33))
        {
          v33 = v30;
        }
      }
    }

    v27 = ++v30;
  }

  while (v31 > v30);
LABEL_43:
  if (v28 + v29 > 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = v11;
  }

  v58[0] = *(a1 + 80);
  v58[1] = v35;
  v58[2] = 0x7FFFFFFFFFFFFFFELL;
  v59 = 0u;
  v60 = 0u;
  if (v25 != v24)
  {
    v36 = 0;
    v37 = 1;
    do
    {
      v38 = *(a1 + 96);
      if ((*(v38 + ((*(v24 + 4 * v36) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v24 + 4 * v36)))
      {
        v39 = *(**(a1 + 40) + 4 * v36);
        if (((*(v38 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          if (!operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v58, *(**(a1 + 48) + 4 * v36), 1))
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 166);
            goto LABEL_54;
          }

          v23 = *(a1 + 32);
          v24 = *v23;
        }
      }

      v36 = v37++;
    }

    while (v36 < (v23[1] - v24) >> 2);
  }

  if (v28 + v29 > 0)
  {
    if (v28 == a4)
    {
      if (v32 == -1)
      {
        v41 = 0;
LABEL_86:
        v42 = *(&v59 + 1);
        if (!*(&v59 + 1))
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

      if (*(**(a1 + 56) + 8 * v32) > 0.999999)
      {
        goto LABEL_62;
      }
    }

    v40 = *a1 - a4;
    if (v29 == v40 && (v33 == -1 || *(**(a1 + 56) + 8 * v33) > 0.999999))
    {
LABEL_62:
      v41 = 0;
      v42 = *(&v59 + 1);
      if (!*(&v59 + 1))
      {
        goto LABEL_88;
      }

LABEL_87:
      *&v60 = v42;
      operator delete(v42);
      goto LABEL_88;
    }

    if (v28 == a4)
    {
      if (!operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v58, *(**(a1 + 48) + 4 * v32), 1))
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 187);
        goto LABEL_54;
      }

      v40 = *a1 - a4;
    }

    if (v29 != v40 || (operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v58, *(**(a1 + 48) + 4 * v33), 1) & 1) != 0)
    {
      goto LABEL_72;
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v55, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/routing_cuts.cc", 193);
LABEL_54:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v55);
  }

LABEL_72:
  v44 = *(a1 + 72);
  operations_research::sat::LinearConstraintBuilder::Build(v58, &v55);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v51;
  }

  v53 = 0;
  LOBYTE(__p) = 0;
  v41 = operations_research::sat::LinearConstraintManager::AddCut(v44, &v55, &v54, &__p);
  if (v53 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_77:
      v45 = v57;
      v57 = 0;
      if (!v45)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

  else if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

  operator delete(v54.__r_.__value_.__l.__data_);
  v45 = v57;
  v57 = 0;
  if (v45)
  {
LABEL_78:
    MEMORY[0x23EED9440](v45, 0x1000C8000313F17);
  }

LABEL_79:
  v46 = v56;
  v56 = 0;
  if (!v46)
  {
    goto LABEL_86;
  }

  MEMORY[0x23EED9440](v46, 0x1000C8052888210);
  v42 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    goto LABEL_87;
  }

LABEL_88:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_90:
  if (v7)
  {
    v47 = *(a1 + 96);
    v48 = 4 * a4;
    do
    {
      v49 = *v5++;
      *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v49);
      v48 -= 4;
    }

    while (v48);
  }

  return v41;
}

void sub_23CCB8870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a28);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
    if (a14 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CreateStronglyConnectedGraphCutGenerator(unsigned int a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  v12 = (a6 + 8);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 56) = 0;
  v13 = *v12;
  if (*v12)
  {
    *(a6 + 16) = v13;
    operator delete(v13);
  }

  *(a6 + 8) = v17;
  *(a6 + 24) = v18;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (((v14 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v15 = a3[1];
  if (v15 == *a3)
  {
    v16 = *(a4 + 8);
    if (v16 == *a4)
    {
      v17 = 0uLL;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v26 = a1;
      v24 = 0;
      v25 = a5;
      operator new();
    }

    if (((v16 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (((v15 - *a3) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void sub_23CCB8BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(va1);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(va);
  operations_research::sat::CutGenerator::~CutGenerator(v3);
  _Unwind_Resume(a1);
}

void sub_23CCB8C24(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
    if (!v2)
    {
LABEL_3:
      operations_research::sat::CutGenerator::~CutGenerator(v1);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  operations_research::sat::CutGenerator::~CutGenerator(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::GetAssociatedVariables(void *a1, int *a2, uint64_t a3, void *a4)
{
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a4);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v7;
    v9 = 4 * a3;
    while (1)
    {
      v11 = *a2;
      v12 = *(v8 + 224);
      v13 = (*(v8 + 232) - v12) >> 2;
      if (*a2 >= v13)
      {
        break;
      }

      v16 = *(v12 + 4 * v11);
      if (v16 == -1)
      {
        goto LABEL_10;
      }

      std::vector<int>::push_back[abi:ne200100](a1, &v16);
LABEL_5:
      ++a2;
      v9 -= 4;
      if (!v9)
      {
        return;
      }
    }

    v16 = -1;
LABEL_10:
    v14 = v11 ^ 1;
    if (v14 < v13)
    {
      v10 = *(v12 + 4 * v14);
    }

    else
    {
      v10 = -1;
    }

    v15 = v10;
    std::vector<int>::push_back[abi:ne200100](a1, &v15);
    goto LABEL_5;
  }
}

void sub_23CCB8D64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CreateCVRPCutGenerator(int a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *a8 = 0;
  *(a8 + 8) = 0;
  v15 = (a8 + 8);
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 56) = 0;
  v16 = *v15;
  if (*v15)
  {
    *(a8 + 16) = v16;
    operator delete(v16);
  }

  *(a8 + 8) = v22;
  *(a8 + 24) = v23;
  v17 = a2[1];
  if (v17 != *a2)
  {
    if (((v17 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v18 = a3[1];
  if (v18 == *a3)
  {
    v19 = *(a4 + 8);
    if (v19 == *a4)
    {
      v20 = a5[1];
      if (v20 == *a5)
      {
        v22 = 0uLL;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v31 = a1;
        v29 = 0;
        v30 = a7;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = a6;
        operator new();
      }

      if (((v20 - *a5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (((v19 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (((v18 - *a3) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void sub_23CCB9118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0::~$_0(va);
  operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0::~$_0(&a12);
  operations_research::sat::CutGenerator::~CutGenerator(v26);
  _Unwind_Resume(a1);
}

void sub_23CCB9150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v20)
  {
    operator delete(v20);
    if (!__p)
    {
LABEL_3:
      if (!a11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!a11)
  {
LABEL_4:
    operations_research::sat::CutGenerator::~CutGenerator(v19);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a11);
  operations_research::sat::CutGenerator::~CutGenerator(v19);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void operations_research::SimpleMaxFlow::~SimpleMaxFlow(operations_research::SimpleMaxFlow *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v56 = a2 - 1;
        v59 = a2[-1].n128_i32[0];
        if (v59 >= v12->n128_u32[0] && (v12->n128_u32[0] < v59 || a2[-1].n128_u32[1] >= v12->n128_u32[1]))
        {
          return result;
        }

LABEL_207:
        v145 = *v12;
        *v12 = *v56;
        result = v145;
        *v56 = v145;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,0>(v12, &v12[1], v12 + 2, a2 - 1, result).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,0>(v12, &v12[1], v12 + 2, v12 + 3, result).n128_u64[0];
      v60 = a2 - 1;
      v61 = a2[-1].n128_i32[0];
      v62 = v12[3].n128_i32[0];
      if (v61 < v62 || v62 >= v61 && a2[-1].n128_u32[1] < v12[3].n128_u32[1])
      {
        v146 = v12[3];
        v12[3] = *v60;
        result = v146;
        *v60 = v146;
        v63 = v12[3].n128_i32[0];
        v64 = v12[2].n128_i32[0];
        if (v63 < v64 || v64 >= v63 && v12[3].n128_u32[1] < v12[2].n128_u32[1])
        {
          v147 = v12[2];
          v12[2] = v12[3];
          result = v147;
          v12[3] = v147;
          v65 = v12[2].n128_i32[0];
          v66 = v12[1].n128_i32[0];
          if (v65 < v66 || v66 >= v65 && v12[2].n128_u32[1] < v12[1].n128_u32[1])
          {
            v148 = v12[1];
            v12[1] = v12[2];
            result = v148;
            v12[2] = v148;
            v67 = v12[1].n128_i32[0];
            if (v67 < v12->n128_u32[0] || v12->n128_u32[0] >= v67 && v12[1].n128_u32[1] < v12->n128_u32[1])
            {
              v149 = *v12;
              *v12 = v12[1];
              result = v149;
              v12[1] = v149;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v68 = v12 + 1;
      v70 = v12 == a2 || v68 == a2;
      if (a4)
      {
        if (v70)
        {
          return result;
        }

        v71 = 0;
        v72 = v12;
LABEL_225:
        v74 = v72;
        v72 = v68;
        v75 = v74[1].n128_i32[0];
        if (v75 >= v74->n128_u32[0])
        {
          if (v74->n128_u32[0] < v75)
          {
            goto LABEL_224;
          }

          v76 = v74[1].n128_i32[1];
          if (v76 >= v74->n128_u32[1])
          {
            goto LABEL_224;
          }
        }

        else
        {
          v76 = v74[1].n128_i32[1];
        }

        result.n128_u64[0] = v74[1].n128_u64[1];
        *v72 = *v74;
        v73 = v12;
        if (v74 == v12)
        {
          goto LABEL_223;
        }

        v77 = v71;
        while (1)
        {
          v78 = (v12->n128_u64 + v77);
          v79 = *(v12[-1].n128_i32 + v77);
          if (v75 >= v79)
          {
            if (v79 < v75)
            {
              v73 = (v12 + v77);
LABEL_223:
              v73->n128_u32[0] = v75;
              v73->n128_u32[1] = v76;
              v73->n128_u64[1] = result.n128_u64[0];
LABEL_224:
              v68 = v72 + 1;
              v71 += 16;
              if (&v72[1] == a2)
              {
                return result;
              }

              goto LABEL_225;
            }

            if (v76 >= *(v78 - 3))
            {
              v73 = v74;
              goto LABEL_223;
            }
          }

          --v74;
          *v78 = *(&v12[-1] + v77);
          v77 -= 16;
          if (!v77)
          {
            v73 = v12;
            goto LABEL_223;
          }
        }
      }

      if (v70)
      {
        return result;
      }

      while (2)
      {
        v114 = a1;
        a1 = v68;
        v115 = v114[1].n128_i32[0];
        if (v115 >= v114->n128_u32[0])
        {
          if (v114->n128_u32[0] >= v115)
          {
            v116 = v114[1].n128_i32[1];
            if (v116 < v114->n128_u32[1])
            {
              goto LABEL_308;
            }
          }
        }

        else
        {
          v116 = v114[1].n128_i32[1];
LABEL_308:
          result.n128_u64[0] = v114[1].n128_u64[1];
          do
          {
            do
            {
              v117 = v114;
              v114[1] = *v114;
              v119 = v114[-1].n128_i32[0];
              --v114;
              v118 = v119;
            }

            while (v115 < v119);
          }

          while (v118 >= v115 && v116 < v117[-1].n128_u32[1]);
          v117->n128_u32[0] = v115;
          v117->n128_u32[1] = v116;
          v117->n128_u64[1] = result.n128_u64[0];
        }

        v68 = a1 + 1;
        if (&a1[1] == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return result;
      }

      v80 = (v13 - 2) >> 1;
      v81 = v80;
      do
      {
        v83 = v81;
        v84 = 16 * v81;
        if (v80 >= (16 * v81) >> 4)
        {
          v85 = (v84 >> 3) | 1;
          v86 = &v12[v85];
          if ((v84 >> 3) + 2 < v13)
          {
            v87 = v86[1].n128_i32[0];
            if (v86->n128_u32[0] < v87 || v87 >= v86->n128_u32[0] && v86->n128_u32[1] < v86[1].n128_u32[1])
            {
              ++v86;
              v85 = (v84 >> 3) + 2;
            }
          }

          v88 = &v12[v84 / 0x10];
          v89 = v12[v84 / 0x10].n128_i32[0];
          if (v86->n128_u32[0] >= v89)
          {
            v90 = v88->n128_i32[1];
            if (v89 < v86->n128_u32[0] || v86->n128_u32[1] >= v90)
            {
              v91 = v88->n128_u64[1];
              *v88 = *v86;
              if (v80 >= v85)
              {
                while (1)
                {
                  v92 = 2 * v85;
                  v85 = (2 * v85) | 1;
                  v82 = &v12[v85];
                  v93 = v92 + 2;
                  if (v93 < v13)
                  {
                    v94 = v82[1].n128_i32[0];
                    if (v82->n128_u32[0] < v94 || v94 >= v82->n128_u32[0] && v82->n128_u32[1] < v82[1].n128_u32[1])
                    {
                      ++v82;
                      v85 = v93;
                    }
                  }

                  if (v82->n128_u32[0] < v89 || v89 >= v82->n128_u32[0] && v82->n128_u32[1] < v90)
                  {
                    break;
                  }

                  *v86 = *v82;
                  v86 = v82;
                  if (v80 < v85)
                  {
                    goto LABEL_241;
                  }
                }
              }

              v82 = v86;
LABEL_241:
              v82->n128_u32[0] = v89;
              v82->n128_u32[1] = v90;
              v82->n128_u64[1] = v91;
            }
          }
        }

        v81 = v83 - 1;
      }

      while (v83);
      while (2)
      {
        v96 = 0;
        v150 = *v12;
        v97 = v12;
        do
        {
          v98 = v97;
          v99 = &v97[v96];
          v97 = v99 + 1;
          v100 = 2 * v96;
          v96 = (2 * v96) | 1;
          v101 = v100 + 2;
          if (v101 < v13)
          {
            v102 = v99[2].n128_i32[0];
            v103 = v99[1].n128_i32[0];
            if (v103 < v102 || v102 >= v103 && v99[1].n128_u32[1] < v99[2].n128_u32[1])
            {
              v97 = v99 + 2;
              v96 = v101;
            }
          }

          *v98 = *v97;
        }

        while (v96 <= ((v13 - 2) >> 1));
        if (v97 == --a2)
        {
          result = v150;
          *v97 = v150;
        }

        else
        {
          *v97 = *a2;
          result = v150;
          *a2 = v150;
          v104 = (v97 - v12 + 16) >> 4;
          v105 = v104 - 2;
          if (v104 >= 2)
          {
            v106 = v105 >> 1;
            v107 = &v12[v105 >> 1];
            v108 = v97->n128_u32[0];
            if (v107->n128_u32[0] < v97->n128_u32[0])
            {
              v109 = v97->n128_i32[1];
              goto LABEL_278;
            }

            if (v108 >= v107->n128_u32[0])
            {
              v109 = v97->n128_i32[1];
              if (v107->n128_u32[1] < v109)
              {
LABEL_278:
                result.n128_u64[0] = v97->n128_u64[1];
                *v97 = *v107;
                if (v105 >= 2)
                {
                  while (1)
                  {
                    v111 = v106 - 1;
                    v106 = (v106 - 1) >> 1;
                    v110 = &v12[v106];
                    if (v110->n128_u32[0] >= v108 && (v108 < v110->n128_u32[0] || v110->n128_u32[1] >= v109))
                    {
                      break;
                    }

                    *v107 = *v110;
                    v107 = &v12[v106];
                    if (v111 <= 1)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                v110 = v107;
LABEL_280:
                v110->n128_u32[0] = v108;
                v110->n128_u32[1] = v109;
                v110->n128_u64[1] = result.n128_u64[0];
              }
            }
          }
        }

        if (v13-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = v14->n128_u32[0];
      if (v14->n128_u32[0] < v12->n128_u32[0] || v12->n128_u32[0] >= v16 && v14->n128_u32[1] < v12->n128_u32[1])
      {
        if (v9->n128_u32[0] < v16 || v16 >= v9->n128_u32[0] && a2[-1].n128_u32[1] < v14->n128_u32[1])
        {
          v121 = *v12;
          *v12 = *v9;
        }

        else
        {
          v127 = *v12;
          *v12 = *v14;
          *v14 = v127;
          if (v9->n128_u32[0] >= v14->n128_u32[0] && (v14->n128_u32[0] < v9->n128_u32[0] || a2[-1].n128_u32[1] >= v14->n128_u32[1]))
          {
            goto LABEL_33;
          }

          v121 = *v14;
          *v14 = *v9;
        }

        *v9 = v121;
        goto LABEL_33;
      }

      if (v9->n128_u32[0] < v16 || v16 >= v9->n128_u32[0] && a2[-1].n128_u32[1] < v14->n128_u32[1])
      {
        v123 = *v14;
        *v14 = *v9;
        *v9 = v123;
        if (v14->n128_u32[0] < v12->n128_u32[0] || v12->n128_u32[0] >= v14->n128_u32[0] && v14->n128_u32[1] < v12->n128_u32[1])
        {
          v124 = *v12;
          *v12 = *v14;
          *v14 = v124;
        }
      }

LABEL_33:
      v18 = v12 + 1;
      v19 = v12[1].n128_i32[0];
      v20 = v14 - 1;
      v21 = v14[-1].n128_i32[0];
      if (v21 < v19 || v19 >= v21 && v14[-1].n128_u32[1] < v12[1].n128_u32[1])
      {
        if (v10->n128_u32[0] < v21 || v21 >= v10->n128_u32[0] && a2[-2].n128_u32[1] < v14[-1].n128_u32[1])
        {
          v128 = *v18;
          *v18 = *v10;
        }

        else
        {
          v132 = *v18;
          *v18 = *v20;
          *v20 = v132;
          if (v10->n128_u32[0] >= v20->n128_u32[0] && (v20->n128_u32[0] < v10->n128_u32[0] || a2[-2].n128_u32[1] >= v14[-1].n128_u32[1]))
          {
            goto LABEL_51;
          }

          v128 = *v20;
          *v20 = *v10;
        }

        *v10 = v128;
        goto LABEL_51;
      }

      if (v10->n128_u32[0] < v21 || v21 >= v10->n128_u32[0] && a2[-2].n128_u32[1] < v14[-1].n128_u32[1])
      {
        v129 = *v20;
        *v20 = *v10;
        *v10 = v129;
        if (v20->n128_u32[0] < v18->n128_u32[0] || v18->n128_u32[0] >= v20->n128_u32[0] && v14[-1].n128_u32[1] < v12[1].n128_u32[1])
        {
          v130 = *v18;
          *v18 = *v20;
          *v20 = v130;
        }
      }

LABEL_51:
      v22 = v12 + 2;
      v23 = v12[2].n128_i32[0];
      v26 = v14[1].n128_i32[0];
      v24 = v14 + 1;
      v25 = v26;
      if (v26 < v23 || v23 >= v25 && v24->n128_u32[1] < v12[2].n128_u32[1])
      {
        if (v11->n128_u32[0] < v25 || v25 >= v11->n128_u32[0] && a2[-3].n128_u32[1] < v24->n128_u32[1])
        {
          v133 = *v22;
          *v22 = *v11;
        }

        else
        {
          v136 = *v22;
          *v22 = *v24;
          *v24 = v136;
          if (v11->n128_u32[0] >= v24->n128_u32[0] && (v24->n128_u32[0] < v11->n128_u32[0] || a2[-3].n128_u32[1] >= v24->n128_u32[1]))
          {
            goto LABEL_64;
          }

          v133 = *v24;
          *v24 = *v11;
        }

        *v11 = v133;
        goto LABEL_64;
      }

      if (v11->n128_u32[0] < v25 || v25 >= v11->n128_u32[0] && a2[-3].n128_u32[1] < v24->n128_u32[1])
      {
        v134 = *v24;
        *v24 = *v11;
        *v11 = v134;
        if (v24->n128_u32[0] < v22->n128_u32[0] || v22->n128_u32[0] >= v24->n128_u32[0] && v24->n128_u32[1] < v12[2].n128_u32[1])
        {
          v135 = *v22;
          *v22 = *v24;
          *v24 = v135;
        }
      }

LABEL_64:
      v27 = v15->n128_u32[0];
      if (v15->n128_u32[0] >= v20->n128_u32[0] && (v20->n128_u32[0] < v27 || v15->n128_u32[1] >= v20->n128_u32[1]))
      {
        if (v24->n128_u32[0] < v27 || v27 >= v24->n128_u32[0] && v24->n128_u32[1] < v15->n128_u32[1])
        {
          v138 = *v15;
          *v15 = *v24;
          *v24 = v138;
          if (v15->n128_u32[0] < v20->n128_u32[0] || v20->n128_u32[0] >= v15->n128_u32[0] && v15->n128_u32[1] < v20->n128_u32[1])
          {
            v139 = *v20;
            *v20 = *v15;
            *v15 = v139;
          }
        }

        goto LABEL_77;
      }

      if (v24->n128_u32[0] < v27 || v27 >= v24->n128_u32[0] && v24->n128_u32[1] < v15->n128_u32[1])
      {
        v137 = *v20;
        *v20 = *v24;
      }

      else
      {
        v140 = *v20;
        *v20 = *v15;
        *v15 = v140;
        if (v24->n128_u32[0] >= v15->n128_u32[0] && (v15->n128_u32[0] < v24->n128_u32[0] || v24->n128_u32[1] >= v15->n128_u32[1]))
        {
          goto LABEL_77;
        }

        v137 = *v15;
        *v15 = *v24;
      }

      *v24 = v137;
LABEL_77:
      v141 = *v12;
      *v12 = *v15;
      result.n128_u64[1] = v141.n128_u64[1];
      *v15 = v141;
      goto LABEL_78;
    }

    v17 = v12->n128_u32[0];
    if (v12->n128_u32[0] >= v15->n128_u32[0] && (v15->n128_u32[0] < v17 || v12->n128_u32[1] >= v15->n128_u32[1]))
    {
      if (v9->n128_u32[0] < v17 || v17 >= v9->n128_u32[0] && a2[-1].n128_u32[1] < v12->n128_u32[1])
      {
        v125 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v125.n128_u64[1];
        *v9 = v125;
        if (v12->n128_u32[0] < v15->n128_u32[0] || v15->n128_u32[0] >= v12->n128_u32[0] && v12->n128_u32[1] < v15->n128_u32[1])
        {
          v126 = *v15;
          *v15 = *v12;
          result.n128_u64[1] = v126.n128_u64[1];
          *v12 = v126;
        }
      }

      goto LABEL_78;
    }

    if (v9->n128_u32[0] < v17 || v17 >= v9->n128_u32[0] && a2[-1].n128_u32[1] < v12->n128_u32[1])
    {
      v122 = *v15;
      *v15 = *v9;
    }

    else
    {
      v131 = *v15;
      *v15 = *v12;
      result.n128_u64[1] = v131.n128_u64[1];
      *v12 = v131;
      if (v9->n128_u32[0] >= v12->n128_u32[0] && (v12->n128_u32[0] < v9->n128_u32[0] || a2[-1].n128_u32[1] >= v12->n128_u32[1]))
      {
        goto LABEL_78;
      }

      v122 = *v12;
      *v12 = *v9;
    }

    result.n128_u64[1] = v122.n128_u64[1];
    *v9 = v122;
LABEL_78:
    --a3;
    if (a4)
    {
      v28 = v12->n128_u32[0];
LABEL_83:
      v31 = 0;
      v32 = v12->n128_i32[1];
      result.n128_u64[0] = v12->n128_u64[1];
      while (1)
      {
        v33 = v12[v31 + 1].n128_i32[0];
        if (v33 >= v28 && (v28 < v33 || v12[v31 + 1].n128_u32[1] >= v32))
        {
          break;
        }

        ++v31;
      }

      n128_u64 = v12[v31 + 1].n128_u64;
      if (v31 * 16)
      {
        v35 = v9->n128_u32[0];
        for (i = a2 - 1; v35 >= v28 && (v28 < v35 || i->n128_u32[1] >= v32); --i)
        {
          v37 = i[-1].n128_u32[0];
          v35 = v37;
        }
      }

      else
      {
        i = a2;
        if (n128_u64 < a2)
        {
          v38 = v9->n128_u32[0];
          i = a2 - 1;
          if (v9->n128_u32[0] >= v28)
          {
            i = a2 - 1;
            do
            {
              if (v28 < v38)
              {
                if (n128_u64 >= i)
                {
                  break;
                }
              }

              else if (n128_u64 >= i || i->n128_u32[1] < v32)
              {
                break;
              }

              v46 = i[-1].n128_i32[0];
              --i;
              v38 = v46;
            }

            while (v46 >= v28);
          }
        }
      }

      v12 = n128_u64;
      if (n128_u64 < i)
      {
        v39 = i;
        do
        {
          v142 = *v12;
          *v12 = *v39;
          *v39 = v142;
          do
          {
            do
            {
              v41 = v12[1].n128_i32[0];
              ++v12;
              v40 = v41;
            }

            while (v41 < v28);
          }

          while (v28 >= v40 && v12->n128_u32[1] < v32);
          do
          {
            v43 = v39[-1].n128_i32[0];
            --v39;
            v42 = v43;
          }

          while (v43 >= v28 && (v28 < v42 || v39->n128_u32[1] >= v32));
        }

        while (v12 < v39);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v28;
      v12[-1].n128_u32[1] = v32;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (n128_u64 < i)
      {
        goto LABEL_113;
      }

      v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*>(v12, a2, v45))
      {
        a2 = v12 - 1;
        if (v44)
        {
          return result;
        }

        goto LABEL_1;
      }

      if ((v44 & 1) == 0)
      {
LABEL_113:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,false>(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v29 = v12[-1].n128_i32[0];
      v28 = v12->n128_u32[0];
      if (v29 < v12->n128_u32[0])
      {
        goto LABEL_83;
      }

      v30 = v12->n128_i32[1];
      if (v28 >= v29 && v12[-1].n128_u32[1] < v30)
      {
        goto LABEL_83;
      }

      v47 = v9->n128_u32[0];
      if (v28 < v9->n128_u32[0] || v47 >= v28 && v30 < a2[-1].n128_u32[1])
      {
        do
        {
          v49 = v12[1].n128_i32[0];
          ++v12;
          v48 = v49;
        }

        while (v28 >= v49 && (v48 < v28 || v30 >= v12->n128_u32[1]));
      }

      else
      {
          ;
        }
      }

      j = a2;
      if (v12 < a2)
      {
        for (j = a2 - 1; v28 < v47 || v47 >= v28 && v30 < j->n128_u32[1]; --j)
        {
          v51 = j[-1].n128_u32[0];
          v47 = v51;
        }
      }

      result.n128_u64[0] = a1->n128_u64[1];
      while (v12 < j)
      {
        v143 = *v12;
        *v12 = *j;
        *j = v143;
        do
        {
          v53 = v12[1].n128_i32[0];
          ++v12;
          v52 = v53;
        }

        while (v28 >= v53 && (v52 < v28 || v30 >= v12->n128_u32[1]));
        do
        {
          do
          {
            v55 = j[-1].n128_i32[0];
            --j;
            v54 = v55;
          }

          while (v28 < v55);
        }

        while (v54 >= v28 && v30 < j->n128_u32[1]);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v28;
      v12[-1].n128_u32[1] = v30;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v56 = v12 + 1;
  v57 = v12[1].n128_i32[0];
  if (v57 < v12->n128_u32[0] || v12->n128_u32[0] >= v57 && v12[1].n128_u32[1] < v12->n128_u32[1])
  {
    v58 = a2[-1].n128_i32[0];
    if (v58 < v57 || v57 >= v58 && a2[-1].n128_u32[1] < v12[1].n128_u32[1])
    {
      v144 = *v12;
      *v12 = *v9;
    }

    else
    {
      v152 = *v12;
      *v12 = *v56;
      result = v152;
      *v56 = v152;
      v120 = v12[1].n128_i32[0];
      if (v9->n128_u32[0] >= v120 && (v120 < v9->n128_u32[0] || a2[-1].n128_u32[1] >= v12[1].n128_u32[1]))
      {
        return result;
      }

      v144 = *v56;
      *v56 = *v9;
    }

    result = v144;
    *v9 = v144;
    return result;
  }

  v112 = a2[-1].n128_i32[0];
  if (v112 < v57 || v57 >= v112 && a2[-1].n128_u32[1] < v12[1].n128_u32[1])
  {
    v151 = *v56;
    *v56 = *v9;
    result = v151;
    *v9 = v151;
    v113 = v12[1].n128_i32[0];
    if (v113 < v12->n128_u32[0] || v12->n128_u32[0] >= v113 && v12[1].n128_u32[1] < v12->n128_u32[1])
    {
      goto LABEL_207;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,0>(__n128 *a1, signed __int32 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = *a2;
  if (*a2 < a1->n128_u32[0] || a1->n128_u32[0] >= v5 && a2[1] < a1->n128_u32[1])
  {
    if (a3->n128_u32[0] < v5 || v5 >= a3->n128_u32[0] && a3->n128_u32[1] < a2[1])
    {
      result = *a1;
      *a1 = *a3;
    }

    else
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      if (a3->n128_u32[0] >= *a2 && (*a2 < a3->n128_u32[0] || a3->n128_u32[1] >= a2[1]))
      {
        goto LABEL_14;
      }

      result = *a2;
      *a2 = *a3;
    }

    *a3 = result;
  }

  else if (a3->n128_u32[0] < v5 || v5 >= a3->n128_u32[0] && a3->n128_u32[1] < a2[1])
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    if (*a2 < a1->n128_u32[0] || a1->n128_u32[0] >= *a2 && a2[1] < a1->n128_u32[1])
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_14:
  if (a4->n128_u32[0] < a3->n128_u32[0] || a3->n128_u32[0] >= a4->n128_u32[0] && a4->n128_u32[1] < a3->n128_u32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[0] < *a2 || *a2 >= a3->n128_u32[0] && a3->n128_u32[1] < a2[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_u32[0] || a1->n128_u32[0] >= *a2 && a2[1] < a1->n128_u32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,0>(a1, &a1[1], a1 + 2, a2 - 1, a3);
        return 1;
      }

      if (v3 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SymmetrizeArcs(std::vector<operations_research::sat::ArcWithLpValue> *)::$_0 &,operations_research::sat::ArcWithLpValue*,0>(a1, &a1[1], a1 + 2, a1 + 3, a3);
        v9 = a2 - 1;
        v10 = a2[-1].n128_i32[0];
        v11 = a1[3].n128_i32[0];
        if (v10 < v11 || v11 >= v10 && a2[-1].n128_u32[1] < a1[3].n128_u32[1])
        {
          v12 = a1[3];
          a1[3] = *v9;
          *v9 = v12;
          v13 = a1[3].n128_i32[0];
          v14 = a1[2].n128_i32[0];
          if (v13 < v14 || v14 >= v13 && a1[3].n128_u32[1] < a1[2].n128_u32[1])
          {
            v15 = a1[2];
            a1[2] = a1[3];
            a1[3] = v15;
            v16 = a1[2].n128_i32[0];
            v17 = a1[1].n128_i32[0];
            if (v16 < v17 || v17 >= v16 && a1[2].n128_u32[1] < a1[1].n128_u32[1])
            {
              v18 = a1[1];
              a1[1] = a1[2];
              a1[2] = v18;
              v19 = a1[1].n128_i32[0];
              if (v19 < a1->n128_u32[0] || a1->n128_u32[0] >= v19 && a1[1].n128_u32[1] < a1->n128_u32[1])
              {
                v20 = *a1;
                *a1 = a1[1];
                a1[1] = v20;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    v4 = a1 + 1;
    v21 = a1[1].n128_i32[0];
    v22 = a2 - 1;
    if (v21 >= a1->n128_u32[0] && (a1->n128_u32[0] < v21 || a1[1].n128_u32[1] >= a1->n128_u32[1]))
    {
      v31 = a2[-1].n128_i32[0];
      if (v31 >= v21 && (v21 < v31 || a2[-1].n128_u32[1] >= a1[1].n128_u32[1]))
      {
        return 1;
      }

      v32 = *v4;
      *v4 = *v22;
      *v22 = v32;
      v33 = a1[1].n128_i32[0];
      if (v33 >= a1->n128_u32[0] && (a1->n128_u32[0] < v33 || a1[1].n128_u32[1] >= a1->n128_u32[1]))
      {
        return 1;
      }

LABEL_5:
      v6 = *a1;
      *a1 = *v4;
      *v4 = v6;
      return 1;
    }

    v23 = a2[-1].n128_i32[0];
    if (v23 < v21 || v21 >= v23 && a2[-1].n128_u32[1] < a1[1].n128_u32[1])
    {
      v24 = *a1;
      *a1 = *v22;
    }

    else
    {
      v37 = *a1;
      *a1 = *v4;
      *v4 = v37;
      v38 = a1[1].n128_i32[0];
      if (v22->n128_u32[0] >= v38 && (v38 < v22->n128_u32[0] || a2[-1].n128_u32[1] >= a1[1].n128_u32[1]))
      {
        return 1;
      }

      v24 = *v4;
      *v4 = *v22;
    }

    *v22 = v24;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = a2 - 1;
    v5 = a2[-1].n128_i32[0];
    if (v5 >= a1->n128_u32[0] && (a1->n128_u32[0] < v5 || a2[-1].n128_u32[1] >= a1->n128_u32[1]))
    {
      return 1;
    }

    goto LABEL_5;
  }

LABEL_17:
  v25 = a1 + 2;
  v26 = a1->n128_u32[0];
  v27 = a1 + 1;
  v28 = a1[1].n128_i32[0];
  if (v28 >= a1->n128_u32[0] && (v26 < v28 || a1[1].n128_u32[1] >= a1->n128_u32[1]))
  {
    v34 = a1[2].n128_i32[0];
    if (v34 < v28 || v28 >= v34 && a1[2].n128_u32[1] < a1[1].n128_u32[1])
    {
      v35 = *v27;
      *v27 = *v25;
      *v25 = v35;
      if (v27->n128_u32[0] < v26 || v26 >= v27->n128_u32[0] && a1[1].n128_u32[1] < a1->n128_u32[1])
      {
        v36 = *a1;
        *a1 = *v27;
        *v27 = v36;
      }
    }

    goto LABEL_49;
  }

  v29 = a1[2].n128_i32[0];
  if (v29 < v28 || v28 >= v29 && a1[2].n128_u32[1] < a1[1].n128_u32[1])
  {
    v30 = *a1;
    *a1 = *v25;
  }

  else
  {
    v39 = *a1;
    *a1 = *v27;
    *v27 = v39;
    v40 = a1[1].n128_i32[0];
    if (v29 >= v40 && (v40 < v29 || a1[2].n128_u32[1] >= a1[1].n128_u32[1]))
    {
      goto LABEL_49;
    }

    v30 = *v27;
    *v27 = *v25;
  }

  *v25 = v30;
LABEL_49:
  v41 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_67:
    v51 = 1;
    return (v51 | v41) & 1;
  }

  v42 = 0;
  v43 = 0;
  while (2)
  {
    v45 = v41->n128_u32[0];
    if (v41->n128_u32[0] >= v25->n128_u32[0])
    {
      if (v25->n128_u32[0] < v45)
      {
        goto LABEL_53;
      }

      v46 = v41->n128_i32[1];
      if (v46 >= v25->n128_u32[1])
      {
        goto LABEL_53;
      }
    }

    else
    {
      v46 = v41->n128_i32[1];
    }

    v47 = v41->n128_u64[1];
    *v41 = *v25;
    v44 = a1;
    if (v25 == a1)
    {
      goto LABEL_52;
    }

    v48 = v42;
    while (1)
    {
      v49 = (a1 + v48);
      v50 = *(a1[1].n128_i32 + v48);
      if (v45 < v50)
      {
        goto LABEL_58;
      }

      if (v50 < v45)
      {
        break;
      }

      if (v46 >= v49[1].n128_u32[1])
      {
        v44 = (a1 + v48 + 32);
        goto LABEL_52;
      }

LABEL_58:
      --v25;
      v49[2] = *(a1 + v48 + 16);
      v48 -= 16;
      if (v48 == -32)
      {
        v44 = a1;
        goto LABEL_52;
      }
    }

    v44 = v25;
LABEL_52:
    v44->n128_u32[0] = v45;
    v44->n128_u32[1] = v46;
    v44->n128_u64[1] = v47;
    if (++v43 != 8)
    {
LABEL_53:
      v25 = v41;
      v42 += 16;
      if (++v41 == a2)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v51 = 0;
  LODWORD(v41) = &v41[1] == a2;
  return (v51 | v41) & 1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v9, v9 + 16, v9 + 32);
        v27 = *(v9 + 32);
        v28 = *(a2 - 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return result;
          }

          v29 = *(v9 + 40);
          v30 = *(a2 - 8);
          if (v29 >= v30)
          {
            return result;
          }
        }

        else
        {
          v29 = *(v9 + 40);
          v30 = *(a2 - 8);
        }

        *(v9 + 32) = v28;
        *(a2 - 16) = v27;
        *(v9 + 40) = v30;
        *(a2 - 8) = v29;
        v31 = *(v9 + 16);
        v32 = *(v9 + 32);
        if (v31 >= v32)
        {
          if (v32 < v31)
          {
            return result;
          }

          v33 = *(v9 + 24);
          v34 = *(v9 + 40);
          if (v33 >= v34)
          {
            return result;
          }
        }

        else
        {
          v33 = *(v9 + 24);
          v34 = *(v9 + 40);
        }

        *(v9 + 16) = v32;
        *(v9 + 32) = v31;
        *(v9 + 24) = v34;
        *(v9 + 40) = v33;
        v35 = *v9;
        if (*v9 >= v32)
        {
          if (v32 < v35)
          {
            return result;
          }

          v36 = *(v9 + 8);
          if (v36 >= v34)
          {
            return result;
          }
        }

        else
        {
          v36 = *(v9 + 8);
        }

        *v9 = v32;
        *(v9 + 16) = v35;
        *(v9 + 8) = v34;
        *(v9 + 24) = v36;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v37 = v9 + 16;
      v39 = v9 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v9;
LABEL_56:
        v43 = v41;
        v41 = v37;
        v44 = *v43;
        v45 = *(v43 + 16);
        if (*v43 >= v45)
        {
          if (v45 < v44)
          {
            goto LABEL_55;
          }

          v47 = *(v43 + 8);
          v46 = *(v43 + 24);
          if (v47 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
        }

        *(v43 + 16) = v44;
        *(v41 + 8) = v47;
        v42 = v9;
        if (v43 == v9)
        {
          goto LABEL_54;
        }

        v48 = v40;
        while (1)
        {
          v51 = *(v9 + v48 - 16);
          if (v51 < v45)
          {
            v49 = *(v9 + v48 - 8);
          }

          else
          {
            if (v45 < v51)
            {
              v42 = v9 + v48;
LABEL_54:
              *v42 = v45;
              *(v42 + 8) = v46;
LABEL_55:
              v37 = v41 + 16;
              v40 += 16;
              if (v41 + 16 == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v49 = *(v9 + v48 - 8);
            if (v49 >= v46)
            {
              v42 = v43;
              goto LABEL_54;
            }
          }

          v43 -= 16;
          v50 = v9 + v48;
          *v50 = v51;
          *(v50 + 8) = v49;
          v48 -= 16;
          if (!v48)
          {
            v42 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v57 = v8;
        v8 = v37;
        v58 = *v57;
        v59 = *(v57 + 16);
        if (*v57 < v59)
        {
          break;
        }

        if (v59 >= v58)
        {
          v62 = *(v57 + 8);
          v60 = *(v57 + 24);
          if (v62 < v60)
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v37 += 16;
        if (v8 + 16 == a2)
        {
          return result;
        }
      }

      v60 = *(v57 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v58;
        *(j + 16) = *j;
        v58 = *(j - 24);
        if (v58 >= v59 && (v59 < v58 || *(j - 16) >= v60))
        {
          break;
        }
      }

      *(j - 8) = v59;
      *j = v60;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v52 = (v12 - 2) >> 1;
        v53 = v52 + 1;
        v54 = v9 + 16 * v52;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*>(v9, a3, (a2 - v9) >> 4, v54);
          v54 -= 16;
          --v53;
        }

        while (v53);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>>,std::pair<double,int>*>(v9, a2, a3, v12);
          a2 -= 16;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v8 + 16 * (v12 >> 1), v8, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v8, v8 + 16 * (v12 >> 1), a2 - 16);
      v15 = 16 * v13;
      v16 = 16 * v13 + v8 - 16;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v8 + 16, v16, a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v8 + 32, v8 + 16 + v15, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(v16, v14, v8 + 16 + v15);
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      v18 = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v18;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v8 - 16);
    if (*v8 >= v19 && (v19 < *v8 || *(v8 + 8) >= *(v8 - 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::greater<std::pair<double,int>> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::greater<std::pair<double,int>> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*>(v8, v20);
    v9 = v20 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*>(v20 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 16;
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v23 = *v9;
  v24 = *(a2 - 16);
  if (*v9 < v24)
  {
    v25 = *(v9 + 8);
    v26 = *(a2 - 8);
LABEL_30:
    *v9 = v24;
    *(a2 - 16) = v23;
    *(v9 + 8) = v26;
    *(a2 - 8) = v25;
    return result;
  }

  if (v24 >= v23)
  {
    v25 = *(v9 + 8);
    v26 = *(a2 - 8);
    if (v25 < v26)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < *a2 || v4 >= v3 && *(a1 + 8) < *(a2 + 8))
  {
    v5 = *a3;
    if (v4 < *a3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v3;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v5 >= v4)
    {
      v16 = *(a2 + 8);
      v6 = *(a3 + 8);
      if (v16 < v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v4;
    *a2 = v3;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (v3 >= *a3)
    {
      if (v18 < v3)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v17 >= v19)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v3;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (v4 < *a3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_9:
    *a2 = v9;
    *a3 = v4;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a1;
    v13 = *a2;
    if (*a1 < *a2)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_11:
      *a1 = v13;
      *a2 = v12;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
      if (v14 < v15)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v9 < v4)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v11 = *(a3 + 8);
  if (v10 < v11)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(a1, a2, a3);
  v11 = *a3;
  v12 = *a4;
  if (*a3 >= *a4)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
    if (v13 >= v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v12;
  *a4 = v11;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a2;
  v16 = *a3;
  if (*a2 >= *a3)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
    if (v17 >= v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v16;
  *a3 = v15;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a1;
  v20 = *a2;
  if (*a1 < *a2)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v20;
    *a2 = v19;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
    if (v21 < v22)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a4;
  v24 = *a5;
  if (*a4 >= *a5)
  {
    if (v24 < v23)
    {
      return result;
    }

    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
    if (v25 >= v26)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v24;
  *a5 = v23;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a3;
  v28 = *a4;
  if (*a3 >= *a4)
  {
    if (v28 < v27)
    {
      return result;
    }

    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
    if (v29 >= v30)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v28;
  *a4 = v27;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a2;
  v32 = *a3;
  if (*a2 >= *a3)
  {
    if (v32 < v31)
    {
      return result;
    }

    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
    if (v33 >= v34)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v32;
  *a3 = v31;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a1;
  v36 = *a2;
  if (*a1 < *a2)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v36;
    *a2 = v35;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
    if (v37 < v38)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::greater<std::pair<double,int>> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (v4 < *a1 || v2 >= v4 && *(a2 - 8) < v3)
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v6 >= v2 && (v2 < v7 || *(i + 8) >= v3));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v4 < v2 || v2 >= v4 && *(a2 + 8) < v3; a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v9 >= v2 && (v2 < v9 || *(i + 8) >= v3))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v14 < v2);
      }

      while (v2 >= v10 && *(a2 + 8) < v3);
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::greater<std::pair<double,int>> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v3 >= v5 && (v5 < v3 || v4 >= *(a1 + v2 + 24)))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v3 >= v7 && (v8 < v3 || v4 >= *(a2 + 8)));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v3 < v9)
        {
          break;
        }

        if (v10 < v3)
        {
          goto LABEL_19;
        }
      }

      while (v4 >= *(a2 + 8) && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v3 < v16);
      }

      while (v5 >= v3 && v4 < *(v13 + 8));
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v3 >= v17 && (v12 < v3 || v4 >= *(v14 + 8)));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32);
        v25 = *(a1 + 32);
        v26 = *(a2 - 16);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
          if (v27 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v26;
        *(a2 - 16) = v25;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
          if (v31 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (*a1 >= v30)
        {
          if (v30 < v33)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v34 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v30;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *a1;
      v5 = *(a2 - 16);
      if (*a1 >= v5)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
        if (v6 >= v7)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v5;
      *(a2 - 16) = v4;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v18 = *(v8 + 8);
      v17 = *(v11 + 8);
      if (v18 >= v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v22 < v16)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v16 < v22)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v20 >= v17)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v16;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>> &,std::pair<double,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (v10 < *v8 || *v8 >= v10 && *(v8 + 24) < *(v8 + 8))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *a4;
      v12 = *v8;
      if (*a4 >= *v8)
      {
        v13 = *(a4 + 8);
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          if (v13 < v14)
          {
            return result;
          }
        }

        else
        {
          v14 = *(v8 + 8);
        }

        *a4 = v12;
        *(a4 + 8) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = *(v15 + 16);
              if (v19 < *v15 || *v15 >= v19 && *(v15 + 24) < *(v15 + 8))
              {
                v15 += 16;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (v11 < *v15)
            {
              break;
            }

            if (v20 < v11)
            {
              v16 = *(v15 + 8);
            }

            else
            {
              v16 = *(v15 + 8);
              if (v13 < v16)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 8) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v11;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::pair<double,int>>,std::pair<double,int>*>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = v9 + 2;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = *(v9 + 4);
        v13 = *(v9 + 2);
        if (v12 < v13 || v13 >= v12 && *(v9 + 10) < *(v9 + 6))
        {
          v7 = v9 + 4;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v7;
    v19 = *v17;
    if (*v7 >= *v17)
    {
      if (v19 < v18)
      {
        return result;
      }

      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
      if (v20 >= v21)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v19;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (v18 < *v22)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v25 < v18)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v20 >= v23)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v18;
    *(v22 + 2) = v20;
  }

  return result;
}

void *std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F44330;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F44330;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44330;
  result = operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0::$_0(a2 + 8, a1 + 8);
  *(a2 + 92) = 0;
  return result;
}

void std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[7];
  if (v2)
  {
    __p[8] = v2;
    operator delete(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    __p[5] = v3;
    operator delete(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  operations_research::sat::SeparateSubtourInequalities(*(a1 + 88), (a1 + 8), (a1 + 32), (a1 + 56), 0, 0, 0, v3, *(a1 + 80));
  return 1;
}

uint64_t std::__function::__func<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40CreateStronglyConnectedGraphCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40CreateStronglyConnectedGraphCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40CreateStronglyConnectedGraphCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40CreateStronglyConnectedGraphCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::CreateStronglyConnectedGraphCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v7;
  return a1;
}

void sub_23CCBC33C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    v6 = *v2;
    if (!*v2)
    {
LABEL_3:
      v7 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v6;
  operator delete(v6);
  v7 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v7;
  operator delete(v7);
  goto LABEL_5;
}

void sub_23CCBC39C()
{
  if (!*v0)
  {
    JUMPOUT(0x23CCBC360);
  }

  JUMPOUT(0x23CCBC358);
}

void operations_research::sat::anonymous namespace::FilterFalseArcsAtLevelZero(std::vector<int> *a1, std::vector<int> *a2, std::vector<int> *a3, void *a4)
{
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a4);
  if ((*(v7 + 8) & 0xFFFFFFF) == 0)
  {
    begin = a1->__begin_;
    v9 = a1->__end_ - a1->__begin_;
    v10 = v9 >> 2;
    if ((v9 >> 2) < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = a3->__begin_;
      v13 = *(v7 + 24);
      v14 = a2->__begin_;
      v15 = (v9 >> 2) & 0x7FFFFFFF;
      v16 = a3->__begin_;
      v17 = a1->__begin_;
      v18 = a2->__begin_;
      do
      {
        if (((*(v13 + ((*v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v16 & 0x3F ^ 1u)) & 1) == 0)
        {
          begin[v11] = *v17;
          v14[v11] = *v18;
          v12[v11++] = *v16;
        }

        ++v18;
        ++v17;
        ++v16;
        --v15;
      }

      while (v15);
    }

    if (v11 < v10)
    {
      v19 = v11;
      if (v11 <= v10)
      {
        if (v11 < v10)
        {
          a1->__end_ = &begin[v11];
        }
      }

      else
      {
        std::vector<int>::__append(a1, v11 - v10);
      }

      v20 = a2->__end_ - a2->__begin_;
      if (v19 <= v20)
      {
        if (v19 < v20)
        {
          a2->__end_ = &a2->__begin_[v19];
        }
      }

      else
      {
        std::vector<int>::__append(a2, v19 - v20);
      }

      v21 = a3->__end_ - a3->__begin_;
      if (v19 <= v21)
      {
        if (v19 < v21)
        {
          a3->__end_ = &a3->__begin_[v19];
        }
      }

      else
      {

        std::vector<int>::__append(a3, v19 - v21);
      }
    }
  }
}

void *std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F443B0;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F443B0;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[12];
  if (v2)
  {
    __p[13] = v2;
    operator delete(v2);
  }

  v3 = __p[7];
  if (v3)
  {
    __p[8] = v3;
    operator delete(v3);
  }

  v4 = __p[4];
  if (v4)
  {
    __p[5] = v4;
    operator delete(v4);
  }

  v5 = __p[1];
  if (v5)
  {
    __p[2] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  operations_research::sat::SeparateSubtourInequalities(*(a1 + 88), (a1 + 8), (a1 + 32), (a1 + 56), *(a1 + 96), (*(a1 + 104) - *(a1 + 96)) >> 3, *(a1 + 120), v3, *(a1 + 80));
  return 1;
}

uint64_t std::__function::__func<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat22CreateCVRPCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEENS2_IxNS3_IxEEEExPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat22CreateCVRPCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEENS2_IxNS3_IxEEEExPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat22CreateCVRPCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEENS2_IxNS3_IxEEEExPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat22CreateCVRPCutGeneratorEiNSt3__16vectorIiNS1_9allocatorIiEEEES5_NS2_INS0_7LiteralENS3_IS6_EEEENS2_IxNS3_IxEEEExPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::CreateCVRPCutGenerator(int,std::vector<int>,std::vector<int>,std::vector<operations_research::sat::Literal>,std::vector<long long>,long long,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  *(a1 + 88) = 0;
  *(a1 + 80) = v8;
  *(a1 + 72) = v7;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_23CCBCA80(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 56) = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_4:
    v9 = *v1;
    if (!*v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(v1 + 32) = v8;
  operator delete(v8);
  v9 = *v1;
  if (!*v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  *(v1 + 8) = v9;
  operator delete(v9);
  goto LABEL_6;
}

void sub_23CCBCB08()
{
  if (!*v0)
  {
    JUMPOUT(0x23CCBCAACLL);
  }

  JUMPOUT(0x23CCBCAA4);
}

operations_research::sat::SatDecisionPolicy *operations_research::sat::SatDecisionPolicy::SatDecisionPolicy(operations_research::sat::SatDecisionPolicy *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(this + 40) = 0u;
  *(this + 2) = v4;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  std::vector<std::array<long long,2ul>>::__append(this + 40, 1uLL);
  v5 = *(this + 8);
  if (*(this + 9) != v5)
  {
    *(this + 9) = v5;
  }

  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 0xFFFFFFFF00000000;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0x3FF0000000000000;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 10) = 0u;
  *(this + 265) = 0u;
  *(this + 344) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 360) = 1;
  *(this + 23) = xmmword_23CE4DB60;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  return this;
}

void sub_23CCBCC00(_Unwind_Exception *exception_object)
{
  v4 = v1[8];
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[6] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SatDecisionPolicy::IncreaseNumVariables(int32x2_t **this, uint64_t a2)
{
  v6 = this[20];
  v4 = (this + 20);
  v5 = v6;
  v7 = this[21] - v6;
  v8 = v7 >> 3;
  v9 = a2;
  v10 = (*this)[30];
  *__x = v10;
  v11 = a2 >= (v7 >> 3);
  v12 = a2 - (v7 >> 3);
  if (v12 != 0 && v11)
  {
    std::vector<double>::__append(v4, v12, __x);
  }

  else if (!v11)
  {
    this[21] = &v5[v9];
  }

  v13 = this[23];
  v14 = this[24];
  __x[0] = 0;
  v15 = (v14 - v13) >> 2;
  if (v9 <= v15)
  {
    if (v9 < v15)
    {
      this[24] = (v13 + 4 * v9);
    }
  }

  else
  {
    std::vector<float>::__append((this + 23), v9 - v15, __x, v10);
  }

  this[27] = this[26];
  operations_research::BitQueue64::IncreaseSize((this + 15), a2);
  std::vector<BOOL>::resize((this + 29), v9, 0);
  std::vector<BOOL>::resize((this + 32), v9, 0);
  std::vector<BOOL>::resize((this + 36), v9, 0);
  std::vector<BOOL>::resize((this + 39), v9, 0);
  std::vector<BOOL>::resize((this + 42), v9, 0);
  v16 = this[21] - this[20];
  if ((v16 >> 3) > v8)
  {
    v17 = (v7 >> 3);
    v18 = (v16 >> 3);
    do
    {
      v22 = (*this)[47].i32[0];
      if (v22 == 2)
      {
        v23 = (this[2][2])(*this[2]);
        v24 = this[42];
        v25 = v17 >> 6;
        v26 = 1 << v17;
        if (v23)
        {
          v27 = *&v24[v25] | v26;
        }

        else
        {
          v27 = *&v24[v25] & ~v26;
        }

        v24[v25] = v27;
        goto LABEL_14;
      }

      if (v22 == 1)
      {
        v19 = this[42];
        v20 = (v17 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v21 = *(v19 + v20) & ~(1 << v17);
      }

      else
      {
        if (v22)
        {
          goto LABEL_14;
        }

        v19 = this[42];
        v20 = (v17 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v21 = *(v19 + v20) | (1 << v17);
      }

      *(v19 + v20) = v21;
LABEL_14:
      ++v17;
    }

    while (v18 != v17);
  }

  v28 = this[5];
  v29 = this + 5;
  v30 = a2 + 1;
  v31 = (this[6] - v28) >> 4;
  if (v30 <= v31)
  {
    if (v30 < v31)
    {
      this[6] = &v28[2 * v30];
    }
  }

  else
  {
    std::vector<std::array<long long,2ul>>::__append((this + 5), v30 - v31);
  }

  v32 = this[8];
  v33 = this[9];
  v34 = this + 8;
  __x[0] = 0;
  v35 = (v33 - v32) >> 2;
  if (v9 <= v35)
  {
    if (v9 < v35)
    {
      this[9] = (v32 + 4 * v9);
    }
  }

  else
  {
    std::vector<int>::__append((this + 8), v9 - v35, __x);
  }

  if (v8 < a2 && (this[3] & 1) != 0)
  {
    do
    {
      v38 = *&this[20][v8];
      v39 = *(this + 8) + 1;
      *(this + 8) = v39;
      if (v39 >= 2)
      {
        while (1)
        {
          v36 = v39 >> 1;
          v42 = (*v29 + 16 * (v39 >> 1));
          v43 = *v42;
          v44 = *(v42 + 1);
          v45 = v42[1];
          if (v45 >= v38 && (v45 != v38 || *&v44 >= 0.0))
          {
            break;
          }

          v40 = *v29 + 16 * v39;
          *v40 = v43 | (v44 << 32);
          *(v40 + 8) = v45;
          *(*v34 + 4 * v43) = v39;
          v41 = v39 > 3;
          v39 >>= 1;
          if (!v41)
          {
            goto LABEL_35;
          }
        }
      }

      v36 = v39;
LABEL_35:
      v37 = *v29 + 16 * v36;
      *v37 = v8;
      *(v37 + 8) = v38;
      *(*v34 + 4 * v8) = v36;
      LODWORD(v8) = v8 + 1;
    }

    while (v8 != a2);
  }
}

void operations_research::BitQueue64::IncreaseSize(operations_research::BitQueue64 *this, uint64_t a2)
{
  if (*this > a2)
  {
    operations_research::BitQueue64::IncreaseSize(a2, *this, v6);
  }

  *this = a2;
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = (a2 + 63) >> 6;
  v6[0] = 0;
  v5 = (v3 - v2) >> 3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(this + 2) = v2 + 8 * v4;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(this + 8, v4 - v5, v6);
  }
}

void operations_research::sat::SatDecisionPolicy::BeforeConflict(operations_research::sat::SatDecisionPolicy *this, int a2)
{
  if (*(*this + 252) == 1)
  {
    ++*(this + 11);
    LODWORD(v12) = *(*(this + 1) + 12);
    *(&v12 + 1) = 1;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 96, &v12);
  }

  if (*(this + 71) < a2)
  {
    *(this + 71) = a2;
    v4 = *(this + 37);
    LOBYTE(v12) = 0;
    std::vector<BOOL>::assign(this + 288, v4, &v12);
    if (a2 >= 1)
    {
      v5 = *(*(this + 1) + 48);
      v6 = *(this + 36);
      v7 = *(this + 39);
      v8 = a2;
      do
      {
        while (1)
        {
          v9 = *v5++;
          v10 = (v9 >> 1) >> 6;
          v11 = 1 << (v9 >> 1);
          *(v6 + 8 * v10) |= v11;
          if (v9)
          {
            break;
          }

          *(v7 + 8 * v10) |= v11;
          if (!--v8)
          {
            goto LABEL_9;
          }
        }

        *(v7 + 8 * v10) &= ~v11;
        --v8;
      }

      while (v8);
    }
  }

LABEL_9:
  if (a2 > ((*(this + 49) - *(this + 48)) >> 2))
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::Literal const*>,std::__wrap_iter<operations_research::sat::Literal const*>>(this + 384, *(*(this + 1) + 48), (*(*(this + 1) + 48) + 4 * a2), a2);
  }

  --*(this + 47);
  operations_research::sat::SatDecisionPolicy::RephaseIfNeeded(this);
}

void operations_research::sat::SatDecisionPolicy::RephaseIfNeeded(operations_research::sat::SatDecisionPolicy *this)
{
  if (*(*this + 740) < 1 || *(this + 47) > 0)
  {
    return;
  }

  if (dword_27E25D278 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SatDecisionPolicy::RephaseIfNeeded(void)::$_0::operator() const(void)::site, dword_27E25D278))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v68, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/sat_decision.cc", 98);
    v65 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v68, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, "End of polarity phase ", 0x16uLL);
    v69 = *(this + 46);
    v66 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v65, &v69);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, " target_length: ", 0x10uLL);
    LODWORD(v69) = *(this + 71);
    v67 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v66, &v69);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v67, " best_length: ", 0xEuLL);
    v69 = (*(this + 49) - *(this + 48)) >> 2;
    absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v67, &v69);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v68);
  }

  v2 = *(this + 46);
  *(this + 46) = v2 + 1;
  *(this + 47) = (v2 + 2) * *(*this + 740);
  *(this + 71) = 0;
  v3 = *(this + 37);
  v68[0] = 0;
  std::vector<BOOL>::assign(this + 288, v3, v68);
  v4 = *(this + 46);
  v5 = -v4 < 0;
  v6 = -v4 & 7;
  v7 = v4 & 7;
  if (!v5)
  {
    v7 = -v6;
  }

  if (v7 <= 3)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          return;
        }

        v8 = *(this + 48);
        v9 = *(this + 49);
        if (v8 != v9)
        {
          v10 = *(this + 42);
          v11 = *(this + 48);
          do
          {
            while (1)
            {
              v12 = (*v11 >> 1) >> 6;
              v13 = 1 << (*v11 >> 1);
              if ((*v11 & 1) == 0)
              {
                break;
              }

              *(v10 + 8 * v12) &= ~v13;
              if (++v11 == v9)
              {
                goto LABEL_39;
              }
            }

            *(v10 + 8 * v12) |= v13;
            ++v11;
          }

          while (v11 != v9);
        }

        goto LABEL_39;
      }

      v29 = *(this + 21) - *(this + 20);
      if ((v29 >> 3) < 1)
      {
        return;
      }

      v30 = 0;
      v31 = (v29 >> 3);
      while (1)
      {
        v35 = *(*this + 376);
        if (v35 == 2)
        {
          v36 = (*(*(this + 2) + 16))(**(this + 2));
          v37 = *(this + 42);
          v38 = v30 >> 6;
          v39 = 1 << v30;
          if (v36)
          {
            v40 = *(v37 + 8 * v38) | v39;
          }

          else
          {
            v40 = *(v37 + 8 * v38) & ~v39;
          }

          *(v37 + 8 * v38) = v40;
          goto LABEL_44;
        }

        if (v35 == 1)
        {
          v32 = *(this + 42);
          v33 = (v30 >> 3) & 0x1FFFFFFFFFFFFFF8;
          v34 = *(v32 + v33) & ~(1 << v30);
        }

        else
        {
          if (v35)
          {
            goto LABEL_44;
          }

          v32 = *(this + 42);
          v33 = (v30 >> 3) & 0x1FFFFFFFFFFFFFF8;
          v34 = *(v32 + v33) | (1 << v30);
        }

        *(v32 + v33) = v34;
LABEL_44:
        if (v31 == ++v30)
        {
          return;
        }
      }
    }

    if (v7 != 2)
    {
      v8 = *(this + 48);
      v19 = *(this + 49);
      if (v8 != v19)
      {
        v20 = *(this + 42);
        v21 = *(this + 48);
        do
        {
          while (1)
          {
            v22 = (*v21 >> 1) >> 6;
            v23 = 1 << (*v21 >> 1);
            if ((*v21 & 1) == 0)
            {
              break;
            }

            *(v20 + 8 * v22) &= ~v23;
            if (++v21 == v19)
            {
              goto LABEL_39;
            }
          }

          *(v20 + 8 * v22) |= v23;
          ++v21;
        }

        while (v21 != v19);
      }

      goto LABEL_39;
    }

    v47 = *(this + 21) - *(this + 20);
    if ((v47 >> 3) < 1)
    {
      return;
    }

    v48 = 0;
    v49 = (v47 >> 3);
    while (1)
    {
      v53 = *(*this + 376);
      if (v53)
      {
        if (v53 != 1)
        {
          if (v53 == 2)
          {
            v54 = (*(*(this + 2) + 16))(**(this + 2));
            v55 = *(this + 42);
            v56 = v48 >> 6;
            v57 = 1 << v48;
            if (v54)
            {
              v58 = *(v55 + 8 * v56) | v57;
            }

            else
            {
              v58 = *(v55 + 8 * v56) & ~v57;
            }

            *(v55 + 8 * v56) = v58;
          }

          goto LABEL_63;
        }

        v50 = *(this + 42);
        v51 = (v48 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v52 = *(v50 + v51) | (1 << v48);
      }

      else
      {
        v50 = *(this + 42);
        v51 = (v48 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v52 = *(v50 + v51) & ~(1 << v48);
      }

      *(v50 + v51) = v52;
LABEL_63:
      if (v49 == ++v48)
      {
        return;
      }
    }
  }

  if (v7 > 5)
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        return;
      }

      v8 = *(this + 48);
      v24 = *(this + 49);
      if (v8 != v24)
      {
        v25 = *(this + 42);
        v26 = *(this + 48);
        do
        {
          while (1)
          {
            v27 = (*v26 >> 1) >> 6;
            v28 = 1 << (*v26 >> 1);
            if ((*v26 & 1) == 0)
            {
              break;
            }

            *(v25 + 8 * v27) &= ~v28;
            if (++v26 == v24)
            {
              goto LABEL_39;
            }
          }

          *(v25 + 8 * v27) |= v28;
          ++v26;
        }

        while (v26 != v24);
      }

LABEL_39:
      *(this + 49) = v8;
      return;
    }

    if (*(this + 43) >= 1)
    {
      v59 = 0;
      v60 = *(this + 42);
      v61 = *(this + 43) & 0x7FFFFFFFLL;
      do
      {
        v62 = (v59 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v63 = *(v60 + v62);
        if (((1 << v59) & v63) != 0)
        {
          v64 = v63 & ~(1 << v59);
        }

        else
        {
          v64 = (1 << v59) | v63;
        }

        *(v60 + v62) = v64;
        ++v59;
      }

      while (v61 != v59);
    }
  }

  else
  {
    if (v7 != 4)
    {
      v8 = *(this + 48);
      v14 = *(this + 49);
      if (v8 != v14)
      {
        v15 = *(this + 42);
        v16 = *(this + 48);
        do
        {
          while (1)
          {
            v17 = (*v16 >> 1) >> 6;
            v18 = 1 << (*v16 >> 1);
            if ((*v16 & 1) == 0)
            {
              break;
            }

            *(v15 + 8 * v17) &= ~v18;
            if (++v16 == v14)
            {
              goto LABEL_39;
            }
          }

          *(v15 + 8 * v17) |= v18;
          ++v16;
        }

        while (v16 != v14);
      }

      goto LABEL_39;
    }

    if (*(this + 43) >= 1)
    {
      v41 = 0;
      v42 = *(this + 43) & 0x7FFFFFFFLL;
      do
      {
        while (1)
        {
          v43 = (*(*(this + 2) + 16))(**(this + 2));
          v44 = *(this + 42);
          v45 = v41 >> 6;
          v46 = 1 << v41;
          if (v43)
          {
            break;
          }

          *(v44 + 8 * v45) &= ~v46;
          if (v42 == ++v41)
          {
            return;
          }
        }

        *(v44 + 8 * v45) |= v46;
        ++v41;
      }

      while (v42 != v41);
    }
  }
}

void sub_23CCBD6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::SatDecisionPolicy::ResetDecisionHeuristic(operations_research::sat::SatDecisionPolicy *this)
{
  v2 = (this + 160);
  v3 = *(this + 21) - *(this + 20);
  *(this + 19) = 0x3FF0000000000000;
  v4 = (v3 >> 3);
  *__u = *(*this + 240);
  std::vector<double>::assign(this + 20, v4, __u);
  __u[0] = 0;
  std::vector<float>::assign(this + 23, v4, __u, v5);
  *(this + 27) = *(this + 26);
  *(this + 8) = 0;
  v6 = (*(this + 9) - *(this + 8)) >> 2;
  __u[0] = 0;
  std::vector<int>::assign((this + 64), v6, __u);
  *(this + 46) = 0;
  *(this + 47) = *(*this + 740);
  v7 = *(this + 21) - *v2;
  if ((v7 >> 3) >= 1)
  {
    v8 = 0;
    v9 = (v7 >> 3);
    do
    {
      v13 = *(*this + 376);
      if (v13 == 2)
      {
        v14 = (*(*(this + 2) + 16))(**(this + 2));
        v15 = *(this + 42);
        v16 = v8 >> 6;
        v17 = 1 << v8;
        if (v14)
        {
          v18 = *(v15 + 8 * v16) | v17;
        }

        else
        {
          v18 = *(v15 + 8 * v16) & ~v17;
        }

        *(v15 + 8 * v16) = v18;
        goto LABEL_5;
      }

      if (v13 == 1)
      {
        v10 = *(this + 42);
        v11 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v12 = *(v10 + v11) & ~(1 << v8);
      }

      else
      {
        if (v13)
        {
          goto LABEL_5;
        }

        v10 = *(this + 42);
        v11 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v12 = *(v10 + v11) | (1 << v8);
      }

      *(v10 + v11) = v12;
LABEL_5:
      ++v8;
    }

    while (v9 != v8);
  }

  LOBYTE(__u[0]) = 0;
  std::vector<BOOL>::assign(this + 288, v4, __u);
  LOBYTE(__u[0]) = 0;
  std::vector<BOOL>::assign(this + 232, v4, __u);
  *(this + 49) = *(this + 48);
  *(this + 11) = 0;
  *(this + 13) = *(this + 12);
  *(this + 24) = 0;
}

void *operations_research::sat::SatDecisionPolicy::InitializeVariableOrdering(std::vector<int> *this)
{
  p_end_cap = &this[2].__end_cap_;
  value = this[2].__end_cap_.__value_;
  v4 = this[7].__begin_ - this[6].__end_cap_.__value_;
  v5 = v4 >> 3;
  LODWORD(this[1].__end_) = 0;
  v6 = this[3].__begin_ - value;
  __u[0] = 0;
  std::vector<int>::assign((this + 64), v6, __u);
  p_end_cap[44].__value_ = p_end_cap[43].__value_;
  __u[0] = 0;
  if ((v4 >> 3) >= 1)
  {
    v7 = 0;
    do
    {
      if (((*(*(this->__end_ + 3) + (((2 * v7) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v7 & 0x1Fu))) & 3) == 0)
      {
        v8 = *&this[6].__end_cap_.__value_[2 * v7];
        if (v8 <= 0.0)
        {
          std::vector<int>::push_back[abi:ne200100](&p_end_cap[43], __u);
        }

        else
        {
          v9 = v7;
          v10 = this[7].__end_cap_.__value_[v9];
          v11 = LODWORD(this[1].__end_) + 1;
          LODWORD(this[1].__end_) = v11;
          if (v11 >= 2)
          {
            while (1)
            {
              v14 = v11 >> 1;
              v15 = this[1].__end_cap_.__value_;
              v16 = &v15[4 * (v11 >> 1)];
              v17 = *v16;
              v18 = *(v16 + 1);
              v19 = v16[1];
              if (v19 >= v8 && (v19 != v8 || *&v18 >= *&v10))
              {
                break;
              }

              v12 = &v15[4 * v11];
              *v12 = v17 | (v18 << 32);
              *(v12 + 1) = v19;
              p_end_cap->__value_[v17] = v11;
              v13 = v11 > 3;
              v11 >>= 1;
              if (!v13)
              {
                goto LABEL_17;
              }
            }
          }

          v14 = v11;
LABEL_17:
          v21 = v7 | (v10 << 32);
          v22 = &this[1].__end_cap_.__value_[4 * v14];
          *v22 = v21;
          *(v22 + 1) = v8;
          this[2].__end_cap_.__value_[v9] = v14;
        }
      }

      v7 = __u[0] + 1;
      __u[0] = v7;
    }

    while (v7 < v5);
  }

  v23 = this->__begin_[48];
  if (v23 == 1)
  {
    begin = this[17].__begin_;
    end = this[17].__end_;
    if (begin != end)
    {
      v38 = end - 1;
      if (v38 > begin)
      {
        v39 = begin + 1;
        do
        {
          v40 = *(v39 - 1);
          *(v39 - 1) = *v38;
          *v38-- = v40;
        }

        while (v39++ < v38);
      }
    }
  }

  else if (v23 == 2)
  {
    v25 = this[17].__begin_;
    v24 = this[17].__end_;
    v26 = v24 - v25;
    if (v26 >= 2)
    {
      v27 = v24 - 1;
      if (v24 - 1 > v25)
      {
        v28 = this->__end_cap_.__value_;
        do
        {
          if (v26 != 1)
          {
            if (v26)
            {
              v29 = __clz(v26);
              v30 = 63;
              if (((v26 << v29) & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v30 = 64;
              }

              v31 = v30 - v29;
              v32 = v31 >> 6;
              if ((v31 & 0x3F) != 0)
              {
                ++v32;
              }

              if (v32 <= v31)
              {
                v33 = 0xFFFFFFFFFFFFFFFFLL >> -(v31 / v32);
              }

              else
              {
                v33 = 0;
              }

              do
              {
                v34 = (*(v28 + 2))(*v28) & v33;
              }

              while (v34 >= v26);
              if (!v34)
              {
                goto LABEL_23;
              }

LABEL_37:
              v35 = *v25;
              *v25 = v25[v34];
              v25[v34] = v35;
              goto LABEL_23;
            }

            v34 = (*(v28 + 2))(*v28);
            if (v34)
            {
              goto LABEL_37;
            }
          }

LABEL_23:
          ++v25;
          --v26;
        }

        while (v25 < v27);
      }
    }
  }

  v42 = this[17].__begin_;
  v43 = this[17].__end_;
  while (v42 != v43)
  {
    v47 = *v42;
    v48 = v47;
    v49 = this[7].__end_cap_.__value_[v48];
    v50 = LODWORD(this[1].__end_) + 1;
    LODWORD(this[1].__end_) = v50;
    if (v50 >= 2)
    {
      while (1)
      {
        v44 = v50 >> 1;
        v52 = this[1].__end_cap_.__value_;
        v53 = &v52[4 * (v50 >> 1)];
        v54 = *v53;
        v55 = *(v53 + 1);
        v56 = v53[1];
        if (v56 >= 0.0 && (v56 != 0.0 || *&v55 >= *&v49))
        {
          break;
        }

        v51 = &v52[4 * v50];
        *v51 = v54 | (v55 << 32);
        *(v51 + 1) = v56;
        p_end_cap->__value_[v54] = v50;
        v13 = v50 > 3;
        v50 >>= 1;
        if (!v13)
        {
          goto LABEL_45;
        }
      }
    }

    v44 = v50;
LABEL_45:
    v45 = v47 | (v49 << 32);
    v46 = &this[1].__end_cap_.__value_[4 * v44];
    *v46 = v45;
    *(v46 + 1) = 0;
    this[2].__end_cap_.__value_[v48] = v44;
    ++v42;
  }

  LODWORD(this[5].__begin_) = v5;
  HIDWORD(this[5].__begin_) = -1;
  *__u = 0;
  std::vector<long long>::assign(&this[5].__end_, ((v4 >> 3) + 63) >> 6, __u);
  v58 = this->__end_[3];
  begin_high = v58 - 1;
  if (SHIDWORD(this[5].__begin_) > v58 - 1)
  {
    begin_high = HIDWORD(this[5].__begin_);
  }

  HIDWORD(this[5].__begin_) = begin_high;
  result = this[5].__end_;
  result[v58 >> 6] |= ~(-1 << v58);
  if (v58 >> 6 >= 1)
  {
    result = memset(result, 255, 8 * (v58 >> 6));
  }

  LOBYTE(this[1].__begin_) = 1;
  return result;
}

uint64_t operations_research::sat::SatDecisionPolicy::SetAssignmentPreference(uint64_t result, int a2, float a3)
{
  if (*(*result + 548) == 1)
  {
    v3 = (a2 >> 1);
    v4 = v3 << 32;
    v5 = (a2 >> 1) >> 6;
    v6 = 1 << v3;
    *(*(result + 232) + 8 * v5) |= 1 << v3;
    v7 = *(result + 256);
    if (a2)
    {
      v8 = *(v7 + 8 * v5) & ~v6;
    }

    else
    {
      v8 = *(v7 + 8 * v5) | v6;
    }

    *(v7 + 8 * v5) = v8;
    *(*(result + 184) + (v4 >> 30)) = a3;
    *(result + 24) = 0;
  }

  return result;
}

void operations_research::sat::SatDecisionPolicy::BumpVariableActivities(double *a1, int *a2, uint64_t a3)
{
  if (*(*a1 + 252) != 1)
  {
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      return;
    }

    v9 = *(*a1 + 392);
    v10 = &a2[a3];
    v11 = *(*(a1 + 1) + 96);
    v12 = 1.0 / v9;
    while (1)
    {
      v13 = 8 * (*a2 >> 1);
      if ((*(v11 + v13) & 0xFFFFFFF) == 0)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 20);
      v15 = a1[19] + v14->f64[*a2 >> 1];
      v14->f64[*a2 >> 1] = v15;
      v16 = *(v11 + v13 + 4);
      v17 = *(a1 + 31);
      if (v17 <= v16)
      {
        v17 = v16;
      }

      *(a1 + 31) = v17;
      *(*(a1 + 16) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (v15 <= v9)
      {
        goto LABEL_8;
      }

      a1[19] = v12 * a1[19];
      v18 = *(a1 + 21) - v14;
      if ((v18 >> 3) >= 1)
      {
        v19 = (v18 >> 3) & 0x7FFFFFFF;
        if (v19 >= 4)
        {
          v21 = (v18 >> 3) & 3;
          v20 = v19 - v21;
          v22 = v14 + 1;
          v23 = v19 - v21;
          do
          {
            v24 = vmulq_n_f64(*v22, v12);
            v22[-1] = vmulq_n_f64(v22[-1], v12);
            *v22 = v24;
            v22 += 2;
            v23 -= 4;
          }

          while (v23);
          if (!v21)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v20 = 0;
        }

        v25 = v20 - v19;
        v26 = &v14->f64[v20];
        do
        {
          *v26 = v12 * *v26;
          ++v26;
        }

        while (!__CFADD__(v25++, 1));
      }

LABEL_7:
      *(a1 + 24) = 0;
LABEL_8:
      if (++a2 == v10)
      {
        return;
      }
    }
  }

  v3 = *(a1 + 26);
  v4 = (a1 + 26);
  v5 = (*(a1 + 27) - v3) >> 3;
  v6 = *(a1 + 21) - *(a1 + 20);
  if (v6 >> 3 != v5)
  {
    v31 = 0;
    if (v6 >> 3 <= v5)
    {
      if (v6 >> 3 < v5)
      {
        *(a1 + 27) = v3 + v6;
      }
    }

    else
    {
      v7 = a3;
      v8 = a2;
      std::vector<unsigned long long>::__append((a1 + 26), (v6 >> 3) - v5, &v31);
      a3 = v7;
      a2 = v8;
    }
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = *v4;
    v29 = 4 * a3;
    do
    {
      v30 = *a2++;
      ++*(v28 + 8 * (v30 >> 1));
      v29 -= 4;
    }

    while (v29);
  }
}