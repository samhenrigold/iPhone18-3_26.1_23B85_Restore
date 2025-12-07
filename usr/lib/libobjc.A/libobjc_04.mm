unint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v9 = result;
    while (v7 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*a2 >= *v9)
      {
        v9 += 3;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v7)
      {
        if (a4 == 1)
        {
          v71 = *v9;
          if (v9[2])
          {
            v63 = v9[2];
          }

          else
          {
            v63 = 0;
          }

          *v9 = *a2;
          v9[2] = a2[2];
          *a2 = v71;
          if (v63)
          {
            v68 = v63;
          }

          else
          {
            v68 = 0;
          }

          a2[2] = v68;
          return result;
        }

        v20 = a4 / 2;
        v13 = &v9[3 * (a4 / 2)];
        if (a3 == a2)
        {
          v26 = a3;
          v27 = a3;
          v11 = a2;
        }

        else
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * (a3 - a2);
          v11 = a2;
          do
          {
            v22 = v21 >> 1;
            v23 = &v11[3 * (v21 >> 1)];
            v25 = *v23;
            v24 = v23 + 3;
            v21 += ~(v21 >> 1);
            if (v25 < *v13)
            {
              v11 = v24;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
          v26 = v11;
          v27 = a2;
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * (v26 - v27);
      }

      else
      {
        v10 = v7 / 2;
        v11 = &a2[3 * (v7 / 2)];
        if (a2 == v9)
        {
          v18 = a2;
          v19 = a2;
          v13 = v9;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
          v13 = v9;
          do
          {
            v14 = v12 >> 1;
            v15 = &v13[3 * (v12 >> 1)];
            v17 = *v15;
            v16 = v15 + 3;
            v12 += ~(v12 >> 1);
            if (*v11 < v17)
            {
              v12 = v14;
            }

            else
            {
              v13 = v16;
            }
          }

          while (v12);
          v18 = v13;
          v19 = v9;
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * (v18 - v19);
      }

      v28 = v11;
      if (v13 != a2)
      {
        v28 = v13;
        if (a2 != v11)
        {
          v28 = v13 + 3;
          v29 = v13 + 2;
          v30 = a2 + 2;
          v31 = a2;
          while (1)
          {
            v69 = *(v28 - 3);
            v32 = *(v28 - 1) ? *(v28 - 1) : 0;
            *(v28 - 3) = *a2;
            *(v28 - 1) = a2[2];
            *a2 = v69;
            v33 = v32 ? v32 : 0;
            a2[2] = v33;
            a2 += 3;
            if (a2 == v11)
            {
              break;
            }

            if (v28 == v31)
            {
              v31 = a2;
            }

            v28 += 3;
            v29 += 3;
            v30 += 3;
          }

          if (v28 != v31)
          {
            v34 = v28;
            v35 = v31;
            while (1)
            {
              v36 = v34 + 2;
              while (1)
              {
                v70 = *v34;
                v37 = v34[2] ? v34[2] : 0;
                *v34 = *v31;
                v34[2] = v31[2];
                *v31 = v70;
                v38 = v37 ? v37 : 0;
                v31[2] = v38;
                v34 += 3;
                v31 += 3;
                if (v31 != v11)
                {
                  break;
                }

                v36 += 3;
                v31 = v35;
                if (v34 == v35)
                {
                  goto LABEL_57;
                }
              }

              if (v34 == v35)
              {
                v35 = v31;
              }
            }
          }
        }
      }

LABEL_57:
      a4 -= v20;
      v7 -= v10;
      if ((v20 + v10) >= a4 + v7)
      {
        v43 = v20;
        v44 = a4;
        v45 = v10;
        v41 = a6;
        v42 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v28, v11, a3, v44, v7, a6, a7);
        v11 = v13;
        v7 = v45;
        a4 = v43;
        a3 = v28;
      }

      else
      {
        v39 = v13;
        v40 = a3;
        v41 = a6;
        v42 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v9, v39, v28, v20, v10, a6, a7);
        a3 = v40;
        v9 = v28;
      }

      a2 = v11;
      a6 = v41;
      a7 = v42;
      if (!v7)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (v9 != a2)
      {
        v56 = a6 + 16;
        v57 = v9 + 2;
        v58 = a6;
        v59 = v9;
        do
        {
          v60 = v58;
          *v58 = *v59;
          v61 = v59[2];
          v59 += 3;
          *(v58 + 16) = v61;
          v58 += 24;
          v56 += 24;
          v57 += 3;
        }

        while (v59 != a2);
        v62 = v9 + 2;
        while (a2 != a3)
        {
          if (*a2 >= *a6)
          {
            *v9 = *a6;
            v9[2] = *(a6 + 16);
            a6 += 24;
          }

          else
          {
            *v9 = *a2;
            v9[2] = a2[2];
            a2 += 3;
          }

          v9 += 3;
          v62 += 3;
          if (a6 == v58)
          {
            return result;
          }
        }

        v66 = 0;
        do
        {
          v67 = a6 + v66 * 8;
          *&v9[v66] = *(a6 + v66 * 8);
          v9[v66 + 2] = *(a6 + v66 * 8 + 16);
          v62 += 3;
          v66 += 3;
        }

        while (v67 != v60);
      }
    }

    else if (a2 != a3)
    {
      v46 = a6 + 16;
      v47 = a2 + 2;
      v48 = a6;
      v49 = a2;
      do
      {
        *v48 = *v49;
        v50 = v49[2];
        v49 += 3;
        *(v48 + 16) = v50;
        v48 += 24;
        v46 += 24;
        v47 += 3;
      }

      while (v49 != a3);
      v51 = a3 - 1;
      v52 = a3 - 1;
      while (a2 != v9)
      {
        v53 = a2 - 3;
        v54 = v51 - 2;
        if (*(v48 - 24) >= *(a2 - 3))
        {
          *v54 = *(v48 - 24);
          v55 = *(v48 - 8);
          v53 = a2;
          v48 -= 24;
        }

        else
        {
          *v54 = *v53;
          v55 = *(a2 - 1);
        }

        *v51 = v55;
        v51 -= 3;
        v52 -= 3;
        a2 = v53;
        if (v48 == a6)
        {
          return result;
        }
      }

      if (v48 != a6)
      {
        v64 = v48 - 8;
        do
        {
          *(v51 - 1) = *(v48 - 24);
          v65 = *(v48 - 8);
          v48 -= 24;
          *v51 = v65;
          v51 -= 3;
          v64 -= 24;
          v52 -= 3;
        }

        while (v48 != a6);
      }
    }
  }

  return result;
}

void *objc::Scanner::setNSObjectSwizzled(void *result, uint64_t a2, char a3)
{
  objc::NSObjectSwizzledMask |= (a2 << a3);
  v3 = *(result[4] & 0xF00007FFFFFFFF8);
  if ((v3 & 1) == 0)
  {
    v3 = *(*((*result & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v3 & 0x20000000) != 0)
  {
    return objc::Scanner::propagateCustomFlags(result, a2, 0);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c83_ZTSKZN4objc7Scanner20propagateCustomFlagsEP10objc_classjNS0_11inherited_tEEUlS2_E_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 39) = *(a2 + 39);
  *(result + 32) = v2;
  return result;
}

void objc::Scanner::printCustom(const char *a1, objc_class *this, int a3)
{
  v6 = objc_class::nameForLogging(this);
  if ((*(this + 15) & 4) != 0)
  {
    v7 = " (meta)";
  }

  else
  {
    v7 = "";
  }

  v8 = " (inherited)";
  if (a3 != 1)
  {
    v8 = "";
  }

  _objc_inform("%s: %s%s%s", a1, v6, v7, v8);
}

__n128 __copy_helper_block_e8_32c67_ZTSKZL25_method_setImplementationP10objc_classP8method_tPFvvEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

_DWORD *method_list_t::duplicate(method_list_t *this, uint64_t a2, const char *a3, char *a4)
{
  v5 = *this;
  v50 = v5 & 0xFFFC;
  v6 = v5 >> 31;
  if (this < 0)
  {
    v6 = 2;
  }

  v51 = v6 | (this + 8) & 0xFFFFFFFFFFFFFFFCLL;
  entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(&v48, this, a3, a4);
  if (*this > -1 || this < 0)
  {
    v10 = *this & 0xFFFF0003;
  }

  else
  {
    v10 = 0;
  }

  MethodList = method_list_t::allocateMethodList(*(this + 1), v10, v7, v8);
  if (v51)
  {
    v12 = v51;
  }

  else
  {
    v12 = 0;
  }

  if (v49)
  {
    v13 = v49;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MethodList;
  v54 = v50;
  v55 = v12;
  v52 = v48;
  v53 = v13;
  v58 = v50;
  v59 = v12;
  v56 = v48;
  v15 = v14 >> 31;
  if (MethodList < 0)
  {
    v15 = 2;
  }

  v57 = v13;
  v63 = v50;
  v64 = v12;
  v61 = v48;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v62 = v16;
  v68[3] = v50;
  v17 = v69;
  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v69[0] = v18;
  v68[1] = v48;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v68[2] = v19;
  if (!v18)
  {
    v18 = 0;
  }

  v60 = v18;
  if (!v19)
  {
    v19 = 0;
  }

  v72 = v19;
  v65 = v50;
  v20 = (MethodList + 2) & 0xFFFFFFFFFFFFFFFCLL;
  v66 = v18;
  v67 = v48;
  v21 = v68;
  v47 = MethodList;
  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = v15 | v20;
  v68[0] = v22;
  v71 = v50;
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = 0;
  }

  v72 = v24;
  v69[1] = v48;
  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  v70 = v25;
  v26 = v14 & 0xFFFC;
  v27 = dataSegmentsRanges;
  v28 = *algn_1ED3F62F8;
  v29 = v15 | v20;
  if (!v24)
  {
    goto LABEL_41;
  }

LABEL_40:
  for (i = v24; i != v70; i = 0)
  {
    v31 = v24;
    if ((v23 & 3) <= 1)
    {
      if ((v23 & 3) != 0)
      {
        _objc_fatal("Cannot assign to small method %p from method %p", v20, v21, v17, v29, v24);
      }

      v36 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      v37 = method_t::imp(v24, 0);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 16) = v38;
      if ((v31 & 3u) > 1)
      {
        if ((v31 & 3) == 2)
        {
          v38 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }

      else if ((v31 & 3) != 0)
      {
        v41 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v42 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27 > (v31 & 0xFFFFFFFFFFFFFFFCLL) || v28 <= v41)
        {
          v38 = *(v41 + v42);
        }

        else
        {
          v38 = &byte_1FA920D78[v42];
        }
      }

      else
      {
        v38 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *v36 = v38;
      v36[1] = method_t::types(v31);
    }

    else if ((v23 & 3) == 2)
    {
      v32 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      v33 = method_t::imp(v24, 0);
      if (v33)
      {
        v35 = v33;
        v34 = v33;
      }

      else
      {
        v35 = 0;
      }

      *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 16) = v35;
      if ((v31 & 3u) > 1)
      {
        if ((v31 & 3) == 2)
        {
          if (*(v31 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v34 = 0;
          }
        }
      }

      else if ((v31 & 3) != 0)
      {
        v39 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v40 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27 > (v31 & 0xFFFFFFFFFFFFFFFCLL) || v28 <= v39)
        {
          v34 = *(v39 + v40);
        }

        else
        {
          v34 = &byte_1FA920D78[v40];
        }
      }

      else
      {
        v34 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
      }

      *v32 = v34;
      v43 = v32 + 1;
      v44 = method_t::types(v31);
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      *v43 = v45;
    }

    if (v72)
    {
      v24 = v72 + v71;
    }

    else
    {
      v24 = 0;
    }

    v72 = v24;
    ++HIDWORD(v71);
    v29 += v26;
    v23 += v26;
    if (v24)
    {
      goto LABEL_40;
    }

LABEL_41:
    ;
  }

  return v47;
}

BOOL ___ZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a2 + 32) & 0xF00007FFFFFFFF8);
  if ((v4 & 4) == 0)
  {
    if (PrintCaches)
    {
      if ((*(v3 + 15) & 4) != 0)
      {
        v7 = "meta";
      }

      else
      {
        v7 = "";
      }

      v8 = objc_class::nameForLogging(v3);
      _objc_inform("CACHES: %sclass %s: disallow sel-inlined preopt cache (from %s)", v7, v8, *(a1 + 40));
    }

    atomic_fetch_or_explicit((*(a2 + 32) & 0xF00007FFFFFFFF8), 4u, memory_order_relaxed);
    if ((*(a2 + 16) & 1) != 0 && (*((*(a2 + 16) & 0x7FFFFFFFFFFFFELL) - 6) & 0x4000) != 0)
    {
      cache_t::eraseNolock(a2 + 16, *(a1 + 40));
    }
  }

  return (v4 & 4) == 0;
}

__n128 __copy_helper_block_e8_32c69_ZTSKZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_e8_32c64_ZTSKZN10objc_class34setDisallowPreoptCachesRecursivelyEPKcE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_e8_32c64_ZTSKZN10objc_class36setInstancesRequireRawIsaRecursivelyEbE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t objc_loadClassref(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = (*((result & 0xFFFFFFFFFFFFFFFELL) + 8))(result & 0xFFFFFFFFFFFFFFFELL, 0);
    *a1 = result;
  }

  return result;
}

_DWORD *futureNamedClasses(void)
{
  result = future_named_class_map;
  if (!future_named_class_map)
  {
    v1[0] = _mapStrHash;
    v1[1] = _mapStrIsEqual;
    v1[2] = _mapNoFree;
    v2 = 0;
    result = NXCreateMapTable(v1, 0x20u);
    future_named_class_map = result;
  }

  return result;
}

