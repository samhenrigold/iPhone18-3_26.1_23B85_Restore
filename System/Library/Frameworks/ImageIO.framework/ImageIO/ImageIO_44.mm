std::string *XMPUtils::Trim(std::string *this)
{
  v1 = this;
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = this->__r_.__value_.__l.__size_;
  }

  v7 = *(XMPUtils::WhiteSpaceStrPtr + 23);
  if (v7 >= 0)
  {
    v8 = XMPUtils::WhiteSpaceStrPtr;
  }

  else
  {
    v8 = *XMPUtils::WhiteSpaceStrPtr;
  }

  if (v7 >= 0)
  {
    v9 = *(XMPUtils::WhiteSpaceStrPtr + 23);
  }

  else
  {
    v9 = *(XMPUtils::WhiteSpaceStrPtr + 8);
  }

  v10 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  while (v6)
  {
    v11 = v6;
    if (v9)
    {
      this = memchr(v8, v10[v6], v9);
      v6 = v11 - 1;
      if (this)
      {
        continue;
      }
    }

    std::string::erase(v1, v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
    if (v12 >= 0)
    {
      v13 = v1;
    }

    else
    {
      v13 = v1->__r_.__value_.__r.__words[0];
    }

    if (v12 >= 0)
    {
      v14 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v1->__r_.__value_.__l.__size_;
    }

    v15 = *(XMPUtils::WhiteSpaceStrPtr + 23);
    if (v15 >= 0)
    {
      v16 = XMPUtils::WhiteSpaceStrPtr;
    }

    else
    {
      v16 = *XMPUtils::WhiteSpaceStrPtr;
    }

    if (v15 >= 0)
    {
      v17 = *(XMPUtils::WhiteSpaceStrPtr + 23);
    }

    else
    {
      v17 = *(XMPUtils::WhiteSpaceStrPtr + 8);
    }

    if (!v14)
    {
      return v1;
    }

    v18 = v13;
    if (v17)
    {
      while (memchr(v16, *v18, v17))
      {
        ++v18;
        if (!--v14)
        {
          return v1;
        }
      }
    }

    v20 = &v18[-v13];
    if (&v18[-v13] == -1)
    {
      return v1;
    }

    goto LABEL_39;
  }

  if ((v2 & 0x80) == 0)
  {
    v19 = v1 + v2;
    v3 = v1;
LABEL_38:
    v20 = &v19[-v3];
LABEL_39:
    std::string::erase(v1, 0, v20);
    return v1;
  }

  if ((size & 0x8000000000000000) == 0)
  {
    v19 = (v3 + size);
    goto LABEL_38;
  }

  __break(1u);
  return this;
}

uint64_t XMPUtils::MapXMPErrorToIError(uint64_t result, int *a2, _DWORD *a3)
{
  if (result > 103)
  {
    if (result > 200)
    {
      if (result <= 202)
      {
        if (result != 201)
        {
          v3 = 101;
          result = 2;
          goto LABEL_26;
        }

        v3 = 101;
LABEL_25:
        result = 1;
        goto LABEL_26;
      }

      if (result != 203)
      {
        if (result == 204)
        {
          v3 = 100;
          result = 107;
          goto LABEL_26;
        }

        if (result == 205)
        {
          v3 = 100;
          result = 105;
          goto LABEL_26;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (result > 106)
      {
        if ((result - 108) >= 0xB && result == 107)
        {
          v3 = 102;
          goto LABEL_25;
        }

LABEL_7:
        v3 = 1;
        result = 10000;
        goto LABEL_26;
      }

      if (result == 104)
      {
        v3 = 1;
        result = 5;
        goto LABEL_26;
      }

      if (result == 105)
      {
        v3 = 100;
        result = 104;
        goto LABEL_26;
      }
    }

    v3 = 101;
    result = 3;
    goto LABEL_26;
  }

  if (result > 100)
  {
    v3 = 100;
  }

  else
  {
    v3 = 1;
    result = 6;
  }

LABEL_26:
  *a3 = result;
  *a2 = v3;
  return result;
}

uint64_t EstimateSizeForJPEG(const XMP_Node *a1)
{
  v1 = *(a1 + 39);
  if (v1 < 0)
  {
    v1 = *(a1 + 3);
  }

  v2 = *(*(a1 + 8) + 8);
  v3 = *(a1 + 2);
  if ((v3 & 0x1F00) != 0)
  {
    v4 = 2 * v1;
    v6 = *(a1 + 9);
    v5 = *(a1 + 10);
    if ((v3 & 0x200) != 0)
    {
      v14 = 19;
      if ((*(*(a1 + 8) + 8) & 0x200) == 0)
      {
        v14 = v4 + 24;
      }

      v15 = v5 - v6;
      v7 = 2 * v15 + (v15 >> 3) + v14;
      if (v15)
      {
        v16 = v15 >> 3;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          v18 = *v6++;
          v7 += EstimateSizeForJPEG(v18);
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      if ((v2 & 0x200) != 0)
      {
        v7 = 25;
      }

      else
      {
        v7 = v4 + 30;
      }

      v8 = v5 - v6;
      if (v8)
      {
        v9 = v8 >> 3;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        do
        {
          v11 = *v6++;
          v7 += EstimateSizeForJPEG(v11);
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v12 = v1 + 3;
    if ((v2 & 0x200) != 0)
    {
      v12 = 0;
    }

    v13 = *(a1 + 63);
    if (v13 < 0)
    {
      v13 = *(a1 + 6);
    }

    return v13 + v12;
  }

  return v7;
}

void *std::__tree<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<std::string *,std::string *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<std::string *,std::string *>>>>::__find_leaf(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a1 + 1;
  if (a1 + 1 != a2 && a2[4] < *a4)
  {
    while (1)
    {
      v5 = *v4;
      a2 = v4;
      if (!*v4)
      {
        break;
      }

      while (1)
      {
        v4 = v5;
        if (v5[4] >= *a4)
        {
          break;
        }

        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_20:
    *a3 = v4;
    return a2;
  }

  v6 = *a2;
  if (*a1 == a2)
  {
    v8 = a2;
  }

  else
  {
    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v9 = a2;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (v10);
    }

    if (*a4 < v8[4])
    {
      while (1)
      {
        v11 = *v4;
        a2 = v4;
        if (!*v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          v4 = v11;
          if (*a4 < v11[4])
          {
            break;
          }

          v11 = v11[1];
          if (!v11)
          {
LABEL_19:
            a2 = v4 + 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  if (v6)
  {
    *a3 = v8;
    return v8 + 1;
  }

  else
  {
    *a3 = a2;
  }

  return a2;
}

uint64_t EstimateSizeForJPEG(std::__shared_weak_count **a1)
{
  v32 = 0;
  v33 = 0;
  DefaultNameSpacePrefixMap = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v32);
  ((*a1)->__vftable[1].__on_zero_shared_weak)(&v30, DefaultNameSpacePrefixMap);
  v3 = (v30->__vftable[5].~__shared_weak_count_0)(v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v4 = v32;
  ((*a1)->__vftable[2].~__shared_weak_count_0)(&v29);
  v5 = (*(*v29 + 192))(v29);
  ((*a1)->__vftable[2].~__shared_weak_count_0)(&v28);
  v6 = (*(*v28 + 208))(v28);
  (*(*v4 + 88))(&v30, v4, v5, v6);
  v7 = (v30->__vftable[5].~__shared_weak_count_0)(v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  if (*(&v28 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
  }

  if (*(&v29 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v29 + 1));
  }

  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(&v30);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  ((*a1)->__vftable[1].__on_zero_shared)(&v30);
  v10 = (v30->__vftable[1].~__shared_weak_count)(v30);
  v11 = v3 + 1;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v12 = v11 + v7;
  if (IXMPOptions > 0xFF)
  {
    if ((IXMPOptions & 0x200) != 0)
    {
      v30 = 0;
      v31 = 0;
      ((*a1)->__vftable[6].~__shared_weak_count_0)(&v30);
      if (v10 == 2)
      {
        v22 = 19;
      }

      else
      {
        v22 = 2 * v12 + 24;
      }

      v23 = ((*(&v30->__vftable + v30->__vftable[-18].__on_zero_shared_weak))[14].~__shared_weak_count)(v30 + v30->__vftable[-18].__on_zero_shared_weak);
      v29 = 0uLL;
      ((*(&v30->__vftable + v30->__vftable[-18].__on_zero_shared_weak))[13].__on_zero_shared_weak)(&v29, v30 + v30->__vftable[-18].__on_zero_shared_weak);
      v15 = 17 * v23 + v22;
      for (i = v29; i; v15 += v25)
      {
        (*(*i + 48))(&v28);
        v25 = EstimateSizeForJPEG(&v28);
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
        }

        (*(*v29 + 56))(&v28);
        v26 = v28;
        v28 = 0uLL;
        v27 = *(&v29 + 1);
        v29 = v26;
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
          }

          i = v29;
        }

        else
        {
          i = v26;
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      ((*a1)->__vftable[6].~__shared_weak_count)(&v30);
      if (v10 == 2)
      {
        v15 = 25;
      }

      else
      {
        v15 = 2 * v12 + 30;
      }

      ((*(&v30->__vftable + v30->__vftable[-18].__on_zero_shared_weak))[14].~__shared_weak_count)(v30 + v30->__vftable[-18].__on_zero_shared_weak);
      v29 = 0uLL;
      ((*(&v30->__vftable + v30->__vftable[-18].__on_zero_shared_weak))[13].__on_zero_shared_weak)(&v29, v30 + v30->__vftable[-18].__on_zero_shared_weak);
      for (j = v29; j; v15 += v19)
      {
        (*(*j + 48))(&v28);
        v19 = EstimateSizeForJPEG(&v28);
        if (*(&v28 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
        }

        (*(*v29 + 56))(&v28);
        v20 = v28;
        v28 = 0uLL;
        v21 = *(&v29 + 1);
        v29 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v21);
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v28 + 1));
          }

          j = v29;
        }

        else
        {
          j = v20;
        }
      }
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v29 + 1));
    }

    v16 = v31;
    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v10 == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 + 3;
    }

    ((*a1)->__vftable[5].__on_zero_shared_weak)(&v29);
    (*(*v29 + 504))(&v30);
    v14 = (v30->__vftable[5].~__shared_weak_count_0)(v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v31);
    }

    v15 = v14 + v13;
    v16 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
LABEL_22:
      std::__shared_weak_count::__release_shared[abi:fe200100](v16);
    }
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v33);
  }

  return v15;
}

void sub_1860F0C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaysInMonth(int a1, int a2)
{
  LODWORD(v2) = a1;
  result = DaysInMonth(int,int)::daysInMonth[a2];
  if (a2 == 2)
  {
    v2 = v2 >= 0 ? v2 : 1 - v2;
    if ((v2 & 3) == 0)
    {
      v4 = 0x8F5C28F5C28F5C29 * v2;
      v5 = __ROR8__(v4, 2);
      v6 = __ROR8__(v4, 4);
      if (v5 <= 0x28F5C28F5C28F5CLL && v6 >= 0xA3D70A3D70A3D8)
      {
        return result;
      }

      else
      {
        return (result + 1);
      }
    }
  }

  return result;
}

void std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1 const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void **std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<XPathStepInfo>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<XPathStepInfo>::clear[abi:fe200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void XMPUtils::ComposeArrayItemPath()
{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1942, "_fullPath != 0");
}

{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1941, "(arrayName != 0) && (*arrayName != 0)");
}

{
  __assert_rtn("ComposeArrayItemPath", "XMPUtils.cpp", 1940, "schemaNS != 0");
}

void XMPUtils::ComposeStructFieldPath()
{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1984, "_fullPath != 0");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1983, "(fieldName != 0) && (*fieldName != 0)");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1982, "(structName != 0) && (*structName != 0)");
}

{
  __assert_rtn("ComposeStructFieldPath", "XMPUtils.cpp", 1981, "(schemaNS != 0) && (fieldNS != 0)");
}

void XMPUtils::ComposeQualifierPath()
{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2021, "_fullPath != 0");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2020, "(qualName != 0) && (*qualName != 0)");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2019, "(propName != 0) && (*propName != 0)");
}

{
  __assert_rtn("ComposeQualifierPath", "XMPUtils.cpp", 2018, "(schemaNS != 0) && (qualNS != 0)");
}

void XMPUtils::PackageForJPEG()
{
  if (__cxa_guard_acquire(byte_1ED56A1A8))
  {
    _MergedGlobals_5 = 1;

    __cxa_guard_release(byte_1ED56A1A8);
  }
}

{
  __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 2852, "(stdStr != 0) && (extStr != 0) && (digestStr != 0)");
}

{
  if (__cxa_guard_acquire(byte_1ED56A1B0))
  {
    byte_1ED56A1A0 = 1;

    __cxa_guard_release(byte_1ED56A1B0);
  }
}

{
  __assert_rtn("PackageForJPEG", "XMPUtils.cpp", 3060, "(stdStr != 0) && (extStr != 0) && (digestStr != 0)");
}

void XMPUtils::ConvertToUTCTime()
{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3440, "(time->tzSign == 0) ? ((time->tzHour == 0) && (time->tzMinute == 0)) : ((time->tzHour != 0) || (time->tzMinute != 0))");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3438, "(-1 <= time->tzSign) && (time->tzSign <= +1)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3437, "(0 <= time->tzMinute) && (time->tzMinute <= 59)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3436, "(0 <= time->tzHour) && (time->tzHour <= 23)");
}

{
  __assert_rtn("ConvertToUTCTime", "XMPUtils.cpp", 3430, "time != 0");
}

uint64_t GenericErrorCallback::NotifyClient(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0 || *(a3 + 16) || (*(a3 + 16) = 1, (v9 = *(a1 + 8)) != 0) && ((v10 = *(a1 + 16), v10 > a2) || (v10 >= a2 ? (v11 = *(a1 + 12) + 1) : (*(a1 + 16) = a2, v11 = 1), *(a1 + 12) = v11, v11 > v9)))
  {
    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = (*(*a1 + 24))(a1, a4, a2, *a3, *(a3 + 1));
    if (a2 || (result & 1) == 0)
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x18uLL);
      v13 = *(a3 + 16);
      *exception = *a3;
      exception[16] = v13;
    }
  }

  return result;
}

void XMPFiles::XMPFiles(XMPFiles *this)
{
  *this = &unk_1EF4DEA20;
  *(this + 2) = 0;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 16));
  *(this + 56) = 538976288;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  *(this + 38) = 1;
  *(this + 312) = 0;
  *(this + 37) = &unk_1EF4DEA40;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  if (sProgressDefault(void)::onceToken != -1)
  {
    XMPFiles::Terminate();
  }

  if (*(gProgressDefault + 8))
  {
    operator new();
  }

  if (_MergedGlobals_6 != -1)
  {
    XMPFiles::Initialize();
  }

  if (*(qword_1ED56A1C0 + 32))
  {
    *(this + 40) = *(qword_1ED56A1C0 + 24);
    *(this + 41) = *(qword_1ED56A1C0 + 32);
    *(this + 42) = *(qword_1ED56A1C0 + 40);
    *(this + 76) = *(qword_1ED56A1C0 + 8);
  }
}

void sub_1860F1800(_Unwind_Exception *a1, int a2)
{
  v7 = v5;
  MEMORY[0x186602850](v7, 0x1080C40740E08D0);
  v9 = (v2 + 368);
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v11 = *v9;
    }

    GenericErrorCallback::NotifyClient(v4, 1, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x1860F17D0);
  }

  if (*(v2 + 391) < 0)
  {
    operator delete(*v9);
  }

  *(v2 + 296) = v3;
  if (*(v2 + 367) < 0)
  {
    operator delete(*(v2 + 344));
  }

  XMP_ReadWriteLock::~XMP_ReadWriteLock((v2 + 16));
  _Unwind_Resume(a1);
}

void XMPFiles::ErrorCallbackInfo::~ErrorCallbackInfo(void **this)
{
  *this = &unk_1EF4DEA40;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = &unk_1EF4DEA40;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  JUMPOUT(0x186602850);
}

void XMPFiles::~XMPFiles(XMPFiles *this, int a2)
{
  *this = &unk_1EF4DEA20;
  if (*(this + 2) >= 1)
  {
    __assert_rtn("~XMPFiles", "XMPFiles.cpp", 411, "this->clientRefs <= 0");
  }

  v3 = *(this + 31);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 31) = 0;
  }

  if ((*(this + 391) & 0x8000000000000000) != 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_10;
    }
  }

  else if (!*(this + 391))
  {
    goto LABEL_10;
  }

  v4 = *(this + 29);
  if (v4)
  {
    XMPFiles_IO::Close(*(this + 29), a2);
    (*(*v4 + 72))(v4);
    *(this + 29) = 0;
  }

LABEL_10:
  v5 = *(this + 36);
  if (v5)
  {
    MEMORY[0x186602850](v5, 0x1080C40740E08D0);
  }

  v6 = *(this + 32);
  if (v6)
  {
    free(v6);
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  *(this + 37) = &unk_1EF4DEA40;
  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  XMP_ReadWriteLock::~XMP_ReadWriteLock((this + 16));
}

{
  XMPFiles::~XMPFiles(this, a2);

  JUMPOUT(0x186602850);
}

uint64_t CloseLocalFile(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 391);
  if (v3 < 0)
  {
    v3 = *(result + 376);
  }

  if (v3)
  {
    v4 = *(result + 232);
    if (v4)
    {
      XMPFiles_IO::Close(*(result + 232), a2);
      result = (*(*v4 + 72))(v4);
      *(v2 + 232) = 0;
    }
  }

  return result;
}

