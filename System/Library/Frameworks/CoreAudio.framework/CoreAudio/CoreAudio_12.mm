void sub_1DE2D48F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

unint64_t HALS_Stream::GetNumberAvailablePhysicalFormats(HALS_Stream *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6270667461;
  v4 = 0;
  return (*(*this + 112))(this, v1, &v3, 0, 0, 0) / 0x38uLL;
}

uint64_t HALS_Stream::GetAvailablePhysicalFormats(HALS_Stream *this, int a2, unsigned int *a3, AudioStreamRangedDescription *a4)
{
  v5 = *(this + 4);
  v7 = 0x676C6F6270667461;
  v8 = 0;
  v9 = 0;
  result = (*(*this + 120))(this, v5, &v7, (56 * a2), &v9, a4, 0, 0, 0);
  *a3 = v9 / 0x38;
  return result;
}

void std::vector<CAAudioValueRange>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](a2);
  }
}

void **std::vector<CAAudioValueRange>::__assign_with_size[abi:ne200100]<CAAudioValueRange*,CAAudioValueRange*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (!(v11 >> 60))
      {
        std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v11);
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1)
{
  result = 20 * a1;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
    __cxa_throw(exception, off_1E8672F70, MEMORY[0x1E69E5290]);
  }

  return result;
}