void *_class_isFutureClass(void *result)
{
  if (result)
  {
    if ((*result - 1) >= 0xF)
    {
      return ((*((result[4] & 0xF00007FFFFFFFF8) + 3) >> 6) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _class_isSwift(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 1) & 1;
  }

  return result;
}

void _objc_flush_caches(Class cls)
{
  v3 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___objc_flush_caches_block_invoke;
  v13[3] = &__block_descriptor_33_e8_32c31_ZTSKZ18_objc_flush_cachesE3__0_e8_B16__0_8l;
  flushCaches(cls, "_objc_flush_caches", v13, v1);
  if (cls)
  {
    if ((*(cls + 15) & 4) == 0 && *(cls + 1))
    {
      v6 = *cls;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3321888768;
      v12[2] = ___objc_flush_caches_block_invoke_6;
      v12[3] = &__block_descriptor_33_e8_32c31_ZTSKZ18_objc_flush_cachesE3__1_e8_B16__0_8l;
      flushCaches(v6 & 0xFFFFFFFF8, "_objc_flush_caches", v12, v5);
    }
  }

  else
  {
    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    v9 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    cache_t::collectNolock(1);
  }

  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800CBF94(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

BOOL ___objc_flush_caches_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  return v2 == &_objc_empty_cache || HIWORD(*(a2 + 16)) != 0;
}

BOOL ___objc_flush_caches_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  return v2 == &_objc_empty_cache || HIWORD(*(a2 + 16)) != 0;
}

void _objc_map_images(unsigned int a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *a3;
      v10 = *a2;
      if (v6 >= v7)
      {
        v11 = v6 - v5;
        v12 = (v6 - v5) >> 5;
        v13 = v12 + 1;
        if ((v12 + 1) >> 59)
        {
          std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
        }

        if ((v7 - v5) >> 4 > v13)
        {
          v13 = (v7 - v5) >> 4;
        }

        if ((v7 - v5) >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 >> 59)
          {
            std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
          }

          v15 = malloc_type_malloc(32 * v14, 0x201A97EDuLL);
        }

        else
        {
          v15 = 0;
        }

        v16 = &v15[32 * v12];
        *v16 = v9;
        *(v16 + 1) = v10;
        v7 = &v15[32 * v14];
        v6 = v16 + 32;
        *(v16 + 2) = 0;
        *(v16 + 3) = 0;
        memcpy(v15, v5, v11);
        if (v5)
        {
          free(v5);
        }

        v5 = v15;
      }

      else
      {
        *v6 = v9;
        *(v6 + 1) = v10;
        *(v6 + 2) = 0;
        *(v6 + 3) = 0;
        v6 += 32;
      }

      ++a2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  map_images(a1, v5, &__block_literal_global);
  if (v5)
  {

    free(v5);
  }
}

void sub_1800CC1B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _objc_load_image(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = a1;
  v3[2] = 0;
  v3[3] = 0;
  return load_images(v3);
}

uint64_t unmap_image(uint64_t a1, char *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v3 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  if (PrintImages)
  {
    _objc_inform("IMAGES: processing 1 newly-unmapped image...\n");
  }

  v5 = FirstHeader;
  if (!FirstHeader)
  {
    goto LABEL_127;
  }

  while (v5 + *v5 != a2)
  {
    PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
    v7 = (v5 + 24);
    if (PreoptimizedHeaderRW)
    {
      v7 = PreoptimizedHeaderRW;
    }

    v5 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      goto LABEL_127;
    }
  }

  if (PrintImages)
  {
    v8 = dyld_image_path_containing_address();
    if (*(v5 + *v5 + 12) == 8)
    {
      v9 = " (bundle)";
    }

    else
    {
      v9 = "";
    }

    _objc_inform("IMAGES: unloading image for %s%s\n", v8, v9);
  }

  v81 = 0;
  v10 = header_info::catlist(v5, &v81);
  v77 = StatusReg;
  v11 = v81;
  if (v81)
  {
    v12 = v10;
    v13 = 0;
    while (1)
    {
      v14 = *(v12 + 8 * v13);
      v15 = remapClass(*(v14 + 8));
      if (v15)
      {
        break;
      }

LABEL_47:
      if (++v13 == v11)
      {
        goto LABEL_48;
      }
    }

    v16 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::find(-v15);
    v17 = v16;
    if (objc::unattachedCategories + 24 * dword_1ED3F6388 == v16)
    {
LABEL_39:
      if (loadable_categories && loadable_categories_used >= 1)
      {
        v24 = 0;
        v25 = loadable_categories;
        while (*v25 != v14)
        {
          ++v24;
          v25 += 2;
          if (loadable_categories_used == v24)
          {
            goto LABEL_47;
          }
        }

        *(loadable_categories + 16 * v24) = 0;
        if (PrintLoading)
        {
          v26 = remapClass(*(v14 + 8));
          v27 = objc_class::nameForLogging(v26);
          _objc_inform("LOAD: category '%s(%s)' unscheduled for +load", v27, *v14);
        }
      }

      goto LABEL_47;
    }

    v18 = *(v16 + 16);
    if (v18)
    {
      if (v18 >= 2)
      {
        v20 = 0;
        v21 = v18 >> 1;
        if (v18 >> 1 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v23 = *(v16 + 8);
        while (v14 != *v23)
        {
          ++v20;
          v23 += 2;
          if (v22 == v20)
          {
            goto LABEL_32;
          }
        }

        memmove((*(v16 + 8) + 16 * v20), (*(v16 + 8) + 16 * v20 + 16), 16 * (v21 + ~v20));
        v18 = *(v17 + 16) & 0xFFFFFFFF00000001 | (2 * (((*(v17 + 16) - 2) >> 1) & 0x7FFFFFFF));
        *(v17 + 16) = v18;
      }
    }

    else if (v14 == *(v16 + 8))
    {
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      v19 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v19 = (v18 & 1) == 0;
    if (v18)
    {
      if (v18 >> 1)
      {
        goto LABEL_39;
      }

LABEL_36:
      if (!v19)
      {
        free(*(v17 + 8));
      }

      *v17 = 2;
      *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0x1FFFFFFFFLL);
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact();
      goto LABEL_39;
    }

LABEL_33:
    if (*(v17 + 8))
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_48:
  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
  v28 = header_info::classlist(v5, &v81);
  v29 = v81;
  if (v81)
  {
    v30 = v28;
    do
    {
      v31 = remapClass(*v30);
      if (v31)
      {
        v78 = -v31;
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v82, v79, &v78);
      }

      ++v30;
      --v29;
    }

    while (v29);
  }

  v32 = header_info::nlclslist(v5, &v81);
  v33 = v81;
  if (v81)
  {
    v34 = v32;
    do
    {
      v35 = remapClass(*v34);
      if (v35)
      {
        v78 = -v35;
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v82, v79, &v78);
      }

      ++v34;
      --v33;
    }

    while (v33);
  }

  v36 = objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(v79);
  v37 = v36;
  v39 = v38;
  v40 = v79[0];
  if (v79[0])
  {
    v41 = v79[0];
  }

  else
  {
    v41 = 0;
  }

  v42 = (*&v41 + 8 * v80);
  if (v42 != v36)
  {
    do
    {
      v43 = -*v37;
      if (loadable_classes && loadable_classes_used >= 1)
      {
        v44 = 0;
        v45 = loadable_classes;
        while (*v45 != v43)
        {
          ++v44;
          v45 += 2;
          if (loadable_classes_used == v44)
          {
            goto LABEL_70;
          }
        }

        *(loadable_classes + 16 * v44) = 0;
        if (PrintLoading)
        {
          v46 = objc_class::nameForLogging(v43);
          _objc_inform("LOAD: class '%s' unscheduled for +load", v46);
        }
      }

LABEL_70:
      detach_class((*v43 & 0xFFFFFFFF8), 1);
      detach_class(v43, 0);
      do
      {
        ++v37;
      }

      while (v37 != v39 && (*v37 - 1) <= 1);
    }

    while (v37 != v42);
    v40 = v79[0];
  }

  v47 = objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(v79);
  v48 = v47;
  v50 = v49;
  if (v40)
  {
    v51 = v40;
  }

  else
  {
    v51 = 0;
  }

  v52 = (*&v51 + 8 * v80);
  if (v52 != v47)
  {
    do
    {
      v53 = -*v48;
      free_class((*v53 & 0xFFFFFFFF8));
      free_class(v53);
      do
      {
        ++v48;
      }

      while (v48 != v50 && (*v48 - 1) <= 1);
    }

    while (v48 != v52);
    v40 = v79[0];
  }

  if (v40)
  {
    v54 = v40;
  }

  else
  {
    v54 = 0;
  }

  free(v54);
  v55 = FirstHeader;
  if (FirstHeader)
  {
    if (FirstHeader != v5)
    {
      v56 = FirstHeader;
      while (1)
      {
        v57 = getPreoptimizedHeaderRW(v56);
        v58 = (v56 + 24);
        if (v57)
        {
          v58 = v57;
        }

        v59 = *v58;
        v55 = v59 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v59 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_108;
        }

        v60 = v56;
        v56 = v59 & 0xFFFFFFFFFFFFFFFCLL;
        if (v5 == v55)
        {
          goto LABEL_96;
        }
      }
    }

    v60 = 0;
LABEL_96:
    v61 = getPreoptimizedHeaderRW(v55);
    v62 = (v55 + 24);
    if (v61)
    {
      v62 = v61;
    }

    v63 = *v62 & 0xFFFFFFFFFFFFFFFCLL;
    if (v60)
    {
      v64 = getPreoptimizedHeaderRW(v60);
      v65 = (v60 + 24);
      if (v64)
      {
        v65 = v64;
      }

      *v65 = *v65 & 3 | v63;
      if (LastHeaderRealizedAllClasses != v5)
      {
        goto LABEL_106;
      }
    }

    else
    {
      FirstHeader = *v62 & 0xFFFFFFFFFFFFFFFCLL;
      if (LastHeaderRealizedAllClasses != v5)
      {
        goto LABEL_106;
      }

      v60 = 0;
    }

    LastHeaderRealizedAllClasses = v60;
LABEL_106:
    if (LastHeader == v5)
    {
      LastHeader = 0;
    }
  }

LABEL_108:
  v66 = v5 + *v5;
  if (dataSegmentsRanges > v66 || *algn_1ED3F62F8 <= v66)
  {
    v82[0] = &unk_1EEE9B548;
    v83 = v82;
    v68 = *(v66 + 16);
    if (v68)
    {
      v69 = v66 + 32;
      v70 = *(v66 + 16);
      v71 = v66 + 32;
      while (*v71 != 25 || strncmp((v71 + 8), "__TEXT", 0x10uLL))
      {
        v71 += *(v71 + 4);
        if (!--v70)
        {
          v72 = 0;
          goto LABEL_119;
        }
      }

      v72 = v66 - *(v71 + 24);
LABEL_119:
      for (i = 0; i < v68; ++i)
      {
        if (*v69 == 25 && (!strncmp((v69 + 8), "__DATA", 6uLL) || !strncmp((v69 + 8), "__AUTH", 6uLL)))
        {
          (std::function<void ()(segment_command_64 const*,long)>::operator())(v83, v69, v72);
          v68 = *(v66 + 16);
        }

        v69 += *(v69 + 4);
      }
    }

    std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](v82);
  }

  free(v5);
  StatusReg = v77;
LABEL_127:
  v74 = *(StatusReg + 24);
  v75 = v74;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v75, 0, memory_order_release, memory_order_relaxed);
  if (v75 != v74)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return os_unfair_recursive_lock_unlock();
}

void sub_1800CCA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    v15 = a14;
  }

  else
  {
    v15 = 0;
  }

  free(v15);
  v16 = *(a12 + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void realizeAllClasses(void)
{
  v0 = FirstHeader;
  v1 = LastHeaderRealizedAllClasses;
  if (LastHeaderRealizedAllClasses)
  {
    v2 = FirstHeader == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && FirstHeader != LastHeaderRealizedAllClasses)
  {
    do
    {
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v0);
      v5 = (v0 + 24);
      if (PreoptimizedHeaderRW)
      {
        v5 = PreoptimizedHeaderRW;
      }

      v0 = (*v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v0)
      {
        v6 = v1 == v0;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  if (v0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    do
    {
      v22 = 0;
      v8 = header_info::classlist(v0, &v22);
      v9 = v22;
      if (v22)
      {
        v10 = v8;
        do
        {
          v11 = remapClass(*v10);
          if (v11)
          {
            realizeClassMaybeSwiftMaybeRelock(v11, 1);
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      v12 = _dyld_lookup_section_info();
      v14 = v13 >> 3;
      if (!v12)
      {
        v14 = 0;
      }

      v22 = v14;
      if (v14)
      {
        v15 = v12;
        v16 = 0;
        do
        {
          if (remapClass(*(v15 + 8 * v16)) == *(v15 + 8 * v16))
          {
            v17 = *(StatusReg + 24);
            v18 = v17;
            atomic_compare_exchange_strong_explicit(runtimeLock, &v18, 0, memory_order_release, memory_order_relaxed);
            if (v18 != v17)
            {
              os_unfair_lock_unlock(runtimeLock);
            }

            (*(*(v15 + 8 * v16) + 8))();
            v19 = 0;
            atomic_compare_exchange_strong_explicit(runtimeLock, &v19, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
            if (v19)
            {
              os_unfair_lock_lock_with_options();
            }
          }

          ++v16;
        }

        while (v16 < v22);
      }

      LastHeaderRealizedAllClasses = v0;
      v20 = getPreoptimizedHeaderRW(v0);
      v21 = (v0 + 24);
      if (v20)
      {
        v21 = v20;
      }

      v0 = (*v21 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v0);
  }
}

int *_read_images::$_2::operator()(uint64_t a1)
{
  v1 = class_data_bits_t::safe_ro<(Authentication)0>((a1 + 32));
  v7 = *(v1 + 32);
  result = (v1 + 32);
  v6 = v7;
  v8 = v7 & 1;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      ++_read_images::PreoptTotalMethodLists;
      if ((~*(v6 & 0xFFFFFFFFFFFFFFFELL) & 3) == 0)
      {
        ++_read_images::PreoptOptimizedMethodLists;
      }
    }
  }

  else if (v6)
  {
    v10 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v12 = *v10;
        v13 = v10[1];
        v21 = v13 * v12;
        if ((v21 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v2, v3, v4, v13, v10, *v10);
        }

        v11 = (v10 + v21 + 8);
        v22 = v13 == 0;
        if (v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = 0;
        }

        if (!v22)
        {
          v11 = (v11 - v12);
        }
      }

      else
      {
        v11 = (v10 + 2);
        v12 = *v10;
        v13 = v10[1];
      }

      v14 = v13 * v12;
      if ((v14 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v2, v3, v4, v13, v10, v12);
      }

      v15 = v10 + v14 + 8;
      v16 = objc_debug_headerInfoRWs + 8;
      while (v11 < v15 && (*(v16 + 8 * *v11) & 1) == 0)
      {
        v11 = (v11 + v12);
      }

      if (v11 != v15)
      {
        v17 = _read_images::PreoptTotalMethodLists;
        result = &OBJC_IVAR___Object_isa;
        do
        {
          v18 = *v11 >> 16;
          _read_images::PreoptTotalMethodLists = ++v17;
          if ((~*(v11 + v18) & 3) == 0)
          {
            ++_read_images::PreoptOptimizedMethodLists;
          }

          v19 = *v10;
          v20 = v19 * v13;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v19, v20, v4, v13, v10, *v10);
          }

          do
          {
            v11 = (v11 + v12);
          }

          while (v11 < (v10 + v20 + 8) && (*(v16 + 8 * *v11) & 1) == 0);
        }

        while (v11 != v15);
      }
    }
  }

  return result;
}

unint64_t entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  v5 = a2 * (v4 & 0xFFFC);
  if ((v5 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, a2, a1, v4 & 0xFFFC);
  }

  v6 = v4 >> 31;
  if (a1 < 0)
  {
    v6 = 2;
  }

  return (a1 + v5 + 8) & 0xFFFFFFFFFFFFFFFCLL | v6;
}

void *objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(uint64_t a1)
{
  v2 = *a1;
  if (!*(a1 + 8))
  {
    return &v2[*(a1 + 16)];
  }

  if (v2)
  {
    result = *a1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 16);
  v5 = &result[v4];
  if (v4)
  {
    v6 = 8 * v4;
    while ((*result - 1) <= 1)
    {
      ++result;
      v6 -= 8;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void detach_class(objc_class *a1, char a2)
{
  v4 = -a1;
  v15 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(-a1, &v15))
  {
    v5 = v15;
    if (v15[2])
    {
      free(v15[1]);
    }

    *v5 = 2;
    *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0x1FFFFFFFFLL);
    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact();
  }

  if ((*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 1);
    if (v6)
    {
      removeSubclass(v6, a1);
    }

    else
    {
      ++objc_debug_realized_class_generation_count;
      v7 = &_firstRealizedClass;
      v8 = _firstRealizedClass;
      if (_firstRealizedClass != a1)
      {
        do
        {
          v9 = *(v8 + 4);
          v8 = *((v9 & 0xF00007FFFFFFFF8) + 0x18);
        }

        while (v8 != a1);
        v7 = ((v9 & 0xF00007FFFFFFFF8) + 24);
      }

      *v7 = *((*(v8 + 4) & 0xF00007FFFFFFFF8) + 0x18);
    }
  }

  if ((a2 & 1) == 0)
  {
    v10 = objc_class::mangledName(a1);
    if (getClassFromNamedClassTable(v10) == a1)
    {
      v11 = gdb_objc_realized_classes;
      v12 = v10;
    }

    else
    {
      v11 = nonMetaClasses();
      v12 = *a1 & 0xFFFFFFFF8;
    }

    NXMapRemove(v11, v12);
  }

  v15 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(&objc::allocatedClasses, v4, &v15))
  {
    *v15 = 2;
    qword_1ED3F6158 = vadd_s32(qword_1ED3F6158, 0x1FFFFFFFFLL);
    if (qword_1ED3F6158)
    {
      if (qword_1ED3F6160 >= 0x401 && qword_1ED3F6160 >> 4 > qword_1ED3F6158)
      {
        v13 = 2 * qword_1ED3F6158;

        objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::grow(&objc::allocatedClasses, v13);
      }
    }

    else if (qword_1ED3F6160)
    {
      if (objc::allocatedClasses)
      {
        v14 = objc::allocatedClasses;
      }

      else
      {
        v14 = 0;
      }

      free(v14);
      objc::allocatedClasses = 0;
      qword_1ED3F6158 = 0;
      LODWORD(qword_1ED3F6160) = 0;
    }

    else
    {
      qword_1ED3F6158 = 0;
    }
  }
}

void free_class(objc_class *a1)
{
  if ((*a1 - 1) < 0xF)
  {
    return;
  }

  v1 = a1;
  if ((*(a1 + 4) & 0x8000000000000000) == 0)
  {
    return;
  }

  v2 = (*(a1 + 4) & 0xF00007FFFFFFFF8);
  v3 = *(v2 + 1);
  if (v3)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v4 = 0;
  }

  v5 = class_rw_t::ro(v2);
  if (!cache_t::isConstantEmptyCache((v1 + 16)))
  {
    v9 = *(v1 + 2);
    if ((v9 & 1) == 0 && (v9 == &_objc_empty_cache || HIWORD(*(v1 + 2))))
    {
      if (PrintCaches)
      {
        v10 = HIWORD(*(v1 + 2));
        if (!v10 || (v10 = HIWORD(*(v1 + 2))) == 0 || (LODWORD(v10) = __clz(v10 + 1) ^ 0x1F, v10 <= 0xF))
        {
          --cache_counts[v10];
        }
      }

      free((*(v1 + 2) & 0xFFFFFFFFFFFLL));
    }
  }

  if (v4)
  {
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v58, v4 + 1, v7, v8);
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v57, v4 + 1, v11, v12);
    while (!list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v58, v57))
    {
      v13 = v59;
      v14 = method_t::types(v59);
      if (v14)
      {
        v18 = v14;
        if (malloc_size(v14))
        {
          free(v18);
        }
      }

      if (byte_1ED3F57A8 == 1)
      {
        v60 = 0;
        if (objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(v13, &v60))
        {
          *v60 = -2;
          v19 = vadd_s32(*(&objc::methodDescriptionMap + 8), 0x1FFFFFFFFLL);
          *(&objc::methodDescriptionMap + 1) = v19;
          if (v19.i32[0])
          {
            if (dword_1ED3F57A0 >= 0x401 && dword_1ED3F57A0 >> 4 > v19.i32[0])
            {
              objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(2 * v19.i32[0]);
            }
          }

          else if (dword_1ED3F57A0)
          {
            if (objc::methodDescriptionMap)
            {
              v20 = objc::methodDescriptionMap;
            }

            else
            {
              v20 = 0;
            }

            free(v20);
            objc::methodDescriptionMap = 0uLL;
            dword_1ED3F57A0 = 0;
          }

          else
          {
            *(&objc::methodDescriptionMap + 1) = 0;
          }
        }
      }

      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v58, v15, v16, v17);
    }

    v21 = v4[1];
    if (v21)
    {
      if ((v4[1] & 3) == 1)
      {
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v21 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_50;
        }

        if (*v22)
        {
          v23 = 0;
          v24 = v22 + 2;
          do
          {
            v25 = *&v22[2 * v23 + 2];
            if (v25)
            {
              v26 = (v25 & 0xFFFFFFFFFFFFFFFLL);
              if ((v25 & 0xFFFFFFFFFFFFFFFLL) != 0)
              {
                if (malloc_size((v25 & 0xFFFFFFFFFFFFFFFLL)))
                {
                  free(v26);
                }
              }
            }

            ++v23;
            v24 += 2;
          }

          while (v23 < *v22);
        }
      }

      else
      {
        if ((v21 & 3) != 0)
        {
          goto LABEL_50;
        }

        v22 = (v21 & 0xFFFFFFFFFFFFFFCLL);
        if ((v21 & 0xFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_50;
        }
      }

      if (malloc_size(v22))
      {
        free(v22);
      }
    }
  }