uint64_t FileIsExcluded(Host_IO *a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  result = Host_IO::GetFileMode(a1, a2);
  *a3 = result;
  if ((result - 2) < 2)
  {
    v28 = 0;
    v11 = 117;
    v12 = "XMPFiles: path specified is not a file";
    goto LABEL_9;
  }

  if (result)
  {
    if (result == 1)
    {
      v9 = strlen(a1);
      if (v9)
      {
        while (*(a1 + v9) != 46)
        {
          if (!--v9)
          {
            v10 = a1;
            goto LABEL_13;
          }
        }

        v10 = (a1 + v9);
      }

      else
      {
        v10 = a1;
LABEL_13:
        if (*v10 != 46)
        {
          goto LABEL_36;
        }
      }

      MEMORY[0x186602520](a2, v10 + 1);
      v13 = a2[23];
      if (v13 < 0)
      {
        v13 = *(a2 + 1);
        if (!v13)
        {
LABEL_36:
          v20 = kKnownRejectedFiles[0];
          if (!kKnownRejectedFiles[0])
          {
            return 0;
          }

          v21 = *(a2 + 23);
          for (i = off_1EA8DB5F8; ; ++i)
          {
            v23 = strlen(v20);
            v24 = v23;
            if ((v21 & 0x80) != 0)
            {
              if (v23 != *(a2 + 1))
              {
                goto LABEL_45;
              }

              if (v23 == -1)
              {
                std::string::__throw_out_of_range[abi:fe200100]();
              }

              v25 = *a2;
            }

            else
            {
              v25 = a2;
              if (v24 != v21)
              {
                goto LABEL_45;
              }
            }

            if (!memcmp(v25, v20, v24))
            {
              v28 = 0;
              v11 = 118;
              v12 = "XMPFiles: rejected file extension specified";
LABEL_9:
              v27[1] = v12;
              v27[0] = v11;
              if (a4)
              {
                GenericErrorCallback::NotifyClient(a4, 0, v27, a1);
              }

              return 1;
            }

LABEL_45:
            v26 = *i;
            v20 = v26;
            if (!v26)
            {
              return 0;
            }
          }
        }
      }

      else if (!a2[23])
      {
        goto LABEL_36;
      }

      v14 = 0;
      while (1)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (v16 < v14)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        if (v17[v14] - 65 <= 0x19)
        {
          if ((v15 & 0x80000000) != 0)
          {
            v18 = *(a2 + 1);
          }

          else
          {
            v18 = a2[23];
          }

          if (v18 < v14)
          {
            break;
          }

          v19 = a2;
          if ((v15 & 0x80000000) != 0)
          {
            v19 = *a2;
          }

          v19[v14] += 32;
        }

        if (v13 == ++v14)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
    }

    FileIsExcluded();
  }

  return result;
}

uint64_t DoOpenFile(uint64_t a1, uint64_t a2, Host_IO *a3, uint64_t a4, int a5)
{
  if ((a2 == 0) == (*a3 == 0))
  {
    DoOpenFile();
  }

  if ((a5 & 0x202) == 0x200)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v26 = "OptimizeFileLayout requires OpenForUpdate";
    goto LABEL_45;
  }

  if (*(a1 + 248))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v26 = "File already open";
LABEL_45:
    exception[1] = v26;
    *(exception + 16) = 0;
  }

  v10 = a5 & 0xFFFFFFF7;
  v11 = *(a1 + 391);
  if (v11 < 0)
  {
    v11 = *(a1 + 376);
  }

  if (v11)
  {
    v12 = *(a1 + 232);
    if (v12)
    {
      XMPFiles_IO::Close(*(a1 + 232), a2);
      (*(*v12 + 72))(v12);
      *(a1 + 232) = 0;
    }
  }

  *(a1 + 232) = a2;
  MEMORY[0x186602520](a1 + 368, a3);
  IsExcluded = MEMORY[0x186602520](a1 + 344, a3);
  *(a1 + 224) = 538976288;
  *(a1 + 240) = v10;
  v31 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  if ((*(a1 + 391) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 391))
    {
      goto LABEL_11;
    }

LABEL_15:
    v31 = 1;
    if ((a5 & 0x40) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  if (!*(a1 + 376))
  {
    goto LABEL_15;
  }

LABEL_11:
  IsExcluded = FileIsExcluded(a3, __p, &v31, a1 + 296);
  if (IsExcluded)
  {
LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if ((a5 & 0x40) != 0)
  {
LABEL_34:
    if (!v31)
    {
      v28[0] = 111;
      v28[1] = "XMPFiles: file does not exist";
      v28[2] = 0;
      GenericErrorCallback::NotifyClient(a1 + 296, 0, v28, a3);
    }

    goto LABEL_36;
  }

LABEL_16:
  Instance = Common::HandlerRegistry::getInstance(IsExcluded);
  v15 = Common::HandlerRegistry::selectSmartHandler(Instance, a1, a3, a4, a5 & 0xFFFFFFF7);
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = v15[2];
  v17 = *(v15 + 1);
  if (!*(a1 + 232) && (v17 & 0x1900) == 0)
  {
    __assert_rtn("DoOpenFile", "XMPFiles.cpp", 1091, "(thiz->ioRef != 0) || (handlerFlags & kXMPFiles_UsesSidecarXMP) || (handlerFlags & kXMPFiles_HandlerOwnsFile) || (handlerFlags & kXMPFiles_FolderBasedFormat)");
  }

  if (*(a1 + 224) == 538976288)
  {
    *(a1 + 224) = *v15;
  }

  v18 = (v16)(a1);
  v19 = v18;
  if (v17 != *(v18 + 4))
  {
    __assert_rtn("DoOpenFile", "XMPFiles.cpp", 1095, "handlerFlags == handler->handlerFlags");
  }

  *(a1 + 248) = v18;
  if ((a5 & 2) != 0 && (v17 & 0x1000) != 0 && ((*(*v18 + 40))(v18) & 1) == 0)
  {
    v27 = __cxa_allocate_exception(0x18uLL);
    *v27 = 112;
    v27[1] = "Open, file permission error";
    *(v27 + 16) = 0;
  }

  (*(*v19 + 48))(v19);
  if (v19[21] == 1)
  {
    FillPacketInfo(v19 + 56, (v19 + 32));
  }

  if (!(a5 & 2 | v17 & 0x10100))
  {
    v21 = *(a1 + 391);
    if (v21 < 0)
    {
      v21 = *(a1 + 376);
    }

    if (v21)
    {
      v22 = *(a1 + 232);
      if (v22)
      {
        XMPFiles_IO::Close(*(a1 + 232), v20);
        (*(*v22 + 72))(v22);
        *(a1 + 232) = 0;
      }
    }
  }

  v23 = 1;
LABEL_37:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  return v23;
}

void sub_1860F20F8(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = *(v1 + 248);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(v1 + 248) = 0;
  if ((v2 & 0x100) == 0)
  {
    CloseLocalFile(v1, v3);
  }

  __cxa_rethrow();
}

void sub_1860F215C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPFiles::CloseFile(XMPFiles *this, char a2)
{
  v4 = (this + 248);
  v3 = *(this + 31);
  if (!v3)
  {
    return;
  }

  v5 = *(v3 + 23);
  v6 = *(this + 60);
  v7 = *(v3 + 16);
  v8 = v5 & a2 & ((v6 & 2) >> 1);
  if (v8 == 1 && (*(v3 + 16) & 0x300) == 0x100)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 2;
    exception[1] = "XMPFiles::CloseFile - Safe update not supported";
    *(exception + 16) = 0;
  }

  v9 = *(this + 36);
  if (v9)
  {
    v10 = *(this + 391);
    if (v10 < 0)
    {
      v10 = *(this + 47);
    }

    if (v10)
    {
      v11 = *(this + 29);
      if (v11)
      {
        *(v11 + 80) = v9;
      }
    }
  }

  if ((v7 & 0x100) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = (*(**(this + 29) + 40))(*(this + 29));
    if (!v13)
    {
      v31 = __cxa_allocate_exception(0x18uLL);
      *v31 = 9;
      v31[1] = "XMPFiles::CloseFile, cannot create temp";
      *(v31 + 16) = 0;
    }

    if ((v7 & 4) != 0)
    {
      (*(**v4 + 80))(*v4, v13);
    }

    else
    {
      v14 = *(this + 29);
      (*(*v14 + 16))(v14, 0, 0);
      v15 = *(this + 36);
      if (v15 && (*(*v4 + 17) & 0x20) != 0)
      {
        v16 = (*(*v14 + 24))(v14);
        XMP_ProgressTracker::BeginWork(v15, v16);
      }

      v17 = (*(*v14 + 24))(v14);
      XIO::Copy(v14, v13, v17, *(this + 34), *(this + 35), v18, v19);
      *(this + 29) = v13;
      (*(**(this + 31) + 72))(*(this + 31), 0);
      *(this + 29) = v14;
      v23 = *(this + 36);
      if (v23 && (*(*v4 + 17) & 0x20) != 0)
      {
        XMP_ProgressTracker::WorkComplete(v23, v20, v21, v22);
      }
    }

    (*(**(this + 29) + 48))(*(this + 29));
    if ((*(this + 391) & 0x8000000000000000) != 0)
    {
      if (!*(this + 47))
      {
        goto LABEL_38;
      }
    }

    else if (!*(this + 391))
    {
LABEL_38:
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

LABEL_40:
      *v4 = 0;
      goto LABEL_41;
    }

    v26 = *(this + 29);
    if (v26)
    {
      XMPFiles_IO::Close(*(this + 29), v24);
      (*(*v26 + 72))(v26);
      *(this + 29) = 0;
    }

    goto LABEL_38;
  }

  if (!((v6 >> 9) & 1 | v5) || ((*(*v3 + 72))(v3), (v3 = *v4) != 0))
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 31) = 0;
  if ((*(this + 391) & 0x8000000000000000) != 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (*(this + 391))
  {
LABEL_33:
    v25 = *(this + 29);
    if (!v25)
    {
      goto LABEL_41;
    }

    XMPFiles_IO::Close(*(this + 29), v24);
    (*(*v25 + 72))(v25);
    v4 = (this + 232);
    goto LABEL_40;
  }

LABEL_41:
  v27 = *(this + 391);
  if ((v27 & 0x8000000000000000) == 0)
  {
    if (!*(this + 391))
    {
      goto LABEL_47;
    }

LABEL_45:
    v28 = *(this + 29);
    if (v28)
    {
      XMPFiles_IO::Close(*(this + 29), v24);
      (*(*v28 + 72))(v28);
      *(this + 29) = 0;
      LOBYTE(v27) = *(this + 391);
    }

    goto LABEL_47;
  }

  if (*(this + 47))
  {
    goto LABEL_45;
  }

LABEL_47:
  if ((v27 & 0x80) != 0)
  {
    **(this + 46) = 0;
    *(this + 47) = 0;
  }

  else
  {
    *(this + 368) = 0;
    *(this + 391) = 0;
  }

  if (*(this + 367) < 0)
  {
    **(this + 43) = 0;
    *(this + 44) = 0;
  }

  else
  {
    *(this + 344) = 0;
    *(this + 367) = 0;
  }

  *(this + 31) = 0;
  *(this + 56) = 538976288;
  *(this + 29) = 0;
  *(this + 60) = 0;
  v29 = *(this + 32);
  if (v29)
  {
    free(v29);
  }

  *(this + 32) = 0;
  *(this + 66) = 0;
}

void sub_1860F2694(void *a1)
{
  __cxa_begin_catch(a1);
  (*(**(v1 + 232) + 56))(*(v1 + 232));
  *(v1 + 232) = v2;
  __cxa_rethrow();
}

void sub_1860F26CC(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  if (*v2)
  {
    (*(**v2 + 8))(*v2);
    *v2 = 0;
  }

  v5 = *(v1 + 232);
  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  CloseLocalFile(v1, v4);
  XMPFiles::ClearFilePath(v1);
  *(v1 + 248) = 0;
  *(v1 + 224) = 538976288;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  v6 = *(v1 + 256);
  if (v6)
  {
    free(v6);
  }

  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  __cxa_rethrow();
}

uint64_t XMPFiles::ClearFilePath(uint64_t this)
{
  if (*(this + 391) < 0)
  {
    **(this + 368) = 0;
    *(this + 376) = 0;
  }

  else
  {
    *(this + 368) = 0;
    *(this + 391) = 0;
  }

  if (*(this + 367) < 0)
  {
    **(this + 344) = 0;
    *(this + 352) = 0;
  }

  else
  {
    *(this + 344) = 0;
    *(this + 367) = 0;
  }

  return this;
}

uint64_t DoPutXMP(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 248);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    v18 = "XMPFiles::PutXMP - No open file";
    goto LABEL_36;
  }

  if ((*(a1 + 240) & 2) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    v18 = "XMPFiles::PutXMP - Not open for update";
    goto LABEL_36;
  }

  v7 = *(v3 + 16);
  if ((*(v3 + 22) & 1) == 0)
  {
    (*(*v3 + 56))(*(a1 + 248));
  }

  if (*(v3 + 40) == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 40);
  }

  v9 = (*(v3 + 32) - 1) >= 0xFFFFFFFFFFFFFFFELL || v8 == 0;
  v10 = !v9;
  if (v9)
  {
    if (v7)
    {
      v11 = *(v3 + 20);
      if (v11 != 1)
      {
        goto LABEL_19;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v18 = "XMPFiles::PutXMP - No standard character form";
    }

    else
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 2;
      v18 = "XMPFiles::PutXMP - Can't inject XMP";
    }

LABEL_36:
    exception[1] = v18;
    *(exception + 16) = 0;
  }

  v11 = *(v3 + 20);
  if (v11 == 1)
  {
    v11 = *(v3 + 48);
  }

LABEL_19:
  v12 = (*(*v3 + 64))(v3) | v11;
  v13 = v12 | (v7 >> 5) & 0x20;
  if (v10 && *(a1 + 224) == 538976288)
  {
    v14 = v12 | 0x20;
    if (*(v3 + 49))
    {
      v13 = v13;
    }

    else
    {
      v13 = v14;
    }
  }

  v15 = v10 & ((v7 & 8) >> 3);
  if ((v7 & 2) == 0)
  {
    v15 = 1;
  }

  if ((v7 & 0x800) != 0 || !v15)
  {
    TXMPMeta<std::string>::SerializeToBuffer(a2, v3 + 56, v13, 0);
  }

  else
  {
    TXMPMeta<std::string>::SerializeToBuffer(a2, v3 + 56, v13 | 0x200, v8);
    v16 = *(v3 + 79);
    if (v16 < 0)
    {
      v16 = *(v3 + 64);
    }

    if (v16 != v8)
    {
      __assert_rtn("DoPutXMP", "XMPFiles.cpp", 1619, "xmpPacket.size() == oldPacketLength");
    }
  }

  if (a3)
  {
    TXMPMeta<std::string>::Clone(a2, 0);
  }

  return 1;
}

void sub_1860F2B8C(void *a1)
{
  __cxa_begin_catch(a1);
  if ((v1 & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1860F2AECLL);
  }

  __cxa_rethrow();
}

uint64_t XMPFiles::PutXMP(XMPFiles *this, const char *a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  TXMPMeta<std::string>::TXMPMeta(v7);
  TXMPMeta<std::string>::SetErrorCallback(v7, ErrorCallbackForXMPMeta, this + 296, 1);
  TXMPMeta<std::string>::ParseFromBuffer(v7, a2, a3, 0);
  XMPFiles::PutXMP(this, v7);
  return TXMPMeta<std::string>::~TXMPMeta(v7);
}

void sub_1860F2C40(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v4 = *v4;
    }

    GenericErrorCallback::NotifyClient(v2 + 296, 2, v3, v4);
    __cxa_end_catch();
    JUMPOUT(0x1860F2C2CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ErrorCallbackForXMPMeta(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v5[1] = a4;
  v5[2] = 0;
  v5[0] = a3;
  GenericErrorCallback::NotifyClient(a1, a2, v5, 0);
  return 1;
}

uint64_t XMPFiles::CanPutXMP(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 3;
    exception[1] = "XMPFiles::CanPutXMP - No open file";
    *(exception + 16) = 0;
  }

  if ((*(a1 + 240) & 2) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    return 1;
  }

  if (*(v2 + 21) != 1)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return DoPutXMP(a1, a2, 0);
  }
}

uint64_t XMPFiles::CanPutXMP(XMPFiles *this, const char *a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  TXMPMeta<std::string>::TXMPMeta(v8);
  TXMPMeta<std::string>::SetErrorCallback(v8, ErrorCallbackForXMPMeta, this + 296, 1);
  TXMPMeta<std::string>::ParseFromBuffer(v8, a2, a3, 0);
  CanPutXMP = XMPFiles::CanPutXMP(this, v8);
  TXMPMeta<std::string>::~TXMPMeta(v8);
  return CanPutXMP;
}

void sub_1860F2E5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = (v2 + 368);
    if (*(v2 + 391) < 0)
    {
      v4 = *v4;
    }

    GenericErrorCallback::NotifyClient(v2 + 296, 2, v3, v4);
    __cxa_end_catch();
    JUMPOUT(0x1860F2E44);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPFiles::ErrorCallbackInfo::CanNotify(XMPFiles::ErrorCallbackInfo *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (v2 && !*(this + 3))
  {
    XMPFiles::ErrorCallbackInfo::CanNotify();
  }

  return v2 != 0;
}

BOOL XMPFiles::ErrorCallbackInfo::ClientCallbackWrapper(XMPFiles::ErrorCallbackInfo *this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a2;
  if (!a2)
  {
    v8 = this + 48;
    if (*(this + 71) < 0)
    {
      v8 = *v8;
    }
  }

  return (*(this + 3))(*(this + 4), *(this + 5), v8, a3, a4, a5) != 0;
}