uint64_t caulk::numeric::exceptional_add<unsigned int>(int a1)
{
  v1 = __CFADD__(a1, 12);
  result = (a1 + 12);
  if (v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
    __cxa_throw(exception, off_1E8672F70, MEMORY[0x1E69E5290]);
  }

  return result;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

uint64_t HALS_PlugInDevice::GetPropertyDataSize(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  mSelector = a3->mSelector;
  v12 = 8;
  if (a3->mSelector > 1685278577)
  {
    if (mSelector > 1851878763)
    {
      if (mSelector <= 1919251298)
      {
        if (mSelector == 1851878764)
        {
          return v12;
        }

        if (mSelector == 1853059619)
        {
          NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
          if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
          {
            v26 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
            if (v26)
            {
              NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v26);
            }

            else
            {
              NumberAvailablePhysicalFormats = 0;
            }

            v43 = NumberAvailablePhysicalFormats;
            operator new[]();
          }

          __p = 0x676C6F626E737223;
          LODWORD(v42) = 0;
          if (a6)
          {
            v32 = a6[20].mSelector;
          }

          else
          {
            v32 = 0;
          }

          v34 = *(this + 183);
          v35 = *(v34 + 416);
          v36 = *(v34 + 424);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = (*(*v35 + 544))(v35, *(this + 369), v32, &__p);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (!v37)
          {
            return 16;
          }

          v38 = *(this + 183);
          v39 = *(v38 + 416);
          v40 = *(v38 + 424);
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = (*(*v39 + 560))(v39, *(this + 369), v32, &__p, 0, 0);
          if (!v40)
          {
            return v12;
          }

          v33 = v40;
          goto LABEL_86;
        }

        v19 = 1886546294;
      }

      else if (mSelector > 1920168546)
      {
        if (mSelector == 1920168547)
        {
          return v12;
        }

        v19 = 1936290671;
      }

      else
      {
        if (mSelector == 1919251299)
        {
          return 4;
        }

        v19 = 1919251302;
      }

      goto LABEL_47;
    }

    if (mSelector <= 1818850144)
    {
      if (mSelector == 1685278578)
      {
        return v12;
      }

      if (mSelector == 1702248804)
      {
        return 4;
      }

      v19 = 1702392685;
      goto LABEL_47;
    }

    if (mSelector <= 1819173228)
    {
      if (mSelector == 1818850145 || mSelector == 1818850162)
      {
        return 12;
      }

      goto LABEL_59;
    }

    if (mSelector == 1819173229)
    {
      return v12;
    }

    v18 = 1836411236;
    goto LABEL_41;
  }

  if (mSelector > 1667658617)
  {
    if (mSelector <= 1668641651)
    {
      if (mSelector == 1667658618 || mSelector == 1668050795)
      {
        return 4;
      }

      v19 = 1668510818;
      goto LABEL_47;
    }

    if (mSelector > 1685222500)
    {
      if (mSelector == 1685222501)
      {
        return 4;
      }

      v19 = 1685276755;
      goto LABEL_47;
    }

    if (mSelector == 1668641652)
    {
      return (12 * *(this + 372));
    }

    v18 = 1684301171;
LABEL_41:
    if (mSelector == v18)
    {
      return v12;
    }

    goto LABEL_59;
  }

  if (mSelector <= 1634038356)
  {
    if (mSelector == 1633903475 || mSelector == 1633906541)
    {
      return v12;
    }

    v19 = 1634038341;
    goto LABEL_47;
  }

  if (mSelector > 1634429293)
  {
    if (mSelector == 1634429294)
    {
      v21 = *(this + 183);
      v22 = *(v21 + 416);
      v23 = *(v21 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a6)
      {
        v24 = a6[20].mSelector;
      }

      else
      {
        v24 = 0;
      }

      v30 = (*(*v22 + 544))(v22, *(this + 369), v24, a3);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v30)
      {
        v31 = *(this + 183);
        v14 = *(v31 + 416);
        v15 = *(v31 + 424);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(this + 369);
        if (a6)
        {
          v17 = a6[20].mSelector;
        }

        else
        {
          v17 = 0;
        }

LABEL_84:
        v12 = (*(*v14 + 560))(v14, v16, v17, a3, a4, a5);
        if (v15)
        {
          v33 = v15;
LABEL_86:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        return v12;
      }

      return 4;
    }

    v19 = 1635087471;
LABEL_47:
    if (mSelector != v19)
    {
      goto LABEL_59;
    }

    return 4;
  }

  if (mSelector == 1634038357)
  {
    return v12;
  }

  if (mSelector == 1634169456)
  {
    v13 = *(this + 183);
    v14 = *(v13 + 416);
    v15 = *(v13 + 424);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(this + 369);
    if (a6)
    {
      v17 = a6[20].mSelector;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_84;
  }

LABEL_59:
  if (!HALS_Device::HasProperty(this, a2, a3, a6))
  {
    if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
    {
      return 0;
    }

    v29 = *(this + 183);
    v14 = *(v29 + 416);
    v15 = *(v29 + 424);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(this + 369);
    if (a6)
    {
      v17 = a6[20].mSelector;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_84;
  }

  return HALS_Device::GetPropertyDataSize(this, v28, a3, a4, a5, a6);
}

void sub_1DE2D5624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInDevice::IsPropertySettable(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  v7 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1685222500)
  {
    if (mSelector <= 1667658617)
    {
      if (mSelector <= 1634038356)
      {
        if (mSelector == 1633903475)
        {
          return v7;
        }

        if (mSelector != 1633906541)
        {
          v9 = 1634038341;
          goto LABEL_25;
        }

        v17 = *(this + 5);
        v16 = *(this + 6);
        if (v17 == v16 || v17 == 1701078390)
        {
          if (v17 != 1701078390 && v17 == v16)
          {
            return 0;
          }
        }

        else if (v16 != 1701078390)
        {
          return 0;
        }

        v23 = *(this + 183);
        v24 = *(v23 + 416);
        v25 = *(v23 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      if (mSelector == 1634038357)
      {
        return v7;
      }

      if (mSelector == 1634169456)
      {
        v21 = *(this + 5);
        v20 = *(this + 6);
        if (v21 == v20 || v21 == 1701078390)
        {
          if (v21 != 1701078390 && v21 == v20)
          {
            return 0;
          }
        }

        else if (v20 != 1701078390)
        {
          return 0;
        }

        v29 = *(this + 183);
        v24 = *(v29 + 416);
        v25 = *(v29 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      v9 = 1635087471;
      goto LABEL_25;
    }

    if (mSelector <= 1668641651)
    {
      v10 = mSelector == 1667658618 || mSelector == 1668050795;
      v11 = 1668510818;
      goto LABEL_41;
    }

    if (mSelector == 1668641652 || mSelector == 1684301171)
    {
      return v7;
    }

    v12 = 1685087596;
    goto LABEL_35;
  }

  if (mSelector <= 1818850161)
  {
    if (mSelector <= 1702248803)
    {
      v10 = mSelector == 1685222501 || mSelector == 1685276755;
      v11 = 1685278578;
      goto LABEL_41;
    }

    if (mSelector != 1702248804 && mSelector != 1702392685)
    {
      v12 = 1818850145;
LABEL_35:
      if (mSelector != v12)
      {
        goto LABEL_59;
      }
    }

    return 1;
  }

  if (mSelector <= 1919251301)
  {
    if (mSelector != 1818850162)
    {
      if (mSelector == 1886546294)
      {
        v19 = *(this + 5);
        v18 = *(this + 6);
        if (v19 == v18 || v19 == 1701078390)
        {
          if (v19 != 1701078390 && v19 == v18)
          {
            return 0;
          }
        }

        else if (v18 != 1701078390)
        {
          return 0;
        }

        v28 = *(this + 183);
        v24 = *(v28 + 416);
        v25 = *(v28 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = *(this + 369);
        if (a4)
        {
          v27 = a4[20].mSelector;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_91;
      }

      v9 = 1919251299;
LABEL_25:
      if (mSelector != v9)
      {
        goto LABEL_59;
      }

      return v7;
    }

    return 1;
  }

  v10 = mSelector == 1919251302 || mSelector == 1920168547;
  v11 = 1936290671;
LABEL_41:
  if (v10 || mSelector == v11)
  {
    return v7;
  }

LABEL_59:
  if (!HALS_Device::HasProperty(this, a2, a3, a4))
  {
    if ((*(*(this + 182) + 24))(this + 1456, a3->mSelector))
    {
      v30 = *(this + 183);
      v24 = *(v30 + 416);
      v25 = *(v30 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(this + 369);
      if (a4)
      {
        v27 = a4[20].mSelector;
      }

      else
      {
        v27 = 0;
      }

LABEL_91:
      v7 = (*(*v24 + 552))(v24, v26, v27, a3);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      return v7;
    }

    return 0;
  }

  return HALS_Device::IsPropertySettable(this, v22, a3, a4);
}

void sub_1DE2D5B80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInDevice::HasProperty(HALS_PlugInDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1702248803)
  {
    if (mSelector <= 1668641651)
    {
      if (mSelector > 1634169455)
      {
        if (mSelector <= 1667658617)
        {
          if (mSelector == 1634169456)
          {
            v59 = *(this + 5);
            v58 = *(this + 6);
            if (v59 == v58 || v59 == 1701078390)
            {
              if (v59 != 1701078390 && v59 == v58)
              {
                return 0;
              }
            }

            else if (v58 != 1701078390)
            {
              return 0;
            }

            v64 = *(this + 183);
            v10 = *(v64 + 416);
            v11 = *(v64 + 424);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v12 = *(this + 369);
            if (a4)
            {
              v13 = a4[20].mSelector;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            if (mSelector != 1635087471)
            {
              goto LABEL_172;
            }

            v31 = *(this + 183);
            v10 = *(v31 + 416);
            v11 = *(v31 + 424);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v12 = *(this + 369);
            if (a4)
            {
              v13 = a4[20].mSelector;
            }

            else
            {
              v13 = 0;
            }
          }
        }

        else
        {
          switch(mSelector)
          {
            case 1667658618:
              v52 = *(this + 183);
              v10 = *(v52 + 416);
              v11 = *(v52 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            case 1668050795:
              v46 = *(this + 183);
              v10 = *(v46 + 416);
              v11 = *(v46 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            case 1668510818:
              v9 = *(this + 183);
              v10 = *(v9 + 416);
              v11 = *(v9 + 424);
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = *(this + 369);
              if (a4)
              {
                v13 = a4[20].mSelector;
              }

              else
              {
                v13 = 0;
              }

              break;
            default:
              goto LABEL_172;
          }
        }

        goto LABEL_233;
      }

      if (mSelector > 1634038340)
      {
        if (mSelector != 1634038341 && mSelector != 1634038357)
        {
          goto LABEL_172;
        }

        v23 = *(this + 183);
        v10 = *(v23 + 416);
        v11 = *(v23 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      if (mSelector != 1633903475)
      {
        if (mSelector != 1633906541)
        {
          goto LABEL_172;
        }

        v20 = *(this + 5);
        v19 = *(this + 6);
        if (v20 == v19 || v20 == 1701078390)
        {
          if (v20 != 1701078390 && v20 == v19)
          {
            return 0;
          }
        }

        else if (v19 != 1701078390)
        {
          return 0;
        }

        v62 = *(this + 183);
        v10 = *(v62 + 416);
        v11 = *(v62 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      v35 = *(this + 183);
      v36 = *(v35 + 416);
      v28 = *(v35 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = *(this + 369);
      if (a4)
      {
        v38 = a4[20].mSelector;
      }

      else
      {
        v38 = 0;
      }

      v67 = 0x676C6F6261636373;
      v68 = 0;
      v61 = (*(*v36 + 544))(v36, v37, v38, &v67);
      goto LABEL_220;
    }

    if (mSelector <= 1685087595)
    {
      if (mSelector <= 1684301170)
      {
        if (mSelector == 1668641652)
        {
          return *(this + 372) != 0;
        }

        if (mSelector != 1684107364)
        {
          goto LABEL_172;
        }

        v21 = *(this + 183);
        v10 = *(v21 + 416);
        v11 = *(v21 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      if (mSelector != 1684301171)
      {
        if (mSelector != 1684893796)
        {
          goto LABEL_172;
        }

        v24 = *(this + 183);
        v10 = *(v24 + 416);
        v11 = *(v24 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_233;
      }

      v39 = *(this + 183);
      v40 = *(v39 + 416);
      v28 = *(v39 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = *(this + 369);
      if (a4)
      {
        v42 = a4[20].mSelector;
      }

      else
      {
        v42 = 0;
      }

      v67 = 0x676C6F6264646573;
      v68 = 0;
      v61 = (*(*v40 + 544))(v40, v41, v42, &v67);
      goto LABEL_220;
    }

    if (mSelector <= 1685276754)
    {
      if (mSelector == 1685087596)
      {
        v60 = *(this + 183);
        v10 = *(v60 + 416);
        v11 = *(v60 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1685222501)
        {
          goto LABEL_172;
        }

        v32 = *(this + 183);
        v10 = *(v32 + 416);
        v11 = *(v32 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      goto LABEL_233;
    }

    if (mSelector == 1685276755)
    {
      v53 = *(this + 183);
      v10 = *(v53 + 416);
      v11 = *(v53 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    if (mSelector == 1685278578)
    {
      v47 = *(this + 183);
      v10 = *(v47 + 416);
      v11 = *(v47 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    v15 = 1685287012;
LABEL_36:
    if (mSelector != v15)
    {
      goto LABEL_172;
    }

    v17 = *(this + 183);
    v10 = *(v17 + 416);
    v11 = *(v17 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 369);
    if (a4)
    {
      v13 = a4[20].mSelector;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_233;
  }

  if (mSelector <= 1819111267)
  {
    if (mSelector <= 1818452845)
    {
      if (mSelector > 1768124269)
      {
        if (mSelector != 1768124270 && mSelector != 1768777573)
        {
          goto LABEL_172;
        }

        v22 = *(this + 183);
        v10 = *(v22 + 416);
        v11 = *(v22 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else if (mSelector == 1702248804)
      {
        v34 = *(this + 183);
        v10 = *(v34 + 416);
        v11 = *(v34 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1702392685)
        {
          goto LABEL_172;
        }

        v18 = *(this + 183);
        v10 = *(v18 + 416);
        v11 = *(v18 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (mSelector <= 1818850144)
    {
      if (mSelector == 1818452846)
      {
        v54 = *(this + 183);
        v10 = *(v54 + 416);
        v11 = *(v54 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        if (mSelector != 1818455662)
        {
          goto LABEL_172;
        }

        v25 = *(this + 183);
        v10 = *(v25 + 416);
        v11 = *(v25 + 424);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(this + 369);
        if (a4)
        {
          v13 = a4[20].mSelector;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (mSelector == 1818850145 || mSelector == 1818850162)
    {
      v33 = *(this + 183);
      v10 = *(v33 + 416);
      v11 = *(v33 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      if (mSelector != 1819107691)
      {
        goto LABEL_172;
      }

      v14 = *(this + 183);
      v10 = *(v14 + 416);
      v11 = *(v14 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }
    }

    goto LABEL_233;
  }

  if (mSelector <= 1886546293)
  {
    if (mSelector <= 1819634019)
    {
      if (mSelector != 1819111268)
      {
        v8 = 1819173229;
LABEL_88:
        if (mSelector == v8)
        {
          v26 = *(this + 183);
          v27 = *(v26 + 416);
          v28 = *(v26 + 424);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(this + 369);
          if (a4)
          {
            v30 = a4[20].mSelector;
          }

          else
          {
            v30 = 0;
          }

          v67 = 0x676C6F626C6E616DLL;
          v68 = 0;
          v61 = (*(*v27 + 544))(v27, v29, v30, &v67);
          goto LABEL_220;
        }

LABEL_172:
        if (HALS_Device::HasProperty(this, a2, a3, a4))
        {
          return 1;
        }

        if ((*(*(this + 182) + 24))(this + 1456, a3->mSelector))
        {
          v65 = *(this + 183);
          v10 = *(v65 + 416);
          v11 = *(v65 + 424);
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v12 = *(this + 369);
          if (a4)
          {
            v13 = a4[20].mSelector;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_233;
        }

        return 0;
      }

      v55 = *(this + 183);
      v10 = *(v55 + 416);
      v11 = *(v55 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

LABEL_233:
      v16 = (*(*v10 + 544))(v10, v12, v13, a3);
      if (v11)
      {
        v66 = v11;
        goto LABEL_235;
      }

      return v16;
    }

    if (mSelector != 1819634020)
    {
      if (mSelector != 1836411236)
      {
        v8 = 1851878764;
        goto LABEL_88;
      }

      v43 = *(this + 183);
      v10 = *(v43 + 416);
      v11 = *(v43 + 424);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 369);
      if (a4)
      {
        v13 = a4[20].mSelector;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_233;
    }

    v48 = *(this + 183);
    v49 = *(v48 + 416);
    v28 = *(v48 + 424);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = *(this + 369);
    if (a4)
    {
      v51 = a4[20].mSelector;
    }

    else
    {
      v51 = 0;
    }

    v67 = 0x676C6F626C756964;
    v68 = 0;
    v61 = (*(*v49 + 544))(v49, v50, v51, &v67);
LABEL_220:
    v16 = v61;
    if (v28)
    {
      v66 = v28;
LABEL_235:
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      return v16;
    }

    return v16;
  }

  v16 = 1;
  if (mSelector <= 1919251301)
  {
    if (mSelector != 1886546294)
    {
      if (mSelector == 1919251299)
      {
        return v16;
      }

      goto LABEL_172;
    }

    v57 = *(this + 5);
    v56 = *(this + 6);
    if (v57 == v56 || v57 == 1701078390)
    {
      if (v57 != 1701078390 && v57 == v56)
      {
        return 0;
      }
    }

    else if (v56 != 1701078390)
    {
      return 0;
    }

    v63 = *(this + 183);
    v10 = *(v63 + 416);
    v11 = *(v63 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 369);
    if (a4)
    {
      v13 = a4[20].mSelector;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_233;
  }

  if (mSelector == 1919251302)
  {
    return v16;
  }

  if (mSelector != 1920168547)
  {
    v15 = 1936290671;
    goto LABEL_36;
  }

  v44 = this + 1456;

  return HALS_PlugInObject::HasResourceBundle(v44, a4);
}

void sub_1DE2D6BA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double HALS_PlugInDevice::_Deactivate(HALS_PlugInDevice *this)
{
  v2 = 0;
  v3 = this + 1496;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &v3[24 * v2];
    v7 = *v6;
    if (*(v6 + 1) != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        (*(*v10 + 8))(v10);
        HALS_ObjectMap::ObjectIsDead(v10, v11);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (*(v6 + 1) - *v6) >> 3);
    }

    v4 = 0;
    *(v6 + 1) = v7;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = *(this + 193);
  if (*(this + 194) != v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(v12 + 8 * v13);
      (*(*v15 + 8))(v15);
      HALS_ObjectMap::ObjectIsDead(v15, v16);
      v13 = v14;
      v12 = *(this + 193);
      ++v14;
    }

    while (v13 < (*(this + 194) - v12) >> 3);
  }

  *(this + 194) = v12;
  (*(**(*(this + 183) + 416) + 136))(*(*(this + 183) + 416), *(this + 369));

  return HALS_Device::_Deactivate(this);
}

void sub_1DE2D6F98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInDevice::HALS_PlugInDevice(HALS_PlugInDevice *this, HALB_Info *a2, HALS_PlugIn *a3, uint64_t a4)
{
  v7 = *(a3 + 52);
  v8 = *(a3 + 53);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 568))(v7, a4);
  HALS_Device::HALS_Device(this, a2, a3, 0, v9);
}

void sub_1DE2D74D4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1DE2D74CCLL);
}

char *CAStreamBasicDescription::AsString(CAStreamBasicDescription *this, char *a2, size_t a3, double a4, int8x8_t a5)
{
  CA::StreamDescription::AsString(&__p, this, a4, a5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  strlcpy(a2, p_p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_1DE2D755C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<AudioStreamRangedDescription>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1DE2D7600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioStreamRangedDescription>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[56 * a2];
  }

  else
  {
    v7 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x492492492492492)
      {
        v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x249249249249249)
        {
          v10 = 0x492492492492492;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 56 * ((56 * v6 - 56) / 0x38) + 56;
    bzero(a1[1], v12);
    v11 = &v4[v12];
  }

  a1[1] = v11;
}

void std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

const void **std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(const void **a1, CFDataRef theData, int a3, int a4)
{
  if (!theData)
  {
    return theData != 0;
  }

  if (a4 == 1)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(theData);
    if (!BytePtr)
    {
      return theData != 0;
    }

    v20 = BytePtr;
    memset(&v35, 0, sizeof(v35));
    std::vector<unsigned int>::reserve(&v35, Length);
    if (Length >= 1)
    {
      do
      {
        v21 = *v20++;
        v31 = v21;
        std::vector<unsigned int>::push_back[abi:ne200100](&v35, &v31);
        --Length;
      }

      while (Length);
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 4)
      {
        v7 = CFDataGetLength(theData);
        v8 = CFDataGetBytePtr(theData);
        if (v8)
        {
          v9 = v8;
          v10 = v7 >> 2;
          memset(&v35, 0, sizeof(v35));
          std::vector<unsigned int>::reserve(&v35, v7 >> 2);
          if (v7 > 3)
          {
            end = v35.__end_;
            value = v35.__end_cap_.__value_;
            begin = v35.__begin_;
            do
            {
              if (end >= value)
              {
                v25 = end - begin;
                v26 = end - begin;
                v27 = v26 + 1;
                if ((v26 + 1) >> 62)
                {
                  v35.__begin_ = begin;
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if ((value - begin) >> 1 > v27)
                {
                  v27 = (value - begin) >> 1;
                }

                if ((value - begin) >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v28);
                }

                v29 = (4 * v26);
                value = 0;
                *v29 = *v9;
                end = v29 + 1;
                memcpy(0, begin, v25);
                if (begin)
                {
                  operator delete(begin);
                }

                begin = 0;
              }

              else
              {
                *end++ = *v9;
              }

              v9 += 4;
              --v10;
            }

            while (v10);
            v35.__end_ = end;
            v35.__end_cap_.__value_ = value;
            v35.__begin_ = begin;
          }

          else
          {
            begin = v35.__begin_;
            end = v35.__end_;
          }

          v31 = a3;
          v33 = 0;
          v34 = 0;
          __p = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, begin, end, end - begin);
          std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](a1, &v31);
          if (__p)
          {
            operator delete(__p);
          }

          v23 = v35.__begin_;
          if (v35.__begin_)
          {
            goto LABEL_38;
          }
        }
      }

      return theData != 0;
    }

    v13 = CFDataGetLength(theData);
    v14 = CFDataGetBytePtr(theData);
    if (!v14)
    {
      return theData != 0;
    }

    v15 = v14;
    v16 = v13 >> 1;
    memset(&v35, 0, sizeof(v35));
    std::vector<unsigned int>::reserve(&v35, v13 >> 1);
    if (v13 >= 2)
    {
      do
      {
        v17 = *v15;
        v15 += 2;
        v31 = v17;
        std::vector<unsigned int>::push_back[abi:ne200100](&v35, &v31);
        --v16;
      }

      while (v16);
    }
  }

  v31 = a3;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v22 = v35.__begin_;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v35.__begin_, v35.__end_, v35.__end_ - v35.__begin_);
  std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](a1, &v31);
  if (__p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
LABEL_38:
    operator delete(v23);
  }

  return theData != 0;
}

void sub_1DE2D7BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *result) >> 5;
    v7 = v6 + 1;
    if ((v6 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = 32 * v6;
    *v10 = *a2;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 8) = 0;
    *(v10 + 8) = *(a2 + 8);
    *(v10 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = 32 * v6 + 32;
    v11 = v2[1] - *v2;
    v12 = (v10 - v11);
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::pair<unsigned int,std::vector<unsigned int>>>::~__split_buffer(v15);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 2) = 0;
    *(v3 + 3) = 0;
    *(v3 + 1) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 3) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = (v3 + 32);
  }

  v2[1] = v5;
  return result;
}

void std::allocator<std::pair<unsigned int,std::vector<unsigned int>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned int,std::vector<unsigned int>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::Core::Driver_Manager::load(uint64_t a1, __int128 *a2, const __CFString ***a3, const __CFString ***a4)
{
  v234 = *MEMORY[0x1E69E9840];
  MainBundle = CFBundleGetMainBundle();
  v8 = MainBundle;
  if (MainBundle)
  {
    CFRetain(MainBundle);
  }

  v9 = mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(&v230, v8);
  if (!v230)
  {
    v227 = 0;
    v228 = 0;
    v229 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
LABEL_12:
    if (&v227 != a3)
    {
      std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(&v227, *a3, a3[1], a3[1] - *a3);
    }

    if (&v224 != a4)
    {
      std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(&v224, *a4, a4[1], a4[1] - *a4);
    }

    goto LABEL_16;
  }

  mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(cf, v230);
  v10 = CFStringCreateWithBytes(0, "com.apple.audio.coreaudiod", 26, 0x8000100u, 0);
  *v233 = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf[0], v233);
  CFRelease(v10);
  v9 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v227 = 0;
  v228 = 0;
  v229 = 0;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  if (v11)
  {
    goto LABEL_12;
  }

  v9 = AMCP::Feature_Flags::access_run_new_hal(0, v12);
  if (v9)
  {
    goto LABEL_12;
  }

  v9 = AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(0, v13);
  if (v9)
  {
    goto LABEL_12;
  }

  v81 = (v228 - v227) >> 3;
  if ((v81 + 1) >> 61)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v82 = (v229 - v227) >> 2;
  if (v82 <= v81 + 1)
  {
    v82 = v81 + 1;
  }

  if ((v229 - v227) >= 0x7FFFFFFFFFFFFFF8)
  {
    v83 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v83 = v82;
  }

  cf[4] = &v227;
  if (v83)
  {
    std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v83);
  }

  cf[0] = 0;
  cf[1] = (8 * v81);
  cf[2] = (8 * v81);
  cf[3] = 0;
  std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,char const(&)[28],void,0>((8 * v81));
  cf[2] = cf[2] + 8;
  std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(&v227, cf);
  v212 = v228;
  v9 = std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(cf);
  v228 = v212;
LABEL_16:
  if (v227 != v228)
  {
    v14 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
    cf[0] = v14;
    if (!v14)
    {
      v215 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v215, "Could not construct");
      __cxa_throw(v215, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = v224;
    v16 = v225;
    if (v224 == v225)
    {
      v17 = 0;
    }

    else
    {
      while (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v15, cf))
      {
        if (++v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v17 = v15 != v225;
    }

    CFRelease(v14);
    if (!v17)
    {
      v26 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
      cf[0] = v26;
      if (!v26)
      {
        v216 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v216, "Could not construct");
        __cxa_throw(v216, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v27 = v227;
      v28 = v228;
      if (v227 == v228)
      {
        v223 = 0;
      }

      else
      {
        do
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v27, cf) == kCFCompareEqualTo)
          {
            goto LABEL_41;
          }

          ++v27;
        }

        while (v27 != v28);
        v27 = v28;
LABEL_41:
        v223 = v27 != v228;
      }

      CFRelease(v26);
      if (v223)
      {
        v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v38 & 1) == 0)
        {
          v37 = AMCP::Log::AMCP_Scope_Registry::initialize(v37);
        }

        v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = *(v39 + 16);
        switch(v41)
        {
          case 3:
            v69 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v69 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v71 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v70 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
              v72 = *v71;
              std::__shared_weak_count::__release_shared[abi:ne200100](v70);
            }

            else
            {
              v72 = *v71;
            }

            if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              goto LABEL_149;
            }

            LODWORD(cf[0]) = 136315394;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 67;
            v84 = v72;
            v85 = OS_LOG_TYPE_INFO;
            break;
          case 2:
            v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v65 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              v68 = *v67;
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            else
            {
              v68 = *v67;
            }

            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(cf[0]) = 136315394;
              *(cf + 4) = "Driver_Manager.cpp";
              WORD2(cf[1]) = 1024;
              *(&cf[1] + 6) = 67;
              _os_log_debug_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading all drivers...", cf, 0x12u);
            }

            goto LABEL_149;
          case 1:
            v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v42 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              v45 = *v44;
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }

            else
            {
              v45 = *v44;
            }

            if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
LABEL_149:
              if (v40)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v40);
              }

              v86 = 1;
              goto LABEL_219;
            }

            LODWORD(cf[0]) = 136315394;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 67;
            v84 = v45;
            v85 = OS_LOG_TYPE_DEFAULT;
            break;
          default:
            goto LABEL_149;
        }

        _os_log_impl(&dword_1DE1F9000, v84, v85, "%32s:%-5d Loading all drivers...", cf, 0x12u);
        goto LABEL_149;
      }

      if (!*v227)
      {
LABEL_404:
        v213 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v213, "Could not construct");
        __cxa_throw(v213, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v46 = applesauce::CF::convert_to<std::string,0>(v233, *v227);
      if ((v228 - v227) >= 9)
      {
        v47 = 1;
        do
        {
          std::string::append(v233, ", ", 2uLL);
          v48 = *&v227[8 * v47];
          if (!v48)
          {
            goto LABEL_404;
          }

          applesauce::CF::convert_to<std::string,0>(cf, v48);
          if (SHIBYTE(cf[2]) >= 0)
          {
            v49 = cf;
          }

          else
          {
            v49 = cf[0];
          }

          if (SHIBYTE(cf[2]) >= 0)
          {
            v50 = HIBYTE(cf[2]);
          }

          else
          {
            v50 = cf[1];
          }

          v46 = std::string::append(v233, v49, v50);
          if (SHIBYTE(cf[2]) < 0)
          {
            operator delete(cf[0]);
          }
        }

        while (++v47 < ((v228 - v227) >> 3));
      }

      memset(&v232, 0, sizeof(v232));
      if (v224 != v225)
      {
        if (!*v224)
        {
          goto LABEL_404;
        }

        v46 = applesauce::CF::convert_to<std::string,0>(cf, *v224);
        if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v232.__r_.__value_.__l.__data_);
        }

        v232 = *cf;
        if ((v225 - v224) >= 9)
        {
          v51 = 1;
          do
          {
            std::string::append(&v232, ", ", 2uLL);
            v52 = *&v224[8 * v51];
            if (!v52)
            {
              goto LABEL_404;
            }

            applesauce::CF::convert_to<std::string,0>(cf, v52);
            if (SHIBYTE(cf[2]) >= 0)
            {
              v53 = cf;
            }

            else
            {
              v53 = cf[0];
            }

            if (SHIBYTE(cf[2]) >= 0)
            {
              v54 = HIBYTE(cf[2]);
            }

            else
            {
              v54 = cf[1];
            }

            v46 = std::string::append(&v232, v53, v54);
            if (SHIBYTE(cf[2]) < 0)
            {
              operator delete(cf[0]);
            }
          }

          while (++v51 < ((v225 - v224) >> 3));
        }
      }

      v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v55 & 1) == 0)
      {
        v46 = AMCP::Log::AMCP_Scope_Registry::initialize(v46);
      }

      v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = *(v56 + 16);
      switch(v58)
      {
        case 3:
          v77 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v77 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v79 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v78 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            v80 = *v79;
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          else
          {
            v80 = *v79;
          }

          v46 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);
          if (v46)
          {
            v88 = v233;
            if (v233[23] < 0)
            {
              v88 = *v233;
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v88;
            v89 = v80;
            v90 = OS_LOG_TYPE_INFO;
            goto LABEL_167;
          }

          break;
        case 2:
          v73 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v73 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v75 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v74 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
            v76 = *v75;
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          else
          {
            v76 = *v75;
          }

          v46 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
          if (v46)
          {
            v87 = v233;
            if (v233[23] < 0)
            {
              v87 = *v233;
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v87;
            _os_log_debug_impl(&dword_1DE1F9000, v76, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading drivers: %s...", cf, 0x1Cu);
          }

          break;
        case 1:
          v59 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v59 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v60 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            v62 = *v61;
            std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          }

          else
          {
            v62 = *v61;
          }

          v46 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            v91 = v233;
            if (v233[23] < 0)
            {
              v91 = *v233;
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 87;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v91;
            v89 = v62;
            v90 = OS_LOG_TYPE_DEFAULT;
LABEL_167:
            _os_log_impl(&dword_1DE1F9000, v89, v90, "%32s:%-5d Loading drivers: %s...", cf, 0x1Cu);
          }

          break;
      }

      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      v92 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v92 & 1) == 0)
      {
        v46 = AMCP::Log::AMCP_Scope_Registry::initialize(v46);
      }

      v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v94 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v95 = *(v93 + 16);
      switch(v95)
      {
        case 3:
          v104 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v104 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v106 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v105)
          {
            atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
            v107 = *v106;
            std::__shared_weak_count::__release_shared[abi:ne200100](v105);
          }

          else
          {
            v107 = *v106;
          }

          if (!os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            goto LABEL_205;
          }

          v109 = &v232;
          if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v109 = v232.__r_.__value_.__r.__words[0];
          }

          LODWORD(cf[0]) = 136315650;
          *(cf + 4) = "Driver_Manager.cpp";
          WORD2(cf[1]) = 1024;
          *(&cf[1] + 6) = 88;
          WORD1(cf[2]) = 2080;
          *(&cf[2] + 4) = v109;
          v110 = v107;
          v111 = OS_LOG_TYPE_INFO;
          break;
        case 2:
          v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v100 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v101)
          {
            atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
            v103 = *v102;
            std::__shared_weak_count::__release_shared[abi:ne200100](v101);
          }

          else
          {
            v103 = *v102;
          }

          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            v108 = &v232;
            if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v108 = v232.__r_.__value_.__r.__words[0];
            }

            LODWORD(cf[0]) = 136315650;
            *(cf + 4) = "Driver_Manager.cpp";
            WORD2(cf[1]) = 1024;
            *(&cf[1] + 6) = 88;
            WORD1(cf[2]) = 2080;
            *(&cf[2] + 4) = v108;
            _os_log_debug_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_DEBUG, "%32s:%-5d Not Loading drivers: %s...", cf, 0x1Cu);
          }

          goto LABEL_205;
        case 1:
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v46);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
LABEL_205:
            if (v94)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v94);
            }

            if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v232.__r_.__value_.__l.__data_);
            }

            if ((v233[23] & 0x80000000) != 0)
            {
              operator delete(*v233);
            }

            v113 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
            cf[0] = v113;
            if (!v113)
            {
              v222 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v222, "Could not construct");
              __cxa_throw(v222, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v114 = v227;
            v115 = v228;
            if (v227 == v228)
            {
              v86 = 0;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v114, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_216;
                }

                ++v114;
              }

              while (v114 != v115);
              v114 = v115;
LABEL_216:
              v86 = v114 != v228;
            }

            CFRelease(v113);
LABEL_219:
            v116 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
            cf[0] = v116;
            if (!v116)
            {
              v217 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v217, "Could not construct");
              __cxa_throw(v217, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v117 = v224;
            v118 = v225;
            if (v224 == v225)
            {
              v119 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v117, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_224;
                }

                ++v117;
              }

              while (v117 != v118);
              v117 = v118;
LABEL_224:
              v119 = v117 == v225;
            }

            CFRelease(v116);
            if (v86 && v119)
            {
              v121 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v121 & 1) == 0)
              {
                v120 = AMCP::Log::AMCP_Scope_Registry::initialize(v120);
              }

              v122 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v123)
              {
                atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v124 = *(v122 + 16);
              switch(v124)
              {
                case 3:
                  v133 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v133 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v135 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v134 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v134)
                  {
                    atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
                    v136 = *v135;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
                  }

                  else
                  {
                    v136 = *v135;
                  }

                  if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    v137 = v136;
                    v138 = OS_LOG_TYPE_INFO;
LABEL_256:
                    _os_log_impl(&dword_1DE1F9000, v137, v138, "%32s:%-5d Loading Null driver (com.apple.audio.Null-Driver)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v129 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v129 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v131 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v130 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v130)
                  {
                    atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
                    v132 = *v131;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v130);
                  }

                  else
                  {
                    v132 = *v131;
                  }

                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    _os_log_debug_impl(&dword_1DE1F9000, v132, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading Null driver (com.apple.audio.Null-Driver)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v125 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v125 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v120);
                  }

                  v127 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v126 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v126)
                  {
                    atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
                    v128 = *v127;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v126);
                  }

                  else
                  {
                    v128 = *v127;
                  }

                  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 102;
                    v137 = v128;
                    v138 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_256;
                  }

                  break;
              }

              if (v123)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v123);
              }

              if (*(a2 + 1))
              {
                atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            if (v223)
            {
              v139 = 1;
            }

            else
            {
              v140 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
              cf[0] = v140;
              if (!v140)
              {
                v220 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v220, "Could not construct");
                __cxa_throw(v220, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v141 = v227;
              v142 = v228;
              if (v227 == v228)
              {
                v139 = 0;
              }

              else
              {
                do
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v141, cf) == kCFCompareEqualTo)
                  {
                    goto LABEL_269;
                  }

                  ++v141;
                }

                while (v141 != v142);
                v141 = v142;
LABEL_269:
                v139 = v141 != v228;
              }

              CFRelease(v140);
            }

            v143 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
            cf[0] = v143;
            if (!v143)
            {
              v218 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v218, "Could not construct");
              __cxa_throw(v218, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v144 = v224;
            v145 = v225;
            if (v224 == v225)
            {
              v146 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v144, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_277;
                }

                ++v144;
              }

              while (v144 != v145);
              v144 = v145;