LABEL_50:
  v27 = *(v5 + 48);
  if (v27)
  {
    v29 = *v27;
    v28 = v27[1];
    v30 = v28 * v29;
    if ((v30 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v28, *(v5 + 48), v29);
    }

    if (v30)
    {
      v31 = v30;
      v32 = (v27 + 6);
      do
      {
        v33 = *(v32 - 2);
        if (v33 && malloc_size(*(v32 - 2)))
        {
          free(v33);
        }

        v34 = *(v32 - 1);
        if (v34 && malloc_size(*(v32 - 1)))
        {
          free(v34);
        }

        v35 = *v32;
        if (*v32 && malloc_size(*v32))
        {
          free(v35);
        }

        v32 = (v32 + v29);
        v31 -= v29;
      }

      while (v31);
    }

    if (malloc_size(v27))
    {
      free(v27);
    }
  }

  if (!v4)
  {
    goto LABEL_104;
  }

  list_array_tt<property_t,property_list_t,RawPtr>::begin(v58, v4 + 2, v7, v8);
  list_array_tt<property_t,property_list_t,RawPtr>::end(v57, v4 + 2, v36, v37);
  while (!list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator==(v58, v57))
  {
    v41 = v59;
    v42 = *v59;
    if (*v59 && malloc_size(*v59))
    {
      free(v42);
    }

    v43 = *(v41 + 1);
    if (v43 && malloc_size(*(v41 + 1)))
    {
      free(v43);
    }

    list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator++(v58, v38, v39, v40);
  }

  v44 = v4[2];
  if (v44)
  {
    if ((v4[2] & 3) == 1)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v44 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_90;
      }

      if (*v45)
      {
        v46 = 0;
        do
        {
          v47 = *&v45[2 * v46 + 2];
          v48 = (v47 & 0xFFFFFFFFFFFFFFFLL);
          if ((v47 & 0xFFFFFFFFFFFFFFFLL) != 0 && malloc_size((v47 & 0xFFFFFFFFFFFFFFFLL)))
          {
            free(v48);
          }

          ++v46;
        }

        while (v46 < *v45);
      }
    }

    else
    {
      if ((v44 & 3) != 0)
      {
        goto LABEL_90;
      }

      v45 = (v44 & 0xFFFFFFFFFFFFFFCLL);
      if ((v44 & 0xFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_90;
      }
    }

    if (malloc_size(v45))
    {
      free(v45);
    }
  }

LABEL_90:
  v49 = v4[3];
  if (v49)
  {
    if ((v4[3] & 3) == 1)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v49 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        if (*v50)
        {
          v51 = 0;
          do
          {
            v52 = *&v50[2 * v51 + 2];
            v53 = (v52 & 0xFFFFFFFFFFFFFFFLL);
            if ((v52 & 0xFFFFFFFFFFFFFFFLL) != 0 && malloc_size((v52 & 0xFFFFFFFFFFFFFFFLL)))
            {
              free(v53);
            }

            ++v51;
          }

          while (v51 < *v50);
        }

        goto LABEL_102;
      }
    }

    else if ((v49 & 3) == 0)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFCLL);
      if ((v49 & 0xFFFFFFFFFFFFFFCLL) != 0)
      {
LABEL_102:
        if (malloc_size(v50))
        {
          free(v50);
        }
      }
    }
  }

LABEL_104:
  if ((*v5 & 1) == 0)
  {
    v54 = *(v5 + 16);
    if (v54)
    {
      if (malloc_size(*(v5 + 16)))
      {
        free(v54);
      }
    }
  }

  v55 = *(v5 + 56);
  if (v55 && malloc_size(*(v5 + 56)))
  {
    free(v55);
  }

  if ((*(v1 + 15) & 4) == 0)
  {
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (explicit)
    {
      if (malloc_size(explicit))
      {
        free(explicit);
      }
    }
  }

  if (malloc_size(v5))
  {
    free(v5);
  }

  free(v4);
  free(v2);
  if ((*(v1 + 4) & 2) != 0)
  {
    v1 = (v1 - *(v1 + 15));
  }

  if (malloc_size(v1))
  {
    free(v1);
  }
}