void std::__throw_out_of_range[abi:fe200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:fe200100](exception, a1);
  __cxa_throw(exception, off_1E6EF85C8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void *AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x634D657461646174)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v8 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634D657461646174, v8, exception);
      }

      return (this + *(*this - 856));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 864)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634D657461646174, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IMetadata_I::GetInterfacePointer(AdobeXMPCore_Int::IMetadata_I *this, uint64_t a2, uint64_t a3)
{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 848)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IMetadata_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IMetadata_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IMetadata_I::getInterfacePointer(AdobeXMPCore_Int::IMetadata_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 856)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IMetadata_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IMetadata_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_1860F36D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F36B4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IMetadata_I,void *,void *,unsigned long long,unsigned int>(void *a1, char **a2)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  v6 = *exception_ptr;
  v5 = exception_ptr[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __cxa_begin_catch(a1);
  v7 = (*(*v6 + 200))(v6);
  *a2 = v7;
  v8 = (*(*&v7[*(*v7 - 56)] + 16))(&v7[*(*v7 - 56)]);
  (*(*v8 + 40))(v8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  __cxa_end_catch();
}

char *AdobeXMPCommon::IUTF8String_v1::MakeShared@<X0>(char *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void AdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

void *AdobeXMPCommon::IUTF8StringProxy::append@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::append, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::append@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 + 24);
  if (*a2)
  {
    v10 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v9, AdobeXMPCommon::IUTF8String_v1::append, 0, v10, a3, a4);
  (*(*&v11[*(*v11 - 56)] + 8))(&v11[*(*v11 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v15, (a1 + 8));
  v13 = v15[0];
  if (v15[0])
  {
    v13 = v15[0] + *(*v15[0] - 408);
  }

  v14 = v15[1];
  *a5 = v13;
  a5[1] = v14;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::assign@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::assign, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::assign@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 + 24);
  if (*a2)
  {
    v10 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v9, AdobeXMPCommon::IUTF8String_v1::assign, 0, v10, a3, a4);
  (*(*&v11[*(*v11 - 56)] + 8))(&v11[*(*v11 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v15, (a1 + 8));
  v13 = v15[0];
  if (v15[0])
  {
    v13 = v15[0] + *(*v15[0] - 408);
  }

  v14 = v15[1];
  *a5 = v13;
  a5[1] = v14;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::insert@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X2>, uint64_t a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::insert, 0, a3, a2, a4);
  (*(*&v7[*(*v7 - 56)] + 8))(&v7[*(*v7 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v11, this + 1);
  v9 = v11[0];
  if (v11[0])
  {
    v9 = v11[0] + *(*v11[0] - 408);
  }

  v10 = v11[1];
  *a5 = v9;
  a5[1] = v10;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::insert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a1 + 24);
  if (*a3)
  {
    v12 = (*(**a3 + 216))(*a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v11, AdobeXMPCommon::IUTF8String_v1::insert, 0, a2, v12, a4, a5);
  (*(*&v13[*(*v13 - 56)] + 8))(&v13[*(*v13 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v17, (a1 + 8));
  v15 = v17[0];
  if (v17[0])
  {
    v15 = v17[0] + *(*v17[0] - 408);
  }

  v16 = v17[1];
  *a6 = v15;
  a6[1] = v16;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::erase@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::erase, 0, a2, a3);
  (*(*&v6[*(*v6 - 56)] + 8))(&v6[*(*v6 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v10, this + 1);
  v8 = v10[0];
  if (v10[0])
  {
    v8 = v10[0] + *(*v10[0] - 408);
  }

  v9 = v10[1];
  *a4 = v8;
  a4[1] = v9;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::replace@<X0>(AdobeXMPCommon::IUTF8StringProxy *this@<X0>, const char *a2@<X3>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,char const*,unsigned long long>(*(this + 3), AdobeXMPCommon::IUTF8String_v1::replace, 0, a3, a4, a2, a5);
  (*(*&v8[*(*v8 - 56)] + 8))(&v8[*(*v8 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v12, this + 1);
  v10 = v12[0];
  if (v12[0])
  {
    v10 = v12[0] + *(*v12[0] - 408);
  }

  v11 = v12[1];
  *a6 = v10;
  a6[1] = v11;
  return result;
}

void *AdobeXMPCommon::IUTF8StringProxy::replace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *(a1 + 24);
  if (*a4)
  {
    v14 = (*(**a4 + 216))(*a4);
  }

  else
  {
    v14 = 0;
  }

  v15 = AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v13, AdobeXMPCommon::IUTF8String_v1::replace, 0, a2, a3, v14, a5, a6);
  (*(*&v15[*(*v15 - 56)] + 8))(&v15[*(*v15 - 56)]);
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v19, (a1 + 8));
  v17 = v19[0];
  if (v19[0])
  {
    v17 = v19[0] + *(*v19[0] - 408);
  }

  v18 = v19[1];
  *a7 = v17;
  a7[1] = v18;
  return result;
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::find(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (*a2)
  {
    v7 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v7 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v6, AdobeXMPCommon::IUTF8String_v1::find, 0, v7, a3, a4);
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::rfind(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (*a2)
  {
    v7 = (*(**a2 + 216))(*a2);
  }

  else
  {
    v7 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v6, AdobeXMPCommon::IUTF8String_v1::rfind, 0, v7, a3, a4);
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::compare(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  if (*a4)
  {
    v11 = (*(**a4 + 216))(*a4);
  }

  else
  {
    v11 = 0;
  }

  return AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(v10, AdobeXMPCommon::IUTF8String_v1::compare, 0, a2, a3, v11, a5, a6);
}

void AdobeXMPCommon::IUTF8StringProxy::assign()
{
  __assert_rtn("assign", "IUTF8String.cpp", 82, "false");
}

{
  __assert_rtn("assign", "IUTF8String.cpp", 88, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::append()
{
  __assert_rtn("append", "IUTF8String.cpp", 58, "false");
}

{
  __assert_rtn("append", "IUTF8String.cpp", 64, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::insert()
{
  __assert_rtn("insert", "IUTF8String.cpp", 106, "false");
}

{
  __assert_rtn("insert", "IUTF8String.cpp", 112, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::replace()
{
  __assert_rtn("replace", "IUTF8String.cpp", 152, "false");
}

{
  __assert_rtn("replace", "IUTF8String.cpp", 158, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::find()
{
  __assert_rtn("find", "IUTF8String.cpp", 184, "false");
}

{
  __assert_rtn("find", "IUTF8String.cpp", 189, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::rfind()
{
  __assert_rtn("rfind", "IUTF8String.cpp", 204, "false");
}

{
  __assert_rtn("rfind", "IUTF8String.cpp", 209, "false");
}

void AdobeXMPCommon::IUTF8StringProxy::compare()
{
  __assert_rtn("compare", "IUTF8String.cpp", 224, "false");
}

{
  __assert_rtn("compare", "IUTF8String.cpp", 229, "false");
}

uint64_t AdobeXMPCommon::IUTF8StringProxy::GetInterfacePointer(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void virtual thunk toAdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t virtual thunk toAdobeXMPCommon::IUTF8StringProxy::GetInterfacePointer(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + *(*this - 32) + 24);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void AdobeXMPCommon::IUTF8StringProxy::~IUTF8StringProxy(AdobeXMPCommon::IUTF8StringProxy *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 408)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  v4 = *(this + 3) + *(**(this + 3) - 56);
  (*(*v4 + 8))(v4);
  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::append(uint64_t a1)
{
  return (*(*a1 + 240))();
}

{
  return (*(*a1 + 248))();
}

{
  return (*(*a1 + 40))();
}

{
  return (*(*a1 + 48))();
}

double AdobeXMPCommon::IError_v1::MakeShared@<D0>(AdobeXMPCommon::IError_v1 *this@<X0>, _OWORD *a3@<X8>)
{
  AdobeXMPCommon::IError_v1::MakeShared(&v5, this);
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t std::shared_ptr<AdobeXMPCommon::IError_v1 const>::~shared_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  return a1;
}

void *std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:fe200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::assign(uint64_t a1)
{
  return (*(*a1 + 224))();
}

{
  return (*(*a1 + 232))();
}

{
  return (*(*a1 + 56))();
}

{
  return (*(*a1 + 64))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::insert(uint64_t a1)
{
  return (*(*a1 + 256))();
}

{
  return (*(*a1 + 264))();
}

{
  return (*(*a1 + 72))();
}

{
  return (*(*a1 + 80))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::erase(uint64_t a1)
{
  return (*(*a1 + 272))();
}

{
  return (*(*a1 + 88))();
}

uint64_t AdobeXMPCommon::CallSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v8 = 0;
  v5 = (a1 + (a3 >> 1));
  if (a3)
  {
    v4 = *(*v5 + a2);
  }

  result = v4(v5, a4, &v8);
  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v8, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::resize(uint64_t a1)
{
  return (*(*a1 + 280))();
}

{
  return (*(*a1 + 96))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::replace(uint64_t a1)
{
  return (*(*a1 + 288))();
}

{
  return (*(*a1 + 296))();
}

{
  return (*(*a1 + 104))();
}

{
  return (*(*a1 + 112))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1*,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v12 = 0;
  v9 = (a1 + (a3 >> 1));
  if (a3)
  {
    v8 = *(*v9 + a2);
  }

  result = v8(v9, a4, a5, a6, a7, a8, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char *,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::copy(uint64_t a1)
{
  return (*(*a1 + 304))();
}

{
  return (*(*a1 + 120))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::find(uint64_t a1)
{
  return (*(*a1 + 312))();
}

{
  return (*(*a1 + 320))();
}

{
  return (*(*a1 + 128))();
}

{
  return (*(*a1 + 136))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  result = v6(v7, a4, a5, a6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::rfind(uint64_t a1)
{
  return (*(*a1 + 328))();
}

{
  return (*(*a1 + 336))();
}

{
  return (*(*a1 + 144))();
}

{
  return (*(*a1 + 152))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,char const*,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2;
  v11 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  result = v7(v8, a4, a5, a6, a7, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::compare(uint64_t a1)
{
  return (*(*a1 + 344))();
}

{
  return (*(*a1 + 352))();
}

{
  return (*(*a1 + 160))();
}

{
  return (*(*a1 + 168))();
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,AdobeXMPCommon::IUTF8String_v1 const*,unsigned long long,unsigned long long>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v12 = 0;
  v9 = (a1 + (a3 >> 1));
  if (a3)
  {
    v8 = *(*v9 + a2);
  }

  result = v8(v9, a4, a5, a6, a7, a8, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return result;
}

char *AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a2;
  v12 = 0;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v8 + a2);
  }

  v9 = v6(v8, a4, a5, &v12);
  if (v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v12, exception);
  }

  return AdobeXMPCommon::IUTF8String_v1::MakeShared(v9, a6);
}

uint64_t AdobeXMPCommon::IUTF8String_v1::substr(uint64_t a1)
{
  return (*(*a1 + 360))();
}

{
  return (*(*a1 + 176))();
}

BOOL AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IUTF8String_v1,BOOL,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v8 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  v5 = v3(v4, &v8);
  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v8, exception);
  }

  return v5 != 0;
}

uint64_t AdobeXMPCommon::IUTF8String_v1::empty(uint64_t a1)
{
  return (*(*a1 + 368))();
}

{
  return (*(*a1 + 184))();
}

uint64_t AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t, AdobeXMPCommon::IError_v1 **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v9 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v6 + a2);
  }

  result = v5(v6, a4, a5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return result;
}

void sub_1860F6330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__enable_weak_this[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:fe200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IUTF8StringProxy *,std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::__shared_ptr_default_delete<AdobeXMPCommon::IUTF8StringProxy,AdobeXMPCommon::IUTF8StringProxy>,std::allocator<AdobeXMPCommon::IUTF8StringProxy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TIFF_Manager::TIFF_Manager(TIFF_Manager *this)
{
  *this = &unk_1EF4DF458;
  *(this + 10) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 71) = 0;
  if ((sFirstCTor & 1) == 0)
  {
    v1 = 0;
    sFirstCTor = 1;
    do
    {
      v2 = *(&sKnownTags + v1);
      v5 = *v2;
      v3 = v2 + 1;
      v4 = v5;
      while (v4 != 0xFFFF)
      {
        v6 = *v3++;
        v7 = v4 >= v6;
        v4 = v6;
        if (v7)
        {
          TIFF_Manager::TIFF_Manager();
        }
      }

      ++v1;
    }

    while (v1 != 5);
  }
}

uint64_t TIFF_Manager::CheckTIFFHeader(TIFF_Manager *this, unsigned int *a2, unsigned int a3)
{
  if (a3 <= 7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v17 = "The TIFF is too small";
    goto LABEL_14;
  }

  v4 = bswap32(*a2);
  v5 = PutDoubleBE;
  v6 = PutFloatBE;
  v7 = PutUns32BE;
  v8 = PutUns16BE;
  v9 = GetDoubleBE;
  v10 = GetFloatBE;
  v11 = GetUns32BE;
  v12 = GetUns16BE;
  if (v4 == 1229531648)
  {
    v14 = 0;
    v5 = PutDoubleLE;
    v6 = PutFloatLE;
    v7 = PutUns32LE;
    v8 = PutUns16LE;
    v9 = GetDoubleLE;
    v10 = GetFloatLE;
    v11 = GetUns32LE;
    v12 = GetUns16LE;
    v13 = 1;
  }

  else
  {
    if (v4 != 1296891946)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v17 = "Unrecognized TIFF prefix";
LABEL_14:
      exception[1] = v17;
      *(exception + 16) = 0;
    }

    v13 = 0;
    v14 = 1;
  }

  *(this + 72) = v14;
  *(this + 73) = v13;
  *(this + 1) = v12;
  *(this + 2) = v11;
  *(this + 3) = v10;
  *(this + 4) = v9;
  *(this + 5) = v8;
  *(this + 6) = v7;
  *(this + 7) = v6;
  *(this + 8) = v5;
  result = v11(a2 + 1);
  if (result && (a3 < 0xE || result < 8 || a3 - 6 < result))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 206;
    v17 = "Invalid primary IFD offset";
    goto LABEL_14;
  }

  return result;
}

uint64_t GetUns16LE(unsigned __int16 *a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t GetUns32LE(unsigned int *a1)
{
  return *a1;
}

{
  return *a1;
}

float GetFloatLE(const void *a1)
{
  return *a1;
}

{
  return *a1;
}

double GetDoubleLE(const void *a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t PutUns16LE(uint64_t result, _WORD *a2)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

uint64_t PutUns32LE(uint64_t result, _DWORD *a2)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

float *PutFloatLE(float a1, float *result)
{
  *result = a1;
  return result;
}

{
  *result = a1;
  return result;
}

double *PutDoubleLE(double a1, double *result)
{
  *result = a1;
  return result;
}

{
  *result = a1;
  return result;
}

uint64_t TIFF_Manager::SetTag_Short(uint64_t (***this)(void (**)(uint64_t, __int16 *), uint64_t, uint64_t, uint64_t, uint64_t, __int16 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  (this[5])(a4, &v8);
  return (*this)[4](this, a2, a3, 3, 1, &v8);
}

uint64_t TIFF_Manager::SetTag_Long(uint64_t (***this)(void (**)(uint64_t, int *), uint64_t, uint64_t, uint64_t, uint64_t, int *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  (this[6])(a4, &v8);
  return (*this)[4](this, a2, a3, 4, 1, &v8);
}

uint64_t TIFF_Manager::SetTag_Rational(uint64_t (***this)(void (**)(uint64_t, uint64_t *), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  (this[6])(a4, &v10);
  (this[6])(a5, &v10 + 4);
  return (*this)[4](this, a2, a3, 5, 1, &v10);
}

uint64_t TIFF_Manager::SetTag_SRational(uint64_t (***this)(void (**)(uint64_t, uint64_t *), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  (this[6])(a4, &v10);
  (this[6])(a5, &v10 + 4);
  return (*this)[4](this, a2, a3, 10, 1, &v10);
}

uint64_t TIFF_Manager::SetTag_ASCII(TIFF_Manager *this, uint64_t a2, uint64_t a3, const char *__s)
{
  v8 = strlen(__s);
  v9 = *(*this + 32);

  return v9(this, a2, a3, 2, (v8 + 1), __s);
}

uint64_t TIFF_Manager::DecodeString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, std::string *this)
{
  v20 = *MEMORY[0x1E69E9840];
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v8 = a3 - 8;
  if (a3 < 8)
  {
    return 0;
  }

  v10 = a2 + 8;
  v9 = *a2;
  if (v9 == 85)
  {
    if (v8 >= 2)
    {
      v12 = v8 >> 1;
      v13 = *v10;
      if (v13 == 65279 || v13 == 65534)
      {
        v14 = *v10 == 254;
        if (!--v12)
        {
          return 0;
        }

        v10 = a2 + 10;
      }

      else
      {
        v14 = *(a1 + 72);
      }

      if (v14)
      {
        v15 = &UTF16BE_to_UTF8;
      }

      else
      {
        v15 = &UTF16LE_to_UTF8;
      }

      v16 = *v15;
      std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
      std::string::reserve(this, 2 * v12);
      if (v12)
      {
        bzero(__s, 0x3E8uLL);
        __n = 0;
        v18 = 0;
        do
        {
          v16(v10, v12, __s, 1000, &v18, &__n);
          std::string::append(this, __s, __n);
          v10 += 2 * v18;
          v12 -= v18;
        }

        while (v12);
      }

      return 1;
    }
  }

  else if (v9 == 65)
  {
    MEMORY[0x186602530](this, a2 + 8, v8);
    return 1;
  }

  return 0;
}

uint64_t TIFF_Manager::EncodeString(uint64_t a1, const std::string::value_type *a2, int a3, std::string *this)
{
  v26 = *MEMORY[0x1E69E9840];
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (a3 == 1)
  {
    MEMORY[0x186602530](this, "ASCII", 8);
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size != 8)
    {
      TIFF_Manager::EncodeString();
    }

    v16 = a2[23];
    if (v16 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 1);
    }

    std::string::append(this, v17, v18);
  }

  else
  {
    if (a3 != 2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      if (a3 == 3)
      {
        *exception = 8;
        v21 = "Encoding to JIS is not implemented";
      }

      else
      {
        *exception = 4;
        v21 = "Invalid TIFF string encoding";
      }

      exception[1] = v21;
      *(exception + 16) = 0;
    }

    MEMORY[0x186602530](this, "UNICODE", 8);
    v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = this->__r_.__value_.__l.__size_;
    }

    if (v8 != 8)
    {
      TIFF_Manager::EncodeString();
    }

    memset(&__p, 0, sizeof(__p));
    v9 = *(a2 + 1);
    if (a2[23] >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v10 = v9;
    }

    v11 = &UTF8_to_UTF16BE;
    if (!*(a1 + 72))
    {
      v11 = &UTF8_to_UTF16LE;
    }

    v12 = *v11;
    std::string::erase(&__p, 0, 0xFFFFFFFFFFFFFFFFLL);
    std::string::reserve(&__p, 2 * v10);
    if (v10)
    {
      bzero(__s, 0x7D0uLL);
      v23 = 0;
      v24 = 0;
      do
      {
        v12(a2, v10, __s, 1000, &v24, &v23);
        std::string::append(&__p, __s, 2 * v23);
        a2 += v24;
        v10 -= v24;
      }

      while (v10);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, p_p, v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_1860F6F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1860F6EA4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TIFF_Manager::NotifyClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 80);
  if (result)
  {

    return GenericErrorCallback::NotifyClient(result, a2, a3, 0);
  }

  else if (a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *(a3 + 16);
    *exception = *a3;
    exception[16] = v7;
  }

  return result;
}

void TIFF_Manager::EncodeString()
{
  __assert_rtn("EncodeString", "TIFF_Support.cpp", 441, "encodedStr->size() == 8");
}

{
  __assert_rtn("EncodeString", "TIFF_Support.cpp", 432, "encodedStr->size() == 8");
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unsigned __int8 a3)
{
  v4 = a3;
  return (*(*this + 264))(this, a2, 1, &v4);
}

{
  v4 = a3;
  return (*(*this + 264))(this, a2, 8, &v4);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unsigned __int8 a3)
{
  v3 = this + *(*this - 24);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 1, &v5);
}

{
  v3 = this + *(*this - 56);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 8, &v5);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t a3)
{
  v4 = a3;
  return (*(*this + 264))(this, a2, 2, &v4);
}

{
  v4 = a3;
  return (*(*this + 264))(this, a2, 4, &v4);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t a3)
{
  v3 = this + *(*this - 32);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 2, &v5);
}

{
  v3 = this + *(*this - 40);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 4, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double a3)
{
  v3 = this + *(*this - 48);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 16, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char *a3)
{
  v3 = this + *(*this - 64);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 32, &v5);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::SetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void *a3)
{
  v3 = this + *(*this - 72);
  v5 = a3;
  return (*(*v3 + 264))(v3, a2, 64, &v5);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::setParameter(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5)
{
  if (a3 == 1)
  {
    *a4 = *a4 != 0;
  }

  return AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(a5, a1, AdobeXMPCore_Int::IConfigurable_I::SetParameter, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IConfigurable_I.cpp", 63, a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  return (v9)(v10, a7, a8, a9, a5, a6);
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, BOOL *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 1, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, BOOL *a3)
{
  v4 = this + *(*this - 88);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 1, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unint64_t *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 2, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, unint64_t *a3)
{
  v4 = this + *(*this - 96);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 2, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 4, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, uint64_t *a3)
{
  v4 = this + *(*this - 104);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 4, &v6);
  *a3 = v6;
  return result;
}

double AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double *a3)
{
  v5 = 0.0;
  (*(*this + 272))(this, a2, 16, &v5);
  result = v5;
  *a3 = v5;
  return result;
}

double virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, double *a3)
{
  v4 = this + *(*this - 112);
  v6 = 0.0;
  (*(*v4 + 272))(v4, a2, 16, &v6);
  result = v6;
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, char *a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 8, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, char *a3)
{
  v4 = this + *(*this - 120);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 8, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char **a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 32, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const char **a3)
{
  v4 = this + *(*this - 128);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 32, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void **a3)
{
  v5 = 0;
  result = (*(*this + 272))(this, a2, 64, &v5);
  *a3 = v5;
  return result;
}

uint64_t virtual thunk toAdobeXMPCore_Int::IConfigurable_I::GetParameter(AdobeXMPCore_Int::IConfigurable_I *this, const unint64_t *a2, const void **a3)
{
  v4 = this + *(*this - 136);
  v6 = 0;
  result = (*(*v4 + 272))(v4, a2, 64, &v6);
  *a3 = v6;
  return result;
}

uint64_t AdobeXMPCore_Int::IConfigurable_I::getParameter(uint64_t a1, uint64_t a2, unsigned int a3, BOOL *a4, void *a5)
{
  result = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore_Int::IConfigurable_I,unsigned int,BOOL,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue &>(a5, a1, 0, AdobeXMPCore_Int::IConfigurable_I::GetParameter, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IConfigurable_I.cpp", 117, a2, a3, a4);
  if (a3 == 1)
  {
    *a4 = *a4 != 0;
  }

  return result;
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore_Int::IConfigurable_I,unsigned int,BOOL,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue &>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurable,unsigned int,BOOL,unsigned long long const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return (a4)(v8, a8, a3);
}

void AdobeXMPCore_Int::IConfigurable_I::getAllParameters(AdobeXMPCore_Int::IConfigurable_I *this, unint64_t *a2)
{
  v4 = (*(*(this + *(*this - 216)) + 128))(this + *(*this - 216));
  __p = 0;
  v10 = 0;
  v11 = 0;
  (*(*(this + *(*this - 216)) + 120))(&__p);
  v5 = __p;
  if (v4)
  {
    v6 = (v10 - __p) >> 3;
    v7 = __p;
    while (v6)
    {
      v8 = *v7++;
      *a2++ = v8;
      --v6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else if (__p)
  {
LABEL_7:
    v10 = v5;
    operator delete(v5);
  }
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IConfigurable,unsigned int,AdobeXMPCommon::IConfigurable::eDataType,unsigned long long const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return (a4)(v8, a8, a3);
}

void AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore_Int::IConfigurable_I,unsigned long long const&,AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue const&>(void *a1)
{
  v3 = OUTLINED_FUNCTION_3(a1);
  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v2);
  OUTLINED_FUNCTION_2_18();
  *v1 = (*(v6 + 200))(v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 40))();
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  __cxa_end_catch();
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_1860F87D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F87BCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::assign(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, AdobeXMPCommon::IUTF8String_v1::assign, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 22, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860F8A4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v14 = 0;
  v15 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  (v9)(&v14, v10, a7, a8, a9, a5, a6);
  if (v14)
  {
    v11 = (*(*&v14[*(*v14 - 56)] + 16))(&v14[*(*v14 - 56)]);
    (*(*v11 + 40))(v11);
    v12 = (*(*&v14[*(*v14 - 64)] + 16))(&v14[*(*v14 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v12 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  return v12;
}

void sub_1860F8BE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F8BC8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::append(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, AdobeXMPCommon::IUTF8String_v1::append, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 32, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860F8EE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  *a1 = 0;
  v14 = 0;
  v15 = 0;
  v10 = (a2 + (a4 >> 1));
  if (a4)
  {
    v9 = *(*v10 + a3);
  }

  (v9)(&v14, v10, a7, a8, a9, a5, a6);
  if (v14)
  {
    v11 = (*(*&v14[*(*v14 - 56)] + 16))(&v14[*(*v14 - 56)]);
    (*(*v11 + 40))(v11);
    v12 = (*(*&v14[*(*v14 - 64)] + 16))(&v14[*(*v14 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v12 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  return v12;
}

void sub_1860F9118(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F90FCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::insert(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, const AdobeXMPCommon::IUTF8String_v1 *a3, uint64_t a4, uint64_t a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v11 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a3, &v15);
  v14 = v15;
  v12 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a6, this + v11, AdobeXMPCommon::IUTF8String_v1::insert, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 42, a2, &v14, a4, a5);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v14 + 1));
  }

  return v12;
}

void sub_1860F9390(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v15 = 0;
  v16 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  (v10)(&v15, v11, a7, a8, a9, a10, a6);
  if (v15)
  {
    v12 = (*(*&v15[*(*v15 - 56)] + 16))(&v15[*(*v15 - 56)]);
    (*(*v12 + 40))(v12);
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v13 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  return v13;
}

void sub_1860F9528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F950CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_1860F98B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F9898);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v15 = 0;
  v16 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  (v10)(&v15, v11, a7, a8, a9, a10, a6);
  if (v15)
  {
    v12 = (*(*&v15[*(*v15 - 56)] + 16))(&v15[*(*v15 - 56)]);
    (*(*v12 + 40))(v12);
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v13 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  return v13;
}

void sub_1860F9E10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860F9DF4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::replace(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, uint64_t a3, const AdobeXMPCommon::IUTF8String_v1 *a4, uint64_t a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  v13 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a4, &v17);
  v16 = v17;
  v14 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a7, this + v13, AdobeXMPCommon::IUTF8String_v1::replace, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 64, a2, a3, &v16, a5, a6);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v16 + 1));
  }

  return v14;
}

void sub_1860FA09C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  *a1 = 0;
  v12 = (a2 + (a4 >> 1));
  v16 = 0;
  v17 = 0;
  if (a4)
  {
    v11 = *(*v12 + a3);
  }

  v11(&v16, v12, a7, a8, a9, a10, a11);
  if (v16)
  {
    v13 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v13 + 40))(v13);
    v14 = (*(*&v16[*(*v16 - 64)] + 16))(&v16[*(*v16 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v14 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  return v14;
}

void sub_1860FA238(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860FA21CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char *,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,char const*,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::find(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, 0, AdobeXMPCommon::IUTF8String_v1::find, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 85, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860FA86C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a4;
  *a1 = 0;
  v11 = (a2 + (a5 >> 1));
  if (a5)
  {
    v10 = *(*v11 + a4);
  }

  return v10(v11, a8, a9, a10);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::rfind(AdobeXMPCore_Int::IUTF8String_I *this, const AdobeXMPCommon::IUTF8String_v1 *a2, uint64_t a3, uint64_t a4, const AdobeXMPCommon::IError_v1 **a5)
{
  v9 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a2, &v13);
  v12 = v13;
  v10 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a5, this + v9, 0, AdobeXMPCommon::IUTF8String_v1::rfind, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 99, &v12, a3, a4);
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v12 + 1));
  }

  return v10;
}

void sub_1860FAB50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return (v11)(v12, a8, a9, a10, a11, a6, a7);
}

uint64_t AdobeXMPCore_Int::IUTF8String_I::compare(AdobeXMPCore_Int::IUTF8String_I *this, uint64_t a2, uint64_t a3, const AdobeXMPCommon::IUTF8String_v1 *a4, uint64_t a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  v13 = *(*this - 408);
  AdobeXMPCommon::IUTF8String_v1::MakeShared(a4, &v17);
  v16 = v17;
  v14 = AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(a7, this + v13, 0, AdobeXMPCommon::IUTF8String_v1::compare, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IUTF8String_I.cpp", 113, a2, a3, &v16, a5, a6);
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v16 + 1));
  }

  return v14;
}

void sub_1860FAE5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,int,int,unsigned long long,unsigned long long,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a4;
  *a1 = 0;
  v13 = (a2 + (a5 >> 1));
  if (a5)
  {
    v12 = *(*v13 + a4);
  }

  return (v12)(v13, a8, a9, a10, a11, a12, a7);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,AdobeXMPCommon::IUTF8String_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_1860FB1C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x1860FB1ACLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IUTF8String_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

void *AdobeXMPCore_Int::IUTF8String_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x6E55544638537472)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v6 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E55544638537472, v6, exception);
      }

      return (this + *(*this - 408));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E55544638537472, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IUTF8String_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCommon::IUTF8String_v1,unsigned long long>(void *a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v1);
  OUTLINED_FUNCTION_2_18();
  v6 = (*(v5 + 200))(v4);
  v7 = OUTLINED_FUNCTION_1_21(v6);
  v9 = OUTLINED_FUNCTION_0_37(v7, *(v8 - 56));
  (*(v10 + 16))(v9);
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 40))();
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  __cxa_end_catch();
}

void XMP_Node::SetValue(XMP_Node *this, char *__s)
{
  v4 = (this + 16);
  v5 = *(this + 39);
  if (*(this + 39) < 0)
  {
    if (*(this + 3) != 20)
    {
      goto LABEL_27;
    }

    v6 = *v4;
  }

  else
  {
    v6 = this + 16;
    if (v5 != 20)
    {
      goto LABEL_27;
    }
  }

  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 4);
  v11 = v7 == 0x747365543A706D78 && v8 == 0x6F4E747265737341 && v9 == 2036754804;
  if (!v11 || strcmp(__s, "DoIt!"))
  {
    goto LABEL_27;
  }

  if ((v5 & 0x80) == 0)
  {
    v12 = v4;
    if (v5 != 20)
    {
      goto LABEL_27;
    }

LABEL_20:
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 4);
    if (v13 == 0x747365543A706D78 && v14 == 0x6F4E747265737341 && v15 == 2036754804)
    {
      XMP_Node::SetValue();
    }

    goto LABEL_27;
  }

  if (*(this + 3) == 20)
  {
    v12 = *v4;
    goto LABEL_20;
  }

LABEL_27:
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, __s);
  if (v26 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = *v18;
  if (!*v18)
  {
    goto LABEL_42;
  }

  while (v19 < 1)
  {
LABEL_40:
    v28[0] = 0;
    v27 = 0;
    CodePoint_from_UTF8(v18, 4uLL, v28, &v27);
    if (v28[0] >> 1 == 0x7FFF)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 205;
      exception[1] = "U+FFFE and U+FFFF are not allowed in XML";
      *(exception + 16) = 0;
    }

    v18 += v27;
    v19 = *v18;
    if (!*v18)
    {
      goto LABEL_42;
    }
  }

  do
  {
    if (v19 > 0x1F)
    {
      if (v19 != 127)
      {
        goto LABEL_38;
      }

LABEL_34:
      *v18 = 32;
      goto LABEL_38;
    }

    if (v19 > 0xD || ((1 << v19) & 0x2600) == 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    v20 = *++v18;
    v19 = v20;
  }

  while (v20 > 0);
  if (v19)
  {
    goto LABEL_40;
  }

LABEL_42:
  if ((*(this + 8) & 0x20) != 0)
  {
    v21 = *(this + 39);
    if (v21 < 0)
    {
      if (*(this + 3) != 8)
      {
        goto LABEL_50;
      }

      v4 = *v4;
    }

    else if (v21 != 8)
    {
      goto LABEL_50;
    }

    if (*v4 == 0x676E616C3A6C6D78)
    {
      NormalizeLangValue(__p);
    }
  }

LABEL_50:
  v22 = *(this + 7);
  v23 = *(this + 40);
  *(this + 40) = *__p;
  *(this + 7) = v26;
  *__p = v23;
  v26 = v22;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1860FBBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPMeta::GetProperty(XMPMeta *this, char *a2, char *a3, const char **a4, unsigned int *a5, unsigned int *a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty();
  }

  if (!a4 || !a5 || !a6)
  {
    XMPMeta::GetProperty();
  }

  memset(v15, 0, sizeof(v15));
  ExpandXPath(a2, a3, v15);
  Node = FindNode(this + 224, v15, 0, 0, 0);
  if (Node)
  {
    v11 = (Node + 40);
    if (*(Node + 63) < 0)
    {
      v11 = *v11;
    }

    *a4 = v11;
    v12 = *(Node + 63);
    if (v12 < 0)
    {
      v12 = *(Node + 48);
    }

    *a5 = v12;
    *a6 = *(Node + 8);
  }

  v13 = Node != 0;
  v16 = v15;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v16);
  return v13;
}

void sub_1860FBCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetArrayItem(XMPMeta *this, char *a2, char *a3, int a4, const char **a5, unsigned int *a6, unsigned int *a7)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetArrayItem();
  }

  if (!a5 || !a7)
  {
    XMPMeta::GetArrayItem();
  }

  if (a4 <= 0 && a4 != -1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Array index must be larger than zero";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a2, a3, a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = (*(*this + 16))(this, a2, p_p, a5, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1860FBE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char **a6, unsigned int *a7, unsigned int *a8)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::GetStructField();
  }

  if (!a6 || !a8)
  {
    XMPMeta::GetStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = (*(*this + 16))(this, a2, p_p, a6, a7, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1860FBF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char **a6, unsigned int *a7, unsigned int *a8)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::GetQualifier();
  }

  if (!a6 || !a8)
  {
    XMPMeta::GetQualifier();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = (*(*this + 16))(this, a2, p_p, a6, a7, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1860FC03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty(XMPMeta *this, char *a2, char *a3, char *a4, unsigned int a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty();
  }

  v9 = VerifySetOptions(a5, a4);
  memset(v12, 0, sizeof(v12));
  ExpandXPath(a2, a3, v12);
  Node = FindNode(this + 224, v12, 1, v9, 0);
  if (!Node)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  SetNode(Node, a4, v9);
  v13 = v12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v13);
}

void sub_1860FC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void SetNode(XMP_Node *this, char *__s, unsigned int a3)
{
  v3 = a3;
  if ((a3 & 0x20000000) != 0)
  {
    v3 = a3 & 0xDFFFFFFF;
    *(this + 2) = a3 & 0xDFFFFFFF;
    std::string::erase((this + 40), 0, 0xFFFFFFFFFFFFFFFFLL);
    XMP_Node::RemoveChildren(this);
    XMP_Node::RemoveQualifiers(this);
  }

  v6 = *(this + 2) | v3;
  *(this + 2) = v6;
  if (__s)
  {
    if ((v6 & 0x1F00) == 0)
    {
      if (*(this + 9) != *(this + 10))
      {
        SetNode();
      }

      XMP_Node::SetValue(this, __s);
      return;
    }

    goto LABEL_21;
  }

  v7 = *(this + 63);
  if (v7 < 0)
  {
    v7 = *(this + 6);
  }

  if (v7)
  {
LABEL_21:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v11 = "Composite nodes can't have values";
LABEL_22:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v8 = v6 & 0x1F00;
  if (v8)
  {
    v9 = (v3 & 0x1F00) == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v11 = "Requested and existing composite form mismatch";
    goto LABEL_22;
  }

  XMP_Node::RemoveChildren(this);
}

void XMPMeta::SetArrayItem(XMPMeta *this, char *a2, char *a3, int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetArrayItem();
  }

  memset(v12, 0, sizeof(v12));
  ExpandXPath(a2, a3, v12);
  Node = FindNode(this + 224, v12, 0, 0, 0);
  if (!Node)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified array does not exist";
    *(exception + 16) = 0;
  }

  DoSetArrayItem(Node, a4, a5, a6);
  v13 = v12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v13);
}

void sub_1860FC360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void DoSetArrayItem(XMP_Node *a1, int a2, char *a3, int a4)
{
  v7 = a4 & 0xC000;
  v8 = (*(a1 + 10) - *(a1 + 9)) >> 3;
  v9 = VerifySetOptions(a4 & 0xFFFF3FFF, a3);
  v22 = 0;
  if (a2 == -1)
  {
    v10 = v8;
  }

  else
  {
    v10 = a2;
  }

  v11 = v10 == 0;
  v12 = v7 == 0x8000;
  v13 = !v12 || !v11;
  if (v12 && v11)
  {
    v14 = 0x4000;
  }

  else
  {
    v14 = v7;
  }

  if (!v13)
  {
    v10 = 1;
  }

  if (v10 == v8 && v14 == 0x8000)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = v10 + (v10 == v8 && v14 == 0x8000);
  if (v16 == v8 + 1)
  {
    if (v15 < 0x8000)
    {
      operator new();
    }

    goto LABEL_25;
  }

  v17 = (v16 - 1);
  if (v16 < 1 || v16 > v8)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    v21 = "Array index out of bounds";
    goto LABEL_26;
  }

  if (v15)
  {
    operator new();
  }

  v19 = *(a1 + 9);
  if (v17 >= (*(a1 + 10) - v19) >> 3)
  {
    __break(1u);
LABEL_25:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 104;
    v21 = "Can't insert before or after implicit new item";
LABEL_26:
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  SetNode(*(v19 + 8 * v17), a3, v9);
}

void XMPMeta::AppendArrayItem(XMPMeta *this, char *a2, char *a3, unsigned int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta::AppendArrayItem();
  }

  v11 = VerifySetOptions(a4, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Only array form flags allowed for arrayOptions";
    *(exception + 16) = 0;
  }

  v12 = v11;
  memset(v18, 0, sizeof(v18));
  ExpandXPath(a2, a3, v18);
  Node = FindNode(this + 224, v18, 0, 0, 0);
  if (Node)
  {
    if ((*(Node + 9) & 2) == 0)
    {
      v14 = "The named property is not an array";
LABEL_14:
      v16 = 102;
LABEL_15:
      v17 = __cxa_allocate_exception(0x18uLL);
      *v17 = v16;
      v17[1] = v14;
      *(v17 + 16) = 0;
    }
  }

  else
  {
    if (!v12)
    {
      v14 = "Explicit arrayOptions required to create new array";
      v16 = 103;
      goto LABEL_15;
    }

    Node = FindNode(this + 224, v18, 1, v12, 0);
    if (!Node)
    {
      v14 = "Failure creating array node";
      goto LABEL_14;
    }
  }

  DoSetArrayItem(Node, -1, a5, a6 | 0x8000);
  v19 = v18;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v19);
}

void sub_1860FC700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta::SetStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::SetStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FC7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::SetQualifier();
  }

  memset(v17, 0, sizeof(v17));
  ExpandXPath(a2, a3, v17);
  if (!FindNode(this + 224, v17, 0, 0, 0))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
}