LABEL_277:
              v146 = v144 == v225;
            }

            CFRelease(v143);
            if (v139 && v146)
            {
              v148 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v148 & 1) == 0)
              {
                v147 = AMCP::Log::AMCP_Scope_Registry::initialize(v147);
              }

              v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v150 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v150)
              {
                atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v151 = *(v149 + 16);
              switch(v151)
              {
                case 3:
                  v160 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v160 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v162 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v161 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v161)
                  {
                    atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
                    v163 = *v162;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v161);
                  }

                  else
                  {
                    v163 = *v162;
                  }

                  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    v164 = v163;
                    v165 = OS_LOG_TYPE_INFO;
LABEL_308:
                    _os_log_impl(&dword_1DE1F9000, v164, v165, "%32s:%-5d Loading IOAudio1 driver (com.apple.iokit.IOAudio1)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v156 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v156 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v158 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v157 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v157)
                  {
                    atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                    v159 = *v158;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                  }

                  else
                  {
                    v159 = *v158;
                  }

                  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    _os_log_debug_impl(&dword_1DE1F9000, v159, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading IOAudio1 driver (com.apple.iokit.IOAudio1)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v152 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v152 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v147);
                  }

                  v154 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v153 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v153)
                  {
                    atomic_fetch_add_explicit(&v153->__shared_owners_, 1uLL, memory_order_relaxed);
                    v155 = *v154;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v153);
                  }

                  else
                  {
                    v155 = *v154;
                  }

                  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 111;
                    v164 = v155;
                    v165 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_308;
                  }

                  break;
              }

              if (v150)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v150);
              }

              if (*(a2 + 1))
              {
                atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            if (v223)
            {
              v166 = 1;
            }

            else
            {
              v167 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0);
              cf[0] = v167;
              if (!v167)
              {
                v221 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v221, "Could not construct");
                __cxa_throw(v221, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v168 = v227;
              v169 = v228;
              if (v227 == v228)
              {
                v166 = 0;
              }

              else
              {
                do
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v168, cf) == kCFCompareEqualTo)
                  {
                    goto LABEL_321;
                  }

                  ++v168;
                }

                while (v168 != v169);
                v168 = v169;
LABEL_321:
                v166 = v168 != v228;
              }

              CFRelease(v167);
            }

            v170 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0);
            cf[0] = v170;
            if (!v170)
            {
              v219 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v219, "Could not construct");
              __cxa_throw(v219, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v171 = v224;
            v172 = v225;
            if (v224 == v225)
            {
              v173 = 1;
            }

            else
            {
              do
              {
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v171, cf) == kCFCompareEqualTo)
                {
                  goto LABEL_329;
                }

                ++v171;
              }

              while (v171 != v172);
              v171 = v172;