void _method_setImplementationRawUnsafe(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  method_t::setImp(v3, a2);
  v6 = *(StatusReg + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800CD980(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

__n128 __copy_helper_block_e8_32c43_ZTSKZ30method_exchangeImplementationsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

objc_property_t protocol_getProperty(Protocol *proto, const char *name, BOOL isRequiredProperty, BOOL isInstanceProperty)
{
  Property_nolock = 0;
  if (proto && name)
  {
    v6 = isInstanceProperty;
    v7 = isRequiredProperty;
    v9 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    Property_nolock = protocol_getProperty_nolock(proto, name, v7, v6);
    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return Property_nolock;
}

void sub_1800CDA88(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

const char **protocol_getProperty_nolock(protocol_t *a1, const char *a2, const char *a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  if (a4)
  {
    v7 = (a1 + 56);
  }

  else
  {
    v7 = (a1 + 88);
    if (a1 + *(a1 + 16) <= a1 + 88)
    {
      goto LABEL_10;
    }
  }

  v8 = *v7;
  if (!*v7 || (v9 = (v8 + 2), v10 = *v8, entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(v8, a2, a3, a4), v9 == v11))
  {
LABEL_10:
    v13 = *(a1 + 2);
    if (v13 && *v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = v13[v14 + 1];
        v16 = canonical_protocol ? 0 : 0x20000000;
        if ((v16 & *(v15 + 68)) == 0)
        {
          Protocol = getProtocol(*(v15 + 8));
          if (Protocol)
          {
            v15 = Protocol;
          }
        }

        Property_nolock = protocol_getProperty_nolock(v15, a2, 1, a4);
        if (Property_nolock)
        {
          break;
        }

        ++v14;
        v13 = *(a1 + 2);
        if (v14 >= *v13)
        {
          return 0;
        }
      }

      return Property_nolock;
    }

    return 0;
  }

  v12 = v11;
  while (strcmp(a2, *v9))
  {
    v9 = (v9 + v10);
    if (v9 == v12)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

void protocol_addProtocol(Protocol *proto, Protocol *addition)
{
  if (proto && addition)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((proto->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
    {
      if ((addition->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
      {
        protocol_t::demangledName(addition);
        _objc_inform("protocol_addProtocol: added protocol '%s' is still under construction!");
      }

      else
      {
        isa = proto[2].super.isa;
        if (isa)
        {
          v7 = malloc_type_realloc(isa, 8 * *isa + 16, 0x100004000313F17uLL);
        }

        else
        {
          v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
        }

        v8 = (*v7)++;
        *(v7 + v8 + 1) = addition;
        proto[2].super.isa = v7;
      }
    }

    else
    {
      protocol_t::demangledName(proto);
      _objc_inform("protocol_addProtocol: modified protocol '%s' is not under construction!");
    }

    v9 = *(StatusReg + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800CDD44(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void protocol_addMethodDescription(Protocol *proto, SEL name, const char *types, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  if (proto)
  {
    v5 = isInstanceMethod;
    v6 = isRequiredMethod;
    v7 = types;
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((proto->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
    {
      v12 = !v5;
      if (!v6 || v12)
      {
        v15 = (v12 | v6) == 0;
        v16 = 40;
        if (!v15)
        {
          v16 = 48;
        }

        if (!v6 || v5)
        {
          v13 = v16;
        }

        else
        {
          v13 = 32;
        }
      }

      else
      {
        v13 = 24;
      }

      v17 = *(&proto->super.isa + v13);
      if (v17)
      {
        v18 = *v17 & 0xFFFCLL;
        v19 = v17[1] * v18;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: count %u with entsize %u", name, types, isRequiredMethod, v17[1], v18);
        }

        v20 = malloc_type_realloc(v17, v18 + v19 + 8, 0x100004000313F17uLL);
        *(&proto->super.isa + v13) = v20;
      }

      else
      {
        v20 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004000313F17uLL);
        *(&proto->super.isa + v13) = v20;
        *v20 = 24;
      }

      v23 = v20[1];
      v20[1] = v23 + 1;
      v24 = (entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(v20, v23, v21, v22) & 0xFFFFFFFFFFFFFFFCLL);
      *v24 = name;
      if (v7)
      {
        v25 = strlen(v7);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v26 = malloc_type_malloc(v25 + 1, 0x9620E368uLL);
          memcpy(v26, v7, v25 + 1);
          v7 = v26;
        }
      }

      else
      {
        v7 = "";
      }

      v24[1] = v7;
      v24[2] = 0;
    }

    else
    {
      v14 = protocol_t::demangledName(proto);
      _objc_inform("protocol_addMethodDescription: protocol '%s' is not under construction!", v14);
    }

    v27 = *(StatusReg + 24);
    v28 = v27;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v28, 0, memory_order_release, memory_order_relaxed);
    if (v28 != v27)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800CDF98(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void protocol_addProperty(Protocol *proto, const char *name, const objc_property_attribute_t *attributes, unsigned int attributeCount, BOOL isRequiredProperty, BOOL isInstanceProperty)
{
  if (!proto)
  {
    return;
  }

  v6 = name;
  if (!name)
  {
    return;
  }

  v8 = isRequiredProperty;
  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((proto->super.isa & 0xFFFFFFFF8) == __IncompleteProtocol)
  {
    if (v8 && isInstanceProperty)
    {
      v14 = 7;
LABEL_13:
      isa = proto[v14].super.isa;
      if (isa)
      {
        v17 = *isa;
        v18 = (*(isa + 1) + 1);
        *(isa + 1) = v18;
        v19 = v17 * v18;
        if ((v19 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: count %u with entsize %u", name, attributes, *&attributeCount, v18, v17);
        }

        v23 = malloc_type_realloc(isa, v19 + 8, 0x100004000313F17uLL);
        proto[v14].super.isa = v23;
        v24 = *v23;
        v25 = (*(v23 + 1) - 1);
      }

      else
      {
        v23 = malloc_type_calloc(0x18uLL, 1uLL, 0x100004000313F17uLL);
        v25 = 0;
        proto[v14].super.isa = v23;
        *v23 = 0x100000010;
        v24 = 16;
      }

      v26 = v25 * v24;
      if ((v26 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v20, v21, v22, v25, v23, v24);
      }

      v27 = strlen(v6);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        v28 = malloc_type_malloc(v27 + 1, 0x9620E368uLL);
        memcpy(v28, v6, v27 + 1);
        v6 = v28;
      }

      v29 = v23 + v26;
      *(v29 + 1) = v6;
      *(v29 + 2) = copyPropertyAttributeString(attributes, attributeCount);
      goto LABEL_21;
    }

    if (v8 && !isInstanceProperty)
    {
      v14 = 11;
      goto LABEL_13;
    }
  }

  else
  {
    v15 = protocol_t::demangledName(proto);
    _objc_inform("protocol_addProperty: protocol '%s' is not under construction!", v15);
  }

LABEL_21:
  v30 = *(StatusReg + 24);
  v31 = v30;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != v30)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800CE20C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _objc_getRealizedClassList_trylock(objc_class **a1, uint64_t a2)
{
  if (!os_unfair_lock_trylock(runtimeLock))
  {
    return -1;
  }

  RealizedClassList_nolock = objc_getRealizedClassList_nolock(a1, a2, v4, v5);
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return RealizedClassList_nolock;
}

uint64_t objc_getRealizedClassList_nolock(objc_class **a1, uint64_t a2, const char *a3, char *a4)
{
  v9 = 0;
  if (a1)
  {
    v8 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke;
    v7[3] = &__block_descriptor_64_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__0_e8_B16__0_8l;
    v7[4] = &v9;
    v7[5] = &v8;
    v7[6] = a2;
    v7[7] = a1;
    v4 = v7;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke_175;
    v6[3] = &__block_descriptor_40_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__1_e8_B16__0_8l;
    v6[4] = &v9;
    v4 = v6;
  }

  foreach_realized_class(v4, a2, a3, a4);
  return v9;
}

uint64_t ___ZL32objc_getRealizedClassList_nolockPP10objc_classm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  ++**(a1 + 32);
  v3 = *v2;
  if (*v2 < *(a1 + 48))
  {
    v4 = *(a1 + 56);
    *v2 = v3 + 1;
    *(v4 + 8 * v3) = a2;
  }

  return 1;
}

__n128 __copy_helper_block_e8_32c61_ZTSKZL32objc_getRealizedClassList_nolockPP10objc_classmE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

int objc_getClassList(Class *buffer, int bufferCount)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAllClasses();
  RealizedClassList_nolock = objc_getRealizedClassList_nolock(buffer, bufferCount, v6, v7);
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return RealizedClassList_nolock;
}

void sub_1800CE490(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyRealizedClassList(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = objc_copyRealizedClassList_nolock(a1, a2, a3, a4);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v7;
}

void sub_1800CE544(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Class *__cdecl objc_copyClassList(unsigned int *outCount)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAllClasses();
  v7 = objc_copyRealizedClassList_nolock(outCount, v4, v5, v6);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v7;
}

void sub_1800CE5FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_endClassEnumeration(uint64_t a1)
{
  if (*a1 == -1)
  {
    free(*(a1 + 40));
  }
}

unint64_t _objc_setHook_msgSendCacheMiss(unint64_t result, uint64_t *a2)
{
  if (msgSendCacheMissHook)
  {
    v2 = msgSendCacheMissHook;
  }

  else
  {
    v2 = 0;
  }

  while (1)
  {
    if (v2)
    {
      *a2 = v2;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *a2 = 0;
      if (result)
      {
LABEL_6:
        v3 = result;
        goto LABEL_9;
      }
    }

    v3 = 0;
LABEL_9:
    v4 = v2;
    atomic_compare_exchange_strong_explicit(&msgSendCacheMissHook, &v4, v3, memory_order_release, memory_order_relaxed);
    if (v4 == v2)
    {
      return result;
    }

    v2 = 0;
    if (v4)
    {
      v2 = v4;
    }
  }
}

char *class_copyImpCache(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v7 = malloc_type_calloc(v6 + 1, 0x10uLL, 0x80040803F642BuLL);
    v8 = v7;
    v9 = (a1 + 16);
    v10 = *(a1 + 16);
    if ((v10 & 1) == 0 && (v10 == &_objc_empty_cache || HIWORD(*v9)))
    {
      if (HIWORD(*v9))
      {
        v20 = 0;
        v21 = 0;
        v22 = HIWORD(*v9);
        v23 = ((*v9 & 0xFFFFFFFFFFFLL) + 8);
        do
        {
          if (*v23)
          {
            v24 = &v7[16 * v21];
            *(v24 + 1) = *(v23 - 1);
            *v24 = *v23;
            ++v21;
          }

          if (v20 >= v22)
          {
            break;
          }

          ++v20;
          v23 += 2;
        }

        while (v21 < v6);
      }
    }

    else
    {
      v11 = *v9 & 0x7FFFFFFFFFFFFELL;
      v12 = *(v11 - 8) >> 5;
      if (v12 >= (v6 - 1))
      {
        v12 = (v6 - 1);
      }

      v13 = v12 + 1;
      v14 = v7 + 8;
      v15 = (*v9 & 0x7FFFFFFFFFFFFELL);
      do
      {
        *(v14 - 1) = *v15 >> 38;
        v16 = *v15++;
        *v14 = v11 - (v16 << 26 >> 24);
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    *a2 = v6;
  }

  v17 = *(StatusReg + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v8;
}

void sub_1800CE958(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Protocol **__cdecl objc_copyProtocolList(unsigned int *outCount)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = protocols();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v5 = FirstHeader;
  if (FirstHeader)
  {
    do
    {
      v40 = 0;
      v6 = header_info::protocollist(v5, &v40);
      v7 = v40;
      if (v40)
      {
        v8 = v6;
        do
        {
          v9 = *v8;
          if (!NXMapGet(v4, *(*v8 + 8)))
          {
            PreoptimizedProtocol = getPreoptimizedProtocol(*(v9 + 8));
            v11 = *(v9 + 8);
            v44 = 0;
            if (!objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v41, v11, &v44))
            {
              if (4 * v42.i32[0] + 4 >= 3 * v43)
              {
                objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(&v41, 2 * v43);
                v44 = 0;
                objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v41, v11, &v44);
              }

              else if (v43 + ~v42.i32[0] - v42.i32[1] <= v43 >> 3)
              {
                objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(&v41, v43);
                v44 = 0;
                objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(&v41, v11, &v44);
              }

              v12 = v44;
              v13 = *v44;
              if (objc::DenseMapInfo<char const*>::isEqual(*v44, 0xFFFFFFFFFFFFFFFFLL))
              {
                ++v42.i32[0];
              }

              else if (objc::DenseMapInfo<char const*>::isEqual(v13, 0xFFFFFFFFFFFFFFFELL))
              {
                v42 = vadd_s32(v42, 0xFFFFFFFF00000001);
              }

              *v12 = v11;
              v12[1] = PreoptimizedProtocol;
            }
          }

          v8 += 8;
          --v7;
        }

        while (v7);
      }

      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
      v15 = (v5 + 24);
      if (PreoptimizedHeaderRW)
      {
        v15 = PreoptimizedHeaderRW;
      }

      v5 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v5);
    v16 = v42.i32[0];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + *(v4 + 8);
  if (!v17)
  {
    v19 = 0;
    if (!outCount)
    {
      goto LABEL_50;
    }

    v17 = 0;
    goto LABEL_49;
  }

  v18 = malloc_type_malloc(8 * (v17 + 1), 0x80040B8603338uLL);
  v19 = v18;
  v20 = 0;
  v21 = *(v4 + 12) + 1;
LABEL_26:
  v22 = *(v4 + 16);
  v23 = v21;
  v24 = (v22 + 16 * v21 - 16);
  while (v23)
  {
    --v23;
    v25 = *v24;
    v24 -= 2;
    if (v25 != -1)
    {
      v18[v20++] = *(v22 + 16 * v23 + 8);
      v21 = v23;
      goto LABEL_26;
    }
  }

  v26 = v41;
  if (v42.i32[0])
  {
    if (v41)
    {
      v27 = v41;
    }

    else
    {
      v27 = 0;
    }

    v29 = v43;
    v44 = v27;
    v45 = &v27[2 * v43];
    objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(&v44);
    v30 = v44;
    v31 = v45;
    v32 = v29;
  }

  else
  {
    if (v41)
    {
      v28 = v41;
    }

    else
    {
      v28 = 0;
    }

    v32 = v43;
    v30 = &v28[16 * v43];
    v31 = v30;
  }

  v45 = v31;
  if (v26)
  {
    v33 = v26;
  }

  else
  {
    v33 = 0;
  }

  v34 = &v33[16 * v32];
  if (v34 == v30)
  {
    v35 = v20;
  }

  else
  {
    do
    {
      v35 = v20 + 1;
      v19[v20] = v30[1];
      v44 = v30 + 2;
      objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(&v44);
      v30 = v44;
      ++v20;
    }

    while (v44 != v34);
  }

  v19[v35] = 0;
  if (outCount)
  {
LABEL_49:
    *outCount = v17;
  }

LABEL_50:
  if (v41)
  {
    v36 = v41;
  }

  else
  {
    v36 = 0;
  }

  free(v36);
  v37 = *(StatusReg + 24);
  v38 = v37;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != v37)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v19;
}

void sub_1800CED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    v12 = a10;
  }

  else
  {
    v12 = 0;
  }

  free(v12);
  v13 = *(v10 + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(a1);
}

char ***objc::DenseMapIterator<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>,false>::AdvancePastEmptyBuckets(char ***result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      result = objc::DenseMapInfo<char const*>::isEqual(*v1, 0xFFFFFFFFFFFFFFFFLL);
      if ((result & 1) == 0)
      {
        result = objc::DenseMapInfo<char const*>::isEqual(v4, 0xFFFFFFFFFFFFFFFELL);
        if (!result)
        {
          break;
        }
      }

      v1 += 2;
      *v3 = v1;
    }

    while (v1 != v2);
  }

  return result;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(char **a1, char *__s1, char ***a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 0;
    v9 = __s1;
    do
    {
      v10 = v8;
      v11 = *v9++;
      v8 = 257 * v8 + v11;
    }

    while (v11);
    v22 = 0;
    v12 = v7 - 1;
    for (i = 1; ; i = v21 + 1)
    {
      v21 = i;
      v14 = v10 & v12;
      v15 = &v6[2 * (v10 & v12)];
      v16 = *v15;
      isEqual = objc::DenseMapInfo<char const*>::isEqual(__s1, *v15);
      if (isEqual)
      {
        break;
      }

      if (objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v22)
        {
          v15 = v22;
        }

        break;
      }

      if (v21 > v7)
      {
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v6, v7);
      }

      v18 = objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFELL);
      v19 = v22;
      if (v18 && v22 == 0)
      {
        v19 = &v6[2 * v14];
      }

      v22 = v19;
      v10 = v14 + v21;
    }
  }

  else
  {
    v15 = 0;
    isEqual = 0;
  }

  *a3 = v15;
  return isEqual;
}

void objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(16 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v11 = v9;
LABEL_13:
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v13 + 0xFFFFFFFFFFFFFFFLL;
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
        v17 = (v15 & 0xFFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
        v18 = vdupq_n_s64(v16);
        v19 = v11 + 16;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_1800DA160)));
          if (v20.i8[0])
          {
            *(v19 - 2) = -1;
          }

          if (v20.i8[4])
          {
            *v19 = -1;
          }

          v14 += 2;
          v19 += 4;
        }

        while (v17 != v14);
      }

      if (v3)
      {
        v21 = 16 * v3;
        v22 = v4;
        do
        {
          v23 = *v22;
          if (!objc::DenseMapInfo<char const*>::isEqual(*v22, 0xFFFFFFFFFFFFFFFFLL) && !objc::DenseMapInfo<char const*>::isEqual(v23, 0xFFFFFFFFFFFFFFFELL))
          {
            v33 = 0;
            objc::DenseMapBase<objc::DenseMap<char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>,char const*,Protocol *,objc::DenseMapValueInfo<Protocol *>,objc::DenseMapInfo<char const*>,objc::detail::DenseMapPair<char const*,Protocol *>>::LookupBucketFor<char const*>(a1, v23, &v33);
            v24 = v33;
            *v33 = *v22;
            v24[1] = *(v22 + 1);
            ++*(a1 + 8);
          }

          v22 += 16;
          v21 -= 16;
        }

        while (v21);
      }

      free(v4);
      return;
    }

    v12 = v9;
  }

  else
  {
    *&v10 = 0;
    v12 = 0;
    v11 = 0;
    *a1 = v10;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = v12 + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_1800DA160)));
      if (v32.i8[0])
      {
        *(v31 - 2) = -1;
      }

      if (v32.i8[4])
      {
        *v31 = -1;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }
}

const char **__cdecl objc_copyImageNames(unsigned int *outCount)
{
  v1 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v1, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
  }

  v3 = FirstHeader;
  if (FirstHeader)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3 + *v3;
      if (v5 >= v6)
      {
        v8 = v5 - v4;
        v9 = (v5 - v4) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
        }

        if ((v6 - v4) >> 2 > v10)
        {
          v10 = (v6 - v4) >> 2;
        }

        if ((v6 - v4) >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (v11 >> 61)
          {
            std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
          }

          v12 = malloc_type_malloc(8 * v11, 0x201A97EDuLL);
        }

        else
        {
          v12 = 0;
        }

        v13 = &v12[8 * v9];
        v6 = &v12[8 * v11];
        *v13 = v7;
        v5 = v13 + 8;
        memcpy(v12, v4, v8);
        if (v4)
        {
          free(v4);
        }

        v4 = v12;
      }

      else
      {
        *v5 = v7;
        v5 += 8;
      }

      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v3);
      v15 = v3 + 3;
      if (PreoptimizedHeaderRW)
      {
        v15 = PreoptimizedHeaderRW;
      }

      v3 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v18 = malloc_type_malloc(v5 - v4 + 8, 0x10040436913F5uLL);
  v19 = v18;
  if (v4 == v5)
  {
    *v18 = 0;
LABEL_35:
    free(v19);
    v20 = 0;
    v19 = 0;
    goto LABEL_36;
  }

  v20 = 0;
  v21 = v4;
  do
  {
    v22 = dyld_image_path_containing_address();
    if (v22)
    {
      *(v19 + v20++) = v22;
    }

    v21 += 8;
  }

  while (v21 != v5);
  *(v19 + v20) = 0;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (outCount)
  {
    *outCount = v20;
  }

  if (v4)
  {
    free(v4);
  }

  return v19;
}

void sub_1800CF49C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *copyClassNamesForImage_nolock(header_info *a1, unsigned int *a2)
{
  v13 = 0;
  v3 = header_info::classlist(a1, &v13);
  v4 = v13;
  v5 = malloc_type_malloc(8 * v13 + 8, 0x50040EE9192B6uLL);
  v6 = v5;
  if (v4)
  {
    v7 = 0;
    v8 = v5;
    v9 = v4;
    do
    {
      v10 = remapClass(*v3);
      if (v10)
      {
        v8[-v7] = objc_class::demangledName(v10, 0);
      }

      else
      {
        ++v7;
      }

      ++v8;
      ++v3;
      --v9;
    }

    while (v9);
    v11 = v4 - v7;
  }

  else
  {
    v11 = 0;
  }

  v6[v11] = 0;
  if (a2)
  {
    *a2 = v11;
  }

  return v6;
}