void sub_1860FC96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta::DeleteProperty(XMPMeta *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta::DeleteProperty();
  }

  memset(v21, 0, sizeof(v21));
  ExpandXPath(a2, a3, v21);
  __dst = 0;
  Node = FindNode(this + 224, v21, 0, 0, &__dst);
  v5 = Node;
  if (Node)
  {
    v6 = *(Node + 64);
    if ((*(Node + 8) & 0x20) == 0)
    {
      v7 = __dst;
      v8 = *(v6 + 80);
      if (v8 != __dst)
      {
        v9 = v8 - (__dst + 8);
        if (v8 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v8 - (__dst + 8));
        }

        *(v6 + 80) = &v7[v9];
        DeleteEmptySchema(v6);
LABEL_29:
        (*(*v5 + 8))(v5);
        goto LABEL_30;
      }

      goto LABEL_34;
    }

    v10 = (Node + 16);
    v11 = *(Node + 39);
    if (v11 < 0)
    {
      if (*(Node + 24) == 8 && **v10 == 0x676E616C3A6C6D78)
      {
        goto LABEL_20;
      }

      if (*(Node + 24) != 8)
      {
LABEL_23:
        v15 = __dst;
        v16 = *(v6 + 104);
        if (v16 == __dst)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v17 = v16 - (__dst + 8);
        if (v16 != __dst + 8)
        {
          memmove(__dst, __dst + 8, v16 - (__dst + 8));
        }

        *(v6 + 104) = &v15[v17];
        v18 = *(v6 + 8);
        if ((v18 & 0x10) != 0)
        {
          if (*(v6 + 96) == &v15[v17])
          {
            *(v6 + 8) = v18 & 0xFFFFFFEF;
          }

          goto LABEL_29;
        }

        v19 = "parentNode->options & kXMP_PropHasQualifiers";
        v20 = 693;
LABEL_33:
        __assert_rtn("DeleteProperty", "XMPMeta-GetSet.cpp", v20, v19);
      }

      v10 = *v10;
    }

    else
    {
      if (v11 != 8)
      {
        goto LABEL_23;
      }

      if (*v10 == 0x676E616C3A6C6D78)
      {
LABEL_20:
        v14 = *(v6 + 8);
        if ((v14 & 0x40) == 0)
        {
LABEL_35:
          v19 = "parentNode->options & kXMP_PropHasLang";
          v20 = 685;
          goto LABEL_33;
        }

        v13 = v14 & 0xFFFFFFBF;
LABEL_22:
        *(v6 + 8) = v13;
        goto LABEL_23;
      }
    }

    if (*v10 == 0x657079743A666472)
    {
      v12 = *(v6 + 8);
      if ((v12 & 0x80) == 0)
      {
        v19 = "parentNode->options & kXMP_PropHasType";
        v20 = 688;
        goto LABEL_33;
      }

      v13 = v12 & 0xFFFFFF7F;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_30:
  __dst = v21;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__dst);
}