LABEL_329:
              v173 = v171 == v225;
            }

            CFRelease(v170);
            if (v166 && v173)
            {
              v175 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v175 & 1) == 0)
              {
                v174 = AMCP::Log::AMCP_Scope_Registry::initialize(v174);
              }

              v176 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v177 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v177)
              {
                atomic_fetch_add_explicit(&v177->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v178 = *(v176 + 16);
              switch(v178)
              {
                case 3:
                  v187 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v187 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v189 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v188 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v188)
                  {
                    atomic_fetch_add_explicit(&v188->__shared_owners_, 1uLL, memory_order_relaxed);
                    v190 = *v189;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v188);
                  }

                  else
                  {
                    v190 = *v189;
                  }

                  if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    v191 = v190;
                    v192 = OS_LOG_TYPE_INFO;
LABEL_360:
                    _os_log_impl(&dword_1DE1F9000, v191, v192, "%32s:%-5d Loading IOAudio2 driver (com.apple.iokit.IOAudio2)...", cf, 0x12u);
                  }

                  break;
                case 2:
                  v183 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v183 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v185 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v184 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v184)
                  {
                    atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
                    v186 = *v185;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                  }

                  else
                  {
                    v186 = *v185;
                  }

                  if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    _os_log_debug_impl(&dword_1DE1F9000, v186, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading IOAudio2 driver (com.apple.iokit.IOAudio2)...", cf, 0x12u);
                  }

                  break;
                case 1:
                  v179 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v179 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                  }

                  v181 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v180 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v180)
                  {
                    atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
                    v182 = *v181;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v180);
                  }

                  else
                  {
                    v182 = *v181;
                  }

                  if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(cf[0]) = 136315394;
                    *(cf + 4) = "Driver_Manager.cpp";
                    WORD2(cf[1]) = 1024;
                    *(&cf[1] + 6) = 120;
                    v191 = v182;
                    v192 = OS_LOG_TYPE_DEFAULT;
                    goto LABEL_360;
                  }

                  break;
              }

              if (v177)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v177);
              }

              if (*(a2 + 1))
              {
                atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            v193 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v193 & 1) == 0)
            {
              v174 = AMCP::Log::AMCP_Scope_Registry::initialize(v174);
            }

            v194 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v195 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v195)
            {
              atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v196 = *(v194 + 16);
            switch(v196)
            {
              case 3:
                v205 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v205 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v207 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v206 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v206)
                {
                  atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
                  v208 = *v207;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v206);
                }

                else
                {
                  v208 = *v207;
                }

                if (os_log_type_enabled(v208, OS_LOG_TYPE_INFO))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  v209 = v208;
                  v210 = OS_LOG_TYPE_INFO;
LABEL_394:
                  _os_log_impl(&dword_1DE1F9000, v209, v210, "%32s:%-5d Loading AudioServerPlugIns...", cf, 0x12u);
                }

                break;
              case 2:
                v201 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v201 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v203 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v202 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v202)
                {
                  atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
                  v204 = *v203;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v202);
                }

                else
                {
                  v204 = *v203;
                }

                if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  _os_log_debug_impl(&dword_1DE1F9000, v204, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading AudioServerPlugIns...", cf, 0x12u);
                }

                break;
              case 1:
                v197 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v197 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v174);
                }

                v199 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v198 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v198)
                {
                  atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
                  v200 = *v199;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v198);
                }

                else
                {
                  v200 = *v199;
                }

                if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(cf[0]) = 136315394;
                  *(cf + 4) = "Driver_Manager.cpp";
                  WORD2(cf[1]) = 1024;
                  *(&cf[1] + 6) = 128;
                  v209 = v200;
                  v210 = OS_LOG_TYPE_DEFAULT;
                  goto LABEL_394;
                }

                break;
            }

            if (v195)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }

            v211 = *(a2 + 1);
            if (v211)
            {
              atomic_fetch_add_explicit((v211 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          v112 = &v232;
          if ((v232.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v112 = v232.__r_.__value_.__r.__words[0];
          }

          LODWORD(cf[0]) = 136315650;
          *(cf + 4) = "Driver_Manager.cpp";
          WORD2(cf[1]) = 1024;
          *(&cf[1] + 6) = 88;
          WORD1(cf[2]) = 2080;
          *(&cf[2] + 4) = v112;
          v110 = v99;
          v111 = OS_LOG_TYPE_DEFAULT;
          break;
        default:
          goto LABEL_205;
      }

      _os_log_impl(&dword_1DE1F9000, v110, v111, "%32s:%-5d Not Loading drivers: %s...", cf, 0x1Cu);
      goto LABEL_205;
    }
  }

  v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v18 & 1) == 0)
  {
    v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
  }

  v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(v19 + 16);
  switch(v21)
  {
    case 3:
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *v35;
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v36 = *v35;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        v63 = v36;
        v64 = OS_LOG_TYPE_INFO;
LABEL_112:
        _os_log_impl(&dword_1DE1F9000, v63, v64, "%32s:%-5d Loading no drivers.", cf, 0x12u);
      }

      break;
    case 2:
      v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v29 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        v32 = *v31;
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      else
      {
        v32 = *v31;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        _os_log_debug_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading no drivers.", cf, 0x12u);
      }

      break;
    case 1:
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = *v24;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(cf[0]) = 136315394;
        *(cf + 4) = "Driver_Manager.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 63;
        v63 = v25;
        v64 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_112;
      }

      break;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *v233 = &v224;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v233);
  *v233 = &v227;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v233);
  if (v230)
  {
    CFRelease(v230);
  }
}

void sub_1DE2DCDE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  if (a2)
  {
    std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(va);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2 && (this = CFBundleGetIdentifier(a2), (v3 = this) != 0))
  {
    CFRetain(this);
    *v2 = v3;
    v4 = CFGetTypeID(v3);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *v2 = 0;
  }

  return this;
}

void sub_1DE2DD688(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

CFStringRef std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,char const(&)[28],void,0>(CFStringRef *a1)
{
  result = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (a2[1] + *result - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *result;
  }

  a2[1] = v6;
  *result = v6;
  *(result + 8) = v4;
  a2[1] = v4;
  v10 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v10;
  v11 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::StringRef>::__assign_with_size[abi:ne200100]<applesauce::CF::StringRef*,applesauce::CF::StringRef*>(char **a1, const void **a2, const void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 8;
          std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v11);
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v12 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v12 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<applesauce::CF::StringRef>::__vallocate[abi:ne200100](a1, v13);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v14 = a1[1] - v8;
  if (a4 <= v14 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(a2, a3, v8);
    v19 = v18;
    v20 = a1[1];
    if (v20 != v18)
    {
      do
      {
        v21 = *(v20 - 1);
        v20 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v21);
      }

      while (v20 != v19);
    }

    a1[1] = v19;
  }

  else
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(a2, (a2 + v14), v8);
    v16 = a1[1];
    while (v15 != a3)
    {
      v17 = *v15++;
      v16 = (std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef&,applesauce::CF::StringRef*>(v16, v17) + 1);
    }

    a1[1] = v16;
  }
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__shared_ptr_emplace<AMCP::Meta::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::start(void *a1, const __CFString ***a2, const __CFString ***a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    v4 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
    v16.d_ino = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v5 = v4;
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      do
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v6, &v16) == kCFCompareEqualTo)
        {
          break;
        }

        ++v6;
      }

      while (v6 != v7);
    }

    CFRelease(v5);
    if (*a2 != a2[1])
    {
      v8 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
      v16.d_ino = v8;
      if (!v8)
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v13, "Could not construct");
        __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v9 = v8;
      v10 = *a2;
      v11 = a2[1];
      if (*a2 != v11)
      {
        do
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v10, &v16) == kCFCompareEqualTo)
          {
            break;
          }

          ++v10;
        }

        while (v10 != v11);
      }

      CFRelease(v9);
    }
  }

  *&v16.d_ino = xmmword_1E8676898;
  *&v16.d_reclen = "/Library/Apple/Audio/Plug-Ins/HAL";
  memset(__p, 0, sizeof(__p));
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(__p, &v16, &v16.d_name[3]);
}

void sub_1DE2E093C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<applesauce::CF::URLRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::URLRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *mcp_applesauce::CF::BundleRef_proxy::get_info_dictionary(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2)
  {
    InfoDictionary = CFBundleGetInfoDictionary(a2);
    return applesauce::CF::DictionaryRef::from_get(v2, InfoDictionary);
  }

  else
  {
    *this = 0;
  }

  return this;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::load_driver(uint64_t a1, CFURLRef *a2)
{
  v2 = *(a1 + 32);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE2E2714(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E2730(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2738);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E275C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2764);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E2770(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2778);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E27D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2E271CLL);
  }

  JUMPOUT(0x1DE2E2B18);
}

void sub_1DE2E27E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, std::runtime_error a32, char a33)
{
  if (a2)
  {
    applesauce::CF::ArrayRef::~ArrayRef(&v38);
    mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::PlugInRef_Traits>::~BasicRef(v37);
    std::__shared_weak_count::~__shared_weak_count(v34);
    operator delete(v36);
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE2E13E0);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void sub_1DE2E2AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2E271CLL);
  }

  JUMPOUT(0x1DE2E2AE4);
}

void sub_1DE2E2B08(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2E2B10);
  }

  JUMPOUT(0x1DE2E271CLL);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::allocator_traits<std::allocator<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>>>::destroy[abi:ne200100]<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>,void,0>(uint64_t a1)
{
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100]((a1 + 8), 0);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}::~io_object_holder(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP10Loader_ImpINS0_20Simple_Loader_HelperEE12defer_driverERKN10applesauce2CF6URLRefENS5_9StringRefERKNS5_13DictionaryRefEjEUlNS4_5iokit16io_object_holderEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::operator()(uint64_t a1, io_object_t *a2)
{
  v2 = a1;
  v64 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = *(a1 + 8);
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v5 + 16);
  switch(v7)
  {
    case 3:
      v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v16 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *v18;
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      else
      {
        v19 = *v18;
      }

      a1 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v22 = *(v2 + 24);
        if (!v22)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v22);
        if (v57 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 149;
        v62 = 2080;
        v63 = v23;
        v24 = v19;
        v25 = OS_LOG_TYPE_INFO;
        goto LABEL_40;
      }

      break;
    case 2:
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v14;
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v15 = *v14;
      }

      a1 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v20 = applesauce::CF::StringRef::operator->((v2 + 24));
        applesauce::CF::convert_to<std::string,0>(__p, *v20);
        if (v57 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 149;
        v62 = 2080;
        v63 = v21;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading conditions for server plug-in %s finally satisfied...", buf, 0x1Cu);
LABEL_41:
        if (v57 < 0)
        {
          operator delete(__p[0]);
        }
      }

      break;
    case 1:
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v11 = *v10;
      }

      a1 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        v26 = *(v2 + 24);
        if (!v26)
        {
          v53 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v53, "Could not construct");
          __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v26);
        if (v57 >= 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 149;
        v62 = 2080;
        v63 = v27;
        v24 = v11;
        v25 = OS_LOG_TYPE_DEFAULT;
LABEL_40:
        _os_log_impl(&dword_1DE1F9000, v24, v25, "%32s:%-5d Loading conditions for server plug-in %s finally satisfied...", buf, 0x1Cu);
        goto LABEL_41;
      }

      break;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v28 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(v29 + 16);
  switch(v31)
  {
    case 1:
      v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v40 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        v43 = *v42;
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      else
      {
        v43 = *v42;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(v2 + 24);
        if (!v46)
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v54, "Could not construct");
          __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v46);
        if (v57 >= 0)
        {
          v47 = __p;
        }

        else
        {
          v47 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 150;
        v62 = 2080;
        v63 = v47;
        v48 = v43;
        v49 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_84;
      }

      break;
    case 2:
      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = *v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      else
      {
        v39 = *v38;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v44 = applesauce::CF::StringRef::operator->((v2 + 24));
        applesauce::CF::convert_to<std::string,0>(__p, *v44);
        if (v57 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 150;
        v62 = 2080;
        v63 = v45;
        _os_log_debug_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEBUG, "%32s:%-5d Loading server plug-in %s...", buf, 0x1Cu);
LABEL_85:
        if (v57 < 0)
        {
          operator delete(__p[0]);
        }
      }

      break;
    case 3:
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = *v34;
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      else
      {
        v35 = *v34;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v50 = *(v2 + 24);
        if (!v50)
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "Could not construct");
          __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(__p, v50);
        if (v57 >= 0)
        {
          v51 = __p;
        }

        else
        {
          v51 = __p[0];
        }

        *buf = 136315650;
        v59 = "ASP_Loader.h";
        v60 = 1024;
        v61 = 150;
        v62 = 2080;
        v63 = v51;
        v48 = v35;
        v49 = OS_LOG_TYPE_INFO;
LABEL_84:
        _os_log_impl(&dword_1DE1F9000, v48, v49, "%32s:%-5d Loading server plug-in %s...", buf, 0x1Cu);
        goto LABEL_85;
      }

      break;
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::load_driver(v3, (v2 + 16));
}