const char **__cdecl objc_copyClassNamesForImage(const char *image, unsigned int *outCount)
{
  if (!image)
  {
    if (!outCount)
    {
      return 0;
    }

LABEL_60:
    result = 0;
    *outCount = 0;
    return result;
  }

  v33 = 0;
  v34 = outCount;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v35 = StatusReg;
  do
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v5 = FirstHeader;
    if (FirstHeader)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        if (_dyld_get_image_uuid())
        {
          v9 = v5 + *v5;
          if (v7 >= v8)
          {
            v10 = v7 - v6;
            v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
            v12 = v11 + 1;
            if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v8 - v6) >> 3) > v12)
            {
              v12 = 0x5555555555555556 * ((v8 - v6) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 3) >= 0x555555555555555)
            {
              v13 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              if (v13 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
              }

              v14 = malloc_type_malloc(24 * v13, 0x201A97EDuLL);
            }

            else
            {
              v14 = 0;
            }

            v15 = &v14[24 * v11];
            v8 = &v14[24 * v13];
            *v15 = v9;
            *(v15 + 8) = v36;
            v7 = v15 + 24;
            v16 = &v15[24 * (v10 / -24)];
            memcpy(v16, v6, v10);
            if (v6)
            {
              free(v6);
            }

            v6 = v16;
          }

          else
          {
            *v7 = v9;
            *(v7 + 8) = v36;
            v7 += 24;
          }
        }

        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
        v18 = v5 + 3;
        if (PreoptimizedHeaderRW)
        {
          v18 = PreoptimizedHeaderRW;
        }

        v5 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v5);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    StatusReg = v35;
    v19 = *(v35 + 24);
    v20 = v19;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != v19)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    v21 = v6;
    if (v6 == v7)
    {
LABEL_34:
      v23 = 1;
    }

    else
    {
      while (1)
      {
        v22 = dyld_image_path_containing_address();
        if (v22)
        {
          if (!strcmp(v22, image))
          {
            break;
          }
        }

        v21 += 3;
        if (v21 == v7)
        {
          goto LABEL_34;
        }
      }

      v24 = 0;
      v25 = *v21;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v24, *(v35 + 24), memory_order_acquire, memory_order_acquire);
      if (v24)
      {
        os_unfair_lock_lock_with_options();
      }

      v26 = FirstHeader;
      if (!FirstHeader)
      {
        goto LABEL_52;
      }

      while (v25 != (v26 + *v26))
      {
        v27 = getPreoptimizedHeaderRW(v26);
        v28 = (v26 + 24);
        if (v27)
        {
          v28 = v27;
        }

        v26 = (*v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (!v26)
        {
          goto LABEL_52;
        }
      }

      v36 = 0uLL;
      if (_dyld_get_image_uuid() && (!v21[1] ? (v29 = v21[2] == 0) : (v29 = 0), v29))
      {
        v33 = copyClassNamesForImage_nolock(v26, v34);
        v23 = 1;
      }

      else
      {
LABEL_52:
        v23 = 0;
      }

      v30 = *(v35 + 24);
      v31 = v30;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v31, 0, memory_order_release, memory_order_relaxed);
      if (v31 != v30)
      {
        os_unfair_lock_unlock(runtimeLock);
      }
    }

    if (v6)
    {
      free(v6);
    }
  }

  while (!v23);
  outCount = v34;
  if (!v34)
  {
    return v33;
  }

  result = v33;
  if (!v33)
  {
    goto LABEL_60;
  }

  return result;
}

void sub_1800CF934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v12;
  v17 = *(v14 + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v15, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v13)
  {
    free(v13);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyClassesForImage(const char *a1, _DWORD *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_70:
    result = 0;
    *a2 = 0;
    return result;
  }

  v40 = a2;
  v41 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v42 = StatusReg;
  do
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v5 = FirstHeader;
    if (FirstHeader)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        if (_dyld_get_image_uuid())
        {
          v9 = v5 + *v5;
          *v43 = v44;
          if (v7 >= v8)
          {
            v10 = v7 - v6;
            v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
            v12 = v11 + 1;
            if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v8 - v6) >> 3) > v12)
            {
              v12 = 0x5555555555555556 * ((v8 - v6) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 3) >= 0x555555555555555)
            {
              v13 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              if (v13 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<_dyld_objc_notify_mapped_info>::__throw_length_error[abi:nn200100]();
              }

              v14 = malloc_type_malloc(24 * v13, 0x201A97EDuLL);
            }

            else
            {
              v14 = 0;
            }

            v15 = &v14[24 * v11];
            v8 = &v14[24 * v13];
            *v15 = v9;
            *(v15 + 8) = *v43;
            v7 = v15 + 24;
            v16 = &v15[24 * (v10 / -24)];
            memcpy(v16, v6, v10);
            if (v6)
            {
              free(v6);
            }

            v6 = v16;
          }

          else
          {
            *v7 = v9;
            *(v7 + 8) = *v43;
            v7 += 24;
          }
        }

        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v5);
        v18 = v5 + 3;
        if (PreoptimizedHeaderRW)
        {
          v18 = PreoptimizedHeaderRW;
        }

        v5 = (*v18 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v5);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    StatusReg = v42;
    v19 = *(v42 + 24);
    v20 = v19;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != v19)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    v21 = v6;
    if (v6 == v7)
    {
LABEL_34:
      v23 = 1;
    }

    else
    {
      while (1)
      {
        v22 = dyld_image_path_containing_address();
        if (v22)
        {
          if (!strcmp(v22, a1))
          {
            break;
          }
        }

        v21 += 3;
        if (v21 == v7)
        {
          goto LABEL_34;
        }
      }

      v24 = 0;
      v25 = *v21;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v24, *(v42 + 24), memory_order_acquire, memory_order_acquire);
      if (v24)
      {
        os_unfair_lock_lock_with_options();
      }

      v26 = FirstHeader;
      if (!FirstHeader)
      {
        goto LABEL_52;
      }

      while (v25 != (v26 + *v26))
      {
        v27 = getPreoptimizedHeaderRW(v26);
        v28 = (v26 + 24);
        if (v27)
        {
          v28 = v27;
        }

        v26 = (*v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (!v26)
        {
          goto LABEL_52;
        }
      }

      v44 = 0uLL;
      if (_dyld_get_image_uuid() && (v44 == v21[1] ? (v29 = *(&v44 + 1) == v21[2]) : (v29 = 0), v29))
      {
        v43[0] = 0;
        v32 = header_info::classlist(v26, v43);
        v33 = v43[0];
        v41 = malloc_type_malloc(8 * v43[0] + 8, 0x80040B8603338uLL);
        if (v33)
        {
          v34 = 0;
          v35 = v41;
          v36 = v33;
          do
          {
            v37 = remapClass(*v32);
            if (v37)
            {
              v35[-v34] = v37;
            }

            else
            {
              ++v34;
            }

            ++v35;
            ++v32;
            --v36;
          }

          while (v36);
          v38 = v33 - v34;
          StatusReg = v42;
        }

        else
        {
          v38 = 0;
        }

        v41[v38] = 0;
        if (v40)
        {
          *v40 = v38;
        }

        v23 = 1;
      }

      else
      {
LABEL_52:
        v23 = 0;
      }

      v30 = *(StatusReg + 24);
      v31 = v30;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v31, 0, memory_order_release, memory_order_relaxed);
      if (v31 != v30)
      {
        os_unfair_lock_unlock(runtimeLock);
      }
    }

    if (v6)
    {
      free(v6);
    }
  }

  while (!v23);
  a2 = v40;
  if (!v40)
  {
    return v41;
  }

  result = v41;
  if (!v41)
  {
    goto LABEL_70;
  }

  return result;
}

void sub_1800CFD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v12)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyClassNamesForImageHeader(header_info *a1, unsigned int *a2)
{
  if (a1)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = FirstHeader;
    if (FirstHeader)
    {
      while ((v6 + *v6) != a1)
      {
        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v6);
        v8 = (v6 + 24);
        if (PreoptimizedHeaderRW)
        {
          v8 = PreoptimizedHeaderRW;
        }

        v6 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v9 = copyClassNamesForImage_nolock(v6, a2);
    }

    else
    {
LABEL_9:
      v9 = 0;
      if (a2)
      {
        *a2 = 0;
      }
    }

    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return v9;
}

void sub_1800CFEE8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

const char *objc_debug_class_getNameRaw(objc_class *this, uint64_t a2, const char *a3, char *a4)
{
  if (!this)
  {
    return "nil";
  }

  v5 = *(this + 4);
  if (v5 < 0)
  {
    v6 = class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8));
  }

  else
  {
    v6 = v5 & 0xF00007FFFFFFFF8;
  }

  result = atomic_load_explicit((v6 + 24), memory_order_acquire);
  if (!result)
  {

    return objc_class::installMangledNameForLazilyNamedClass(this, a2, a3, a4);
  }

  return result;
}

objc_class *gdb_class_getClass(objc_class *a1)
{
  v1 = objc_class::mangledName(a1);
  if (!v1 || !*v1)
  {
    return 0;
  }

  return look_up_class(v1);
}

objc_class *gdb_object_getClass(objc_class *result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v1 = objc_debug_taggedpointer_classes[result & 7];
      if (v1)
      {
        if (v1 == __NSUnrecognizedTaggedPointer)
        {
          v1 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
        }
      }
    }

    else
    {
      v1 = (*result & 0x7FFFFFFFFFFFF8);
    }

    return gdb_class_getClass(v1);
  }

  return result;
}