void sub_1860FCBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta::DeleteArrayItem(XMPMeta *this, char *a2, char *a3, int a4)
{
  if (!a2 || !a3)
  {
    XMPMeta::DeleteArrayItem();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a2, a3, a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::DeleteStructField(XMPMeta *this, char *a2, char *a3, char *a4, char *a5)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::DeleteStructField();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::DeleteQualifier(XMPMeta *this, char *a2, char *a3, char *a4, char *a5)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta::DeleteQualifier();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 80))(this, a2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FCE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL XMPMeta::DoesPropertyExist(XMPMeta *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta::DoesPropertyExist();
  }

  memset(v6, 0, sizeof(v6));
  ExpandXPath(a2, a3, v6);
  v4 = FindNode(this + 224, v6, 0, 0, 0) != 0;
  v7 = v6;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v7);
  return v4;
}

void sub_1860FCF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetLocalizedText(XMPMeta *this, char *a2, char *a3, char *__s, char *a5, const char **a6, unsigned int *a7, const char **a8, unsigned int *a9, unsigned int *a10)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta::GetLocalizedText();
  }

  if (!a6 || !a7)
  {
    XMPMeta::GetLocalizedText();
  }

  if (!a8 || !a9 || !a10)
  {
    XMPMeta::GetLocalizedText();
  }

  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  std::string::basic_string[abi:fe200100]<0>(v34, __s);
  __p[0] = 0;
  __p[1] = 0;
  v33 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v34);
  v17 = __p;
  NormalizeLangValue(__p);
  if (v35 >= 0)
  {
    v18 = v34;
  }

  else
  {
    v18 = v34[0];
  }

  if (v33 < 0)
  {
    v17 = __p[0];
  }

  memset(v31, 0, sizeof(v31));
  ExpandXPath(a2, a3, v31);
  Node = FindNode(this + 224, v31, 0, 0, 0);
  if (Node)
  {
    v36 = 0;
    result = ChooseLocalizedText(Node, v18, v17, &v36);
    v21 = result != 0;
    if (result)
    {
      v22 = v36;
      v23 = *(v36 + 12);
      if (*(v36 + 13) == v23)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v25 = (*v23 + 40);
      if (*(v24 + 63) < 0)
      {
        v25 = *v25;
      }

      *a6 = v25;
      v26 = *(v22 + 12);
      if (*(v22 + 13) == v26)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v27 = *v26;
      v28 = *(*v26 + 63);
      if (v28 < 0)
      {
        v28 = *(v27 + 48);
      }

      *a7 = v28;
      v29 = v22 + 40;
      if (*(v22 + 63) < 0)
      {
        v29 = *v29;
      }

      *a8 = v29;
      v30 = *(v22 + 63);
      if (v30 < 0)
      {
        v30 = *(v22 + 6);
      }

      *a9 = v30;
      *a10 = *(v22 + 2);
    }
  }

  else
  {
    v21 = 0;
  }

  v36 = v31;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v36);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  return v21;
}

void sub_1860FD120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t *a24)
{
  a24 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t ChooseLocalizedText(const XMP_Node *a1, const char *a2, const char *__s, const XMP_Node **a4)
{
  v8 = *(a1 + 9);
  v7 = *(a1 + 10);
  if ((*(a1 + 2) & 0x1000) == 0 && (v8 != v7 || (*(a1 + 2) & 0x800) == 0))
  {
    goto LABEL_80;
  }

  if (v8 == v7)
  {
    v20 = 0;
    result = 0;
    goto LABEL_59;
  }

  v52 = a4;
  v10 = 0;
  v11 = v7 - v8;
  v12 = v11 >> 3;
  if ((v11 >> 3) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 >> 3;
  }

  do
  {
    v14 = v8[v10];
    if ((*(v14 + 9) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Alt-text array item is not simple";
      goto LABEL_77;
    }

    v15 = *(v14 + 12);
    if (v15 == *(v14 + 13))
    {
      goto LABEL_75;
    }

    v16 = *v15;
    v17 = (v16 + 16);
    v18 = *(v16 + 39);
    if (v18 < 0)
    {
      if (*(v16 + 24) != 8)
      {
        goto LABEL_75;
      }

      v17 = *v17;
    }

    else if (v18 != 8)
    {
      goto LABEL_75;
    }

    if (*v17 != 0x676E616C3A6C6D78)
    {
LABEL_75:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Alt-text array item has no language qualifier";
      goto LABEL_77;
    }

    ++v10;
  }

  while (v13 != v10);
  v19 = 0;
  do
  {
    v20 = v8[v19];
    v21 = *(v20 + 12);
    if (*(v20 + 13) == v21)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v51 = "Localized text array is not alt-text";
LABEL_77:
      exception[1] = v51;
      *(exception + 16) = 0;
    }

    v22 = *v21;
    v23 = (*v21 + 40);
    v24 = strlen(__s);
    v25 = *(v22 + 63);
    if (v25 < 0)
    {
      if (v24 != *(v22 + 48))
      {
        goto LABEL_28;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v23 = *v23;
    }

    else if (v24 != v25)
    {
      goto LABEL_28;
    }

    if (!memcmp(v23, __s, v24))
    {
      result = 1;
      goto LABEL_58;
    }

LABEL_28:
    ++v19;
  }

  while (v13 != v19);
  if (!*a2)
  {
LABEL_41:
    v33 = 0;
    while (1)
    {
      if (v12 == v33)
      {
        goto LABEL_79;
      }

      v20 = v8[v33];
      v34 = *(v20 + 12);
      if (*(v20 + 13) == v34)
      {
        goto LABEL_79;
      }

      v35 = *v34;
      v36 = *v34 + 40;
      v37 = *(v35 + 63);
      if (v37 < 0)
      {
        if (*(v35 + 48) != 9)
        {
          goto LABEL_53;
        }

        v36 = *v36;
      }

      else if (v37 != 9)
      {
        goto LABEL_53;
      }

      v38 = *v36;
      v39 = *(v36 + 8);
      if (v38 == 0x6C75616665642D78 && v39 == 116)
      {
        result = 4;
LABEL_58:
        a4 = v52;
LABEL_59:
        *a4 = v20;
        return result;
      }

LABEL_53:
      if (v13 == ++v33)
      {
        v20 = *v8;
        result = 5;
        goto LABEL_58;
      }
    }
  }

  v26 = strlen(a2);
  v27 = 0;
  while (1)
  {
    if (v12 == v27)
    {
      goto LABEL_79;
    }

    v28 = v8[v27];
    v29 = *(v28 + 12);
    if (*(v28 + 13) == v29)
    {
      goto LABEL_79;
    }

    v30 = *v29;
    v31 = *(v30 + 63);
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = *(v30 + 40);
      v31 = *(v30 + 48);
    }

    else
    {
      v32 = (v30 + 40);
    }

    if (v31 >= v26 && !strncmp(v32, a2, v26) && (v31 == v26 || v32[v26] == 45))
    {
      break;
    }

    if (v13 == ++v27)
    {
      goto LABEL_41;
    }
  }

  *v52 = v28;
  v42 = v27 + 1;
  if (v27 + 1 >= v12)
  {
    return 2;
  }

  v44 = a1 + 72;
  v43 = *(a1 + 9);
  v45 = (*(v44 + 1) - v43) >> 3;
  do
  {
    if (v45 <= v42)
    {
      goto LABEL_79;
    }

    v46 = *(*(v43 + 8 * v42) + 96);
    if (*(*(v43 + 8 * v42) + 104) == v46)
    {
      goto LABEL_79;
    }

    v47 = *v46;
    v48 = *(v47 + 63);
    if ((v48 & 0x8000000000000000) != 0)
    {
      v49 = *(v47 + 40);
      v48 = *(v47 + 48);
    }

    else
    {
      v49 = (v47 + 40);
    }

    if (v48 >= v26 && !strncmp(v49, a2, v26) && (v48 == v26 || v49[v26] == 45))
    {
      return 3;
    }

    ++v42;
    result = 2;
  }

  while (v12 != v42);
  return result;
}

void XMPMeta::SetLocalizedText(XMPMeta *this, char *a2, char *a3, char *__s, char *a5, char *a6)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta::SetLocalizedText();
  }

  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  std::string::basic_string[abi:fe200100]<0>(v62, __s);
  __p[0] = 0;
  __p[1] = 0;
  v61 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v62);
  v11 = __p;
  NormalizeLangValue(__p);
  if (v63 >= 0)
  {
    v12 = v62;
  }

  else
  {
    v12 = v62[0];
  }

  if (v61 < 0)
  {
    v11 = __p[0];
  }

  memset(v59, 0, sizeof(v59));
  ExpandXPath(a2, a3, v59);
  Node = FindNode(this + 224, v59, 1, 3584, 0);
  v14 = Node;
  if (!Node)
  {
    v16 = "Failed to find or create array node";
    goto LABEL_125;
  }

  v15 = *(Node + 8);
  if ((v15 & 0x1000) == 0)
  {
    v16 = "Localized text array is not alt-text";
    if ((v15 & 0x800) != 0)
    {
      v17 = (Node + 72);
      v18 = (Node + 80);
      if (*(Node + 72) == *(Node + 80))
      {
        v19 = 0;
        v20 = 0;
        *(Node + 8) = v15 | 0x1000;
        goto LABEL_41;
      }
    }

LABEL_125:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = v16;
    *(exception + 16) = 0;
  }

  v18 = (Node + 80);
  v21 = *(Node + 80);
  v17 = (Node + 72);
  v22 = *(Node + 72);
  v23 = v21 - v22;
  if (v21 == v22)
  {
    v19 = 0;
LABEL_40:
    v20 = 0;
LABEL_41:
    v64 = 0;
    v36 = ChooseLocalizedText(v14, v12, v11, &v64);
    v37 = v64;
    v38 = strcmp(v11, "x-default");
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          AppendLangItem(v14, v11, a6);
        case 4:
          if (*v18 - *v17 == 8)
          {
            XMP_Node::SetValue(v20, a6);
          }

          AppendLangItem(v14, v11, a6);
        case 5:
          AppendLangItem(v14, v11, a6);
      }

LABEL_126:
      v58 = __cxa_allocate_exception(0x18uLL);
      *v58 = 9;
      v58[1] = "Unexpected result from ChooseLocalizedText";
      *(v58 + 16) = 0;
    }

    switch(v36)
    {
      case 0:
        AppendLangItem(v14, "x-default", a6);
      case 1:
        if (!v38)
        {
          if (!v20 || !v19 || v20 != v37)
          {
            __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 977, "xdItem != __null && haveXDefault && (xdItem == itemNode)");
          }

          if (*v18 != *v17)
          {
            v45 = 0;
            if (((*v18 - *v17) >> 3) <= 1)
            {
              v46 = 1;
            }

            else
            {
              v46 = (*v18 - *v17) >> 3;
            }

            while (v45 < (*v18 - *v17) >> 3)
            {
              v47 = *(*v17 + 8 * v45);
              if (v47 != v20)
              {
                v48 = *(v47 + 63);
                if (v48 >= 0)
                {
                  v49 = *(v47 + 63);
                }

                else
                {
                  v49 = *(v47 + 48);
                }

                v50 = *(v20 + 63);
                v51 = v50;
                if ((v50 & 0x80u) != 0)
                {
                  v50 = *(v20 + 48);
                }

                if (v49 == v50)
                {
                  v52 = v48 >= 0 ? (v47 + 40) : *(v47 + 40);
                  v53 = v51 >= 0 ? (v20 + 40) : *(v20 + 40);
                  if (!memcmp(v52, v53, v49))
                  {
                    XMP_Node::SetValue(v47, a6);
                  }
                }
              }

              if (v46 == ++v45)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_127;
          }

LABEL_101:
          v37 = v20;
          goto LABEL_102;
        }

        break;
      case 2:
        break;
      default:
        goto LABEL_126;
    }

    if (v20 && v19 && v20 != v37)
    {
      v39 = *(v20 + 63);
      if (v39 >= 0)
      {
        v40 = *(v20 + 63);
      }

      else
      {
        v40 = *(v20 + 48);
      }

      v41 = *(v37 + 63);
      v42 = v41;
      if ((v41 & 0x80u) != 0)
      {
        v41 = *(v37 + 6);
      }

      if (v40 == v41)
      {
        v43 = v39 >= 0 ? (v20 + 40) : *(v20 + 40);
        v44 = v42 >= 0 ? v37 + 40 : *(v37 + 5);
        if (!memcmp(v43, v44, v40))
        {
          XMP_Node::SetValue(v20, a6);
        }
      }
    }