void sub_1DE2E380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, io_object_t a10)
{
  __cxa_free_exception(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  applesauce::iokit::io_object_holder::~io_object_holder(&a10);
  _Unwind_Resume(a1);
}

void *applesauce::CF::StringRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::__clone(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  *a2 = &unk_1F5964BD8;
  a2[1] = v4;
  if (v5)
  {
    result = CFRetain(v5);
  }

  a2[2] = v5;
  v6 = v3[3];
  if (v6)
  {
    result = CFRetain(v3[3]);
  }

  a2[3] = v6;
  a2[4] = *(v3 + 8);
  return result;
}

void std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F5964BD8;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1},std::allocator<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::defer_driver(applesauce::CF::URLRef const&,applesauce::CF::StringRef,applesauce::CF::DictionaryRef const&,unsigned int)::{lambda(applesauce::iokit::io_object_holder)#1}>,void ()(applesauce::iokit::io_object_holder)>::~__func(void *a1)
{
  *a1 = &unk_1F5964BD8;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void std::__shared_ptr_emplace<AMCP::ASP::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964B88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::URLRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void non-virtual thunk toAMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(a1 - 24);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  *a1 = &unk_1F5964B08;
  *(a1 + 24) = &unk_1F5964B30;
  v2 = *(a1 + 48);
  if (v2)
  {
    for (i = *(a1 + 56); i != v2; std::allocator_traits<std::allocator<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>>>::destroy[abi:ne200100]<std::tuple<applesauce::CF::StringRef,std::unique_ptr<applesauce::iokit::io_service_factory>>,void,0>(i))
    {
      i -= 16;
    }

    *(a1 + 56) = v2;
    operator delete(*(a1 + 48));
  }

  *(a1 + 24) = &unk_1F59748E8;
  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(uint64_t a1)
{
  AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>::~Loader_Imp(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::ASP::Loader_Imp<AMCP::ASP::Simple_Loader_Helper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IOAudio1::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Null::Driver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59649C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

const void **std::__copy_impl::operator()[abi:ne200100]<applesauce::CF::StringRef *,applesauce::CF::StringRef *,applesauce::CF::StringRef *>(const void **a1, const void **a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4;
      *a3 = *v4;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef&,applesauce::CF::StringRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void std::vector<applesauce::CF::StringRef>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<HALS_PlugIn *,NSXPCConnection * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSString *,NSXPCConnection *)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::~BasicRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::vector<applesauce::CF::StringRef>::push_back[abi:ne200100](void *a1, CFTypeRef *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v7;
    v11[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>((8 * v7), *a2);
    v11[2] = 8 * v7 + 8;
    std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    result = std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(v11);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(v3, *a2);
    v6 = result + 8;
  }

  a1[1] = v6;
  return result;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void applesauce::CF::StringRef::to_description(applesauce::CF::StringRef *this, const void *a2)
{
  v3 = CFCopyDescription(a2);
  applesauce::CF::details::CFString_get_value<true>(this, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DE2E44F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

void *std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(void **a1, void **a2)
{
  result = *a2;
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<HALS_UCRemotePlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5964DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFNumberGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::__function::__value_func<void ()(NSString *,NSXPCConnection *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::operator()(uint64_t a1, void **a2, void **a3, void **a4, void **a5, int *a6, unsigned __int8 *a7, uint64_t a8)
{
  v24[13] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v21, a8);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v22, v21);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v23, v22);
  v14;
  v12;
  v13;
  v15;
  v20[0] = 0;
  v20[1] = 0;
  HALS_System::GetInstance(v24, 0, v20);
  operator new();
}

void sub_1DE2E5400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_1>,int ()(NSXPCListenerEndpoint *,NSXPCConnection *,NSURL *,NSString *,int,BOOL,std::function<void ()(void)>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5964D68;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0>,void ()(NSString *,NSXPCConnection *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0,std::allocator<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0>,void ()(NSString *,NSXPCConnection *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v3 = *a3;
  v4 = *a2;
  v5 = v3;
  v6 = HALS_RemotePlugInRegistrar::sHighPriorityConcurrentQueue;
  v7 = v4;
  v8 = v5;
  v9 = atomic_load((v6 + 32));
  if (v9)
  {
    atomic_store(1u, (v6 + 33));
  }

  if (*(v6 + 328) != 1)
  {
    v16 = AMCP::Log::Scope::get_os_log_t(*v6);
    operator new();
  }

  v10 = v7;
  v11 = v8;
  v12 = *(v6 + 320);
  v13 = *v6;
  AMCP::Log::Scope::get_os_log_t(v13);
  objc_claimAutoreleasedReturnValue();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_EEvOT__block_invoke;
  v17[3] = &__block_descriptor_48_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE__e5_v8__0l;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  dispatch_group_async(v12, v13, v17);
}

id **std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x1E12C1730](v2, 0x80C40803F642BLL);
  }

  return a1;
}

id **applesauce::dispatch::v1::async<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1} &>(NSObject  {objcproto17OS_dispatch_queue}*,HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1} &)::{lambda(void *)#1}::__invoke(id *a1)
{
  v2 = a1;
  HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}::operator()(a1);
  return std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE2E5AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1},std::default_delete<HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_RemotePlugInRegistrar::CreateExtrinsicDriverEntryPoint(void)::$_0::operator() const(NSString *,NSXPCConnection *)::{lambda(void)#1}::operator()(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    applesauce::CF::StringRef::from_get(&cf, *a1);
    v5 = CFCopyDescription(cf);
    v46[0] = v5;
    applesauce::CF::details::CFString_get_value<true>(&__p, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    p_p = &__p;
    if (v49 < 0)
    {
      p_p = __p;
    }

    *buf = 136315650;
    *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 255;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    _os_log_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Calling DestroyPlugInObject():  %s", buf, 0x1Cu);
    if (v49 < 0)
    {
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v7 = *(a1 + 1);
  v8 = *a1;
  v9 = v7;
  v42 = v9;
  if (v8)
  {
    v39 = HALS_RemotePlugInRegistrar::sPlugInListMutex;
    std::mutex::lock(HALS_RemotePlugInRegistrar::sPlugInListMutex);
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      applesauce::CF::StringRef::from_get(&cf, v8);
      v19 = CFCopyDescription(cf);
      v46[0] = v19;
      applesauce::CF::details::CFString_get_value<true>(&__p, v19);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = &__p;
      if (v49 < 0)
      {
        v20 = __p;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 671;
      *&buf[18] = 2080;
      *&buf[20] = v20;
      _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_RemotePlugInRegistrar::DestroyPlugInObject: + %s", buf, 0x1Cu);
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v46[0] = 0;
    v46[1] = 0;
    HALS_System::GetInstance(&cf, 0, v46);
    v23 = *HALS_RemotePlugInRegistrar::sPlugInList;
    v22 = *(HALS_RemotePlugInRegistrar::sPlugInList + 8);
    if (*HALS_RemotePlugInRegistrar::sPlugInList != v22)
    {
      v40 = &buf[16];
      do
      {
        v24 = *(*v23 + 424);
        *buf = *(*v23 + 416);
        *&buf[8] = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        std::dynamic_pointer_cast[abi:ne200100]<HALS_UCRemotePlugIn,HALS_UCPlugInBase>(&__p, buf);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v25 = __p;
        v26 = (*(*__p + 32))(__p);
        v27 = v26;
        if (v26)
        {
          if (![v26 compare:{v8, v39, v40}] && (!v42 || (v28 = v23[1]) == 0 || v28 == v42))
          {
            for (i = v25[106]; i; i = *i)
            {
              atomic_store(1u, (i[3] + 65));
            }

            v30 = *v23;
            v31 = (*(**v23 + 72))(*v23);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN11HALS_PlugIn25RemoveAllDevicesAndNotifyEv_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_20;
            v51 = v30;
            v32 = atomic_load((v31 + 32));
            if (v32)
            {
              atomic_store(1u, (v31 + 33));
            }

            dispatch_sync(*v31, buf);
            HALS_System::DeviceManagerDestroyed(cf, *v23);
            std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](1uLL);
          }
        }

        v21 = v48;
        if (v48)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        v23 += 2;
      }

      while (v23 != v22);
    }

    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      applesauce::CF::StringRef::from_get(&v45, v8);
      v37 = CFCopyDescription(v45);
      v46[2] = v37;
      applesauce::CF::details::CFString_get_value<true>(&__p, v37);
      if (v37)
      {
        CFRelease(v37);
      }

      v38 = &__p;
      if (v49 < 0)
      {
        v38 = __p;
      }

      *buf = 136315650;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 696;
      *&buf[18] = 2080;
      *&buf[20] = v38;
      _os_log_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_RemotePlugInRegistrar::DestroyPlugInObject: - %s", buf, 0x1Cu);
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (v45)
      {
        CFRelease(v45);
      }
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    std::mutex::unlock(v39);
  }

  else
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_RemotePlugInRegistrar.mm";
      *&buf[12] = 1024;
      *&buf[14] = 666;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_RemotePlugInRegistrar cannot remove a driver with no name.", buf, 0x12u);
    }
  }
}

void sub_1DE2E632C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::mutex *a9, _Unwind_Exception *exception_objecta, CFTypeRef *a11, void *a12, void *a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 buf, __int128 a25)
{
  if (a2)
  {

    v26 = __cxa_begin_catch(a1);
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v26);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v28;
      AMCP::Log::Scope::get_os_log_t(*v28);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v30 = *v28;
      AMCP::Log::Scope::get_os_log_t(*v28);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      applesauce::CF::StringRef::from_get(&a20, *a11);
      applesauce::CF::StringRef::to_description(&__p, a20);
      if (a19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      LODWORD(buf) = 136315650;
      *(&buf + 4) = "HALS_RemotePlugInRegistrar.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 260;
      WORD1(a25) = 2080;
      *(&a25 + 4) = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to destroy extrinsic plug in object:  %s", &buf, 0x1Cu);
      if (a19 < 0)
      {
        operator delete(__p);
      }

      applesauce::CF::StringRef::~StringRef(&a20);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2E6294);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2E65F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1DE2E63D4);
}

void __destroy_helper_block_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_helper_block_ea8_32c114_ZTSZZN26HALS_RemotePlugInRegistrar31CreateExtrinsicDriverEntryPointEvENK3__0clEP8NSStringP15NSXPCConnectionEUlvE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t AudioObjectCreate(HALS_ObjectMap *a1, const BOOL *a2, uint64_t a3, _DWORD *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (AMCP::Feature_Flags::access_run_new_hal(0, a2))
  {
    return 1970171760;
  }

  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 2391;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: nowhere to return the object ID", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v16[0] = 0;
  v16[1] = 0;
  HALS_System::GetInstance(&v17, 0, v16);
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 2395;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no system object", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 1852797029;
  }

  v9 = HALS_System::CopyPlugInByReferenceID(v17, a1);
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 2399;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no plug-in with given reference ID", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 560947818;
  }

  *a4 = (*(*v9 + 272))(v9, a3, a2, 0);
  HALS_ObjectMap::ReleaseObject(v10, v11);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return 0;
}

void sub_1DE2E6A40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E6A58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      if (v12)
      {
        *v12 = 0;
      }
    }

    else if (v12)
    {
      *v12 = 0;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2E67F0);
  }

  JUMPOUT(0x1DE2E6A48);
}

uint64_t AudioObjectsPublishedAndDied(HALS_ObjectMap *a1, const BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (AMCP::Feature_Flags::access_run_new_hal(0, a2))
  {
    return 1970171760;
  }

  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (a3 && !a4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v26 = "HALS_Framework-ios-imp.cpp";
    v27 = 1024;
    v28 = 2468;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  AudioObjectCreate: the number of published objects doesn't match the array size";
    goto LABEL_19;
  }

  if (a5 && !a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v26 = "HALS_Framework-ios-imp.cpp";
    v27 = 1024;
    v28 = 2469;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  AudioObjectCreate: the number of dead objects doesn't match the array size";
LABEL_19:
    _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v22[0] = 0;
  v22[1] = 0;
  HALS_System::GetInstance(&v23, 0, v22);
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "HALS_Framework-ios-imp.cpp";
      v27 = 1024;
      v28 = 2473;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no system object", buf, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = off_1F5991DD8;
    v20[2] = 1852797029;
  }

  v13 = HALS_System::CopyPlugInByReferenceID(v23, a1);
  v14 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "HALS_Framework-ios-imp.cpp";
      v27 = 1024;
      v28 = 2477;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no plug-in with given reference ID", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = off_1F5991DD8;
    v21[2] = 560947818;
  }

  (*(*v13 + 280))(v13, a2, a3, a4, a5, a6, 0);
  HALS_ObjectMap::ReleaseObject(v14, v15);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return 0;
}

void sub_1DE2E6EA0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2E6EB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE2E6BF4);
  }

  JUMPOUT(0x1DE2E6EA8);
}

id __copy_helper_block_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__13(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__12(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE2E801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(v19);

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__7(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data__E3__4(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void std::__shared_ptr_emplace<caulk::mach::unfair_lock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t Host_Interface::delete_from_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3)
{
  v3 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  v4 = [v3 delete_from_driver_storage:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t Host_Interface::write_to_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void *a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&v9, a2);
  mcp_applesauce::CF::PropertyListRef::from_get(&cf, a3);
  v6 = [v5 write_to_driver_storage:&v9 property_list:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t Host_Interface::copy_from_storage(Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void **a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (v5)
  {
    objc_msgSend_copy_from_driver_storage_(v5);
  }

  else
  {
    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    a3->isa = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

uint64_t Host_Interface::properties_changed(Host_Interface *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v7 = [objc_alloc(MEMORY[0x1E695DEF8]) initWithBytes:a4 length:12 * a3];
  v8 = [*(this + 5) driver_properties_changed:a2 properties_data:v7];

  return v8;
}

void std::__shared_ptr_emplace<Host_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5965028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>(uint64_t a1)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

ca::concurrent::details::service_thread ***std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100](ca::concurrent::details::service_thread ****a1, ca::concurrent::details::service_thread ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_CaptureFile::~HALB_CaptureFile(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t HALS_DSPCaptureFiles::isDSPCaptureEnabled(HALS_DSPCaptureFiles *this)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  if (v7)
  {
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v4, 0, v3);
    v1 = *(v4 + 1849);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v1 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v1;
}

void sub_1DE2E8EC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPCaptureFiles::CreateDSPCaptureFiles(HALS_IODSPInfo const&,std::optional<float>)::$_0::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)())
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3 != 0;
  v7 = *(a4 + 72);
  v32 = *(a4 + 56);
  v33 = v7;
  v34 = *(a4 + 88);
  if (*(a1 + 4) == 1)
  {
    *&v32 = *a1;
  }

  v30 = 0;
  v31 = 0uLL;
  LODWORD(v35) = 0;
  v8 = std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(&v30, &v35, a5);
  v9 = v8;
  *&v31 = v8;
  if (v8 >= *(&v31 + 1))
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v30) >> 3);
    if (v12 + 1 > 0x666666666666666)
    {
      goto LABEL_26;
    }

    v13 = 0x999999999999999ALL * ((*(&v31 + 1) - v30) >> 3);
    if (v13 <= v12 + 1)
    {
      v13 = v12 + 1;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(&v31 + 1) - v30) >> 3) >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v13;
    }

    v38 = &v30;
    if (v14)
    {
      std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v14);
    }

    v15 = 40 * v12;
    v35 = 0;
    v36 = v15;
    *(&v37 + 1) = 0;
    v40 = 0;
    LODWORD(v40) = *(a4 + 96);
    v16 = v40;
    v39 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *v15 = 3;
    *(v15 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *(v15 + 16) = 0;
    *(v15 + 16) = v16;
    std::any::reset[abi:ne200100](&v39);
    *&v37 = v15 + 40;
    v17 = &v30[v15 / 8] - v31;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v30, v31, v17);
    v18 = v30;
    v19 = *(&v31 + 1);
    v30 = v17;
    v28 = v37;
    v31 = v37;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    v35 = v18;
    v36 = v18;
    std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v35);
    v11 = v28;
  }

  else
  {
    v36 = 0;
    LODWORD(v36) = *(a4 + 96);
    v10 = v36;
    v35 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *v8 = 3;
    *(v8 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    *(v8 + 16) = 0;
    *(v8 + 16) = v10;
    std::any::reset[abi:ne200100](&v35);
    v11 = v9 + 40;
  }

  *&v31 = v11;
  if (v11 < *(&v31 + 1))
  {
    v36 = v6;
    v35 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *v11 = 6;
    *(v11 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *(v11 + 16) = 0;
    *(v11 + 16) = v6;
    std::any::reset[abi:ne200100](&v35);
    v20 = v11 + 40;
    goto LABEL_25;
  }

  v21 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v30) >> 3);
  if (v21 + 1 <= 0x666666666666666)
  {
    v22 = 0x999999999999999ALL * ((*(&v31 + 1) - v30) >> 3);
    if (v22 <= v21 + 1)
    {
      v22 = v21 + 1;
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(&v31 + 1) - v30) >> 3) >= 0x333333333333333)
    {
      v23 = 0x666666666666666;
    }

    else
    {
      v23 = v22;
    }

    v38 = &v30;
    if (v23)
    {
      std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v23);
    }

    v24 = 40 * v21;
    v35 = 0;
    v36 = v24;
    *(&v37 + 1) = 0;
    v40 = v6;
    v39 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *v24 = 6;
    *(v24 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    *(v24 + 16) = 0;
    *(v24 + 16) = v6;
    std::any::reset[abi:ne200100](&v39);
    *&v37 = v24 + 40;
    v25 = &v30[v24 / 8] - v31;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v30, v31, v25);
    v26 = v30;
    v27 = *(&v31 + 1);
    v30 = v25;
    v29 = v37;
    v31 = v37;
    *&v37 = v26;
    *(&v37 + 1) = v27;
    v35 = v26;
    v36 = v26;
    std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v35);
    v20 = v29;