void objc_setHook_lazyClassNamer(objc_hook_lazyClassNamer newValue, objc_hook_lazyClassNamer *oldOutValue)
{
  v2 = LazyClassNamerHook;
  while (1)
  {
    *oldOutValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&LazyClassNamerHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

const uint8_t *__cdecl class_getIvarLayout(const uint8_t *cls)
{
  if (cls)
  {
    v1 = class_data_bits_t::safe_ro<(Authentication)0>(cls + 4);
    if (*v1)
    {
      return 0;
    }

    else
    {
      return *(v1 + 16);
    }
  }

  return cls;
}

const uint8_t *__cdecl class_getWeakIvarLayout(const uint8_t *cls)
{
  if (cls)
  {
    return *(class_data_bits_t::safe_ro<(Authentication)0>(cls + 4) + 56);
  }

  return cls;
}

void class_setIvarLayout(Class cls, const uint8_t *layout)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v6 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v6) || (*(qword_1ED3F6300 + 16 * v6) <= cls ? (v7 = *(qword_1ED3F6300 + 16 * v6 + 8) > cls) : (v7 = 0), !v7))
    {
      if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v16, v17, v18) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v19, v20, v21, cls);
      }
    }

    if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
    {
      ro_writeable_nolock = make_ro_writeable_nolock((*(cls + 4) & 0xF00007FFFFFFFF8));
      v10 = ro_writeable_nolock;
      if ((*ro_writeable_nolock & 1) == 0)
      {
        v11 = *(ro_writeable_nolock + 16);
        if (v11)
        {
          if (malloc_size(*(ro_writeable_nolock + 16)))
          {
            free(v11);
          }
        }
      }

      if (layout)
      {
        v12 = strlen(layout);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v13 = malloc_type_malloc(v12 + 1, 0x9620E368uLL);
          memcpy(v13, layout, v12 + 1);
          layout = v13;
        }
      }

      *(v10 + 16) = layout;
    }

    else
    {
      v8 = objc_class::nameForLogging(cls);
      _objc_inform("*** Can't set ivar layout for already-registered class '%s'", v8);
    }

    v14 = *(StatusReg + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D04A8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void class_setWeakIvarLayout(Class cls, const uint8_t *layout)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v6 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v6) || (*(qword_1ED3F6300 + 16 * v6) <= cls ? (v7 = *(qword_1ED3F6300 + 16 * v6 + 8) > cls) : (v7 = 0), !v7))
    {
      if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v16, v17, v18) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v19, v20, v21, cls);
      }
    }

    if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
    {
      ro_writeable_nolock = make_ro_writeable_nolock((*(cls + 4) & 0xF00007FFFFFFFF8));
      v10 = ro_writeable_nolock;
      v11 = *(ro_writeable_nolock + 56);
      if (v11 && malloc_size(*(ro_writeable_nolock + 56)))
      {
        free(v11);
      }

      if (layout)
      {
        v12 = strlen(layout);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v13 = malloc_type_malloc(v12 + 1, 0x9620E368uLL);
          memcpy(v13, layout, v12 + 1);
          layout = v13;
        }
      }

      *(v10 + 56) = layout;
    }

    else
    {
      v8 = objc_class::nameForLogging(cls);
      _objc_inform("*** Can't set weak ivar layout for already-registered class '%s'", v8);
    }

    v14 = *(StatusReg + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D0760(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void class_replaceMethodsBulk(objc_class *a1, objc_selector **a2, void (**a3)(void), const char **a4, method_list_t *a5)
{
  if (a1)
  {
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    addMethods(a1, a2, a3, a4, a5, 1, 0);
    v12 = *(StatusReg + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800D0878(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _class_addProperty(Class cls, const char *name, const objc_property_attribute_t *a3, unsigned int a4, int a5)
{
  result = 0;
  if (cls)
  {
    v7 = name;
    if (name)
    {
      Property = class_getProperty(cls, name);
      v12 = Property;
      if (!Property || a5)
      {
        v13 = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        atomic_compare_exchange_strong_explicit(runtimeLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        v15 = v13 == 0;
        if (Property)
        {
          if (!v15)
          {
            os_unfair_lock_lock_with_options();
          }

          v16 = *(v12 + 1);
          if (v16 && malloc_size(*(v12 + 1)))
          {
            free(v16);
          }

          *(v12 + 1) = copyPropertyAttributeString(a3, a4);
        }

        else
        {
          if (!v15)
          {
            os_unfair_lock_lock_with_options();
          }

          realizeAndInitializeIfNeeded_locked(0, cls, 0);
          v17 = class_rw_t::extAllocIfNeeded((*(cls + 4) & 0xF00007FFFFFFFF8));
          v18 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
          v24 = v18;
          *v18 = 0x100000010;
          v19 = strlen(v7);
          if ((_dyld_is_memory_immutable() & 1) == 0)
          {
            v20 = malloc_type_malloc(v19 + 1, 0x9620E368uLL);
            memcpy(v20, v7, v19 + 1);
            v7 = v20;
          }

          v18[1] = v7;
          v18[2] = copyPropertyAttributeString(a3, a4);
          if (PrintPreopt)
          {
            v21 = "properties";
          }

          else
          {
            v21 = 0;
          }

          list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v17 + 2, &v24, 1, 0, v21);
        }

        v22 = *(StatusReg + 24);
        v23 = v22;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 != v22)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1800D0AC0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_setHook_getClass(objc_hook_getClass newValue, objc_hook_getClass *outOldValue)
{
  v2 = GetClassHook;
  while (1)
  {
    *outOldValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&GetClassHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

Class objc_duplicateClass(Class original, const char *name, size_t extraBytes)
{
  v6 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAndInitializeIfNeeded_locked(0, original, 0);
  if ((*original - 1) < 0xF || (*(original + 4) & 0x8000000000000000) == 0 || (v8 = *((*(original + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v8) || (*(qword_1ED3F6300 + 16 * v8) <= original ? (v9 = *(qword_1ED3F6300 + 16 * v8 + 8) > original) : (v9 = 0), !v9))
  {
    if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-original) && (dataSegmentsContain(original, v46, v47, v48) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v49, v50, v51, original);
    }
  }

  v10 = (*(original + 4) & 0xF00007FFFFFFFF8);
  v11 = *(v10 + 1);
  __s = name;
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = 0;
  }

  v13 = class_rw_t::ro(v10);
  v14 = alloc_class_for_subclass(original, extraBytes);
  v15 = v14;
  *v14 = *original & 0xFFFFFFFF8;
  if (*(original + 1))
  {
    v16 = *(original + 1);
  }

  else
  {
    v16 = 0;
  }

  v53 = (v14 + 8);
  *(v14 + 1) = v16;
  *(v14 + 2) = &_objc_empty_cache;
  *(v14 + 3) = 0;
  v17 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
  *v17 = *v10 | 0x8080000;
  v17[2] = 0;
  v17[3] = 0;
  atomic_store(*(original + 4), v15 + 4);
  class_data_bits_t::setData(v15 + 4, v17);
  v55 = class_ro_t::duplicate(v13);
  v18 = name;
  v19 = strlen(name);
  v20 = __s;
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {
    v20 = malloc_type_malloc(v19 + 1, 0x9620E368uLL);
    memcpy(v20, __s, v19 + 1);
  }

  v55[3] = v20;
  v21 = v17 + 1;
  v22 = v17[1];
  if (v22)
  {
    v21 = (v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  *v21 = v55;
  if (v12)
  {
    v52 = StatusReg;
    v26 = class_rw_t::extAllocIfNeeded(v17);
    v27 = *(v12 + 8);
    *(v26 + 10) = *(v12 + 40);
    v28 = v26 + 1;
    if (v27)
    {
      if ((v27 & 3) != 1)
      {
        v41 = 0;
        if ((v27 & 3) == 0)
        {
          v41 = method_list_t::duplicate(v27, v23, v24, v25);
        }

        goto LABEL_41;
      }

      v29 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v27 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v30 = 8 * *v29;
        v31 = malloc_type_malloc(v30 + 8, 0x9620E368uLL);
        memcpy(v31, v29, v30 + 8);
        *v28 = v31 | 1;
        if (*v29)
        {
          v35 = (v31 + 8);
          v36 = v29 + 2;
          v37 = 1;
          do
          {
            if (*&v29[2 * v37])
            {
              v38 = *&v29[2 * v37];
            }

            else
            {
              v38 = 0;
            }

            *(v31 + 8 * v37) = method_list_t::duplicate(v38, v32, v33, v34);
            v35 += 8;
            v36 += 2;
          }

          while (v37++ < *v29);
        }

        goto LABEL_42;
      }
    }

    v41 = 0;
LABEL_41:
    *v28 = v41;
LABEL_42:
    StatusReg = v52;
    v18 = __s;
    v26[2] = *(v12 + 16);
    v26[3] = *(v12 + 24);
    goto LABEL_43;
  }

  v40 = v55[4];
  if (v40 && (v40 & 1) == 0 || (v40) && v40 >= 2)
  {
    class_rw_t::extAlloc(v17, v55, 1);
  }

LABEL_43:
  if (*v53)
  {
    addSubclass(*v53, v15);
  }

  else
  {
    ++objc_debug_realized_class_generation_count;
    *((v15[4] & 0xF00007FFFFFFFF8) + 0x18) = _firstRealizedClass;
    _firstRealizedClass = v15;
  }

  addNamedClass(v15, atomic_load_explicit(v55 + 3, memory_order_acquire), 0);
  addClassTableEntry(v15, 0);
  if (PrintConnecting)
  {
    v42 = objc_class::nameForLogging(original);
    _objc_inform("CLASS: realizing class '%s' (duplicate of %s) %p %p", v18, v42, v15, v55);
  }

  atomic_fetch_and_explicit((v15[4] & 0xF00007FFFFFFFF8), 0xFFF7FFFF, memory_order_relaxed);
  v43 = *(StatusReg + 24);
  v44 = v43;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v44, 0, memory_order_release, memory_order_relaxed);
  if (v44 != v43)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v15;
}

void sub_1800D12D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_class *objc_initializeClassPair(objc_class *a1, char *a2, objc_class *a3, unint64_t a4)
{
  if (look_up_class(a2))
  {
    return 0;
  }

  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if (getClassExceptSomeSwift(a2) || a1 && (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0 && (*((*(a1 + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
  {
    a3 = 0;
  }

  else
  {
    objc_initializeClassPair_internal(a1, a2, a3, a4);
  }

  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return a3;
}

void sub_1800D1444(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_disposeClassPair(Class cls)
{
  _object_remove_associations(cls, 1);
  _object_remove_associations(*cls & 0xFFFFFFFF8, 1);
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v4 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v4) || (*(qword_1ED3F6300 + 16 * v4) <= cls ? (v5 = *(qword_1ED3F6300 + 16 * v4 + 8) > cls) : (v5 = 0), !v5))
  {
    if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v18, v19, v20) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v21, v22, v23, cls);
    }
  }

  if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 6) == 0 || (v6 = (*cls & 0xFFFFFFFF8), (*((*(v6 + 4) & 0xF00007FFFFFFFF8) + 3) & 6) == 0))
  {
    v8 = (*(cls + 4) & 0xF00007FFFFFFFF8);
    v10 = "objc_disposeClassPair: class '%s' was not allocated with objc_allocateClassPair!";
LABEL_19:
    v11 = class_rw_t::ro(v8);
    _objc_inform(v10, atomic_load_explicit((v11 + 24), memory_order_acquire));
    goto LABEL_20;
  }

  v7 = *(cls + 4);
  v8 = (v7 & 0xF00007FFFFFFFF8);
  if ((*(cls + 15) & 4) != 0)
  {
    v10 = "objc_disposeClassPair: class '%s' is a metaclass, not a class!";
    goto LABEL_19;
  }

  v9 = *((v7 & 0xF00007FFFFFFFF8) + 0x10);
  if (v9 != v6)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (*((*(v9 + 4) & 0xF00007FFFFFFFF8) + 0x18))
  {
LABEL_25:
    explicit = atomic_load_explicit((class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
    v15 = objc_class::nameForLogging(*((*(cls + 4) & 0xF00007FFFFFFFF8) + 0x10));
    _objc_inform("objc_disposeClassPair: class '%s' still has subclasses, including '%s'!", explicit, v15);
    v6 = (*cls & 0xFFFFFFFF8);
  }

LABEL_26:
  if (*((*(v6 + 4) & 0xF00007FFFFFFFF8) + 0x10))
  {
    v16 = atomic_load_explicit((class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
    v17 = objc_class::nameForLogging(*((*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8) + 0x10));
    _objc_inform("objc_disposeClassPair: class '%s' still has subclasses, including '%s'!", v16, v17);
    v6 = (*cls & 0xFFFFFFFF8);
  }

  detach_class(v6, 1);
  detach_class(cls, 0);
  free_class((*cls & 0xFFFFFFFF8));
  free_class(cls);
LABEL_20:
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800D18B8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_class *class_createInstances(objc_class *result, uint64_t a2, uint64_t a3, int a4)
{
  if (result)
  {
    v7 = result;
    objc_class::realizeIfNeeded(result);
    if ((*(v7 + 30) & 0xFF8) != 0)
    {
      v8 = (a2 + (*(v7 + 30) & 0xFF8) + 7) & 0xFFFFFFFFFFFFFFF0;
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
      if (((*(v18 + 8) + 7) & 0xFFFFFFF8) + a2 <= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = ((*(v18 + 8) + 7) & 0xFFFFFFF8) + a2;
      }

      if (a4)
      {
LABEL_4:
        v9 = 0;
        while (1)
        {
          v10 = malloc_type_calloc(1uLL, v8, 0x40000000000uLL);
          *(a3 + 8 * v9) = v10;
          if (!v10)
          {
            break;
          }

          if (a4 == ++v9)
          {
            goto LABEL_9;
          }
        }

        a4 = v9;
        if (!v9)
        {
          goto LABEL_21;
        }

LABEL_9:
        if ((v7 & 0xFF80000000000007) != 0)
        {
          _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v11, v12, v13, v7);
        }

        v14 = 0;
        v15 = 0;
        v16 = *(v7 + 30);
        do
        {
          v17 = *(a3 + 8 * v14);
          v17->isa = (v7 & 0x7FFFFFFFFFFFF8);
          if ((v16 & 2) != 0 && (v17 = object_cxxConstructFromClass(v17, v7, 1)) == 0)
          {
            ++v15;
          }

          else
          {
            *(a3 + 8 * (v14 - v15)) = v17;
          }

          ++v14;
        }

        while (a4 != v14);
        return (a4 - v15);
      }
    }

LABEL_21:
    v15 = 0;
    return (a4 - v15);
  }

  return result;
}

id object_copy(id a1, size_t a2)
{
  v2 = a1;
  if (a1 < 1)
  {
    return v2;
  }

  if ((*a1 & 0x7FFFFFFFFFFFF8) != 0)
  {
    v4 = *a1 & 0x7FFFFFFFFFFFF8;
  }

  else
  {
    v4 = 0;
  }

  objc_class::realizeIfNeeded(v4);
  v5 = *(v4 + 30);
  if ((v5 & 0xFF8) != 0)
  {
    v6 = (a2 + (v5 & 0xFF8) + 7) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v43 = class_rw_t::ro((*(v4 + 32) & 0xF00007FFFFFFFF8));
    if (((*(v43 + 8) + 7) & 0xFFFFFFF8) + a2 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = ((*(v43 + 8) + 7) & 0xFFFFFFF8) + a2;
    }
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x40000000000uLL);
  if (!v7)
  {
    return 0;
  }

  v11 = v7;
  v12 = v4 & 0xFF80000000000007;
  if ((v5 & 0x2000) != 0)
  {
    if (!v12)
    {
      v13 = v4 & 0x7FFFFFFFFFFFF8;
      goto LABEL_13;
    }

LABEL_46:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v8, v9, v10, v4);
  }

  if (v12)
  {
    goto LABEL_46;
  }

  v13 = v4 & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
LABEL_13:
  *v7 = v13;
  memmove(v7 + 8, v2 + 1, v6 - 8);
  v14 = *v2 & 0xFFFFFFFF8;
  if (v14)
  {
    while (1)
    {
      if ((*class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8)) & 0x280) != 0)
      {
        v15 = (*(class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8)) + 4) + 7) & 0xFFFFFFF8;
        v16 = class_data_bits_t::safe_ro<(Authentication)0>((v14 + 32));
        if ((*v16 & 1) == 0)
        {
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = *v17;
            if (*v17)
            {
              v19 = &v11[v15];
              do
              {
                v19 += v18 >> 4;
                v20 = v18 & 0xF;
                if ((v18 & 0xF) != 0)
                {
                  do
                  {
                    v22 = *v19++;
                    v21 = v22;
                    if (v22)
                    {
                      v23 = v21;
                    }

                    --v20;
                  }

                  while (v20);
                }

                v24 = *++v17;
                v18 = v24;
              }

              while (v24);
            }
          }
        }

        v25 = *(class_data_bits_t::safe_ro<(Authentication)0>((v14 + 32)) + 56);
        if (v25)
        {
          v26 = *v25;
          if (*v25)
          {
            v27 = (v2 + v15);
            v28 = &v11[v15];
            do
            {
              v28 += v26 >> 4;
              v27 += v26 >> 4;
              v29 = v26 & 0xF;
              if ((v26 & 0xF) != 0)
              {
                do
                {
                  --v29;
                  WeakRetained = objc_loadWeakRetained(v27);
                  objc_initWeak(v28, WeakRetained);

                  ++v28;
                  ++v27;
                }

                while (v29);
              }

              v31 = *++v25;
              v26 = v31;
            }

            while (v31);
          }
        }
      }

      v32 = class_rw_t::ro((*(v14 + 32) & 0xF00007FFFFFFFF8));
      v36 = *(v32 + 48);
      if (v36)
      {
        v37 = *v36;
        v38 = v36[1];
        v39 = v38 * v37;
        if ((v39 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v33, v34, v35, v38, *(v32 + 48), v37);
        }

        if (v39)
        {
          v40 = v39;
          v41 = v36 + 6;
          do
          {
            if (*v41 && **v41 == 58)
            {
              *&v11[**(v41 - 2)] = *(v2 + **(v41 - 2));
            }

            v41 = (v41 + v37);
            v40 -= v37;
          }

          while (v40);
        }
      }

      if (!*(v14 + 8))
      {
        break;
      }

      v14 = *(v14 + 8);
    }
  }

  return v11;
}

Class objc_getRequiredClass(const char *name)
{
  if (!name)
  {
    _objc_fatal("link error: class '%s' not found.", v1, v2, v3, 0);
  }

  result = look_up_class(name);
  if (!result)
  {
    _objc_fatal("link error: class '%s' not found.", v6, v7, v8, name);
  }

  return result;
}

Class objc_getMetaClass(Class name)
{
  if (name)
  {
    v1 = name;
    v2 = look_up_class(name);
    if (v2)
    {
      return (*v2 & 0xFFFFFFFF8);
    }

    else
    {
      return 0;
    }
  }

  return name;
}

void *std::__function::__func<appendHeader::$_0,std::allocator<appendHeader::$_0>,void ()(segment_command_64 const*,long)>::__clone()
{
  result = malloc_type_malloc(0x10uLL, 0x201A97EDuLL);
  *result = &unk_1EEE9B500;
  return result;
}

__n128 std::__function::__func<removeHeader::$_0,std::allocator<removeHeader::$_0>,void ()(segment_command_64 const*,long)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, __n128 a4)
{
  v4 = (*(*a2 + 24) + *a3);
  v5 = v4 + *(*a2 + 32);
  v11 = 0;
  if (!objc::SafeRanges::find(v4, &v11, a3, a4) || *(qword_1ED3F6300 + 16 * v11 + 8) != v5)
  {
    _objc_fatal("Cannot find range %#lx..%#lx", v6, v7, v8, v4, v5);
  }

  v10 = qword_1ED3F6308 - 1;
  LODWORD(qword_1ED3F6308) = v10;
  if (v11 < v10)
  {
    result = *(qword_1ED3F6300 + 16 * v10);
    *(qword_1ED3F6300 + 16 * v11) = result;
    HIDWORD(qword_1ED3F6308) &= ~0x80000000;
  }

  return result;
}

void *std::__function::__func<removeHeader::$_0,std::allocator<removeHeader::$_0>,void ()(segment_command_64 const*,long)>::__clone()
{
  result = malloc_type_malloc(0x10uLL, 0x201A97EDuLL);
  *result = &unk_1EEE9B548;
  return result;
}

void logReplacedMethod(const char *a1, char *a2, int a3, const char *a4, void *a5, const void *a6)
{
  if ("load" != a2)
  {
    v26 = v6;
    v27 = v7;
    v14 = dladdr(a5, &v25);
    if (v25.dli_fname)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      dli_fname = "??";
    }

    else
    {
      dli_fname = v25.dli_fname;
    }

    v17 = dladdr(a6, &v25);
    v18 = v25.dli_fname;
    if (v25.dli_fname)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v18 = "??";
    }

    v20 = "<null selector>";
    v21 = "by category ";
    if (a2)
    {
      v20 = a2;
    }

    v22 = "";
    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v21 = "";
    }

    v24 = v20;
    v23 = 45;
    if (a3)
    {
      v23 = 43;
    }

    _objc_inform("REPLACED: %c[%s %s]  %s%s  (IMP was %p (%s), now %p (%s))", v23, a1, v24, v21, v22, a5, dli_fname, a6, v18);
  }
}

void objc_setForwardHandler(void *fwd, void *fwd_stret)
{
  if (fwd)
  {
    v2 = fwd;
  }

  else
  {
    v2 = 0;
  }

  _objc_forward_handler = v2;
}

void objc_setHook_getImageName(objc_hook_getImageName newValue, objc_hook_getImageName *outOldValue)
{
  v2 = GetImageNameHook;
  while (1)
  {
    *outOldValue = v2;
    if (v2)
    {
      v3 = v2;
      if (newValue)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (newValue)
      {
LABEL_4:
        v4 = newValue;
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v5 = v3;
    atomic_compare_exchange_strong_explicit(&GetImageNameHook, &v5, v4, memory_order_release, memory_order_relaxed);
    if (v5 == v3)
    {
      break;
    }

    v2 = 0;
    if (v5)
    {
      v2 = v5;
    }
  }
}

void objc_enumerationMutation(id obj)
{
  v4 = enumerationMutationHandler;
  if (!enumerationMutationHandler)
  {
    _objc_fatal("mutation detected during 'for (... in ...)'  enumeration of object %p.", enumerationMutationHandler, v1, v2, obj);
  }

  v4(obj);
}

BOOL sel_isMapped(SEL sel)
{
  v1 = sel;
  if (sel)
  {
    if (_dyld_get_objc_selector() == sel)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v2 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(selLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v2)
      {
        os_unfair_lock_lock_with_options();
      }

      v4 = objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::find(v1);
      LOBYTE(v1) = (namedSelectors + 8 * dword_1ED3F60A0) != v4 && *v4 == v1;
      v5 = *(StatusReg + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(selLock, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(selLock);
      }
    }
  }

  return v1;
}

void sub_1800D244C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(selLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t objc_sync_try_enter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    v4 = id2data(a1, 1, 0, a4) + 6;

    return MEMORY[0x1EEE73FC0](v4);
  }

  else
  {
    if (DebugNilSync)
    {
      _objc_inform("NIL SYNC DEBUG: @synchronized(nil); set a breakpoint on objc_sync_nil to debug");
    }

    gdb_objc_class_changed();
    if (DebugNilSync == 2)
    {
      _objc_fatal("@synchronized(nil) is fatal", v5, v6, v7);
    }

    return 1;
  }
}

void objc_setProperty(id self, SEL _cmd, ptrdiff_t offset, id newValue, BOOL atomic, char shouldCopy)
{
  if (offset)
  {
    v7 = (self + offset);
    if ((shouldCopy & 0xFD) != 0)
    {
      v8 = [newValue copyWithZone:0];
    }

    else if (shouldCopy == 2)
    {
      v8 = [newValue mutableCopyWithZone:0];
    }

    else
    {
      if (*v7 == newValue)
      {
        return;
      }

      v8 = newValue;
    }

    v9 = v8;
    if (atomic)
    {
      v10 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)], &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        os_unfair_lock_lock_with_options();
      }

      v12 = *v7;
      *v7 = v9;
      v13 = *(StatusReg + 24);
      v14 = v13;
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)], &v14, 0, memory_order_release, memory_order_relaxed);
      if (v14 != v13)
      {
        os_unfair_lock_unlock(&PropertyLocks[16 * (((v7 >> 4) ^ (v7 >> 9)) & 7)]);
      }
    }

    else
    {
      v12 = *v7;
      *v7 = v8;
    }
  }

  else
  {

    object_setClass(self, newValue);
  }
}