LABEL_102:
    XMP_Node::SetValue(v37, a6);
    if (!v19 && *v18 - *v17 == 8)
    {
      AppendLangItem(v14, "x-default", a6);
    }

    v64 = v59;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v64);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    return;
  }

  v24 = 0;
  if ((v23 >> 3) <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23 >> 3;
  }

  v19 = 1;
  while (1)
  {
    v20 = *&v22[8 * v24];
    if ((*(v20 + 8) & 0x40) == 0)
    {
      __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 931, "(((currItem->options) & kXMP_PropHasLang) != 0)");
    }

    v26 = *(v20 + 96);
    if (v26 == *(v20 + 104))
    {
      goto LABEL_123;
    }

    v27 = *v26;
    v28 = (v27 + 16);
    v29 = *(v27 + 39);
    if (v29 < 0)
    {
      if (*(v27 + 24) != 8)
      {
        goto LABEL_123;
      }

      v28 = *v28;
    }

    else if (v29 != 8)
    {
      goto LABEL_123;
    }

    if (*v28 != 0x676E616C3A6C6D78)
    {
LABEL_123:
      v56 = __cxa_allocate_exception(0x18uLL);
      *v56 = 102;
      v56[1] = "Language qualifier must be first";
      *(v56 + 16) = 0;
    }

    v30 = (v27 + 40);
    v31 = *(v27 + 63);
    if (*(v27 + 63) < 0)
    {
      break;
    }

    v32 = (v27 + 40);
    if (v31 == 9)
    {
      goto LABEL_33;
    }

LABEL_37:
    v19 = ++v24 < v23 >> 3;
    if (v25 == v24)
    {
      goto LABEL_40;
    }
  }

  if (*(v27 + 48) != 9)
  {
    goto LABEL_37;
  }

  v32 = *v30;
LABEL_33:
  v33 = *v32;
  v34 = *(v32 + 8);
  if (v33 != 0x6C75616665642D78 || v34 != 116)
  {
    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_41;
  }

  if ((v31 & 0x80) != 0)
  {
    if (*(v27 + 48) != 9)
    {
      goto LABEL_122;
    }

    v30 = *v30;
  }

  else if (v31 != 9)
  {
    goto LABEL_122;
  }

  if (*v30 != 0x6C75616665642D78 || *(v30 + 8) != 116)
  {
LABEL_122:
    __assert_rtn("SetLocalizedText", "XMPMeta-GetSet.cpp", 943, "arrayNode->children[itemNum]->qualifiers[0]->value == x-default");
  }

  v55 = *v22;
  *v22 = v20;
  if (v24 < (*v18 - *v17) >> 3)
  {
    *(*v17 + 8 * v24) = v55;
    goto LABEL_41;
  }

LABEL_127:
  __break(1u);
}

void sub_1860FDB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t *a24)
{
  a24 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void XMPMeta::DeleteLocalizedText(uint64_t this, char *a2, char *a3, char *__s, char *a5)
{
  if (!a2 || !a3 || !__s || !a5)
  {
LABEL_122:
    XMPMeta::DeleteLocalizedText();
  }

  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  std::string::basic_string[abi:fe200100]<0>(v73, __s);
  __p[0] = 0;
  __p[1] = 0;
  v72 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v73);
  v9 = __p;
  NormalizeLangValue(__p);
  if (v74 >= 0)
  {
    v10 = v73;
  }

  else
  {
    v10 = v73[0];
  }

  if (v72 < 0)
  {
    v9 = __p[0];
  }

  memset(v70, 0, sizeof(v70));
  ExpandXPath(a2, a3, v70);
  Node = FindNode(this + 224, v70, 0, 0, 0);
  v12 = Node;
  if (Node)
  {
    v14 = *(Node + 9);
    v13 = *(Node + 10);
    v75 = 0;
    if (ChooseLocalizedText(Node, v10, v9, &v75) == 1)
    {
      if (v13 == v14)
      {
LABEL_19:
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 7;
        exception[1] = "XMP_Enforce failed: (itemIndex < arraySize) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-GetSet.cpp at line 1068";
        *(exception + 16) = 0;
      }

      v15 = 0;
      v16 = (v13 - v14) >> 3;
      v17 = *(v12 + 9);
      v18 = *(v12 + 10);
      v19 = v75;
      if (v16 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v16;
      }

      while (1)
      {
        if ((v18 - v17) >> 3 == v15)
        {
          goto LABEL_121;
        }

        v21 = *&v17[8 * v15];
        if (v21 == v75)
        {
          break;
        }

        if (v20 == ++v15)
        {
          goto LABEL_19;
        }
      }

      v23 = *(v75 + 12);
      if (v23 != *(v75 + 13))
      {
        v24 = *v23;
        v25 = (v24 + 16);
        v26 = *(v24 + 39);
        if (v26 < 0)
        {
          if (*(v24 + 24) != 8)
          {
            goto LABEL_27;
          }

          v25 = *v25;
        }

        else if (v26 != 8)
        {
          goto LABEL_27;
        }

        if (*v25 != 0x676E616C3A6C6D78)
        {
          goto LABEL_27;
        }

        v37 = (v24 + 40);
        v38 = *(v24 + 63);
        if (v38 < 0)
        {
          if (*(v24 + 48) != 9)
          {
            goto LABEL_27;
          }

          v37 = *v37;
        }

        else if (v38 != 9)
        {
          goto LABEL_27;
        }

        v43 = *v37;
        v44 = *(v37 + 8);
        v46 = v43 != 0x6C75616665642D78 || v44 != 116;
        if (!v15 || v46)
        {
          if (v46)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v47 = *v17;
          *v17 = v21;
          v48 = *(v12 + 9);
          if (v15 >= (*(v12 + 10) - v48) >> 3)
          {
            goto LABEL_121;
          }

          *(v48 + 8 * v15) = v47;
          v15 = 0;
          v17 = *(v12 + 9);
          v18 = *(v12 + 10);
        }

        if (v16 <= 1)
        {
          goto LABEL_42;
        }

        v51 = 0;
        if (((v18 - v17) >> 3) <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = (v18 - v17) >> 3;
        }

        v53 = 1;
        while (1)
        {
          if (v52 == v53)
          {
            goto LABEL_121;
          }

          v27 = *&v17[v51 + 8];
          v54 = *(v27 + 63);
          if (v54 >= 0)
          {
            v55 = *(v27 + 63);
          }

          else
          {
            v55 = *(v27 + 48);
          }

          v56 = *(v19 + 63);
          v57 = v56;
          if ((v56 & 0x80u) != 0)
          {
            v56 = *(v19 + 6);
          }

          if (v55 == v56)
          {
            v58 = v54 >= 0 ? (v27 + 40) : *(v27 + 40);
            v59 = v57 >= 0 ? v19 + 40 : *(v19 + 5);
            if (!memcmp(v58, v59, v55))
            {
              break;
            }
          }

          ++v53;
          v51 += 8;
          if (v16 == v53)
          {
            goto LABEL_42;
          }
        }

        if (v15 < v53)
        {
          v63 = &v17[v51];
          v64 = &v17[v51 + 8];
          if (v18 != v64)
          {
            v65 = v18 - v17 - v51 - 16;
            if (v63 + 16 != v18)
            {
              memmove(v64, v63 + 16, v65);
            }

            v66 = &v64[v65];
            *(v12 + 10) = &v64[v65];
            v67 = &v17[8 * v15];
LABEL_117:
            if (v66 != v67)
            {
              v69 = &v66[-v67 - 8];
              if (v66 != (v67 + 8))
              {
                memmove(v67, (v67 + 8), &v66[-v67 - 8]);
              }

              v36 = 0;
              v35 = &v69[v67];
              goto LABEL_46;
            }
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_113:
        if (v18 != &v17[8 * v15])
        {
          v68 = &v17[8 * v15];
          if (v18 != (v68 + 8))
          {
            memmove(&v17[8 * v15], (v68 + 8), &v18[-v68 - 8]);
          }

          v66 = v18 - 8;
          *(v12 + 10) = v18 - 8;
          v67 = &v17[8 * v53];
          goto LABEL_117;
        }

        goto LABEL_121;
      }

LABEL_27:
      if (!v15)
      {
        goto LABEL_42;
      }

      if (v18 == v17)
      {
        goto LABEL_121;
      }

      v27 = *v17;
      v28 = *(*v17 + 63);
      if (v28 >= 0)
      {
        v29 = *(*v17 + 63);
      }

      else
      {
        v29 = *(*v17 + 48);
      }

      v30 = *(v75 + 63);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v75 + 6);
      }

      if (v29 != v30)
      {
        goto LABEL_42;
      }

      v32 = v28 >= 0 ? (v27 + 40) : *(v27 + 40);
      v33 = v31 >= 0 ? (v75 + 40) : *(v75 + 5);
      if (memcmp(v32, v33, v29))
      {
        goto LABEL_42;
      }

      v39 = *(v27 + 96);
      if (*(v27 + 104) == v39)
      {
        goto LABEL_121;
      }

      v40 = *v39;
      v41 = (v40 + 16);
      v42 = *(v40 + 39);
      if (v42 < 0)
      {
        if (*(v40 + 24) != 8)
        {
          goto LABEL_42;
        }

        v41 = *v41;
      }

      else if (v42 != 8)
      {
        goto LABEL_42;
      }

      if (*v41 != 0x676E616C3A6C6D78)
      {
        goto LABEL_42;
      }

      v49 = (v40 + 40);
      v50 = *(v40 + 63);
      if (v50 < 0)
      {
        if (*(v40 + 48) != 9)
        {
          goto LABEL_42;
        }

        v49 = *v49;
      }

      else if (v50 != 9)
      {
        goto LABEL_42;
      }

      v60 = *v49;
      v61 = *(v49 + 8);
      if (v60 != 0x6C75616665642D78 || v61 != 116)
      {
LABEL_42:
        if (v18 != &v17[8 * v15])
        {
          v34 = &v17[8 * v15];
          if (v18 != (v34 + 8))
          {
            memmove(&v17[8 * v15], (v34 + 8), &v18[-v34 - 8]);
          }

          v27 = 0;
          v35 = v18 - 8;
          v36 = 1;
LABEL_46:
          *(v12 + 10) = v35;
          (*(*v19 + 8))(v19);
          if ((v36 & 1) == 0)
          {
            (*(*v27 + 8))(v27);
          }

          goto LABEL_48;
        }

        goto LABEL_121;
      }

      v53 = 0;
      goto LABEL_113;
    }
  }

LABEL_48:
  v75 = v70;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v75);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }
}

void sub_1860FE368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26)
{
  a26 = &a11;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a26);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetProperty_Bool(XMPMeta *this, const char *a2, const char *a3, BOOL *a4, unsigned int *a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Bool();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Bool();
  }

  v12 = 0;
  v11 = 0;
  v8 = (*(*this + 16))(this);
  if (v8)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    *a4 = XMPUtils::ConvertToBool(v12, v7);
  }

  return v8;
}

uint64_t XMPMeta::GetProperty_Int(XMPMeta *this, const char *a2, const char *a3, int *a4, unsigned int *a5)
{
  v8 = 0;
  result = XMPMeta::GetProperty_Int64(this, a2, a3, &v8, a5);
  if (result)
  {
    if (v8 != v8)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 5;
      exception[1] = "Overflow condition";
      *(exception + 16) = 0;
    }

    *a4 = v8;
  }

  return result;
}

uint64_t XMPMeta::GetProperty_Int64(XMPMeta *this, const char *a2, const char *a3, uint64_t *a4, unsigned int *a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Int64();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Int64();
  }

  memset(__n, 0, sizeof(__n));
  v7 = (*(*this + 16))(this);
  if (v7)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    memset(&v12, 0, sizeof(v12));
    std::string::append(&v12, *&__n[1], __n[0]);
    XMPUtils::Trim(&v12);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    *a4 = XMPUtils::ConvertToInt64(v9, v8);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  return v7;
}

void sub_1860FE628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetProperty_Date(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Date();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Date();
  }

  __s = 0;
  v10 = 0;
  v7 = (*(*a1 + 16))(a1);
  if (v7)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    XMPUtils::ConvertToDate(__s, a4);
  }

  return v7;
}