LABEL_25:
    *&v31 = v20;
    operator new();
  }

LABEL_26:
  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void sub_1DE2E9294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::unique_ptr<HALB_CaptureFile>::reset[abi:ne200100]((v12 - 88), 0);
  *(v12 - 88) = &a12;
  std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100]((v12 - 88));
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<std::string const,HALS_IOEngineInfo const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string const,HALS_IOEngineInfo const*>>,std::pair<std::string const,HALS_IOEngineInfo const*>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(unint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v6);
  }

  v13 = 0;
  v14 = 40 * v3;
  v15 = 40 * v3;
  std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(40 * v3, *a2, a3);
  *&v15 = 40 * v3 + 40;
  v7 = a1[1];
  v8 = 40 * v3 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v13);
  return v12;
}

void sub_1DE2E94C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void sub_1DE2E9654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        std::any::reset[abi:ne200100](v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<HALB_CaptureFile>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t (**std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(uint64_t (**result)(void, void, void, void, void), uint64_t (**a2)(void, void, void, void, void), uint64_t a3))(void, void, void, void, void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 1);
    v6 = (a3 + 8);
    do
    {
      *(v6 - 2) = *(v5 - 2);
      *v6 = 0;
      v6[1] = 0;
      if (*v5)
      {
        (*v5)(2, v5, v6, 0, 0);
      }

      v7 = (v5 + 4);
      v5 += 5;
      v6 += 5;
    }

    while (v7 != a2);
    do
    {
      result = std::any::reset[abi:ne200100](v4 + 1);
      v4 += 5;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::any::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_DSPState>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "25HALB_CaptureFile_DSPState");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<HALB_CaptureFile_DSPState>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    result = 0;
    if (a1)
    {
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      return result;
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
LABEL_9:
    *a2 = 0;
    return result;
  }

  result = MEMORY[0x1E69E5480];
  if (a1 == 3)
  {
    if (a4)
    {
      v8 = std::type_info::operator==[abi:ne200100](*(a4 + 8), *(MEMORY[0x1E69E5480] + 8));
    }

    else
    {
      v8 = a5 == &std::__any_imp::__unique_typeinfo<unsigned int>::__id;
    }

    if (v8)
    {
      return a2 + 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8.__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a3, *(a3 + 8));
  }

  else
  {
    v8 = *a3;
  }

  v7 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v8.__r_.__value_.__l.__data_;
    *(a1 + 32) = *(&v8.__r_.__value_.__l + 2);
  }

  *(a1 + 8) = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  std::any::reset[abi:ne200100](&v7);
  return a1;
}

void sub_1DE2E9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
      }

      if (a4)
      {
        v7 = std::type_info::operator==[abi:ne200100](*(a4 + 8), 0x80000001DE7A99C1);
      }

      else
      {
        v7 = a5 == &std::__any_imp::__unique_typeinfo<std::string>::__id;
      }

      if (v7)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    v9 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a3 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
LABEL_11:
      operator delete(v8);
    }

LABEL_12:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v11;
  }

  result = 0;
  *a3 = std::__any_imp::_SmallHandler<std::string>::__handle[abi:ne200100];
  return result;
}

void HALS_DSPCaptureFiles::WriteBufferToCaptureFile(uint64_t a1, unsigned int a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, uint64_t **a6)
{
  v6 = a4[1];
  v34[0] = *a4;
  v34[1] = v6;
  v7 = a4[3];
  v34[2] = a4[2];
  v34[3] = v7;
  v8 = a5[1];
  v33[0] = *a5;
  v33[1] = v8;
  v9 = a5[3];
  v33[2] = a5[2];
  v33[3] = v9;
  if (a3)
  {
    v11 = *(a1 + 48);
    v12 = (*(a1 + 56) - v11) >> 5 >= *a3 ? *a3 : (*(a1 + 56) - v11) >> 5;
    if (v12)
    {
      v14 = 0;
      v15 = a3 + 2;
      v16 = a6 + 1;
      do
      {
        v17 = *(a1 + 48);
        if (v14 >= (*(a1 + 56) - v17) >> 5)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v18 = v17 + 32 * v14;
        v19 = *(v18 + 24);
        v20 = *(v18 + 23);
        if (v20 < 0)
        {
          v21 = *(v18 + 8) == 0;
        }

        else
        {
          v21 = v20 == 0;
        }

        if (!v21 && v19 != 0)
        {
          if (*(v19 + 368))
          {
            if ((*(**(v19 + 88) + 696))(*(v19 + 88)))
            {
              v23 = *(v19 + 368);
              if (*(v23 + 24))
              {
                v31 = 0.0;
                v32[0] = 0;
                v32[1] = 0;
                HALS_IOClock::GetRaw0Time(v23, &v31, v32);
                v24 = &v15[4 * v14];
                v25 = *(v24 + 1);
                if (v25)
                {
                  if (v24[1])
                  {
                    v26 = *v16;
                    if (*v16)
                    {
                      v27 = v16;
                      do
                      {
                        v28 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26 + 4, v18);
                        if ((v28 & 0x80u) == 0)
                        {
                          v27 = v26;
                        }

                        v26 = *(v26 + ((v28 >> 4) & 8));
                      }

                      while (v26);
                      if (v27 != v16 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v18, v27 + 4) & 0x80) == 0)
                      {
                        v35 = v18;
                        v29 = std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a6, v18, &v35);
                        HALB_CaptureFile::Write(v29[7], v34, v33, &v31, a2, v25);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v14;
      }

      while (v14 != v12);
    }
  }
}

void non-virtual thunk toHALS_IOUAControl::~HALS_IOUAControl(HALS_IOUAControl *this, HALS_Object *a2)
{
  HALS_IOUAControl::~HALS_IOUAControl((this - 72), a2);
}

{
  v2 = (this - 72);
  HALS_IOUAObject::~HALS_IOUAObject(this, a2);

  HALS_Control::~HALS_Control(v2);
}

void HALS_IOUAControl::~HALS_IOUAControl(HALS_IOUAControl *this, HALS_Object *a2)
{
  HALS_IOUAObject::~HALS_IOUAObject((this + 72), a2);
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUAObject::~HALS_IOUAObject((this + 72), a2);

  HALS_Control::~HALS_Control(this);
}

BOOL HALS_IOUAControl::GetHardwareReferenceStreamControlValue(HALS_IOUAControl *this, const HALS_Client *a2)
{
  v7 = 4;
  outputStruct = 0;
  v2 = *(this + 10);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::GetPropertyData(*(v3 + 4), "lvcbbolg", *(this + 22), 0, 0, &outputStruct, &v7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return outputStruct != 0;
}

void sub_1DE2E9FBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::SetHardwareReferenceStreamControlValue(HALS_IOUAControl *this, HALS_Client *a2, int a3)
{
  v7 = a3;
  v4 = *(this + 10);
  v5 = *(v4 + 736);
  v6 = *(v4 + 744);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::SetPropertyData(v5, "lvcbbolg", *(this + 22), 0, 0, &v7, 4uLL);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE2EA048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::SetPropertyData(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const AudioObjectPropertyAddress *a5, uint64_t a6, CFTypeRef *a7, HALS_Client *a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v16 = a4;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1818457189)
  {
    if (mSelector > 1935962741)
    {
      if (mSelector == 1936745334)
      {
        v29 = *(this + 10);
        v19 = *(v29 + 736);
        v20 = *(v29 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_35;
      }

      if (mSelector == 1935962742)
      {
        v23 = *(this + 10);
        v19 = *(v23 + 736);
        v20 = *(v23 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (mSelector == 1818457190)
      {
        v27 = *(this + 10);
        v19 = *(v27 + 736);
        v20 = *(v27 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_35;
      }

      if (mSelector == 1935893353)
      {
        v21 = *(this + 10);
        v19 = *(v21 + 736);
        v20 = *(v21 + 744);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_35;
      }
    }

LABEL_39:
    if (HALS_Control::HasProperty(this, a2, a3))
    {

      HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {

      HALS_IOUAObject::SetPropertyData((this + 72), &a3->mSelector, a5, a7, v30, v31, v32, v33);
    }

    return;
  }

  if (mSelector > 1818453109)
  {
    if (mSelector == 1818453110)
    {
      v28 = *(this + 10);
      v19 = *(v28 + 736);
      v20 = *(v28 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_35;
    }

    if (mSelector == 1818456950)
    {
      v22 = *(this + 10);
      v19 = *(v22 + 736);
      v20 = *(v22 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (mSelector != 1650685548)
  {
    if (mSelector == 1651272546)
    {
      v18 = *(this + 10);
      v19 = *(v18 + 736);
      v20 = *(v18 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_35:
      HALS_IOUAUCDriver::SetPropertyData(v19, a3, *(this + 22), a7, a6, a5, a4);
      if (v20)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      return;
    }

    goto LABEL_39;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = 136315394;
      v39 = "HALS_IOUAControl.cpp";
      v40 = 1024;
      v41 = 303;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAControl::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", &v38, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "kAudioHardwareBadPropertySizeError");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v24 = a5->mSelector;
  v25 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  if (*(this + 5) == 1702259059)
  {
    HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a8, v24 != 0);
  }

  else
  {
    v34 = *(this + 10);
    v35 = *(v34 + 736);
    v36 = *(v34 + 744);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v35, a3, *(this + 22), a7, a6, a5, v16);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }
  }

  HALS_ObjectMap::ReleaseObject(v25, v26);
}

void sub_1DE2EA5A0(_Unwind_Exception *a1, HALS_Object *a2)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HALS_ObjectMap::ReleaseObject(v3, a2);
  _Unwind_Resume(a1);
}

void HALS_IOUAControl::GetPropertyData(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, AudioObjectPropertyAddress *a5, char *a6, unsigned int a7, _DWORD *a8, HALS_Client *a9)
{
  v51 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1818457189)
  {
    if (mSelector <= 1818453105)
    {
      if (mSelector <= 1651272547)
      {
        if (mSelector != 1650685548)
        {
          v31 = 1651272546;
LABEL_50:
          if (mSelector != v31)
          {
            goto LABEL_87;
          }

          goto LABEL_51;
        }

        if (!a4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOUAControl.cpp";
            v49 = 1024;
            v50 = 216;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAControl::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", cf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "kAudioHardwareBadPropertySizeError");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        if (*(this + 5) != 1702259059)
        {
          *cf = a4;
          v45 = *(this + 10);
          v29 = *(v45 + 736);
          v30 = *(v45 + 744);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_64;
        }

        *a6 = HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a9);
        v26 = 4;
      }

      else
      {
        if (mSelector == 1651272548)
        {
          goto LABEL_51;
        }

        if (mSelector == 1668049771)
        {
          *cf = a4;
          v40 = *(this + 10);
          v29 = *(v40 + 736);
          v30 = *(v40 + 744);
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_64;
        }

        if (mSelector != 1668641652)
        {
          goto LABEL_87;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2) >= a4 / 0xCuLL)
        {
          v19 = a4 / 0xCuLL;
        }

        else
        {
          v19 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2);
        }

        if (v19)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = *(this + 12);
            if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - v22) >> 2) > v21)
            {
              v23 = &a6[v20];
              v24 = (v22 + v20);
              v25 = *v24;
              *(v23 + 2) = *(v24 + 2);
              *v23 = v25;
            }

            ++v21;
            v20 += 12;
          }

          while (12 * v19 != v20);
        }

        v26 = 12 * v19;
      }

      a5->mSelector = v26;
      return;
    }

    if (mSelector <= 1818453109)
    {
      if (mSelector != 1818453106)
      {
        if (mSelector != 1818453107)
        {
          goto LABEL_87;
        }

        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        *cf = a4;
        v36 = *(this + 10);
        v29 = *(v36 + 736);
        v30 = *(v36 + 744);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (mSelector != 1818453110)
    {
      if (mSelector == 1818456932)
      {
        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        *cf = a4;
        v41 = *(this + 10);
        v29 = *(v41 + 736);
        v30 = *(v41 + 744);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_64;
      }

      v18 = 1818456950;
      goto LABEL_34;
    }

LABEL_62:
    *cf = a4;
    v37 = *(this + 10);
    v29 = *(v37 + 736);
    v30 = *(v37 + 744);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_64:
    HALS_IOUAUCDriver::GetPropertyData(*(v29 + 4), a3, *(this + 22), a8, a7, a6, cf);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    a5->mSelector = *cf;
    return;
  }

  if (mSelector <= 1935893352)
  {
    if (mSelector <= 1851878763)
    {
      if (mSelector == 1818457190)
      {
        *cf = a4;
        v39 = *(this + 10);
        v29 = *(v39 + 736);
        v30 = *(v39 + 744);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_64;
      }

      if (mSelector != 1819173229)
      {
        goto LABEL_87;
      }
    }

    else if (mSelector != 1851878764 && mSelector != 1852400499)
    {
      if (mSelector != 1935892841)
      {
        goto LABEL_87;
      }

      *cf = a4;
      v28 = *(this + 10);
      v29 = *(v28 + 736);
      v30 = *(v28 + 744);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_64;
    }

    goto LABEL_41;
  }

  if (mSelector > 1935962741)
  {
    if (mSelector != 1935962742)
    {
      if (mSelector != 1936745315)
      {
        v31 = 1936745334;
        goto LABEL_50;
      }

LABEL_51:
      *cf = a4;
      v35 = *(this + 10);
      v29 = *(v35 + 736);
      v30 = *(v35 + 744);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (mSelector == 1935893353)
  {
    *cf = a4;
    v38 = *(this + 10);
    v29 = *(v38 + 736);
    v30 = *(v38 + 744);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_64;
  }

  if (mSelector != 1935894894)
  {
    v18 = 1935962738;
LABEL_34:
    if (mSelector != v18)
    {
LABEL_87:
      if (HALS_Control::HasProperty(this, a2, a3))
      {

        HALS_Control::GetPropertyData(this, a2, a3, a4, &a5->mSelector, a6, a7, a8, a9);
      }

      else
      {

        HALS_IOUAObject::GetPropertyData((this + 72), &a3->mSelector, a5, a6, a8, v42, v43, v44, a9);
      }

      return;
    }

    goto LABEL_62;
  }

LABEL_41:
  if (a4 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "HALS_IOUAControl.cpp";
      v49 = 1024;
      v50 = 151;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::GetPropertyData: bad property data size for kAudioObjectPropertyName", cf, 0x12u);
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "kAudioHardwareBadPropertySizeError");
    __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v32 = *(this + 10);
  v33 = *(v32 + 736);
  v34 = *(v32 + 744);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v53 = *(this + 22);
  *(&v53 + 1) = *&a3->mSelector;
  HALS_IOUAUCDriver::get_string_property(cf, v33, v53, a3->mElement, a8, a7);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  *a6 = CFRetain(*cf);
  a5->mSelector = 8;
  if (*cf)
  {
    CFRelease(*cf);
  }
}

void sub_1DE2EAE90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAControl::GetPropertyDataSize(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935892840)
  {
    if (mSelector != 1935893353 && mSelector != 1935892841)
    {
      goto LABEL_15;
    }

LABEL_10:
    v12 = *(this + 10);
    v13 = *(v12 + 736);
    v14 = *(v12 + 744);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v13 + 4), a3, *(this + 22), a5, a4);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    return PropertySize;
  }

  if (mSelector == 1651272546)
  {
    goto LABEL_10;
  }

  if (mSelector == 1668641652)
  {
    return 96;
  }

LABEL_15:
  if (HALS_Control::HasProperty(this, a2, a3))
  {

    return HALS_Control::GetPropertyDataSize(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 72), a3, v16, v17, v18, v19);
  }
}

void sub_1DE2EB06C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAControl::IsPropertySettable(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a3->mSelector == 1668641652)
  {
    return 0;
  }

  if (HALS_Control::HasProperty(this, a2, a3))
  {

    return HALS_Control::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 72), a3, v8, v9);
  }
}

uint64_t HALS_IOUAControl::HasProperty(HALS_IOUAControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (mSelector == 1668641652)
  {
    return *(this + 13) != *(this + 12);
  }

  if (mSelector == 1851878764 || mSelector == 1819173229)
  {
    v7 = *(this + 10);
    v8 = *(v7 + 736);
    v9 = *(v7 + 744);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v8 + 4), a3, *(this + 22));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    return HasProperty;
  }

  v11 = HALS_Control::HasProperty(this, a2, a3);
  if (v11)
  {
    return 1;
  }

  v13 = *(*(this + 9) + 16);

  return v13(this + 72, mSelector);
}