void _objc_patch_root_of_class(int a1, objc_class *this, const char *a3, char *a4)
{
  v7 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    os_unfair_lock_lock_with_options();
  }

  if (PrintConnecting)
  {
    v9 = objc_class::nameForLogging(this);
    _objc_inform("CLASS: patching class '%s' (%p) to point to body of %p", v9, this, a4);
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    v12 = objc_debug_taggedpointer_classes[a4 & 7];
    if (v12)
    {
      v11 = objc_debug_taggedpointer_classes[a4 & 7];
      if (v12 != __NSUnrecognizedTaggedPointer)
      {
        goto LABEL_12;
      }

      v10 = objc_debug_taggedpointer_ext_classes[(a4 >> 55)];
      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = *a4 & 0x7FFFFFFFFFFFF8;
    if (v10)
    {
LABEL_7:
      v11 = v10;
      goto LABEL_12;
    }
  }

  v11 = 0;
LABEL_12:
  if ((v11 & 0xFF80000000000007) != 0)
  {
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", this, a3, a4, v11);
  }

  *this = v11 & 0x7FFFFFFFFFFFF8;
  if (*(a4 + 1))
  {
    v13 = *(a4 + 1);
  }

  else
  {
    v13 = 0;
  }

  *(this + 1) = v13;
  *(this + 2) = &_objc_empty_cache;
  *(this + 3) = 0;
  hasSignedClassROPointers(a3, 0);
  *(this + 4) = *(a4 + 4);
  v14 = *(StatusReg + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800D2A40(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *_objc_atfork_prepare()
{
  ForkIsMultithreaded = pthread_is_threaded_np() != 0;
  os_unfair_recursive_lock_lock_with_options();
  v0 = PropertyLocks;
  v1 = 8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v0, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v0 += 16;
    --v1;
  }

  while (v1);
  v4 = StructLocks;
  v5 = 8;
  do
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 += 16;
    --v5;
  }

  while (v5);
  v7 = CppObjectLocks;
  v8 = 8;
  do
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(v7, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    v7 += 16;
    --v8;
  }

  while (v8);
  v10 = &dword_1ED3F6448;
  v11 = &unk_1ED3F6480;
  do
  {
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v10, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      os_unfair_lock_lock_with_options();
    }

    v13 = v8 + 1;
    if (v8 <= 6)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 8);
    if (v8 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    v11 += 64;
    ++v8;
  }

  while (v13 != 8);
  v16 = 0;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v16, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    os_unfair_lock_lock_with_options();
  }

  v17 = 0;
  v19 = &unk_1ED3F6680;
  do
  {
    v20 = 0;
    atomic_compare_exchange_strong_explicit(result, &v20, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v20)
    {
      os_unfair_lock_lock_with_options();
    }

    v21 = v17 + 1;
    if (v17 <= 6)
    {
      result = v19;
    }

    else
    {
      result = 0;
    }

    v19 += 16;
    ++v17;
  }

  while (v21 != 8);
  v22 = 0;
  atomic_compare_exchange_strong_explicit(classInitLock, &v22, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v22)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v23 = 0;
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v23, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v23)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v24 = 0;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v24, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v24)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v25 = 0;
  atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v25, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v25)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v26 = 0;
  atomic_compare_exchange_strong_explicit(selLock, &v26, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v26)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v27 = 0;
  atomic_compare_exchange_strong_explicit(objcMsgLogLock, &v27, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v27)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v28 = 0;
  atomic_compare_exchange_strong_explicit(AltHandlerDebugLock, &v28, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v28)
  {
    result = os_unfair_lock_lock_with_options();
  }

  v29 = 0;
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v29, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v29)
  {

    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void _objc_atfork_parent()
{
  os_unfair_recursive_lock_unlock();
  v0 = PropertyLocks;
  v1 = 8;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v3 = *(StatusReg + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(v0, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(v0);
    }

    v0 += 16;
    --v1;
  }

  while (v1);
  v5 = StructLocks;
  v6 = 8;
  do
  {
    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v5);
    }

    v5 += 16;
    --v6;
  }

  while (v6);
  v9 = CppObjectLocks;
  v10 = 8;
  do
  {
    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(v9);
    }

    v9 += 16;
    --v10;
  }

  while (v10);
  v13 = &dword_1ED3F6448;
  v14 = &unk_1ED3F6480;
  do
  {
    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(v13, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != v15)
    {
      os_unfair_lock_unlock(v13);
    }

    v17 = v10 + 1;
    if (v10 <= 6)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 + 2;
    if (v10 <= 6)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    v14 += 16;
    ++v10;
  }

  while (v17 != 8);
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  v22 = 0;
  v24 = &unk_1ED3F6680;
  do
  {
    v25 = *(StatusReg + 24);
    v26 = v25;
    atomic_compare_exchange_strong_explicit(v23, &v26, 0, memory_order_release, memory_order_relaxed);
    if (v26 != v25)
    {
      os_unfair_lock_unlock(v23);
    }

    v27 = v22 + 1;
    if (v22 <= 6)
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v24 += 16;
    ++v22;
  }

  while (v27 != 8);
  v28 = *(StatusReg + 24);
  v29 = v28;
  atomic_compare_exchange_strong_explicit(classInitLock, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != v28)
  {
    os_unfair_lock_unlock(classInitLock);
  }

  v30 = *(StatusReg + 24);
  v31 = v30;
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != v30)
  {
    os_unfair_lock_unlock(&pendingInitializeMapLock);
  }

  v32 = *(StatusReg + 24);
  v33 = v32;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != v32)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v34 = *(StatusReg + 24);
  v35 = v34;
  atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != v34)
  {
    os_unfair_lock_unlock(DemangleCacheLock);
  }

  v36 = *(StatusReg + 24);
  v37 = v36;
  atomic_compare_exchange_strong_explicit(selLock, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != v36)
  {
    os_unfair_lock_unlock(selLock);
  }

  v38 = *(StatusReg + 24);
  v39 = v38;
  atomic_compare_exchange_strong_explicit(objcMsgLogLock, &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != v38)
  {
    os_unfair_lock_unlock(objcMsgLogLock);
  }

  v40 = *(StatusReg + 24);
  v41 = v40;
  atomic_compare_exchange_strong_explicit(AltHandlerDebugLock, &v41, 0, memory_order_release, memory_order_relaxed);
  if (v41 != v40)
  {
    os_unfair_lock_unlock(AltHandlerDebugLock);
  }

  v42 = *(StatusReg + 24);
  v43 = v42;
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v43, 0, memory_order_release, memory_order_relaxed);
  if (v43 != v42)
  {

    os_unfair_lock_unlock(&crashlog_lock);
  }
}

void _objc_atfork_child()
{
  if (ForkIsMultithreaded == 1 && DisableInitializeForkSafety == 0)
  {
    MultithreadedForkChild = 1;
  }

  v1 = 0;
  loadMethodLock = 0;
  do
  {
    PropertyLocks[v1] = 0;
    v1 += 16;
  }

  while (v1 != 128);
  for (i = 0; i != 128; i += 16)
  {
    StructLocks[i] = 0;
  }

  for (j = 0; j != 128; j += 16)
  {
    CppObjectLocks[j] = 0;
  }

  v4 = 0;
  v5 = &dword_1ED3F6448;
  v6 = &unk_1ED3F6480;
  do
  {
    *v5 = 0;
    v7 = v4 + 1;
    if (v4 <= 6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v5 = (v8 + 8);
    if (v4 > 6)
    {
      v5 = 0;
    }

    v6 += 64;
    ++v4;
  }

  while (v7 != 8);
  v9 = 0;
  AssociationsManagerLock = 0;
  v11 = &unk_1ED3F6680;
  do
  {
    v12 = v9 + 1;
    *v10 = 0;
    if (v9 <= 6)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v11 += 16;
    ++v9;
  }

  while (v12 != 8);
  classInitLock[0] = 0;
  pendingInitializeMapLock = 0;
  runtimeLock[0] = 0;
  DemangleCacheLock[0] = 0;
  selLock[0] = 0;
  objcMsgLogLock[0] = 0;
  AltHandlerDebugLock[0] = 0;
  crashlog_lock = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v14 = StatusReg[40];
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      free(v15);
    }

    *(v14 + 8) = 0;
  }

  v16 = 0;
  StatusReg[41] = 0;
  StatusReg[42] = 0;
  do
  {
    v17 = (&sDataLists + 64 * v16);
    v18 = *v17;
    if (*v17)
    {
      do
      {
        v19 = *v18;
        free(v18);
        v18 = v19;
      }

      while (v19);
    }

    *v17 = 0;
    ++v16;
  }

  while (v16 != 8);
  InitializingClassList = _fetchInitializingClassList(0);
  if (InitializingClassList)
  {
    v24 = InitializingClassList;
    v25 = *InitializingClassList;
    if (*InitializingClassList >= 1)
    {
      v26 = 0;
      do
      {
        v27 = *(v24[1] + 8 * v26);
        if (v27)
        {
          WAITING_FOR_A_CLASS__initialize_LOCK(v27, v21, v22, v23);
          v25 = *v24;
        }

        ++v26;
      }

      while (v26 < v25);
    }
  }
}

id imp_getBlock(IMP anImp)
{
  v1 = anImp;
  if (anImp)
  {
    v2 = 0;
    v8 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 = pageAndIndexContainingIMP(v1, &v8);
    if (v4)
    {
      if (v4[v8] <= 0x800)
      {
        v1 = 0;
      }

      else
      {
        v1 = v4[v8];
      }
    }

    else
    {
      v1 = 0;
    }

    v5 = *(StatusReg + 24);
    v6 = v5;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != v5)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v1;
}

void *weak_entry_for_referent(void *a1, unint64_t a2, const char *a3, char *a4)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1[2];
  v6 = (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (1217387093 * (a2 ^ (a2 >> 4)))) & v5;
  v7 = v6;
  while (1)
  {
    v8 = (*a1 + 40 * v7);
    if (!(a2 + *v8))
    {
      break;
    }

    v7 = (v7 + 1) & v5;
    if (v7 == v6)
    {
      _objc_fatal("bad weak table at %p. This may be a runtime bug or a memory error somewhere else.", a2, a3, a4, *a1);
    }

    if (++v4 > a1[3])
    {
      return 0;
    }
  }

  return v8;
}

uint64_t _initializeSwiftRefcountingThenCallRetain(objc_object *a1, double a2)
{
  Helper_x16__swift_retain = gotLoadHelper_x16__swift_retain(a2);
  *v4 = *(v3 + 3408);
  Helper_x16__swift_release = gotLoadHelper_x16__swift_release(Helper_x16__swift_retain);
  *v7 = *(v6 + 3400);
  return (*v8)(Helper_x16__swift_release);
}

uint64_t objc_object::sidetable_getExtraRC_nolock(objc_object *this)
{
  if ((*(v1 + 1) + 16 * v1[6]) == v2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 1) >> 2;
  }
}

uint64_t objc_object::sidetable_retainCount(objc_object *this)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v3, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*(v3 + 1) + 16 * v3[6]) == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = (*(v5 + 1) >> 2) + 1;
  }

  v7 = *(StatusReg + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(v3, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(v3);
  }

  return v6;
}

void (*_objc_setBadAllocHandler(void (*result)(objc_class *)))(objc_class *)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  badAllocHandler = v1;
  return result;
}

uint64_t weakTableScan(void)
{
  v0 = 0;
  v1 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = StatusReg;
  do
  {
    v3 = 0;
    atomic_compare_exchange_strong_explicit(v4, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v5 = *(v4 + 6);
    if (v5)
    {
      for (i = 0; i <= v5; ++i)
      {
        v7 = (*(v4 + 4) + 40 * i);
        if ((v7[2] & 3) == 2)
        {
          v8 = v7[1];
          v9 = v7[3] + 1;
        }

        else
        {
          v8 = v7 + 1;
          v9 = 4;
        }

        v10 = *v7;
        if (v10)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = -v10;
          do
          {
            if (*v8)
            {
              v13 = -*v8;
              if (*v13 != v12)
              {
                _objc_inform_now_and_on_crash("Weak reference at %p contains %p, should contain %p", v13, *v13, v12);
                v0 = 1;
              }
            }

            ++v8;
            --v9;
          }

          while (v9);
        }
      }
    }

    StatusReg = v17;
    v14 = *(v17 + 24);
    v15 = v14;
    atomic_compare_exchange_strong_explicit(v4, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != v14)
    {
    }

    ++v1;
  }

  while (v1 != 8);
  return v0 & 1;
}