void XMPMeta::SetProperty_Bool(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Bool();
  }

  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  XMPUtils::ConvertFromBool(a4, __p);
  if (v11 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  (*(*this + 48))(this, a2, a3, v9, a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1860FE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Int(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Int();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromInt(a4, "", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FE8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Int64(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Int64();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromInt64(a4, "", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FE998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Float(XMPMeta *this, const char *a2, const char *a3, __n128 a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Float();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromFloat("", &__p, a4.n128_f64[0]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FEA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Date(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Date();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromDate(a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 48))(a1, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FEB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::GetProperty()
{
  __assert_rtn("GetProperty", "XMPMeta-GetSet.cpp", 423, "(propValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty", "XMPMeta-GetSet.cpp", 422, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetArrayItem()
{
  __assert_rtn("GetArrayItem", "XMPMeta-GetSet.cpp", 453, "(itemValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetArrayItem", "XMPMeta-GetSet.cpp", 452, "(schemaNS != 0) && (arrayName != 0)");
}

void XMPMeta::GetStructField()
{
  __assert_rtn("GetStructField", "XMPMeta-GetSet.cpp", 480, "(fieldValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetStructField", "XMPMeta-GetSet.cpp", 479, "(schemaNS != 0) && (structName != 0) && (fieldNS != 0) && (fieldName != 0)");
}

void XMPMeta::GetQualifier()
{
  __assert_rtn("GetQualifier", "XMPMeta-GetSet.cpp", 503, "(qualValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetQualifier", "XMPMeta-GetSet.cpp", 502, "(schemaNS != 0) && (propName != 0) && (qualNS != 0) && (qualName != 0)");
}

void XMPMeta::GetLocalizedText()
{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 851, "(itemValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 850, "(actualLang != 0) && (langSize != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 849, "(schemaNS != 0) && (arrayName != 0) && (_genericLang != 0) && (_specificLang != 0)");
}

void XMPMeta::GetProperty_Bool()
{
  __assert_rtn("GetProperty_Bool", "XMPMeta-GetSet.cpp", 1142, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Bool", "XMPMeta-GetSet.cpp", 1141, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetProperty_Int64()
{
  __assert_rtn("GetProperty_Int64", "XMPMeta-GetSet.cpp", 1193, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Int64", "XMPMeta-GetSet.cpp", 1192, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetProperty_Date()
{
  __assert_rtn("GetProperty_Date", "XMPMeta-GetSet.cpp", 1251, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Date", "XMPMeta-GetSet.cpp", 1250, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta2::XMPMeta2(XMPMeta2 *this)
{
  XMPMeta::XMPMeta(this);
  *v1 = &unk_1EF4DF5F8;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  AdobeXMPCore::IMetadata_v1::CreateMetadata();
}

void sub_1860FF2DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 57);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = *(v1 + 55);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(v1 + 53);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(v1 + 51);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  XMPMeta::~XMPMeta(v1);
  _Unwind_Resume(a1);
}

void XMPMeta2::~XMPMeta2(XMPMeta2 *this)
{
  *this = &unk_1EF4DF5F8;
  v2 = *(this + 57);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  XMPMeta::~XMPMeta(this);
}

{
  XMPMeta2::~XMPMeta2(this);

  JUMPOUT(0x186602850);
}

void XMPMeta2::GetProperty(XMPMeta2 *this, char *a2, char *a3, const char **a4, unsigned int *a5, unsigned int *a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::GetProperty();
  }

  if (!a4 || !a5 || !a6)
  {
    XMPMeta2::GetProperty();
  }

  v117 = 0;
  v118 = 0;
  v119 = 0;
  ExpandXPath(a2, a3, &v117);
  v115 = 0;
  v116 = 0;
  AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v115);
  v114 = 0uLL;
  v10 = *(this + 50);
  if (v10)
  {
    v11 = v10 + *(*v10 - 544);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 51);
  *&v114 = v11;
  *(&v114 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v118 - v117;
  if ((v118 - v117) <= 0x20)
  {
LABEL_264:
    __break(1u);
    return;
  }

  if ((v117[7] & 0x10) == 0)
  {
    v91 = a6;
    v92 = a4;
    v93 = a5;
    v14 = 1;
LABEL_16:
    if (v14 < v13 >> 5)
    {
      v15 = v13 >> 5;
      while (1)
      {
        if (!v114)
        {
          goto LABEL_252;
        }

        memset(&v113, 0, sizeof(v113));
        if (v14 >= (v118 - v117) >> 5)
        {
          goto LABEL_264;
        }

        v16 = &v117[4 * v14];
        if (*(v16 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v113, *v16, v16[1]);
        }

        else
        {
          v17 = *v16;
          v113.__r_.__value_.__r.__words[2] = v16[2];
          *&v113.__r_.__value_.__l.__data_ = v17;
        }

        memset(&v112, 0, sizeof(v112));
        v18 = v117;
        v19 = v118;
        if (v14 - 1 >= (v118 - v117) >> 5)
        {
          goto LABEL_264;
        }

        v20 = &v117[4 * v14 - 4];
        if (*(v20 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v112, *v20, v20[1]);
          v18 = v117;
          v19 = v118;
        }

        else
        {
          v21 = *v20;
          v112.__r_.__value_.__r.__words[2] = v20[2];
          *&v112.__r_.__value_.__l.__data_ = v21;
        }

        if (v14 >= (v19 - v18) >> 5)
        {
          goto LABEL_264;
        }

        v22 = v18[4 * v14 + 3];
        if (v22 <= 3)
        {
          switch(v22)
          {
            case 1:
              v40 = std::string::find(&v113, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v113, 0, v40, &v108);
              (*(*v115 + 80))(&v108);
              size = v108.__r_.__value_.__l.__size_;
              v42 = v108.__r_.__value_.__r.__words[0];
              if ((*(*v114 + 40))(v114) != 4)
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v37 = 1;
                if (!size)
                {
                  goto LABEL_234;
                }

LABEL_194:
                std::__shared_weak_count::__release_shared[abi:fe200100](size);
                goto LABEL_234;
              }

              *&v108.__r_.__value_.__l.__data_ = 0uLL;
              (*(*v114 + 240))(&v108);
              v43 = v108.__r_.__value_.__r.__words[0];
              v44 = (*(*v42 + 192))(v42);
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v113;
              }

              else
              {
                v45 = v113.__r_.__value_.__r.__words[0];
              }

              (*(*v43 + 648))(v106, v43, v44, -1, v45->__r_.__value_.__r.__words + v40 + 1, -1);
              v46 = *v106;
              v106[0] = 0;
              v106[1] = 0;
              v47 = *(&v114 + 1);
              v114 = v46;
              if (!v47)
              {
                goto LABEL_119;
              }

              std::__shared_weak_count::__release_shared[abi:fe200100](v47);
              v48 = v106[1];
              if (!v106[1])
              {
                goto LABEL_119;
              }

              break;
            case 2:
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v55 = &v113;
              }

              else
              {
                v55 = v113.__r_.__value_.__r.__words[0];
              }

              if (v55->__r_.__value_.__s.__data_[0] != 63)
              {
                __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 243, "stepStr[0]=='?'");
              }

              std::string::basic_string(&__str, &v113, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v108);
              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v113.__r_.__value_.__l.__data_);
              }

              v113 = __str;
              v56 = std::string::find(&v113, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v113, 0, v56, &v108);
              (*(*v115 + 80))(&v108);
              size = v108.__r_.__value_.__l.__size_;
              v57 = v108.__r_.__value_.__r.__words[0];
              v58 = v114;
              v59 = (*(*v108.__r_.__value_.__l.__data_ + 192))(v108.__r_.__value_.__r.__words[0]);
              v60 = (*(*v57 + 208))(v57);
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v61 = &v113;
              }

              else
              {
                v61 = v113.__r_.__value_.__r.__words[0];
              }

              (*(*v58 + 128))(&v108, v58, v59, v60, v61->__r_.__value_.__r.__words + v56 + 1, -1);
              v62 = *&v108.__r_.__value_.__l.__data_;
              *&v108.__r_.__value_.__l.__data_ = 0uLL;
              v48 = *(&v114 + 1);
              v114 = v62;
              if (!v48)
              {
LABEL_121:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

LABEL_193:
                v37 = 0;
                if (!size)
                {
                  goto LABEL_234;
                }

                goto LABEL_194;
              }

              break;
            case 3:
              if ((*(*v114 + 40))(v114) == 2)
              {
                *&v108.__r_.__value_.__l.__data_ = 0uLL;
                (*(*v114 + 248))(&v108);
                v23 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v24 = v113.__r_.__value_.__l.__size_;
                  if (v113.__r_.__value_.__l.__size_ <= 1 || *v113.__r_.__value_.__l.__data_ != 91)
                  {
                    goto LABEL_260;
                  }
                }

                else
                {
                  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 2 || v113.__r_.__value_.__s.__data_[0] != 91)
                  {
                    goto LABEL_260;
                  }

                  v24 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
                }

                v79 = v113.__r_.__value_.__r.__words[0];
                if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v79 = &v113;
                }

                if (v79->__r_.__value_.__s.__data_[v24 - 1] == 93)
                {
                  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v23 = v113.__r_.__value_.__l.__size_;
                  }

                  v80 = v23 - 2;
                  if (v23 == 2)
                  {
                    goto LABEL_262;
                  }

                  v81 = 0;
                  v82 = 1;
                  do
                  {
                    if (v23 < v82)
                    {
                      goto LABEL_264;
                    }

                    v83 = v79->__r_.__value_.__s.__data_[v82];
                    if ((v83 - 58) <= 0xFFFFFFF5)
                    {
                      __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 209, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
                    }

                    v81 = v83 + 10 * v81 - 48;
                    ++v82;
                    --v80;
                  }

                  while (v80);
                  if (v81 < 1)
                  {
LABEL_262:
                    exception = __cxa_allocate_exception(0x18uLL);
                    *exception = 102;
                    exception[1] = "Array index must be larger than one";
                    *(exception + 16) = 0;
                  }

                  v84 = std::string::find(&v112, 58, 0);
                  memset(&__str, 0, sizeof(__str));
                  std::string::basic_string(&__str, &v112, 0, v84, v106);
                  (*(*v115 + 80))(v106);
                  size = v106[1];
                  (*(*v108.__r_.__value_.__l.__data_ + 656))(v106);
                  v85 = *v106;
                  v106[0] = 0;
                  v106[1] = 0;
                  v86 = *(&v114 + 1);
                  v114 = v85;
                  if (!v86)
                  {
                    goto LABEL_189;
                  }

                  std::__shared_weak_count::__release_shared[abi:fe200100](v86);
                  v54 = v106[1];
                  if (!v106[1])
                  {
                    goto LABEL_189;
                  }

                  goto LABEL_188;
                }

LABEL_260:
                __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 207, "(stepStr.length() >= 2) && (*( stepStr.begin()) == '[') && (stepStr[stepStr.length()-1] == ']')");
              }

LABEL_233:
              v37 = 1;
              goto LABEL_234;
            default:
              goto LABEL_232;
          }

          std::__shared_weak_count::__release_shared[abi:fe200100](v48);
LABEL_119:
          if (v108.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v108.__r_.__value_.__l.__size_);
          }

          goto LABEL_121;
        }

        if (v22 == 4)
        {
          if ((*(*v114 + 40))(v114) == 2)
          {
            *&v108.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v114 + 248))(&v108);
            v49 = std::string::find(&v112, 58, 0);
            memset(&__str, 0, sizeof(__str));
            std::string::basic_string(&__str, &v112, 0, v49, v106);
            (*(*v115 + 80))(v106);
            size = v106[1];
            v50 = v114;
            if (*(&v114 + 1))
            {
              atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v50 && (*(*v50 + 40))(v50) == 2)
            {
              (*(*v50 + 248))(v106, v50);
              v51 = (*(*(v106[0] + *(*v106[0] - 688)) + 560))(v106[0] + *(*v106[0] - 688));
              if (v106[1])
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v106[1]);
              }

              if (!v51)
              {
                v89 = __cxa_allocate_exception(0x18uLL);
                *v89 = 102;
                v89[1] = "Array index overflow";
                *(v89 + 16) = 0;
              }

              (*(*v108.__r_.__value_.__l.__data_ + 656))(v106);
              v52 = *v106;
              v106[0] = 0;
              v106[1] = 0;
              v53 = *(&v114 + 1);
              v114 = v52;
              if (v53)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v53);
                if (v106[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v106[1]);
                }
              }
            }

            if (!*(&v50 + 1))
            {
              goto LABEL_189;
            }

            v54 = *(&v50 + 1);
LABEL_188:
            std::__shared_weak_count::__release_shared[abi:fe200100](v54);
LABEL_189:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v108.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v108.__r_.__value_.__l.__size_);
            }

            goto LABEL_193;
          }

          goto LABEL_233;
        }

        if (v22 == 5)
        {
          break;
        }

        if (v22 != 6)
        {
          goto LABEL_232;
        }

        memset(&__str, 0, sizeof(__str));
        memset(&v108, 0, sizeof(v108));
        v106[0] = 0;
        v106[1] = 0;
        v107 = 0;
        SplitNameAndValue(&v113, &__str, &v108);
        v25 = v114;
        if (*(&v114 + 1))
        {
          atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v26 = std::string::find(&__str, 58, 0);
        memset(&v105, 0, sizeof(v105));
        std::string::basic_string(&v105, &__str, 0, v26, &__p);
        (*(*v115 + 80))(&__p);
        v27 = (*(*__p + 192))(__p);
        MEMORY[0x186602520](v106, v27);
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v98);
        }

        if (!v25 || (*(*v25 + 40))(v25) != 2)
        {
          v37 = 1;
          goto LABEL_203;
        }

        v109 = 0;
        v110 = 0;
        (*(*v25 + 248))(&v109, v25);
        v28 = (*(*(v109 + *(*v109 - 688)) + 560))(v109 + *(*v109 - 688));
        if (!v28)
        {
          v87 = 0;
          v37 = 0;
          goto LABEL_199;
        }

        v29 = v28;
        v90 = 0;
        v30 = 1;
        while (1)
        {
          v103 = 0;
          v104 = 0;
          (*(*v109 + 656))(&v103);
          if ((*(*v103 + 40))(v103) != 4)
          {
            v37 = 1;
            goto LABEL_77;
          }

          v101 = 0;
          v102 = 0;
          (*(*v103 + 240))(&__p);
          (*(*__p + 648))(&v101);
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v98);
          }

          if (!v101 || (*(*v101 + 40))(v101) != 1)
          {
            v37 = 14;
            goto LABEL_75;
          }

          __p = 0;
          v98 = 0;
          v99 = 0;
          (*(*v101 + 232))(&v96);
          (*(*v96 + 504))(&v100);
          v31 = (*(*v100 + 192))(v100);
          std::string::basic_string[abi:fe200100]<0>(&__p, v31);
          if (*(&v100 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
          }

          if (*(&v96 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
          }

          v32 = HIBYTE(v99);
          if (v99 >= 0)
          {
            v33 = HIBYTE(v99);
          }

          else
          {
            v33 = v98;
          }

          v34 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v108.__r_.__value_.__l.__size_;
          }

          if (v33 == v34 && (v99 >= 0 ? (p_p = &__p) : (p_p = __p), (v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v36 = &v108) : (v36 = v108.__r_.__value_.__r.__words[0]), !memcmp(p_p, v36, v33)))
          {
            (*(*v109 + 656))(&v100);
            v38 = v100;
            v100 = 0uLL;
            v39 = *(&v114 + 1);
            v114 = v38;
            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v39);
              if (*(&v100 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
              }
            }

            v90 = 1;
            v37 = 12;
            if ((v99 & 0x8000000000000000) == 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v37 = 0;
            if ((v32 & 0x80) == 0)
            {
              goto LABEL_75;
            }
          }

          operator delete(__p);
LABEL_75:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v102);
          }

LABEL_77:
          if (v104)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v104);
          }

          if (v37 && v37 != 14)
          {
            break;
          }

          if (++v30 > v29)
          {
            goto LABEL_197;
          }
        }

        if (v37 != 12)
        {
          goto LABEL_198;
        }

LABEL_197:
        v37 = 0;
LABEL_198:
        v87 = v90;
LABEL_199:
        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v110);
        }

        if (!v37)
        {
          v37 = (v87 & 1) == 0;
        }

LABEL_203:
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v25 + 1));
        }

        if (SHIBYTE(v107) < 0)
        {
          operator delete(v106[0]);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if (v37)
          {
            goto LABEL_234;
          }

          goto LABEL_232;
        }

        if (!v37)
        {
          goto LABEL_232;
        }

LABEL_234:
        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (v37)
        {
          goto LABEL_252;
        }

        if (++v14 == v15)
        {
          goto LABEL_242;
        }
      }

      if ((*(*v114 + 40))(v114) != 2)
      {
        goto LABEL_233;
      }

      v109 = 0;
      v110 = 0;
      (*(*v114 + 248))(&v109);
      memset(&__str, 0, sizeof(__str));
      memset(&v108, 0, sizeof(v108));
      v106[0] = 0;
      v106[1] = 0;
      v107 = 0;
      SplitNameAndValue(&v113, &__str, &v108);
      v63 = v114;
      if (*(&v114 + 1))
      {
        atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v64 = std::string::find(&__str, 58, 0);
      memset(&v105, 0, sizeof(v105));
      std::string::basic_string(&v105, &__str, 0, v64, &__p);
      (*(*v115 + 80))(&__p);
      v65 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v106, v65);
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v98);
      }

      if (v63 && (*(*v63 + 40))(v63) == 2)
      {
        v103 = 0;
        v104 = 0;
        (*(*v63 + 248))(&v103, v63);
        v66 = (*(*(v103 + *(*v103 - 688)) + 560))(v103 + *(*v103 - 688));
        if (v66)
        {
          v67 = v66;
          v68 = 0;
          v69 = 1;
          while (1)
          {
            v101 = 0;
            v102 = 0;
            (*(*v103 + 656))(&v101);
            v100 = 0uLL;
            (*(*v101 + 128))(&v100);
            if (v100)
            {
              __p = 0;
              v98 = 0;
              v99 = 0;
              (*(*v100 + 232))(&v94);
              (*(*v94 + 504))(&v96);
              v70 = (*(*v96 + 192))(v96);
              std::string::basic_string[abi:fe200100]<0>(&__p, v70);
              if (*(&v96 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
              }

              if (v95)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v95);
              }

              v71 = HIBYTE(v99);
              if (v99 >= 0)
              {
                v72 = HIBYTE(v99);
              }

              else
              {
                v72 = v98;
              }

              v73 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
              if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v73 = v108.__r_.__value_.__l.__size_;
              }

              if (v72 == v73)
              {
                v74 = v99 >= 0 ? &__p : __p;
                v75 = (v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v108 : v108.__r_.__value_.__r.__words[0];
                if (!memcmp(v74, v75, v72))
                {
                  (*(*v103 + 656))(&v96);
                  v77 = v96;
                  v96 = 0uLL;
                  v78 = *(&v114 + 1);
                  v114 = v77;
                  if (v78)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v78);
                    if (*(&v96 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
                    }
                  }

                  v68 = 1;
                  v76 = 9;
                  if ((v99 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_154;
                  }

LABEL_151:
                  operator delete(__p);
                  goto LABEL_154;
                }
              }

              v76 = 0;
              if (v71 < 0)
              {
                goto LABEL_151;
              }
            }

            else
            {
              v76 = 11;
            }

LABEL_154:
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }

            if (v102)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v102);
            }

            if ((v76 == 11 || !v76) && ++v69 <= v67)
            {
              continue;
            }

            goto LABEL_217;
          }
        }

        v68 = 0;
LABEL_217:
        if (v104)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v104);
        }
      }

      else
      {
        v68 = 0;
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (*(&v63 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v63 + 1));
      }

      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v110);
      }

      if (v68)
      {
LABEL_232:
        v37 = 0;
        goto LABEL_234;
      }

      goto LABEL_233;
    }

LABEL_242:
    if (v114)
    {
      *&v113.__r_.__value_.__l.__data_ = v114;
      if (*(&v114 + 1))
      {
        atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *v91 = XMPUtils::GetIXMPOptions(&v113);
      if (v113.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v113.__r_.__value_.__l.__size_);
      }

      if ((*(*v114 + 40))(v114) == 1)
      {
        *&v113.__r_.__value_.__l.__data_ = 0uLL;
        (*(*v114 + 232))(&v112);
        (*(*v112.__r_.__value_.__l.__data_ + 504))(&v113);
        if (v112.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
        }

        *v92 = (*(*v113.__r_.__value_.__l.__data_ + 192))(v113.__r_.__value_.__r.__words[0]);
        *v93 = (*(*v113.__r_.__value_.__l.__data_ + 208))(v113.__r_.__value_.__r.__words[0]);
        if (v113.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v113.__r_.__value_.__l.__size_);
        }
      }
    }

    goto LABEL_252;
  }

  if (XMPUtils::HandleConstAliasStep(this + 50, &v114, &v117, 0))
  {
    v91 = a6;
    v92 = a4;
    v93 = a5;
    v13 = v118 - v117;
    v14 = 2;
    goto LABEL_16;
  }

LABEL_252:
  if (*(&v114 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v114 + 1));
  }

  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v116);
  }

  v113.__r_.__value_.__r.__words[0] = &v117;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v113);
}

void sub_186100AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a30);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a51);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v51);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v52 - 209) < 0)
  {
    operator delete(*(v52 - 232));
  }

  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  v54 = *(v52 - 136);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v54);
  }

  v55 = *(v52 - 120);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v55);
  }

  *(v52 - 176) = v52 - 112;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v52 - 176));
  _Unwind_Resume(a1);
}

uint64_t XMPMeta2::CountArrayItems(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::CountArrayItems();
  }

  memset(v13, 0, sizeof(v13));
  ExpandXPath(a2, a3, v13);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  XMPUtils::FindCnstNode((this + 400), v13, &v11, &v10, 0);
  if (v4)
  {
    if ((v10 & 0x200) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "The named property is not an array";
      *(exception + 16) = 0;
    }

    v8 = v11;
    v9 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NodeChildCount = XMPUtils::GetNodeChildCount(&v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }
  }

  else
  {
    NodeChildCount = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  v11 = v13;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v11);
  return NodeChildCount;
}

void sub_186100F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  a12 = &a14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta2::ParseFromBuffer(XMPMeta2 *this, const char *a2, unsigned int a3, char a4)
{
  v6 = *(this + 56);
  if (!v6)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  (*(*v6 + 40))(&v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  if ((a4 & 2) == 0)
  {
    v7 = *(*(**(this + 54) + 232))(*(this + 54));
    (*(v7 + 288))();
    v8 = *(this + 54);
    v9 = (*(**(this + 56) + 192))(*(this + 56));
    v10 = (*(**(this + 56) + 208))(*(this + 56));
    (*(*v8 + 200))(&v15, v8, v9, v10);
    v11 = v15;
    v15 = 0uLL;
    v12 = *(this + 51);
    *(this + 25) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v15 + 1));
      }
    }

    (*(**(this + 56) + 200))(*(this + 56));
  }
}