void sub_1DE2EB22C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAControl::Activate(HALS_IOUAControl *this)
{
  HALS_IOUAControl::RefreshCache(this);
  if (!*(this + 15))
  {
    (*(*(this + 9) + 24))();
  }

  HALS_Object::Activate(this, v2);
}

uint64_t HALS_IOUAControl::RefreshCache(HALS_IOUAControl *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 15) == 1)
  {
    v2 = 0;
    v3 = 1702259059;
    v4 = 1650685548;
    v5 = 1869968496;
  }

  else
  {
    v6 = *(this + 22);
    v7 = *(this + 10);
    v8 = *(v7 + 736);
    v9 = *(v7 + 744);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v27 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v8 + 4), "salcbolg", v6, 0, 0, &outputStruct, &v27);
    v3 = outputStruct;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v10 = *(this + 10);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v27 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), "slcbbolg", v6, 0, 0, &outputStruct, &v27);
    v4 = outputStruct;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *(this + 10);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v27 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v14 + 4), "pcscbolg", v6, 0, 0, &outputStruct, &v27);
    v5 = outputStruct;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v16 = *(this + 10);
    v17 = *(v16 + 736);
    v18 = *(v16 + 744);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    outputStruct = 0;
    v27 = 4;
    HALS_IOUAUCDriver::GetPropertyData(*(v17 + 4), "mlecbolg", v6, 0, 0, &outputStruct, &v27);
    v2 = outputStruct;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN16HALS_IOUAControl12RefreshCacheEv_block_invoke;
  v22[3] = &unk_1E8673848;
  v22[4] = &v29;
  v22[5] = this;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v2;
  v19 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v19, v22);
  v20 = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return v20 & 1;
}

void sub_1DE2EB5A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2)
  {
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v21 = __cxa_begin_catch(a1);
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "HALS_IOUAControl.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 383;
      _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d Caught exception refreshing the control", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2EB56CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN16HALS_IOUAControl12RefreshCacheEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (v1[5] != v2)
  {
    v1[5] = v2;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v3 = *(result + 52);
  if (v1[6] != v3)
  {
    v1[6] = v3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v4 = *(result + 56);
  if (v1[12] != v4)
  {
    v1[12] = v4;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v5 = *(result + 60);
  if (v1[13] != v5)
  {
    v1[13] = v5;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void HALS_DeviceState::HALS_DeviceState(HALS_DeviceState *this)
{
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = this + 48;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  pthread_once(&HALS_DeviceState::sPropertiesToCaptureInitialized, HALS_DeviceState::InitializeStandardPropertiesToCapture);
}

void sub_1DE2EB86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(v10 + 48));
  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        if (v6)
        {
          MEMORY[0x1E12C1700](v6, 0x1000C8077774924);
        }

        v7 = *(v4 - 4);
        if (v7)
        {
          MEMORY[0x1E12C1700](v7, 0x1000C8077774924);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*a1);
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(a1[1]);
    HALS_DeviceState::Value::~Value((a1 + 6));

    operator delete(a1);
  }
}

void HALS_DeviceState::Value::~Value(HALS_DeviceState::Value *this)
{
  OS::CF::UntypedObject::~UntypedObject((this + 88));
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void sub_1DE2EBE1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    HALS_DeviceState::sStandardDevicePropertiesToCapture = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE2EBD40);
  }

  _Unwind_Resume(a1);
}

void HALS_DeviceState::~HALS_DeviceState(HALS_DeviceState *this)
{
  v2 = (this + 64);
  std::vector<HALS_DeviceState::ControlState>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 6));

  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](this);
}

uint64_t HALS_DeviceState::HALS_DeviceState(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 != a2)
  {
    v3 = (*(*v3 + 16))(v3);
LABEL_4:
    v8 = v3;
    goto LABEL_6;
  }

  v8 = v7;
  (*(*v3 + 24))(v3, v7);
LABEL_6:
  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v7);
  HALS_DeviceState::HALS_DeviceState(v7);
  HALS_DeviceState::~HALS_DeviceState(v7);
  return a1;
}

void sub_1DE2EC1A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceState::Capture(HALS_DeviceState *this, HALS_Device *a2, const CAPropertyAddressList *a3, const CAPropertyAddressList *a4)
{
  v6 = a2;
  v115 = *MEMORY[0x1E69E9840];
  *(this + 8) = *(a2 + 4);
  v8 = (this + 48);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 6));
  *(this + 5) = v8;
  *v8 = 0;
  v80 = (this + 40);
  *(this + 7) = 0;
  v11 = *a3;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  v77 = v6;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      LODWORD(v101) = 0;
      v100 = 0;
      if (v12 > v14)
      {
        v15 = v11 + v13;
        v16 = *(v15 + 8);
        v100 = *v15;
        LODWORD(v101) = v16;
        v17 = v100 == 707406378 || HIDWORD(v100) == 707406378;
        if (v17 || v16 == -1)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v9);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v113 = "HALS_DeviceState.cpp";
            LOWORD(v114[0]) = 1024;
            *(v114 + 2) = 78;
            _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties with a wildcard are not supported", buf, 0x12u);
          }
        }
      }

      PropertyQualifierDataType = HALB_Info::GetPropertyQualifierDataType(v100, 0, v10);
      if (PropertyQualifierDataType)
      {
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(PropertyQualifierDataType);
        }

        v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v27 = *v26;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v113 = "HALS_DeviceState.cpp";
          LOWORD(v114[0]) = 1024;
          *(v114 + 2) = 79;
          _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties with a qualifier are not supported", buf, 0x12u);
        }
      }

      IsAVTProperty = HALB_Info::IsAVTProperty(v100);
      if (IsAVTProperty)
      {
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(IsAVTProperty);
        }

        v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *v32;
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        else
        {
          v33 = *v32;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v113 = "HALS_DeviceState.cpp";
          LOWORD(v114[0]) = 1024;
          *(v114 + 2) = 80;
          _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_DeviceState::Capture: properties that use an AVT are not supported", buf, 0x12u);
        }
      }

      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v96 = &unk_1F5991080;
      v97 = 0;
      PropertyDataType = HALB_Info::GetPropertyDataType(v100, 0, v29);
      if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && (v34 = *(this + 3)) != 0)
      {
        v35 = (*(*v34 + 48))(v34, &v100);
      }

      else
      {
        v35 = 0;
      }

      if (PropertyDataType <= 1718367025)
      {
        if (PropertyDataType != 1634951780)
        {
          if (PropertyDataType == 1667658612 || PropertyDataType == 1668641388)
          {
LABEL_53:
            if ((*(*v6 + 96))(v6, v6[4], &v100, 0))
            {
              v38 = v6[4];
              v89 = 0;
              v88 = 0;
              (*(*v6 + 120))(v6, v38, &v100, 8, &v88, &v89, 0, 0, v35);
              v39 = v97;
              v97 = v89;
              if (v39)
              {
                CFRelease(v39);
              }

              goto LABEL_69;
            }

            goto LABEL_70;
          }

LABEL_58:
          if ((*(*v6 + 96))(v6, v6[4], &v100, 0))
          {
            PropertyDataType = 1918990199;
            v41 = (*(*v6 + 112))(v6, v6[4], &v100, 0, 0, v35);
            v42 = v41;
            *buf = v41;
            v43 = v91;
            if (v41 <= *(&v91 + 1) - v91)
            {
              if (v41 < *(&v91 + 1) - v91)
              {
                *(&v91 + 1) = v91 + v41;
              }
            }

            else
            {
              std::vector<unsigned char>::__append(&v91, v41 - (*(&v91 + 1) - v91));
              v42 = *buf;
              v43 = v91;
            }

            (*(*v6 + 120))(v6, v6[4], &v100, v42, buf, v43, 0, 0, 0);
            if (*buf <= *(&v91 + 1) - v91)
            {
              if (*buf < *(&v91 + 1) - v91)
              {
                *(&v91 + 1) = v91 + *buf;
              }
            }

            else
            {
              std::vector<unsigned char>::__append(&v91, *buf - (*(&v91 + 1) - v91));
            }

            goto LABEL_69;
          }

          goto LABEL_70;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v100, 0))
        {
          v40 = v6[4];
          v87 = 0;
          (*(*v6 + 120))(v6, v40, &v100, 40, &v87, &v93 + 8, 0, 0, v35);
          goto LABEL_69;
        }
      }

      else if (PropertyDataType > 1886155635)
      {
        if (PropertyDataType == 1886155636)
        {
          goto LABEL_53;
        }

        if (PropertyDataType != 1969828658)
        {
          goto LABEL_58;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v100, v35))
        {
          v37 = v6[4];
          v81 = 0;
          v82 = 0;
          (*(*v6 + 120))(v6, v37, &v100, 4, &v81, &v82, 0, 0, v35);
          DWORD2(v92) = v82;
          goto LABEL_69;
        }
      }

      else if (PropertyDataType == 1718367026)
      {
        if ((*(*v6 + 96))(v6, v6[4], &v100, v35))
        {
          v44 = v6[4];
          v83 = 0;
          v84 = 0;
          (*(*v6 + 120))(v6, v44, &v100, 4, &v83, &v84, 0, 0, v35);
          HIDWORD(v92) = v84;
          goto LABEL_69;
        }
      }

      else
      {
        if (PropertyDataType != 1718367796)
        {
          goto LABEL_58;
        }

        if ((*(*v6 + 96))(v6, v6[4], &v100, 0))
        {
          v36 = v6[4];
          v86 = 0;
          v85 = 0;
          (*(*v6 + 120))(v6, v36, &v100, 8, &v85, &v86, 0, 0, v35);
          *&v93 = v86;
LABEL_69:
          *buf = v6[4];
          v113 = v100;
          v114[0] = v101;
          HALS_DeviceState::Value::Value(&v114[1], &PropertyDataType);
          std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(v80, buf, buf);
          HALS_DeviceState::Value::~Value(&v114[1]);
        }
      }