void objc_clear_deallocating(objc_object *this, uint64_t a2, const char *a3, char *a4)
{
  if ((this & 0x8000000000000000) == 0)
  {
    if (this->isa)
    {
      if ((this->isa & 0x80000000000004) != 0)
      {
        objc_object::clearDeallocating_slow(this, a2, a3, a4);
      }
    }

    else
    {
      objc_object::sidetable_clearDeallocating(this);
    }
  }
}

BOOL _objc_rootReleaseWasZero(objc_object *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  isa = a1->isa;
  if (a1->isa)
  {
    while (isa >> 55)
    {
      v2 = isa - 0x100000000000000;
      if (isa < 0x100000000000000)
      {
        return objc_object::rootRelease_underflow(a1, 0);
      }

      v3 = isa;
      atomic_compare_exchange_strong_explicit(a1, &v3, v2, memory_order_release, memory_order_relaxed);
      if (v3 == isa)
      {
        if (v2 >> 55)
        {
          return 0;
        }

        __dmb(9u);
        return 1;
      }

      isa = v3;
      if ((v3 & 1) == 0)
      {
        return objc_object::sidetable_release(a1, 0, 0);
      }
    }

    return 0;
  }

  if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) != 0)
  {
    return 0;
  }

  return objc_object::sidetable_release(a1, 0, 0);
}

void weakTableScanThread(void *a1)
{
  pthread_setname_np("ObjC weak reference scanner");
  v6 = xmmword_1800DA180;
  v1 = getenv("OBJC_DEBUG_SCAN_WEAK_TABLES_INTERVAL_NANOSECONDS");
  if (v1)
  {
    v2 = strtoull(v1, 0, 10);
    *&v6 = v2 / 0x3B9ACA00;
    *(&v6 + 1) = v2 % 0x3B9ACA00;
  }

  do
  {
    nanosleep(&v6, 0);
  }

  while (!weakTableScan());
  _objc_fatal("Weak table scan detected a problem", v3, v4, v5, v6);
}

void *objc_tls_direct_base<unsigned long,(tls_key)4,ReturnAutoreleaseInfo::TlsDealloc>::dtor_(uint64_t a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    result = (*(StatusReg + 352) & 0xFFFFFFFFFFFFFFFCLL);
    if (!result)
    {
      break;
    }

    *(StatusReg + 352) = 0;
    *(StatusReg + 360) = 0;
  }

  return result;
}

uint64_t __getPreoptimizedClassesWithMetaClass_block_invoke(uint64_t result, void *a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    if (*(result + 40) == (*a2 & 0xFFFFFFFF8))
    {
      **(result + 32) = a2;
      *a4 = 1;
    }
  }

  return result;
}

__n128 __copy_helper_block_e8_32c48_ZTSKZ35getPreoptimizedClassesWithMetaClassE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void _objc_error(objc_object *a1, va_list a2, char *a3)
{
  v8 = 0;
  vasprintf(&v8, "invalid selector (null)", a2);
  ClassName = object_getClassName(a1);
  _objc_fatal("%s: %s", v5, v6, v7, ClassName, v8);
}

void _objc_stochastic_fault(const char *a1, ...)
{
  va_start(va, a1);
  v2 = arc4random_uniform(0x100000u) < 0x1999A;
  _objc_fault_impl(1, v2, a1, va);
}

void _objc_inform_now_and_on_crash(const char *a1, ...)
{
  va_start(va, a1);
  v3[0] = 0;
  __s1 = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a1, va);
  v1 = getpid();
  asprintf(&__s1, "objc[%d]: %s\n", v1, v3[0]);
  _objc_crashlog(__s1);
  _objc_syslog(__s1);
  free(__s1);
  free(v3[0]);
}

void _objc_inform_deprecated(const char *a1, const char *a2)
{
  if (PrintDeprecation)
  {
    _objc_inform("The function %s is obsolete. Do not use it. Set a breakpoint on _objc_warn_deprecated to find the culprit.", a1);
  }

  gdb_objc_class_changed();
}

void objc_exception_rethrow(void)
{
  if (PrintExceptions)
  {
    _objc_inform("EXCEPTIONS: rethrowing current exception");
  }

  __cxa_rethrow();
}

void printReplacements(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if (a3)
  {
    v4 = 0;
    v57 = *(a1 + 30);
    v54 = a3;
    v5 = *algn_1ED3F62F8;
    v60 = dataSegmentsRanges;
    while (1)
    {
      v6 = *(a2 + 16 * v4);
      v55 = v6;
      if ((v57 & 4) != 0)
      {
        v7 = *(v6 + 24);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v7 = *(v6 + 16);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      v8 = *v7;
      v9 = v8 >> 31;
      if (v7 < 0)
      {
        v9 = 2;
      }

      v10 = v9 | (v7 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v7, a2, a3, a4);
      v56 = a2;
      if (v10 != a2)
      {
        break;
      }

LABEL_68:
      if (++v4 == v54)
      {
        return;
      }
    }

LABEL_10:
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v10 & 3) != 0)
    {
      if ((v10 & 3) == 2)
      {
        if (*v11)
        {
          v12 = *v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v13 = *v11;
        if (v60 <= v11 && v5 > v11)
        {
          v12 = &byte_1FA920D78[v13];
        }

        else
        {
          v12 = *(v11 + v13);
        }
      }
    }

    else
    {
      v12 = *v11;
    }

    v18 = __sel_registerName(v12, 1, 1);
    if (!v4)
    {
LABEL_48:
      class_rw_t::methods(v64, *(a1 + 32) & 0xF00007FFFFFFFF8);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v62, v64, v36, v37);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v61, v64, v38, v39);
      while (!list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v62, v61))
      {
        v40 = v63;
        v41 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v63 & 3) != 0)
        {
          if ((v63 & 3) == 2)
          {
            if (*v41)
            {
              v42 = *v41;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v43 = *v41;
            if (v60 <= v41 && v5 > v41)
            {
              v42 = &byte_1FA920D78[v43];
            }

            else
            {
              v42 = *(v41 + v43);
            }
          }
        }

        else
        {
          v42 = *v41;
        }

        if (v18 == __sel_registerName(v42, 1, 1))
        {
          v48 = objc_class::nameForLogging(a1);
          v49 = (*(a1 + 30) >> 2) & 1;
          v50 = *v55;
          v51 = v40;
          goto LABEL_66;
        }

        list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v62, v45, v46, v47);
      }

      goto LABEL_67;
    }

    v19 = 0;
    while (1)
    {
      v20 = *(a2 + 16 * v19);
      if ((v57 & 4) != 0)
      {
        v21 = *(v20 + 24);
        if (!v21)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v21 = *(v20 + 16);
        if (!v21)
        {
          goto LABEL_47;
        }
      }

      v22 = *v21;
      v23 = v21[1];
      v24 = v22 & 0xFFFC;
      v25 = v23 * v24;
      if ((v25 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v15, v16, v17, v23, v21, v22 & 0xFFFC);
      }

      v26 = v22 >> 31;
      if (v21 < 0)
      {
        v26 = 2;
      }

      v27 = (v21 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = (v21 + v25 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v27 != v28)
      {
        v29 = v28 | v26;
        v30 = v26 | v27;
        v31 = v26 | v27;
        while (1)
        {
          v32 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v30 & 3) != 0)
          {
            if ((v30 & 3) == 2)
            {
              v33 = *v32 ? *v32 : 0;
            }

            else
            {
              v34 = *v32;
              v35 = v60 <= v32 && v5 > v32;
              v33 = v35 ? &byte_1FA920D78[v34] : *(v32 + v34);
            }
          }

          else
          {
            v33 = *v32;
          }

          if (v18 == __sel_registerName(v33, 1, 1))
          {
            break;
          }

          v31 += v24;
          v30 += v24;
          if (v31 == v29)
          {
            goto LABEL_47;
          }
        }

        v48 = objc_class::nameForLogging(a1);
        v49 = (*(a1 + 30) >> 2) & 1;
        v50 = *v55;
        v51 = v31;
LABEL_66:
        v52 = method_t::impRaw(v51);
        v53 = method_t::impRaw(v10);
        logReplacedMethod(v48, v18, v49, v50, v52, v53);
LABEL_67:
        v10 += v8 & 0xFFFC;
        if (v10 == v56)
        {
          goto LABEL_68;
        }

        goto LABEL_10;
      }

LABEL_47:
      if (++v19 == v4)
      {
        goto LABEL_48;
      }
    }
  }
}

void objc_defaultForwardHandler(objc_object *a1, objc_selector *a2)
{
  Class = object_getClass(a1);
  isMetaClass = class_isMetaClass(Class);
  ClassName = object_getClassName(a1);
  v10 = "<null selector>";
  if (a2)
  {
    v10 = a2;
  }

  v12 = v10;
  v11 = 45;
  if (isMetaClass)
  {
    v11 = 43;
  }

  _objc_fatal("%c[%s %s]: unrecognized selector sent to instance %p (no message forward handler is installed)", v7, v8, v9, v11, ClassName, v12, a1);
}

void AutoreleasePoolPage::badPop(AutoreleasePoolPage *this, void *a2)
{
  if (DebugPoolAllocation == 2 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0 || (dyld_program_sdk_at_least() & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
  }

  if (AutoreleasePoolPage::badPop(void *)::complained)
  {
    gdb_objc_class_changed();
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_16:
    _objc_fatal("Invalid autorelease pools are a fatal error", v4, v5, v6);
  }

  AutoreleasePoolPage::badPop(void *)::complained = 1;
  _objc_inform_now_and_on_crash("Invalid or prematurely-freed autorelease pool %p. Set a breakpoint on objc_autoreleasePoolInvalid to debug. ", this);
  if (v3)
  {
    gdb_objc_class_changed();
    goto LABEL_16;
  }

  _objc_inform("Proceeding anyway.  Memory errors are likely.");

  gdb_objc_class_changed();
}

void AutoreleasePoolPage::printHiwat(AutoreleasePoolPage *this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 344);
  if (v2 && *v2 != -1583242847)
  {
    AutoreleasePoolPage::busted_die(*(StatusReg + 344));
  }

  v3 = ((*(v2 + 16) - v2 - 56) >> 3) + (*(v2 + 48) << 9);
  if (*(v2 + 52) + 256 < v3)
  {
    v4 = 0;
    do
    {
      *(v2 + 52) = v3;
      v4 += AutoreleasePoolPage::sumOfExtraReleases(v2);
      v2 = *(v2 + 32);
    }

    while (v2);
    _objc_inform("POOL HIGHWATER: new high water mark of %u pending releases for thread %p:", v3, *StatusReg);
    if (v4)
    {
      _objc_inform("POOL HIGHWATER: extra sequential autoreleases of objects: %u", v4);
    }

    _objc_inform_backtrace(v5);
  }
}

uint64_t AutoreleasePoolPage::sumOfExtraReleases(AutoreleasePoolPage *this)
{
  v1 = (this + 56);
  v2 = *(this + 2);
  if (this + 56 >= v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v4 = *v1++;
    v5 = result + ((v4 >> 44) & 0xFF0 | (v4 >> 60));
    if (v4)
    {
      result = v5;
    }

    else
    {
      result = result;
    }
  }

  while (v1 < v2);
  return result;
}

void AutoreleasePoolPage::printAll(AutoreleasePoolPage *this)
{
  _objc_inform("##############");
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  _objc_inform("AUTORELEASE POOLS for thread %p", *StatusReg);
  v2 = *(StatusReg + 344);
  if (v2 >= 2)
  {
    if (*v2 != -1583242847)
    {
LABEL_14:
      AutoreleasePoolPage::busted_die(v2);
    }

    while (1)
    {
      v3 = *(v2 + 32);
      if (!v3)
      {
        break;
      }

      v2 = *(v2 + 32);
      if (*v3 != -1583242847)
      {
        AutoreleasePoolPage::busted_die(v3);
      }
    }

    do
    {
      v3 = (v3 + ((*(v2 + 16) - v2 - 56) >> 3));
      v2 = *(v2 + 40);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  _objc_inform("%llu releases pending.", v3);
  v4 = *(StatusReg + 344);
  if (v4 == 1)
  {
    _objc_inform("[%p]  ................  PAGE (placeholder)", 1);
    _objc_inform("[%p]  ################  POOL (placeholder)", 1);
  }

  else if (v4 >= 2)
  {
    if (*v4 != -1583242847)
    {
      AutoreleasePoolPage::busted_die(v4);
    }

    while (1)
    {
      v2 = *(v4 + 32);
      if (!v2)
      {
        break;
      }

      v4 = *(v4 + 32);
      if (*v2 != -1583242847)
      {
        goto LABEL_14;
      }
    }

    do
    {
      AutoreleasePoolPage::print(v4);
      v4 = *(v4 + 40);
    }

    while (v4);
  }

  _objc_inform("##############");
}

void AutoreleasePoolPage::print(AutoreleasePoolPage *this)
{
  v2 = "";
  if (*(this + 2) == (this + 4096))
  {
    v3 = "(full)";
  }

  else
  {
    v3 = "";
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = StatusReg[43];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
      goto LABEL_9;
    }

    if (*v5 != -1583242847)
    {
      goto LABEL_30;
    }
  }

  v6 = StatusReg[43];
LABEL_9:
  if (v6 == this)
  {
    v7 = "(hot)";
  }

  else
  {
    v7 = "";
  }

  if (v5 >= 2)
  {
    while (*v5 == -1583242847)
    {
      v8 = v5;
      v5 = *(v5 + 32);
      if (!v5)
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    AutoreleasePoolPage::busted_die(v5);
  }

  v8 = 0;
LABEL_16:
  if (v8 == this)
  {
    v2 = "(cold)";
  }

  _objc_inform("[%p]  ................  PAGE %s %s %s", this, v3, v7, v2);
  if (*this != -1583242847 || strncmp(this + 4, "AUTORELEASE!", 0xCuLL) || *(this + 3) != *StatusReg)
  {
    AutoreleasePoolPage::busted<void (*)(char const*,...)>(this, _objc_inform);
  }

  v9 = (this + 56);
  if (this + 56 < *(this + 2))
  {
    do
    {
      v10 = *v9;
      if (*v9)
      {
        if ((v10 >> 44) & 0xFF0 | (v10 >> 60))
        {
          object_getClassName((v10 & 0xF00FFFFFFFFFFFFLL));
          _objc_inform("[%p]  %#16lx  %s  autorelease count %lu");
        }

        else
        {
          object_getClassName(*v9);
          _objc_inform("[%p]  %#16lx  %s");
        }
      }

      else
      {
        _objc_inform("[%p]  ################  POOL %p");
      }

      ++v9;
    }

    while (v9 < *(this + 2));
  }
}

double gotLoadHelper_x16__swift_release(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libswiftCore_dylib))
  {
    return dlopenHelper_libswiftCore_dylib(result);
  }

  return result;
}

double gotLoadHelper_x16__swift_retain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libswiftCore_dylib))
  {
    return dlopenHelper_libswiftCore_dylib(result);
  }

  return result;
}