void XMPMeta2::SerializeToBuffer(AdobeXMPCore::IDOMImplementationRegistry_v1 *a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  AdobeXMPCore::IDOMImplementationRegistry_v1::GetDOMImplementationRegistry(&v12);
  v10 = 0;
  v11 = 0;
  (*(*v12 + 48))(&v10);
  v8 = 0;
  v9 = 0;
  v4 = (*(*v10 + 224))(v10);
  v5 = *(a1 + 51);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 264))(&v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (v8)
  {
    v6 = (*(*v8 + 192))(v8);
    std::string::append(a2, v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }
}

void sub_18610137C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta2::Erase(XMPMeta2 *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 43) = 0;
  }

  v3 = *(*(*(this + 50) + *(**(this + 50) - 544)) + 224);

  return v3();
}

uint64_t XMPMeta2::DoesPropertyExist(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::DoesPropertyExist();
  }

  memset(v10, 0, sizeof(v10));
  ExpandXPath(a2, a3, v10);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  XMPUtils::FindCnstNode((this + 400), v10, &v8, &v7, 0);
  v5 = v4;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  v8 = v10;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v8);
  return v5;
}

void sub_186101510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  a10 = &a12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a10);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetProperty(XMPMeta2 *this, char *a2, char *a3, char *a4, unsigned int a5)
{
  if (!a2 || !a3)
  {
    XMPMeta2::SetProperty();
  }

  v9 = VerifySetOptions(a5, a4);
  memset(v14, 0, sizeof(v14));
  ExpandXPath(a2, a3, v14);
  v12 = 0;
  v13 = 0;
  XMPUtils::FindNode((this + 400), v14, 1, v9, &v12, 0, 0);
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  XMPUtils::SetNode(&v12, a4, v9);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  v12 = v14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v12);
}

void sub_186101640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a10);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetArrayItem(XMPMeta2 *this, char *a2, char *a3, int a4, char *a5, unsigned int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::SetArrayItem();
  }

  memset(v16, 0, sizeof(v16));
  ExpandXPath(a2, a3, v16);
  v14 = 0;
  v15 = 0;
  XMPUtils::FindNode((this + 400), v16, 0, a6, &v14, 0, 0);
  if ((v10 & 1) == 0 || ((*v14)[5])(v14) != 2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified array does not exist";
    *(exception + 16) = 0;
  }

  v12 = 0;
  v13 = 0;
  ((*v14)[31])(&v12);
  XMPUtils::DoSetArrayItem(&v12, a4, a5, a6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  v14 = v16;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v14);
}

void sub_1861017CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  a12 = &a14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta2::AppendArrayItem(XMPMeta2 *this, char *a2, char *a3, unsigned int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::AppendArrayItem();
  }

  v11 = VerifySetOptions(a4, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Only array form flags allowed for arrayOptions";
    *(exception + 16) = 0;
  }

  v12 = v11;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  ExpandXPath(a2, a3, &v28);
  v26 = 0;
  v27 = 0;
  v25 = 0uLL;
  v24 = 0;
  XMPUtils::FindCnstNode((this + 400), &v28, &v26, &v24 + 1, 0);
  if (v13)
  {
    if ((*(*v26 + 40))(v26) != 2)
    {
      v14 = "The named property is not an array";
      v15 = 102;
      goto LABEL_28;
    }
  }

  else
  {
    if (!v12)
    {
      v14 = "Explicit arrayOptions required to create new array";
      v15 = 103;
LABEL_28:
      v20 = __cxa_allocate_exception(0x18uLL);
      *v20 = v15;
      v20[1] = v14;
      *(v20 + 16) = 0;
    }

    memset(v23, 0, sizeof(v23));
    v16 = v29;
    if (v28 == v29)
    {
      __break(1u);
      return;
    }

    if (*(v29 - 9) < 0)
    {
      std::string::__init_copy_ctor_external(v23, *(v29 - 4), *(v29 - 3));
    }

    else
    {
      v17 = *(v29 - 2);
      *&v23[16] = *(v29 - 2);
      *v23 = v17;
    }

    *&v23[24] = *(v16 - 2);
    memset(&__p, 0, sizeof(__p));
    if ((v23[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v23, *&v23[8]);
    }

    else
    {
      __p = *v23;
    }

    XMPUtils::FindNode((this + 400), &v28, 1, v12, &v26, &v24, 0);
    if ((v18 & 1) == 0)
    {
      v21 = __cxa_allocate_exception(0x18uLL);
      *v21 = 102;
      v21[1] = "Failure creating array node";
      *(v21 + 16) = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v23[23] & 0x80000000) != 0)
    {
      operator delete(*v23);
    }
  }

  (*(*v26 + 248))(v23);
  v25 = *v23;
  XMPUtils::DoSetArrayItem(&v25, -1, a5, a6 | 0x8000);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v25 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  *v23 = &v28;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v23);
}

void sub_186101AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  __p = (v26 - 72);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetQualifier(XMPMeta2 *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta2::SetQualifier();
  }

  memset(v20, 0, sizeof(v20));
  ExpandXPath(a2, a3, v20);
  v18 = 0;
  v19 = 0;
  XMPUtils::FindCnstNode((this + 400), v20, &v18, 0, 0);
  if ((v14 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
}

void sub_186101CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta2::Clone(XMPMeta2 *this, XMPMeta *lpsrc, int a3)
{
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v11 = "Null clone pointer";
    goto LABEL_12;
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v11 = "No options are defined yet";
LABEL_12:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v6 = v5;
  v7 = v5[50] + *(*v5[50] - 544);
  (*(*v7 + 224))(v7, 1, 1);
  (*(*(*(this + 50) + *(**(this + 50) - 544)) + 264))(&v12, *(this + 50) + *(**(this + 50) - 544), 0, 0);
  (*(*v12 + 256))(&v14);
  v8 = v14;
  v14 = 0uLL;
  v9 = v6[51];
  *(v6 + 25) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v14 + 1));
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }
}

void sub_186101EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta2::DeleteProperty(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::DeleteProperty();
  }

  memset(v38, 0, sizeof(v38));
  ExpandXPath(a2, a3, v38);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  XMPUtils::FindCnstNode((this + 400), v38, &v36, &v35 + 1, &v35);
  if (v4 && v36)
  {
    v33 = 0;
    v34 = 0;
    ((*v36)[7])(&v33);
    v5 = v33;
    if ((v35 & 0x2000000000) != 0)
    {
      ((*v36)[11])(&v29);
      v7 = (*(*v29 + 192))(v29);
      ((*v36)[11])(&v27);
      v8 = (*(*v27 + 208))(v27);
      ((*v36)[9])(&v25);
      v9 = (*(*v25 + 192))(v25);
      ((*v36)[9])(&v23);
      v10 = (*(*v23 + 208))(v23);
      (*(*v5 + 152))(&v31, v5, v7, v8, v9, v10);
      v11 = v32;
      if (!v32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((*(*v33 + 40))(v33) == 2)
      {
        v29 = 0;
        v30 = 0;
        (*(*v33 + 248))(&v29);
        (*(*v29 + 680))(&v21);
        v6 = v22;
        if (!v22)
        {
LABEL_17:
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v30);
          }

          goto LABEL_19;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:fe200100](v6);
        goto LABEL_17;
      }

      if ((*(*v33 + 40))(v33) != 4)
      {
LABEL_19:
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        }

        goto LABEL_21;
      }

      v29 = 0;
      v30 = 0;
      (*(*v33 + 240))(&v29);
      v12 = v29;
      ((*v36)[11])(&v27);
      v13 = (*(*v27 + 192))(v27);
      ((*v36)[11])(&v25);
      v14 = (*(*v25 + 208))(v25);
      ((*v36)[9])(&v23);
      v15 = (*(*v23 + 192))(v23);
      ((*v36)[9])(&v17);
      v16 = (*(*v17 + 208))(v17);
      (*(*v12 + 672))(&v19, v12, v13, v14, v15, v16);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      }

      v11 = v18;
      if (!v18)
      {
LABEL_11:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v24);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v26);
        }

        v6 = v28;
        if (!v28)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
    goto LABEL_11;
  }

LABEL_21:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  v36 = v38;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v36);
}

void sub_18610247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  v24 = *(v22 - 88);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  v25 = *(v22 - 64);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v25);
  }

  *(v22 - 72) = v22 - 56;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v22 - 72));
  _Unwind_Resume(a1);
}

void XMPMeta2::GetObjectName(XMPMeta2 *this, const char **a2, unsigned int *a3)
{
  (*(**(this + 50) + 736))(&v6);
  *a2 = (*(*v6 + 192))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  (*(**(this + 50) + 736))(&v6);
  *a3 = (*(*v6 + 208))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

uint64_t XMPMeta2::SetObjectName(XMPMeta2 *this, char *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    do
    {
      if (v4 >= 1)
      {
        do
        {
          v7 = *++v5;
          v6 = v7;
        }

        while (v7 > 0);
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }
      }

      v10 = 0;
      v9 = 0;
      CodePoint_from_UTF8(v5, 4uLL, &v10, &v9);
      v5 += v9;
      v4 = *v5;
    }

    while (*v5);
  }

  return (*(**(this + 50) + 744))(*(this + 50), a2, -1);
}

BOOL XMPMeta2::GetLocalizedText(XMPMeta2 *this, char *a2, char *a3, char *__s, char *a5, const char **a6, unsigned int *a7, const char **a8, unsigned int *a9, unsigned int *a10)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta2::GetLocalizedText();
  }

  if (!a6 || !a7)
  {
    XMPMeta2::GetLocalizedText();
  }

  if (!a8 || !a9 || !a10)
  {
    XMPMeta2::GetLocalizedText();
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  std::string::basic_string[abi:fe200100]<0>(v40, __s);
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v40);
  v17 = __p;
  NormalizeLangValue(__p);
  if (v41 >= 0)
  {
    v18 = v40;
  }

  else
  {
    v18 = v40[0];
  }

  if (v39 < 0)
  {
    v17 = __p[0];
  }

  memset(v37, 0, sizeof(v37));
  ExpandXPath(a2, a3, v37);
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  XMPUtils::FindCnstNode((this + 400), v37, &v35, &v32, 0);
  if ((v19 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_40;
  }

  ((*v35)[31])(&v30);
  v20 = ChooseIXMPLocalizedText(&v30, &v32, v18, v17, &v33);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v21 = v20 != 0;
  if (!v20)
  {
    v24 = v34;
    if (!v34)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v30 = 0;
  v31 = 0;
  v22 = v33;
  v23 = strlen(xmlNameSpace);
  (*(*v22 + 128))(&v28, v22, xmlNameSpace, v23, "lang", -1);
  (*(*v28 + 232))(&v30);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(*v30 + 504))(&v28);
  *a6 = (*(*v28 + 192))(v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(*v30 + 504))(&v28);
  *a7 = (*(*v28 + 208))(v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  v28 = 0;
  v29 = 0;
  (*(*v22 + 232))(&v26, v22);
  (*(*v26 + 504))(&v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  *a8 = (*(*v28 + 192))(v28);
  *a9 = (*(*v28 + 208))(v28);
  v24 = v34;
  v26 = v22;
  v27 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a10 = XMPUtils::GetIXMPOptions(&v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  if (v24)
  {
LABEL_39:
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

LABEL_40:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
  }

  v35 = v37;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v35);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  return v21;
}

void sub_186102B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char *a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  a19 = &a21;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t ChooseIXMPLocalizedText(uint64_t a1, _DWORD *a2, char *a3, const char *a4, void *a5)
{
  v10 = *a1 + *(**a1 - 688);
  v11 = (*(*v10 + 560))(v10);
  __p = 0;
  v78 = 0;
  v79 = 0;
  std::string::basic_string[abi:fe200100]<0>(&__p, "lang");
  if ((*a2 & 0x1000) == 0)
  {
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = (*a2 & 0x800) == 0;
    }

    if (v12)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Localized text array is not alt-text";
      *(exception + 16) = 0;
    }

    goto LABEL_70;
  }

  if (!v11)
  {
LABEL_70:
    v26 = 0;
    v44 = 0;
    goto LABEL_110;
  }

  v69 = a5;
  __s = a3;
  v14 = 0;
  v15 = 1;
  v16 = "Alt-text array item is not simple";
  do
  {
    (*(**a1 + 656))(&v76);
    v18 = *(&v76 + 1);
    v17 = v76;
    v76 = 0uLL;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if ((*(*v17 + 40))(v17) != 1)
    {
      goto LABEL_147;
    }

    if (!(*(*v17 + 184))(v17))
    {
      goto LABEL_146;
    }

    v19 = strlen(xmlNameSpace);
    if (v79 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v79 >= 0)
    {
      v21 = HIBYTE(v79);
    }

    else
    {
      v21 = v78;
    }

    (*(*v17 + 128))(&v76, v17, xmlNameSpace, v19, p_p, v21);
    v22 = v76;
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (!v22)
    {
LABEL_146:
      v16 = "Alt-text array item has no language qualifier";
LABEL_147:
      v68 = __cxa_allocate_exception(0x18uLL);
      *v68 = 102;
      v68[1] = v16;
      *(v68 + 16) = 0;
    }

    ++v15;
    v14 = v18;
  }

  while (v15 <= v11);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    (*(**a1 + 656))(&v76);
    v26 = *(&v76 + 1);
    v27 = v76;
    v76 = 0uLL;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v18);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    (*(*v27 + 112))(&v72, v27);
    (*(*v72 + 48))(&v74);
    (*(*v74 + 232))(&v76);
    v28 = *(&v76 + 1);
    v29 = v76;
    v76 = 0uLL;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v24);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v73);
    }

    (*(*v27 + 232))(&v76, v27);
    v71 = *(&v76 + 1);
    v76 = 0uLL;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    (*(*v29 + 504))(&v76, v29);
    v30 = (*(*v76 + 192))(v76);
    v31 = strcmp(v30, a4);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (!v31)
    {
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v69[1];
      *v69 = v27;
      v69[1] = v26;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v45);
      }

      v44 = 1;
LABEL_105:
      v34 = v28;
      goto LABEL_106;
    }

    ++v25;
    v23 = v71;
    v24 = v28;
    v18 = v26;
  }

  while (v25 <= v11);
  if (!*__s)
  {
    v34 = v28;
LABEL_77:
    v46 = 1;
    v47 = v26;
    while (1)
    {
      (*(**a1 + 656))(&v76);
      v26 = *(&v76 + 1);
      v48 = v76;
      v76 = 0uLL;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v47);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      v49 = strlen(xmlNameSpace);
      if (v79 >= 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      if (v79 >= 0)
      {
        v51 = HIBYTE(v79);
      }

      else
      {
        v51 = v78;
      }

      (*(*v48 + 128))(&v74, v48, xmlNameSpace, v49, v50, v51);
      (*(*v74 + 232))(&v76);
      v28 = *(&v76 + 1);
      v52 = v76;
      v76 = 0uLL;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      (*(*v52 + 504))(&v76, v52);
      v53 = (*(*v76 + 192))(v76);
      v54 = strcmp(v53, "x-default");
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v54)
      {
        break;
      }

      ++v46;
      v34 = v28;
      v47 = v26;
      if (v46 > v11)
      {
        (*(**a1 + 656))(&v76);
        v55 = v76;
        v76 = 0uLL;
        v56 = v69[1];
        *v69 = v55;
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v56);
          if (*(&v76 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
          }
        }

        v44 = 5;
        goto LABEL_105;
      }
    }

    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = v69[1];
    *v69 = v48;
    v69[1] = v26;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v57);
    }

    v44 = 4;
    goto LABEL_105;
  }

  v32 = strlen(__s);
  v33 = 2;
  v34 = v28;
  while (1)
  {
    v35 = v26;
    (*(**a1 + 656))(&v76);
    v26 = *(&v76 + 1);
    v36 = v76;
    v76 = 0uLL;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v35);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    v37 = strlen(xmlNameSpace);
    if (v79 >= 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    if (v79 >= 0)
    {
      v39 = HIBYTE(v79);
    }

    else
    {
      v39 = v78;
    }

    (*(*v36 + 128))(&v74, v36, xmlNameSpace, v37, v38, v39);
    (*(*v74 + 232))(&v76);
    v40 = v76;
    v76 = 0uLL;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v34);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }

    v34 = *(&v40 + 1);
    (*(*v40 + 504))(&v76, v40);
    v41 = (*(*v76 + 192))(v76);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    (*(*v40 + 504))(&v76, v40);
    v42 = (*(*v76 + 208))(v76);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (v42 >= v32 && !strncmp(v41, __s, v32) && (v42 == v32 || v41[v32] == 45))
    {
      break;
    }

    if (v33++ > v11)
    {
      goto LABEL_77;
    }
  }

  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v59 = v69[1];
  *v69 = v36;
  v69[1] = v26;
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v59);
  }

  if (v33 <= v11)
  {
    while (1)
    {
      v60 = v26;
      (*(**a1 + 656))(&v76);
      v26 = *(&v76 + 1);
      v61 = v76;
      v76 = 0uLL;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v60);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      v62 = strlen(xmlNameSpace);
      if (v79 >= 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      if (v79 >= 0)
      {
        v64 = HIBYTE(v79);
      }

      else
      {
        v64 = v78;
      }

      (*(*v61 + 128))(&v74, v61, xmlNameSpace, v62, v63, v64);
      (*(*v74 + 232))(&v76);
      v65 = v76;
      v76 = 0uLL;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      v34 = *(&v65 + 1);
      (*(*v65 + 504))(&v76, v65);
      v66 = (*(*v76 + 192))(v76);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      (*(*v65 + 504))(&v76, v65);
      v67 = (*(*v76 + 208))(v76);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v67 >= v32 && !strncmp(v66, __s, v32) && (v67 == v32 || v66[v32] == 45))
      {
        break;
      }

      ++v33;
      v44 = 2;
      if (v33 > v11)
      {
        goto LABEL_106;
      }
    }

    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

LABEL_106:
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v71);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34);
  }

LABEL_110:
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }

  return v44;
}