LABEL_70:
      HALS_DeviceState::Value::~Value(&PropertyDataType);
      ++v14;
      v11 = *a3;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
      v13 += 12;
    }

    while (v14 < v12);
  }

  v45 = 0;
  v46 = 1;
  do
  {
    v47 = v46;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    HALS_Device::CopyStreamList(v6, v45 & 1, &v100);
    v49 = v100;
    v79 = v101;
    if (v100 == v101)
    {
      goto LABEL_122;
    }

    v78 = v47;
    do
    {
      v50 = *a4;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 2);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v98 = 0x676C6F6200000000;
          v99 = 0;
          if (v51 > v53)
          {
            v54 = v50 + v52;
            v55 = *v54;
            v99 = *(v54 + 8);
            v98 = v55;
          }

          if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && (v57 = *(this + 3)) != 0)
          {
            v58 = (*(*v57 + 48))(v57, &v98);
          }

          else
          {
            v58 = 0;
          }

          if (v98 == 707406378 || HIDWORD(v98) == 707406378 || v99 == -1)
          {
            goto LABEL_119;
          }

          v95 = 0u;
          v94 = 0u;
          v93 = 0u;
          v92 = 0u;
          v91 = 0u;
          v96 = &unk_1F5991080;
          v97 = 0;
          v61 = HALB_Info::GetPropertyDataType(v98, 0, v56);
          PropertyDataType = v61;
          if (v61 <= 1718367025)
          {
            if (v61 != 1634951780)
            {
              if (v61 == 1667658612 || v61 == 1668641388)
              {
LABEL_103:
                if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
                {
                  v67 = *v49;
                  v68 = *(*v49 + 4);
                  v111 = 0;
                  v110 = 0;
                  (*(*v67 + 120))(v67, v68, &v98, 8, &v110, &v111, 0, 0, v58);
                  v69 = v97;
                  v97 = v111;
                  if (v69)
                  {
                    CFRelease(v69);
                  }

                  goto LABEL_117;
                }

                goto LABEL_118;
              }

              goto LABEL_108;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
            {
              v70 = *v49;
              v71 = *(*v49 + 4);
              v109 = 0;
              (*(*v70 + 120))(v70, v71, &v98, 40, &v109, &v93 + 8, 0, 0, v58);
              goto LABEL_117;
            }
          }

          else if (v61 > 1886155635)
          {
            if (v61 == 1886155636)
            {
              goto LABEL_103;
            }

            if (v61 != 1969828658)
            {
              goto LABEL_108;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
            {
              v65 = *v49;
              v66 = *(*v49 + 4);
              v103 = 0;
              v104 = 0;
              (*(*v65 + 120))(v65, v66, &v98, 4, &v103, &v104, 0, 0, v58);
              DWORD2(v92) = v104;
              goto LABEL_117;
            }
          }

          else
          {
            if (v61 != 1718367026)
            {
              if (v61 == 1718367796)
              {
                if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
                {
                  v62 = *v49;
                  v63 = *(*v49 + 4);
                  v108 = 0;
                  v107 = 0;
                  (*(*v62 + 120))(v62, v63, &v98, 8, &v107, &v108, 0, 0, v58);
                  v64 = v108;
                  goto LABEL_113;
                }

                goto LABEL_118;
              }

LABEL_108:
              if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
              {
                PropertyDataType = 1918990199;
                v72 = (*(**v49 + 112))(*v49, *(*v49 + 4), &v98, 0, 0, v58);
                v73 = v72;
                *buf = v72;
                v74 = v91;
                if (v72 <= *(&v91 + 1) - v91)
                {
                  if (v72 < *(&v91 + 1) - v91)
                  {
                    *(&v91 + 1) = v91 + v72;
                  }
                }

                else
                {
                  std::vector<unsigned char>::__append(&v91, v72 - (*(&v91 + 1) - v91));
                  v73 = *buf;
                  v74 = v91;
                }

                (*(**v49 + 120))(*v49, *(*v49 + 4), &v98, v73, buf, v74, 0, 0, v58);
                goto LABEL_117;
              }

              goto LABEL_118;
            }

            if ((*(**v49 + 96))(*v49, *(*v49 + 4), &v98, v58))
            {
              v75 = *v49;
              v76 = *(*v49 + 4);
              v106 = 0;
              v105 = 0;
              (*(*v75 + 120))(v75, v76, &v98, 8, &v105, &v106, 0, 0, v58);
              v64 = v106;
LABEL_113:
              *&v93 = v64;
LABEL_117:
              *buf = *(*v49 + 4);
              v113 = v98;
              v114[0] = v99;
              HALS_DeviceState::Value::Value(&v114[1], &PropertyDataType);
              std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(v80, buf, buf);
              HALS_DeviceState::Value::~Value(&v114[1]);
            }
          }

LABEL_118:
          HALS_DeviceState::Value::~Value(&PropertyDataType);
LABEL_119:
          ++v53;
          v50 = *a4;
          v51 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 2);
          v52 += 12;
        }

        while (v53 < v51);
      }

      HALS_ObjectMap::ReleaseObject(*v49++, v48);
    }

    while (v49 != v79);
    v49 = v100;
    v6 = v77;
    v47 = v78;
LABEL_122:
    if (v49)
    {
      v101 = v49;
      operator delete(v49);
    }

    v46 = 0;
    v45 = 1;
  }

  while ((v47 & 1) != 0);
}

void sub_1DE2ED204(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE2ED260);
}

void sub_1DE2ED22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  HALS_DeviceState::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_1DE2ED240(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2ED258(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2ED260);
  }

  __clang_call_terminate(a1);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

HALS_DeviceState::Value *HALS_DeviceState::Value::Value(HALS_DeviceState::Value *this, const HALS_DeviceState::Value *a2)
{
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 1, *(a2 + 1), *(a2 + 2), *(a2 + 2) - *(a2 + 1));
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 3) = v5;
  *(this + 4) = v6;
  *(this + 2) = v4;
  OS::CF::UntypedObject::UntypedObject((this + 88), *(a2 + 12));
  return this;
}

BOOL std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::__emplace_unique_key_args<HALS_DeviceState::Key,std::pair<HALS_DeviceState::Key const,HALS_DeviceState::Value>>(uint64_t **a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if (!operator<(a2, v3 + 8))
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = operator<(v5 + 8, a2);
    if (!result)
    {
      return result;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

BOOL operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v6 = a1[1];
    v7 = a2[1];
    v5 = v6 >= v7;
    if (v6 == v7)
    {
      v5 = a1[3] >= a2[3];
    }
  }

  return !v5;
}

void HALS_DeviceState::Compare(uint64_t a1, uint64_t a2, const AudioObjectPropertyAddress *this, CAPropertyAddressList **a4)
{
  v4 = *(a1 + 40);
  v5 = (a1 + 48);
  if (v4 != (a1 + 48))
  {
    v7 = this;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_42;
      }

      v11 = v9;
      do
      {
        v12 = operator<((v10 + 32), v4 + 8);
        if (v12)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

        if (!v12)
        {
          v11 = v10;
        }

        v10 = *(v10 + v13);
      }

      while (v10);
      if (v11 == v9 || operator<(v4 + 8, v11 + 8) || (v14 = *(v4 + 12), v14 != *(v11 + 12)))
      {
LABEL_42:
        v17 = *(v4 + 8);
        if (v17 == *(a1 + 32))
        {
          p_p = (v4 + 36);
          v19 = v7;
LABEL_44:
          CAPropertyAddressList::AppendUniqueItem(v19, p_p, this);
        }

        else
        {
          v20 = *a4;
          do
          {
            if (v20 == a4[1])
            {
              __p = 0uLL;
              v28 = 0;
              v29 = v17;
              CAPropertyAddressList::AppendUniqueItem(&__p, v4 + 3, this);
              std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a4, &__p);
              if (__p)
              {
                operator delete(__p);
              }

              goto LABEL_54;
            }

            v21 = v20;
            v22 = *(v20 + 3);
            v20 = (v20 + 32);
          }

          while (v22 != v17);
          CAPropertyAddressList::AppendUniqueItem(v21, v4 + 3, this);
          v23 = *(v4 + 9);
          if (v23 == 1936092532)
          {
            LODWORD(__p) = 1936092532;
            *(&__p + 4) = v4[5];
            CAPropertyAddressList::AppendUniqueItem(v21, &__p, this);
            v23 = *(v4 + 9);
          }

          if (v23 == 1936092513)
          {
            LODWORD(__p) = 1936092451;
            *(&__p + 4) = v4[5];
            p_p = &__p;
            v19 = v21;
            goto LABEL_44;
          }
        }

        goto LABEL_54;
      }

      if (v14 > 1718367025)
      {
        break;
      }

      if (v14 != 1634951780)
      {
        if (v14 == 1667658612 || v14 == 1668641388)
        {
LABEL_28:
          if (!CFEqual(v4[18], v11[18]))
          {
            goto LABEL_42;
          }

          goto LABEL_54;
        }

LABEL_38:
        v15 = v4[7];
        this = (v4[8] - v15);
        v16 = v11[7];
        if (this != (v11[8] - v16) || memcmp(v15, v16, this))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (*(v4 + 12) != *(v11 + 12) || *(v4 + 26) != *(v11 + 26) || *(v4 + 28) != *(v11 + 28) || *(v4 + 29) != *(v11 + 29) || *(v4 + 31) != *(v11 + 31) || *(v4 + 32) != *(v11 + 32) || !CA::Implementation::EquivalentFormatFlags((v4 + 12), (v11 + 12), 1))
      {
        goto LABEL_42;
      }

LABEL_54:
      v24 = v4[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v4[2];
          v26 = *v25 == v4;
          v4 = v25;
        }

        while (!v26);
      }

      v4 = v25;
      if (v25 == v5)
      {
        return;
      }
    }

    if (v14 > 1886155635)
    {
      if (v14 == 1886155636)
      {
        goto LABEL_28;
      }

      if (v14 == 1969828658)
      {
        if (*(v4 + 20) != *(v11 + 20))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (v14 == 1718367026)
      {
        if (*(v4 + 21) != *(v11 + 21))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (v14 == 1718367796)
      {
        if (*(v4 + 11) != *(v11 + 11))
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }
    }

    goto LABEL_38;
  }
}

void sub_1DE2ED914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2EDBC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1DE2EE870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  DSP_Host_Types::DSPPropertyInfoArray::~DSPPropertyInfoArray(va);
  _Unwind_Resume(a1);
}

void sub_1DE2EEBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&__p);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_1DE2EEC80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC4CLL);
}

void sub_1DE2EECA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC54);
}

void sub_1DE2EECC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC5CLL);
}

void sub_1DE2EECE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE2EEC64);
}

void DSP_Host_Types::DSPPropertyInfoArray::~DSPPropertyInfoArray(DSP_Host_Types::DSPPropertyInfoArray *this)
{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598E988;
  v3 = (this + 24);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F598E9C8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfoArray>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2EEE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfoArray>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::StringifiedKvp(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = DSP_Dictionariable::DictionariableKvp::DictionariableKvp(a1, a2);
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *v3 = &unk_1F5985F58;
  v4 = v3 + 3;
  v3[6] = 0;
  v3[10] = 0;
  {
    qword_1EE013848 = "uninitialized";
    dword_1EE013850 = 1;
    qword_1EE013858 = "None";
    dword_1EE013860 = 2;
    qword_1EE013868 = "String";
    dword_1EE013870 = 3;
    qword_1EE013878 = "Boolean";
    dword_1EE013880 = 4;
    qword_1EE013888 = "Float32";
    dword_1EE013890 = 5;
    DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[0] = 0;
    qword_1EE013898 = "UInt32";
    dword_1EE0138A0 = 6;
    qword_1EE0138A8 = "Int32";
    dword_1EE0138B0 = 7;
    qword_1EE0138B8 = "Dictionary";
  }

  v7[0] = &unk_1F598DA28;
  v8 = v7;
  if (v4 != v7)
  {
    if (*(a1 + 48) == v4)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::__clone(v7, v9);
      (*(*v8 + 32))(v8);
      v8 = 0;
      (*(**(a1 + 48) + 24))(*(a1 + 48), v7);
      (*(**(a1 + 48) + 32))(*(a1 + 48));
      *(a1 + 48) = 0;
      v8 = v7;
      (*(v9[0] + 24))(v9, v4);
      (*(v9[0] + 32))(v9);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::__clone(v7, v4);
      (*(*v8 + 32))(v8);
      v8 = *(a1 + 48);
    }

    *(a1 + 48) = v4;
  }

  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](v7);
  v5 = a1 + 56;
  v7[0] = &unk_1F598DAB8;
  v8 = v7;
  if ((a1 + 56) != v7)
  {
    if (*(a1 + 80) == v5)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::__clone(v7, v9);
      (*(*v8 + 32))(v8);
      v8 = 0;
      (*(**(a1 + 80) + 24))(*(a1 + 80), v7);
      (*(**(a1 + 80) + 32))(*(a1 + 80));
      *(a1 + 80) = 0;
      v8 = v7;
      (*(v9[0] + 24))(v9, a1 + 56);
      (*(v9[0] + 32))(v9);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::__clone(v7, (a1 + 56));
      (*(*v8 + 32))(v8);
      v8 = *(a1 + 80);
    }

    *(a1 + 80) = v5;
  }

  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_1DE2EF44C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::~StringifiedKvp(DSP_Dictionariable::DictionariableKvp *a1)
{
  *a1 = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);
}

{
  *a1 = &unk_1F5985F58;
  std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](a1 + 56);
  std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](a1 + 24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DSPPropertyInfo>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985FB0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::__function::__value_func<char const* ()(DSP_Host_Types::CustomPropertyDataType)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<DSP_Host_Types::CustomPropertyDataType ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::load_from(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
  }

  v9[0] = &unk_1F598EC08;
  v9[1] = 0;
  v10 = a2;
  if (applesauce::CF::details::has_key<__CFString const*&>(*a2, *(a1 + 8)))
  {
    applesauce::CF::details::find_at_key<std::string,__CFString const*&>(__p, *v10, *(a1 + 8));
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v11 = v3;
    v4 = *(a1 + 48);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    *(a1 + 16) = (*(*v4 + 48))(v4, &v11);
    *(a1 + 20) = 1;
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  DSP_Dictionariable::TooledDictionary::~TooledDictionary(v9);
  return v5;
}

void DSP_Dictionariable::StringifiedKvp<DSP_Host_Types::CustomPropertyDataType,DSP_Host_Types::StringLookup_CustomPropertyDataType,unsigned int>::add_to(uint64_t a1, __CFDictionary **a2)
{
  if (*(a1 + 20) != 1)
  {
    return;
  }

  LODWORD(v11) = *(a1 + 16);
  v3 = *(a1 + 80);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v3 + 48))(v3, &v11);
  std::string::basic_string[abi:ne200100]<0>(&bytes, v5);
  v6 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v6 = numBytes;
    if (!numBytes)
    {
LABEL_12:
      operator delete(bytes);
      return;
    }

    p_bytes = bytes;
    v7 = (a1 + 8);
    if (!bytes)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if (!v14)
    {
      return;
    }

    v7 = (a1 + 8);
    p_bytes = &bytes;
  }

  v9 = CFStringCreateWithBytes(0, p_bytes, v6, 0x8000100u, 0);
  v11 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_9:
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(*a2, *v7, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v14 < 0)
  {
    goto LABEL_12;
  }
}