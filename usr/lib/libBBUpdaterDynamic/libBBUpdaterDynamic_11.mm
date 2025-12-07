void sub_1E52D03E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICE16UpdateSource::validateCoredumpItems(BBUICE16UpdateSource *this)
{
  if (*(this + 40) == 104)
  {
    if ((*(*this + 336))(this))
    {
      v2 = *(this + 21);
      if (v2 && (*(*v2 + 24))(v2))
      {
        return 0;
      }
    }

    else
    {
      v5 = *(this + 23);
      if (v5 && (*(*v5 + 24))(v5))
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = *(this + 21);
    if (v4 && (*(*v4 + 24))(v4))
    {
      return 0;
    }
  }

  return 35;
}

uint64_t BBUICEUpdateSource::getZipFile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICENVMImage *,std::shared_ptr<BBUICENVMImage>::__shared_ptr_default_delete<BBUICENVMImage,BBUICENVMImage>,std::allocator<BBUICENVMImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53921A1)
  {
    if (((v2 & 0x80000001E53921A1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53921A1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53921A1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEMRCImage *,std::shared_ptr<BBUICEMRCImage>::__shared_ptr_default_delete<BBUICEMRCImage,BBUICEMRCImage>,std::allocator<BBUICEMRCImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539226CLL)
  {
    if (((v2 & 0x80000001E539226CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539226CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539226CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEBinaryImage *,std::shared_ptr<BBUICEBinaryImage>::__shared_ptr_default_delete<BBUICEBinaryImage,BBUICEBinaryImage>,std::allocator<BBUICEBinaryImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539233ALL)
  {
    if (((v2 & 0x80000001E539233ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539233ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539233ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUICEDownloadImage *,std::shared_ptr<BBUICEDownloadImage>::__shared_ptr_default_delete<BBUICEDownloadImage,BBUICEDownloadImage>,std::allocator<BBUICEDownloadImage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E539240DLL)
  {
    if (((v2 & 0x80000001E539240DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539240DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539240DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    while (1)
    {
      v11 = v6;
      v14 = v6[4];
      v12 = v6 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v20 = memcmp(v16, v9, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else if (v17 >= v10)
        {
          return v11;
        }

        v6 = v11[1];
        if (!v6)
        {
          v7 = v11 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 >= v17)
        {
          goto LABEL_22;
        }

LABEL_8:
        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = (a1 + 1);
LABEL_29:
  v21 = operator new(0x50uLL);
  v22 = v21;
  v23 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 32), *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    *(v21 + 6) = *(v23 + 2);
    *(v21 + 2) = v24;
  }

  v22[7] = 0;
  v22[8] = 0;
  v22[9] = 0;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v11;
  *v7 = v22;
  v25 = **a1;
  if (v25)
  {
    *a1 = v25;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v22);
  a1[2] = (a1[2] + 1);
  return v22;
}

void sub_1E52D0B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        *(v2 + 64) = v3;
        operator delete(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t __cxx_global_var_init_14()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUEUR25Loader::queryChipInfo(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v7 = *(a2 + 40);
  if (!v7 || !v7(a2, 4, v6, 96, &v41, 0))
  {
    BBUFeedback::handleComment(a1[1], "Failed to get chip info: Failed to read pk hash");
LABEL_10:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    goto LABEL_11;
  }

  v8 = (*(*a1 + 9))(a1);
  v9 = operator new(0x10uLL);
  *v9 = &unk_1F5F04C88;
  v9[1] = 0;
  v9[1] = CFDataCreate(*MEMORY[0x1E695E480], v6, v8);
  (*(*a3 + 24))(a3, v9);
  v10 = (*(*a1 + 10))(a1);
  v11 = (*(*a1 + 9))(a1);
  if (!memcmp(v10, v6, v11))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v26 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v26, "", "Detect as unfused BB\n");
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v13 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v13, "", "Detect as fused BB\n");
    }
  }

LABEL_41:
  *(a3 + 22) = v12;
  v27 = *(a2 + 40);
  if (!v27)
  {
    goto LABEL_10;
  }

  v28 = v27(a2, 3, v6, 24, &v41, 0);
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = capabilities::radio::chipID(v28);
  v30 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v29);
  v31 = a3[2];
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  a3[2] = v30;
  v32 = *(a2 + 40);
  if (!v32)
  {
    v39 = v40 | 0x44300000000;
LABEL_11:
    BBUFeedback::handleComment(a1[1], "failed to read SerialNumber");
    v14 = 98;
    v15 = -559030611;
    v16 = a1[1];
    v17 = a3[2];
    v18 = -559030611;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v33 = v32(a2, 0, &v40, 4, &v41, 0);
  v39 = v40 | 0x44300000000;
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v39, 0x40);
  (*(*a3 + 16))(a3, v34);
  v14 = 0;
  v15 = -559030611;
  v16 = a1[1];
  v17 = a3[2];
  v18 = -559030611;
  if (v17)
  {
LABEL_12:
    v18 = (*(*v17 + 24))(v17);
  }

LABEL_13:
  v19 = a3[4];
  if (!v19)
  {
    v21 = "failed";
    v22 = a3[5];
    if (v22)
    {
      goto LABEL_22;
    }

LABEL_27:
    v23 = "failed";
    v24 = a3[3];
    if (!v24)
    {
      goto LABEL_29;
    }

LABEL_28:
    v15 = (*(*v24 + 24))(v24);
    goto LABEL_29;
  }

  v20 = v37;
  (*(*v19 + 24))(v37, a3[4]);
  if (v38 < 0)
  {
    v20 = v37[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_18:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v21 = v20;
  }

  else
  {
    v21 = "<< SNUM >>";
  }

  v22 = a3[5];
  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_22:
  v23 = __p;
  (*(*v22 + 24))(__p, v22);
  if (v36 < 0)
  {
    v23 = __p[0];
  }

  v24 = a3[3];
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_29:
  BBUFeedback::handleComment(v16, "CHIPID=0x%x, SNUM=0x%s, PKHASH=0x%s, CERTID=0x%x\n", v18, v21, v23, v15);
  if (v22 && v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 && v38 < 0)
  {
    operator delete(v37[0]);
  }

  operator delete(v6);
  return v14;
}

void sub_1E52D11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    if (a24 < 0)
    {
      operator delete(__p);
      operator delete(v24);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR25Loader::load(BBUFeedback **a1, void *a2, const void *a3)
{
  if (a2)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  BBUFeedback::handleComment(a1[1], "Loading second stage bootloader");
  if ((v7 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v8 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v8, "", "invalid arguments transport:  %p, updateSource: %p\n", a2, a3);
    }
  }

LABEL_12:
  v9 = (*(*a3 + 24))(a3);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v11 = operator new(v9);
  bzero(v11, v10);
  if (&v11[v10] == v11)
  {
LABEL_14:
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 80;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 80;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v13 = (*(*a1 + 8))(a1);
      _BBULog(1, 0, v13, "", "invalid programmer data size\n");
    }

    goto LABEL_36;
  }

  if (!v7)
  {
    v12 = 2;
    goto LABEL_36;
  }

  v26 = 0;
  v12 = (*(*a3 + 16))(a3, v11, v10, &v26, 0);
  if (v12)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = (*(*a1 + 8))(a1);
      _BBULog(1, 0, v14, "", "failed to copy programmer data from data source\n");
    }

LABEL_25:
    if (v10 == v26)
    {
      goto LABEL_36;
    }

LABEL_31:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_33:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v17 = (*(*a1 + 8))(a1);
          _BBULog(1, 0, v17, "", "failed to copy programmer data from data source; not all of programmer data was copied\n");
        }
      }
    }

    v12 = 80;
    goto LABEL_36;
  }

  if (v10 != v26)
  {
    goto LABEL_31;
  }

  v24 = -1;
  v25 = 0;
  v15 = a2[4];
  if (v15)
  {
    v16 = v15(a2, v11, v10, &v25, 10000, &v24, 0);
  }

  else
  {
    v16 = 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_46;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v19 = (*(*a1 + 8))(a1);
    v20 = "failure";
    if (v16)
    {
      v20 = "success";
    }

    _BBULog(9, 1, v19, "", "SendImage returned %s, amountWritten = %u, errorCode = %#x\n", v20, v25, v24);
  }

LABEL_46:
  if ((v16 & 1) == 0)
  {
    v21 = gBBULogMaskGet(void)::once;
LABEL_54:
    if (v21 == -1)
    {
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v23 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v23, "", "Fail to send bootloader !\n");
    }

    goto LABEL_36;
  }

  v21 = gBBULogMaskGet(void)::once;
  if (v10 != v25 || v24)
  {
    goto LABEL_54;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v12 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v12 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v22 = (*(*a1 + 8))(a1);
    _BBULog(9, 1, v22, "", "Sent bootloader successfully!\n");
    v12 = 0;
  }

LABEL_36:
  if (v11)
  {
    operator delete(v11);
  }

  return v12;
}

void sub_1E52D1864(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandBooter::create(uint64_t **a1@<X8>)
{
  v6 = 0u;
  v11 = 0u;
  v13 = 0;
  v12 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = &unk_1F5F01F98;
  BYTE8(v6) = 0;
  BYTE8(v11) = 0;
  BasebandBooter::create(&v2, a1);
  BasebandBooterParams::~BasebandBooterParams(&v2);
}

void BasebandBooter::create(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  v12 = &unk_1F5F01F98;
  LOBYTE(v13) = 0;
  v15 = 0;
  if (*(a1 + 32) == 1)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v15 = 1;
    LOBYTE(v16) = 0;
    v18 = 0;
    if (*(a1 + 64) != 1)
    {
LABEL_3:
      LOBYTE(v19) = 0;
      v21 = 0;
      if (*(a1 + 96) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v18 = 0;
    if (*(a1 + 64) != 1)
    {
      goto LABEL_3;
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v18 = 1;
  LOBYTE(v19) = 0;
  v21 = 0;
  if (*(a1 + 96) != 1)
  {
LABEL_4:
    LOBYTE(v22) = 0;
    v26 = 0;
    if (*(a1 + 144) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v21 = 1;
  LOBYTE(v22) = 0;
  v26 = 0;
  if (*(a1 + 144) != 1)
  {
LABEL_5:
    LOBYTE(v27) = 0;
    v28 = 0;
    v3 = *(a1 + 168);
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v6 = *(a1 + 120);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v22 = v7;
  v23 = v8;
  v9 = *(a1 + 128);
  v24[0] = v6;
  v24[1] = v9;
  v25 = *(a1 + 136);
  if (v9)
  {
    v10 = *(v6 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v10 >= v8)
      {
        v10 %= v8;
      }
    }

    else
    {
      v10 &= v8 - 1;
    }

    *(v7 + 8 * v10) = v24;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  v26 = 1;
  LOBYTE(v27) = 0;
  v28 = 0;
  v3 = *(a1 + 168);
  if (v3 == 1)
  {
LABEL_6:
    v27 = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v28 = v3;
  }

LABEL_7:
  DaleBooter::create(&v12, &v29);
  v4 = v29;
  v29 = 0;
  BasebandBooterParams::~BasebandBooterParams(&v12);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create BasebandBooter object\n", "BasebandBooter", "create");
  }
}

void sub_1E52D1BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BasebandBooterParams::~BasebandBooterParams(va);
  *v7 = 0;
  _Unwind_Resume(a1);
}

void BasebandBooterParams::~BasebandBooterParams(BasebandBooterParams *this)
{
  *this = &unk_1F5F01F98;
  if (*(this + 168) == 1)
  {
    v2 = *(this + 20);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  if (*(this + 144) == 1)
  {
    v3 = *(this + 15);
    if (!v3)
    {
LABEL_7:
      v4 = *(this + 13);
      *(this + 13) = 0;
      if (v4)
      {
        operator delete(v4);
      }

      goto LABEL_9;
    }

    while (1)
    {
      v5 = *v3;
      if (*(v3 + 63) < 0)
      {
        operator delete(v3[5]);
        if (*(v3 + 39) < 0)
        {
LABEL_19:
          operator delete(v3[2]);
        }
      }

      else if (*(v3 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v3);
      v3 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_9:
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if (*(this + 64) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

LABEL_21:
  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t BBUEUR2HashData::compare(BBUEUR2HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = BBUHashData::compareHash(this, a2, this + 8, v5 + 8, "EDBL");
  v7 = BBUHashData::compareHash(this, a2, this + 40, v5 + 40, "OSBL");
  return (BBUHashData::compareHash(this, a2, this + 72, v5 + 72, "AMSS") && v7) & v6;
}

void BBUEUR2HashData::showHashes(BBUEUR2HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "DBL_HASH", &__p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OSBL_HASH", p_p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v8 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "AMSS_HASH", v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52D201C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUEURFirmwareVersion::~BBUEURFirmwareVersion(void **this)
{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[3]);
      return;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if (*(this + 47) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_1F5F02020;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(this[3]);
  v2 = this;

LABEL_6:
  operator delete(v2);
}

BOOL BBUEURFirmwareVersion::initCommon(uint64_t a1, uint64_t a2, char a3)
{
  memset(&__dst, 0, sizeof(__dst));
  memset(v61, 170, sizeof(v61));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *a2, *(a2 + 8));
  }

  else
  {
    v60 = *a2;
  }

  ctu::tokenize();
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v4 = v61[0];
  if (0xAAAAAAAAAAAAAAABLL * ((v61[1] - v61[0]) >> 3) < 2)
  {
    goto LABEL_27;
  }

  (*(*a1 + 24))(__p, a1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = *(v4 + 8);
  }

  v7 = v59;
  v8 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if (v5 >= 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = *v4;
    }

    if ((v59 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
LABEL_20:
      v4 = v61[0];
      if (v11)
      {
        goto LABEL_21;
      }

LABEL_27:
      if (v4)
      {
        v13 = v61[1];
        v14 = v4;
        if (v61[1] == v4)
        {
          goto LABEL_114;
        }

        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v4);
LABEL_113:
        v14 = v61[0];
LABEL_114:
        v61[1] = v4;
        operator delete(v14);
      }

LABEL_115:
      v40 = 0;
      goto LABEL_116;
    }
  }

  else
  {
    v11 = 0;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  operator delete(__p[0]);
  v4 = v61[0];
  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (&__dst != (v4 + 24))
  {
    v12 = *(v4 + 47);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v12 >= 0)
      {
        v16 = (v4 + 24);
      }

      else
      {
        v16 = *(v4 + 24);
      }

      if (v12 >= 0)
      {
        v17 = *(v4 + 47);
      }

      else
      {
        v17 = *(v4 + 32);
      }

      std::string::__assign_no_alias<false>(&__dst, v16, v17);
    }

    else if ((*(v4 + 47) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&__dst, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      __dst = *(v4 + 24);
    }

    v4 = v61[0];
  }

  if (v4)
  {
    v18 = v61[1];
    v19 = v4;
    if (v61[1] != v4)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v4);
      v19 = v61[0];
    }

    v61[1] = v4;
    operator delete(v19);
  }

  memset(v61, 170, sizeof(v61));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = __dst;
  }

  ctu::tokenize();
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v4 = v61[0];
  v21 = v61[1];
  v22 = 0xAAAAAAAAAAAAAAABLL * ((v61[1] - v61[0]) >> 3);
  if (v22 != 1)
  {
    if (v22 != 2)
    {
      if (v61[0])
      {
        v14 = v61[0];
        if (v61[1] == v61[0])
        {
          goto LABEL_114;
        }

        do
        {
          v25 = *(v21 - 1);
          v21 -= 3;
          if (v25 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v4);
        goto LABEL_113;
      }

      goto LABEL_115;
    }

    if (&__dst != v61[0])
    {
      v23 = *(v61[0] + 23);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v23 >= 0)
        {
          v26 = v61[0];
        }

        else
        {
          v26 = *v61[0];
        }

        if (v23 >= 0)
        {
          v27 = *(v61[0] + 23);
        }

        else
        {
          v27 = *(v61[0] + 8);
        }

        std::string::__assign_no_alias<false>(&__dst, v26, v27);
      }

      else if ((*(v61[0] + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&__dst, *v61[0], *(v61[0] + 8));
      }

      else
      {
        v24 = *v61[0];
        __dst.__r_.__value_.__r.__words[2] = *(v61[0] + 16);
        *&__dst.__r_.__value_.__l.__data_ = v24;
      }
    }

    v4 = v61[0];
    if (v61[0] != a1)
    {
      v28 = *(v61[0] + 47);
      if (*(a1 + 47) < 0)
      {
        if (v28 >= 0)
        {
          v30 = (v61[0] + 24);
        }

        else
        {
          v30 = *(v61[0] + 24);
        }

        if (v28 >= 0)
        {
          v31 = *(v61[0] + 47);
        }

        else
        {
          v31 = *(v61[0] + 32);
        }

        std::string::__assign_no_alias<false>((a1 + 24), v30, v31);
      }

      else if ((*(v61[0] + 47) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 24), *(v61[0] + 24), *(v61[0] + 32));
      }

      else
      {
        v29 = *(v61[0] + 24);
        *(a1 + 40) = *(v61[0] + 40);
        *(a1 + 24) = v29;
      }

      v4 = v61[0];
    }
  }

  if (v4)
  {
    v32 = v61[1];
    v33 = v4;
    if (v61[1] != v4)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v4);
      v33 = v61[0];
    }

    v61[1] = v4;
    operator delete(v33);
  }

  memset(v61, 170, sizeof(v61));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v56 = __dst;
  }

  ctu::tokenize();
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v4 = v61[0];
  v35 = v61[1];
  v36 = 0xAAAAAAAAAAAAAAABLL * ((v61[1] - v61[0]) >> 3);
  if (v36 != 1)
  {
    if (v36 == 2)
    {
      if (&__dst != v61[0])
      {
        v37 = *(v61[0] + 23);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v37 >= 0)
          {
            v42 = v61[0];
          }

          else
          {
            v42 = *v61[0];
          }

          if (v37 >= 0)
          {
            v43 = *(v61[0] + 23);
          }

          else
          {
            v43 = *(v61[0] + 8);
          }

          std::string::__assign_no_alias<false>(&__dst, v42, v43);
        }

        else if ((*(v61[0] + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&__dst, *v61[0], *(v61[0] + 8));
        }

        else
        {
          v38 = *v61[0];
          __dst.__r_.__value_.__r.__words[2] = *(v61[0] + 16);
          *&__dst.__r_.__value_.__l.__data_ = v38;
        }
      }

      if (*(v61[0] + 47) >= 0)
      {
        v44 = (v61[0] + 24);
      }

      else
      {
        v44 = *(v61[0] + 24);
      }

      *(a1 + 20) = strtoul(v44, 0, 10);
      v4 = v61[0];
      goto LABEL_131;
    }

    if (v61[0])
    {
      v14 = v61[0];
      if (v61[1] == v61[0])
      {
        goto LABEL_114;
      }

      do
      {
        v39 = *(v35 - 1);
        v35 -= 3;
        if (v39 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v4);
      goto LABEL_113;
    }

    goto LABEL_115;
  }

LABEL_131:
  if (v4)
  {
    v45 = v61[1];
    v46 = v4;
    if (v61[1] != v4)
    {
      do
      {
        v47 = *(v45 - 1);
        v45 -= 3;
        if (v47 < 0)
        {
          operator delete(*v45);
        }
      }

      while (v45 != v4);
      v46 = v61[0];
    }

    v61[1] = v4;
    operator delete(v46);
  }

  memset(v61, 170, sizeof(v61));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = __dst;
  }

  ctu::tokenize();
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v48 = v61[0];
    v40 = v61[1] - v61[0] == 72;
    if (v61[1] - v61[0] == 72)
    {
      goto LABEL_144;
    }

LABEL_156:
    if (!v48)
    {
      goto LABEL_116;
    }

    goto LABEL_157;
  }

  operator delete(v55.__r_.__value_.__l.__data_);
  v48 = v61[0];
  v40 = v61[1] - v61[0] == 72;
  if (v61[1] - v61[0] != 72)
  {
    goto LABEL_156;
  }

LABEL_144:
  if (*(v48 + 23) >= 0)
  {
    v49 = v48;
  }

  else
  {
    v49 = *v48;
  }

  *(a1 + 8) = strtoul(v49, 0, 10);
  if (*(v61[0] + 47) >= 0)
  {
    v50 = (v61[0] + 24);
  }

  else
  {
    v50 = *(v61[0] + 24);
  }

  *(a1 + 12) = strtoul(v50, 0, 10);
  if (*(v61[0] + 71) >= 0)
  {
    v51 = (v61[0] + 48);
  }

  else
  {
    v51 = *(v61[0] + 48);
  }

  *(a1 + 16) = strtoul(v51, 0, 10);
  v48 = v61[0];
  if (!v61[0])
  {
    goto LABEL_116;
  }

LABEL_157:
  v52 = v61[1];
  v53 = v48;
  if (v61[1] != v48)
  {
    do
    {
      v54 = *(v52 - 1);
      v52 -= 3;
      if (v54 < 0)
      {
        operator delete(*v52);
      }
    }

    while (v52 != v48);
    v53 = v61[0];
  }

  v61[1] = v48;
  operator delete(v53);
LABEL_116:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v40;
}

void sub_1E52D286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::vector<std::string>::~vector[abi:ne200100]((v37 - 88));
  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
  }

  _Unwind_Resume(a1);
}

BOOL BBUEURFirmwareVersion::initWithVersionString(uint64_t a1, const void **a2)
{
  v47[2] = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  v4 = &v45;
  (*(*a1 + 24))(&v45);
  v5 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  v6 = v45.__r_.__value_.__r.__words[0];
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
    v4 = v45.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if (size <= 0)
    {
      v14 = 0;
      v15 = v4->__r_.__value_.__s.__data_[0];
      v16 = __s;
      do
      {
        if (&v14[-size] == -1)
        {
          break;
        }

        v17 = memchr(v16, v15, &v14[-size + 1]);
        if (!v17)
        {
          break;
        }

        v18 = v17;
        if (!memcmp(v17, v4, size))
        {
          v8 = 0;
          if ((v5 & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }

        v16 = v18 + 1;
        v14 = (__s - (v18 + 1));
      }

      while (v14 >= size);
    }

    v8 = 0;
    if ((v5 & 0x80000000) == 0)
    {
LABEL_7:
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = 1;
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  operator delete(v6);
  if (v8)
  {
LABEL_8:
    if (__s != a2)
    {
      v9 = *(a2 + 23);
      if ((__s[23] & 0x80000000) != 0)
      {
        if (v9 >= 0)
        {
          v26 = a2;
        }

        else
        {
          v26 = *a2;
        }

        if (v9 >= 0)
        {
          v27 = *(a2 + 23);
        }

        else
        {
          v27 = a2[1];
        }

        std::string::__assign_no_alias<false>(__s, v26, v27);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(__s, *a2, a2[1]);
      }

      else
      {
        *__s = *a2;
        *&__s[16] = a2[2];
      }
    }

    goto LABEL_66;
  }

LABEL_14:
  (*(*a1 + 24))(&__p, a1);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__l.__size_;
    v13 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 == __p.__r_.__value_.__l.__size_)
    {
      if (v13 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if (v12 > 0x3FFFFFFFFFFFFFF2)
      {
        v22 = 0;
        v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_35:
        v23 = operator new(v21);
        v24 = v23;
        if (v12)
        {
          memmove(v23, p_p, v12);
        }

        *(v24 + v12) = 32;
        if (!v22)
        {
          operator delete(p_p);
        }

        __p.__r_.__value_.__l.__size_ = v13;
        __p.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
        __p.__r_.__value_.__r.__words[0] = v24;
        v25 = (v24 + v13);
        goto LABEL_52;
      }

LABEL_26:
      v19 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v19 = v13;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v12 == 22;
      goto LABEL_35;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      v12 = 22;
      v13 = 23;
      goto LABEL_26;
    }
  }

  p_p->__r_.__value_.__s.__data_[v10] = 32;
  v28 = v10 + 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = v28;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = v28 & 0x7F;
  }

  v25 = p_p + v28;
LABEL_52:
  *v25 = 0;
  v45 = __p;
  memset(&__p, 0, sizeof(__p));
  v29 = *(a2 + 23);
  if (v29 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  if (v29 >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = std::string::append(&v45, v30, v31);
  v33 = v32->__r_.__value_.__r.__words[0];
  v47[0] = v32->__r_.__value_.__l.__size_;
  *(v47 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
  v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if ((__s[23] & 0x80000000) != 0)
  {
    operator delete(*__s);
  }

  *__s = v33;
  *&__s[8] = v47[0];
  *&__s[15] = *(v47 + 7);
  __s[23] = v34;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_66:
  v35 = *(a2 + 23);
  if (v35 >= 0)
  {
    v36 = *(a2 + 23);
  }

  else
  {
    v36 = a2[1];
  }

  v37 = v36 + 16;
  if (v36 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    v40 = &v45.__r_.__value_.__s.__data_[16];
    v45.__r_.__value_.__r.__words[2] = 0;
    *(&v45.__r_.__value_.__s + 23) = v36 + 16;
    *&v45.__r_.__value_.__l.__data_ = *"Version String: ";
    if (!v36)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if ((v37 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v37 | 7) + 1;
    }

    v39 = operator new(v38);
    v45.__r_.__value_.__l.__size_ = v36 + 16;
    v45.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v45.__r_.__value_.__r.__words[0] = v39;
    *v39 = *"Version String: ";
    v40 = (v39 + 1);
  }

  if (v35 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  memmove(v40, v41, v36);
LABEL_80:
  v40[v36] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = v45;
  result = BBUEURFirmwareVersion::initCommon(a1, __s, 32);
  if ((__s[23] & 0x80000000) != 0)
  {
    v43 = result;
    operator delete(*__s);
    return v43;
  }

  return result;
}

void sub_1E52D2DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(a10);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

BOOL BBUEURFirmwareVersion::initWithFolderName(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 8;
  if (v3 + 8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v8 = &v11 + 8;
    v12 = 0;
    HIBYTE(v12) = v3 + 8;
    v11 = 0x203A7265646C6F46uLL;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    *(&v11 + 1) = v3 + 8;
    v12 = v7 | 0x8000000000000000;
    *&v11 = operator new(v7);
    *v11 = 0x203A7265646C6F46;
    v8 = (v11 + 8);
  }

  if (v2 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  memmove(v8, v9, v3);
LABEL_15:
  v8[v3] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = v11;
  *(a1 + 64) = v12;

  return BBUEURFirmwareVersion::initCommon(a1, a2, 45);
}

uint64_t BBUEURFirmwareVersion::isNewerThan(_DWORD *a1, void *lpsrc)
{
  if (result)
  {
    v4 = a1[2];
    v5 = *(result + 8);
    if (v4 >= v5)
    {
      if (v4 > v5)
      {
        return 1;
      }

      v6 = a1[3];
      v7 = *(result + 12);
      if (v6 < v7)
      {
        return 0;
      }

      if (v6 > v7)
      {
        return 1;
      }

      v8 = a1[4];
      v9 = *(result + 16);
      if (v8 < v9)
      {
        return 0;
      }

      if (v8 > v9)
      {
        return 1;
      }

      return a1[5] > *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *BBUEURFirmwareVersion::equals(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    if (*(a1 + 8) == result[2])
    {
      if (*(a1 + 12) != result[3] || *(a1 + 16) != result[4] || *(a1 + 20) != result[5])
      {
        return 0;
      }

      v4 = *(a1 + 47);
      if (v4 >= 0)
      {
        v5 = *(a1 + 47);
      }

      else
      {
        v5 = *(a1 + 32);
      }

      v6 = *(result + 47);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(result + 4);
      }

      if (v5 == v6)
      {
        v10 = *(a1 + 24);
        v9 = (a1 + 24);
        v8 = v10;
        if (v4 >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        v14 = *(result + 3);
        v12 = result + 6;
        v13 = v14;
        if (v7 >= 0)
        {
          v15 = v12;
        }

        else
        {
          v15 = v13;
        }

        return (memcmp(v11, v15, v5) == 0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUEURFirmwareVersion::getAsFileName@<X0>(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[7] = v4;
  v41[8] = v4;
  v41[5] = v4;
  v41[6] = v4;
  v41[3] = v4;
  v41[4] = v4;
  v41[1] = v4;
  v41[2] = v4;
  v40 = v4;
  v41[0] = v4;
  *__p = v4;
  v39 = v4;
  v36 = v4;
  v37 = v4;
  v34 = v4;
  v35 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
  v5 = v34;
  v6 = &v34 + *(v34 - 24);
  if (*(v6 + 36) == -1)
  {
    std::ios_base::getloc((&v34 + *(v34 - 24)));
    v7 = std::locale::use_facet(&v33, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v33);
    v5 = v34;
  }

  *(v6 + 36) = 48;
  *(&v35 + *(v5 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 2));
  *(&v35 + *(v34 - 24) + 8) = 1;
  v33.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
  *(&v35 + *(v34 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 3));
  *(&v35 + *(v34 - 24) + 8) = 1;
  v33.__r_.__value_.__s.__data_[0] = 46;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
  *(&v35 + *(v34 - 24) + 8) = 2;
  MEMORY[0x1E69270E0](&v34, *(this + 4));
  *(&v35 + *(v34 - 24) + 8) = 1;
  if (*(this + 5) != -1)
  {
    v33.__r_.__value_.__s.__data_[0] = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, &v33, 1);
    MEMORY[0x1E69270D0](&v34, *(this + 5));
  }

  memset(a2, 170, sizeof(std::string));
  (*(*this + 24))(&v32, this);
  size = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v9 = &v32;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) == 22)
    {
      v10 = 22;
      v11 = 23;
LABEL_11:
      v13 = 2 * v10;
      if (v11 > 2 * v10)
      {
        v13 = v11;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v12 = v14;
      }

      else
      {
        v12 = 23;
      }

      v15 = v10 == 22;
      goto LABEL_20;
    }

LABEL_26:
    v9->__r_.__value_.__s.__data_[size] = 45;
    v19 = size + 1;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      v32.__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      *(&v32.__r_.__value_.__s + 23) = v19 & 0x7F;
    }

    v18 = v9 + v19;
    goto LABEL_30;
  }

  size = v32.__r_.__value_.__l.__size_;
  v11 = v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v10 = (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 != v32.__r_.__value_.__l.__size_)
  {
    v9 = v32.__r_.__value_.__r.__words[0];
    goto LABEL_26;
  }

  v12 = 0x7FFFFFFFFFFFFFF7;
  if (v11 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v32.__r_.__value_.__r.__words[0];
  if (v10 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_11;
  }

  v15 = 0;
LABEL_20:
  v16 = operator new(v12);
  v17 = v16;
  if (v10)
  {
    memmove(v16, v9, v10);
  }

  *(v17 + v10) = 45;
  if (!v15)
  {
    operator delete(v9);
  }

  v32.__r_.__value_.__l.__size_ = v11;
  v32.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
  v32.__r_.__value_.__r.__words[0] = v17;
  v18 = (v17 + v11);
LABEL_30:
  *v18 = 0;
  v33 = v32;
  memset(&v32, 0, sizeof(v32));
  if ((BYTE8(v40) & 0x10) != 0)
  {
    v22 = v40;
    if (v40 < *(&v37 + 1))
    {
      *&v40 = *(&v37 + 1);
      v22 = *(&v37 + 1);
    }

    v23 = v37;
    v20 = v22 - v37;
    if ((v22 - v37) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if ((BYTE8(v40) & 8) == 0)
    {
      v20 = 0;
      HIBYTE(v31) = 0;
      v21 = &v29;
      goto LABEL_44;
    }

    v23 = *(&v35 + 1);
    v20 = *(&v36 + 1) - *(&v35 + 1);
    if (*(&v36 + 1) - *(&v35 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_60:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v20 | 7) + 1;
    }

    v21 = operator new(v24);
    v30 = v20;
    v31 = v24 | 0x8000000000000000;
    v29 = v21;
    goto LABEL_43;
  }

  HIBYTE(v31) = v20;
  v21 = &v29;
  if (v20)
  {
LABEL_43:
    memmove(v21, v23, v20);
  }

LABEL_44:
  *(v21 + v20) = 0;
  if (v31 >= 0)
  {
    v25 = &v29;
  }

  else
  {
    v25 = v29;
  }

  if (v31 >= 0)
  {
    v26 = HIBYTE(v31);
  }

  else
  {
    v26 = v30;
  }

  v27 = std::string::append(&v33, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_57:
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  operator delete(v29);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_52:
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_58:
  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_53:
  *&v34 = *MEMORY[0x1E69E54E8];
  *(&v34 + *(v34 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v34 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v34 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v35);
  std::ostream::~ostream();
  return MEMORY[0x1E69273B0](v41);
}

void sub_1E52D3760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](&a42);
  _Unwind_Resume(a1);
}

void BBUEURFirmwareVersion::getAsString(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  (*(*this + 32))(a2);
  v4 = *(this + 47);
  if (v4 < 0)
  {
    if (!*(this + 4))
    {
      return;
    }
  }

  else if (!*(this + 47))
  {
    return;
  }

  if (v4 >= 0)
  {
    v5 = *(this + 47);
  }

  else
  {
    v5 = *(this + 4);
  }

  v6 = v5 + 1;
  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    v14 = v5 + 1;
    v15 = v7 | 0x8000000000000000;
    __p = v8;
    *v8 = 95;
    v9 = v8 + 1;
    goto LABEL_15;
  }

  v14 = 0;
  v15 = 0;
  HIBYTE(v15) = v5 + 1;
  v9 = &__p + 1;
  __p = 95;
  if (v5)
  {
LABEL_15:
    if (v4 >= 0)
    {
      v10 = this + 24;
    }

    else
    {
      v10 = *(this + 3);
    }

    memmove(v9, v10, v5);
  }

  v9[v5] = 0;
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v15 >= 0)
  {
    v12 = HIBYTE(v15);
  }

  else
  {
    v12 = v14;
  }

  std::string::append(a2, p_p, v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52D3970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void BBUEURFirmwareVersion::getFirmwarePrefix(BBUEURFirmwareVersion *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *a2 = *(this + 3);
  }
}

uint64_t BBULogIOABP::startRunLoopThread(pthread_t *this)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1174405120;
  v6[2] = ___ZN11BBULogIOABP18startRunLoopThreadEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_15;
  v6[4] = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  pthread_create(this + 9, 0, enterRunLoopThread, v6);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  Controller = TelephonyBasebandCreateController();
  v4 = this[11];
  this[11] = Controller;
  if (v4)
  {
    CFRelease(v4);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  return 1;
}

void sub_1E52D3ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<std::unique_ptr<BBULogIOABP::ABPBuffer>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = v5[1];
          if (v7)
          {
            v5[2] = v7;
            operator delete(v7);
          }

          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BBULogIOABP::BBULogIOABP(BBULogIOABP *this)
{
  *(this + 12) = &off_1F5F02370;
  *this = &off_1F5F023F8;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  v2 = operator new(0x1000uLL);
  bzero(v2, 0x1000uLL);
  *(this + 17) = v2 + 4096;
  *(this + 18) = v2 + 4096;
  *(this + 15) = 4096;
  *(this + 16) = v2;
  *(this + 104) = xmmword_1E53924E0;
  *(this + 152) = 1;
  *(this + 12) = &unk_1F5F02168;
  *this = &unk_1F5F020D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = dispatch_queue_create("com.apple.BBULogIOABP", 0);
  *(this + 2) = 0u;
  *(this + 3) = v3;
  *(this + 80) = 0;
  *(this + 11) = 0;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + *(*this - 80) + 56) = 0;
  BBULogIOABP::startRunLoopThread(this);
}

void sub_1E52D3D80(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef((v2 + 64));
  ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef((v2 + 56));
  std::vector<std::unique_ptr<BBULogIOABP::ABPBuffer>>::~vector[abi:ne200100](v4);
  v7 = *(v2 + 24);
  if (v7)
  {
    dispatch_release(v7);
    v8 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (!v8)
    {
LABEL_3:
      v9 = *v5;
      *v5 = 0;
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  (*(*v8 + 8))(v8);
  v9 = *v5;
  *v5 = 0;
  if (!v9)
  {
LABEL_4:
    BBULogCircularBuffer::~BBULogCircularBuffer(v1, off_1F5F021C0);
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v9 + 16))(v9);
  BBULogCircularBuffer::~BBULogCircularBuffer(v1, off_1F5F021C0);
  _Unwind_Resume(a1);
}

void BBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 80)) = a2[1];
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

void BBULogIOABP::~BBULogIOABP(BBULogIOABP *this)
{
  *(this + 12) = &unk_1F5F02168;
  *this = &unk_1F5F020D8;
  BBULogIOABP::disable(this);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke;
  v17[3] = &__block_descriptor_tmp_4_0;
  v17[4] = &v18;
  v17[5] = this;
  dispatch_sync(v3, v17);
  if (*(v19 + 24) == 1)
  {
    pthread_join(*(this + 9), 0);
    v4 = *(this + 7);
    *(this + 7) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  _Block_object_dispose(&v18, 8);
  v5 = *(this + 11);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          v13 = v11[1];
          if (v13)
          {
            v11[2] = v13;
            operator delete(v13);
          }

          operator delete(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  v14 = *(this + 3);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 1);
  *(this + 1) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }
}

{
  BBULogIOABP::~BBULogIOABP(this);
  v2[12] = &off_1F5F02370;
  *v2 = &off_1F5F023F8;
  v3 = v2[16];
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }
}

{
  BBULogIOABP::~BBULogIOABP(this);
  v2[12] = &off_1F5F02370;
  *v2 = &off_1F5F023F8;
  v3 = v2[16];
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  operator delete(this);
}

void sub_1E52D4130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  __clang_call_terminate(a1);
}

void virtual thunk toBBULogIOABP::~BBULogIOABP(BBULogIOABP *this)
{
  BBULogIOABP::~BBULogIOABP((this + *(*this - 32)));
  v1[12] = &off_1F5F02370;
  *v1 = &off_1F5F023F8;
  v2 = v1[16];
  if (v2)
  {
    v1[17] = v2;

    operator delete(v2);
  }
}

{
  v1 = (this + *(*this - 32));
  BBULogIOABP::~BBULogIOABP(v1);
  *(v1 + 12) = &off_1F5F02370;
  *v1 = &off_1F5F023F8;
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 17) = v2;
    operator delete(v2);
  }

  operator delete(v1);
}

void ___ZN11BBULogIOABP18startRunLoopThreadEv_block_invoke(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  Current = CFRunLoopGetCurrent();
  v6 = Current;
  if (Current)
  {
    CFRetain(Current);
  }

  v7 = *(v4 + 56);
  *(v4 + 56) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = a2;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);

  dispatch_group_leave(v9);
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t enterRunLoopThread(void (**a1)(void, void))
{
  memset(&context, 0, 72);
  context.perform = performNOP;
  v2 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, v2, *MEMORY[0x1E695E8E0]);
  (a1)[2](a1, v2);
  CFRunLoopRun();
  if (v2)
  {
    CFRelease(v2);
  }

  return 0;
}

void sub_1E52D44E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFRunLoopSource>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 56);
  if (v3)
  {
    CFRunLoopWakeUp(v3);
    CFRunLoopSourceInvalidate(*(v2 + 64));
    v4 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    CFRunLoopPerformBlock(*(v2 + 56), *MEMORY[0x1E695E8E0], &__block_literal_global_2);
    CFRunLoopWakeUp(*(v2 + 56));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___ZN11BBULogIOABP17stopRunLoopThreadEv_block_invoke_2()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

void ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v6 = pci::transport::kernel::errorAsString();
    _BBULog(1, 0, "BBULogIOABP", "", "received '%s' error. arg0 = %#llx arg1 = %#llx\n", v6, a3, a4);
  }
}

uint64_t ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_3;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = v3;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v4, block);
  return 0;
}

void ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_3(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + *(*v1 - 80) + 56) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 0x93u, "Assertion failure(fEnabled)");
    goto LABEL_22;
  }

  v3 = a1[5];
  if (!*v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 0x95u, "Assertion failure(buf->size)");
LABEL_22:
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "add log: data %p size %zu\n", v3[1], a1[6]);
  }

LABEL_7:
  (*(*(v1 + *(*v1 - 80)) + 24))(v1 + *(*v1 - 80), v3[1], a1[6]);
  if (*(v1 + 80))
  {
    v4 = v3[4];

    _Block_release(v4);
  }

  else
  {
    v5 = (*(**(v1 + 16) + 64))(*(v1 + 16), v3[1], *v3, 0, BBULogIOABP::cbReadLogs, v3);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(2, 6, "BBULogIOABP", "", "readLogsAsync: ret %#x\n", v5);
    }
  }
}

void BBULogIOABP::cbReadLogs(BBULogIOABP *this, void *a2, const void *a3, void *a4)
{
  v4 = a2;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v7;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "readCompletion: ret %#x, arg0 %p, refCon %p\n", v4, a3, this);
  }

LABEL_5:
  if (this && (*(*(this + 4) + 16))())
  {
    v6 = *(this + 4);

    _Block_release(v6);
  }
}

void **std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      v1[2] = v3;
      operator delete(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void BBULogIOABP::enable(BBULogIOABP *this)
{
  v1 = *(this + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP6enableEv_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = this;
  dispatch_async(v1, block);
}

void ___ZN11BBULogIOABP6enableEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + *(*v1 - 80) + 56) & 1) != 0 || !v1[7] || !v1[11])
  {
    return;
  }

  _Block_copy(&__block_literal_global_33);
  v2 = TelephonyBasebandRegisterForReset();
  if ((v2 & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v2 = _BBULog(1, 1, "BBULogIOABP", "", "Failed to register for reset detect");
    }
  }

LABEL_9:
  LODWORD(__sz) = 0x10000;
  pci::transport::kernelControl::create(&v36, v2);
  v3 = v36;
  v36 = 0;
  v4 = v1[2];
  v1[2] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v5 = v36;
    v36 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v3 = v1[2];
  }

  if (!v3)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 119, "fControlObj");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_58;
      }
    }

LABEL_57:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_89;
    }

LABEL_58:
    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBULogIOABP", "", "Fail to create kernelControl\n", v34);
    }

    goto LABEL_89;
  }

  if (((*(*v3 + 24))(v3) & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 122, "fControlObj->start()");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_65;
      }
    }

LABEL_64:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_89;
    }

LABEL_65:
    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBULogIOABP", "", "Fail to start kernelControl\n", v34);
    }

    goto LABEL_89;
  }

  v6 = (*(*v1[2] + 72))(v1[2], v1[7], &__block_literal_global_15);
  if (v6)
  {
    v31 = v6;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_71;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 130, "kIOReturnSuccess == ret");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_89;
        }

LABEL_72:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_89;
        }

        v32 = "Fail to registerEventNotification: %#x \n";
LABEL_81:
        _BBULog(1, 1, "BBULogIOABP", "", v32, v31);
        goto LABEL_89;
      }
    }

LABEL_71:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_72;
  }

  v7 = (*(*v1[2] + 40))(v1[2], v1[7]);
  if (v7)
  {
    v31 = v7;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_78;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 134, "kIOReturnSuccess == ret");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_89;
        }

LABEL_79:
        if (gBBULogVerbosity < 1)
        {
          goto LABEL_89;
        }

        v32 = "Fail to open kernelControl: %#x \n";
        goto LABEL_81;
      }
    }

LABEL_78:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_79;
  }

  v8 = (*(*v1[2] + 96))(v1[2], &__sz);
  if (gBBULogMaskGet(void)::once == -1)
  {
    v9 = *gBBULogMaskGet(void)::sBBULogMask;
    v10 = gBBULogVerbosity;
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_83:
    if ((v9 & 2) != 0 && v10 >= 6 && (_BBULog(1, 6, "BBULogIOABP", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogIOABP.cpp", 139, "success"), gBBULogMaskGet(void)::once != -1))
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_87:
        if (gBBULogVerbosity >= 1)
        {
          _BBULog(1, 1, "BBULogIOABP", "", "failed to getLogInternalBufferSize... will use %lu bytes.\n");
        }
      }
    }

    else if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_87;
    }

LABEL_89:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      return;
    }

    v28 = "Failed to enable\n";
    v29 = 1;
    v30 = 1;
    goto LABEL_50;
  }

  v33 = v8;
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v9 = *gBBULogMaskGet(void)::sBBULogMask;
  v10 = gBBULogVerbosity;
  if ((v33 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_19:
  if ((v9 & 4) != 0 && v10 >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "internal buffer is %lu bytes\n", __sz);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN11BBULogIOABP25registerIOABPControl_syncEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28;
  v11 = 4;
  aBlock[4] = v1;
  do
  {
    v12 = operator new(0x28uLL);
    v13 = __sz;
    *v12 = __sz;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = 0;
    if (v13)
    {
      v14 = operator new(v13);
      *(v12 + 1) = v14;
      v15 = &v14[v13];
      *(v12 + 3) = &v14[v13];
      bzero(v14, v13);
      *(v12 + 2) = v15;
    }

    *(v12 + 4) = _Block_copy(aBlock);
    v36 = v12;
    v17 = v1[5];
    v16 = v1[6];
    if (v17 >= v16)
    {
      v19 = v1[4];
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = operator new(8 * v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[8 * v21];
      *v26 = v12;
      v18 = v26 + 1;
      memcpy(v25, v19, v20);
      v1[4] = v25;
      v1[5] = v18;
      v1[6] = &v25[8 * v24];
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v17 = v12;
      v18 = v17 + 8;
    }

    v1[5] = v18;
    v27 = (*(*v1[2] + 64))(v1[2], *(v12 + 1), *v12, 0, BBULogIOABP::cbReadLogs, v12);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_23;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(2, 6, "BBULogIOABP", "", "readLogsAsync returned %#x\n", v27);
    }

LABEL_23:
    --v11;
  }

  while (v11);
  (*(*(v1 + *(*v1 - 80)) + 56))(v1 + *(*v1 - 80), (2 * __sz));
  *(v1 + *(*v1 - 80) + 56) = 1;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return;
    }

LABEL_48:
    if (gBBULogVerbosity < 6)
    {
      return;
    }

    v28 = "Succeed to enable\n";
    v29 = 2;
    v30 = 6;
LABEL_50:

    _BBULog(v29, v30, "BBULogIOABP", "", v28);
    return;
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
  {
    goto LABEL_48;
  }
}

void sub_1E52D56E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52D5710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::unique_ptr<BBULogIOABP::ABPBuffer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN11BBULogIOABP6enableEv_block_invoke_2(uint64_t a1, int a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v3 = *gBBULogMaskGet(void)::sBBULogMask;
  if (a2 == -469794816)
  {
    if ((v3 & 4) == 0 || gBBULogVerbosity < 0)
    {
      return;
    }

    v4 = "baseband reset detected\n";
    goto LABEL_11;
  }

  if (a2 == -469794815)
  {
    if ((v3 & 4) == 0 || gBBULogVerbosity < 0)
    {
      return;
    }

    v4 = "baseband alive detected\n";
LABEL_11:

    _BBULog(2, 0, "BBULogIOABP", "", v4);
    return;
  }

  if ((v3 & 4) != 0 && gBBULogVerbosity >= 6)
  {
    _BBULog(2, 6, "BBULogIOABP", "", "reset message type: %x\n", a2);
  }
}

void sResetDetectCallback(void (**a1)(void, void), unsigned int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    a1[2](a1, a3);

    _Block_release(a1);
  }
}

void virtual thunk toBBULogIOABP::enable(BBULogIOABP *this)
{
  v1 = this + *(*this - 48);
  v2 = *(v1 + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN11BBULogIOABP6enableEv_block_invoke;
  block[3] = &__block_descriptor_tmp_40;
  block[4] = v1;
  dispatch_async(v2, block);
}

void BBULogIOABP::disable(BBULogIOABP *this)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(this + 3);
  v5 = MEMORY[0x1E69E9820];
  v6 = 1174405120;
  v7 = ___ZN11BBULogIOABP7disableEv_block_invoke;
  v8 = &__block_descriptor_tmp_50;
  v9 = this;
  object = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  dispatch_async(v3, &v5);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 2))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_6:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(2, 6, "BBULogIOABP", "", "closing ABPControlObj\n", v5, v6, v7, v8, v9);
        }
      }
    }

    (*(**(this + 2) + 56))(*(this + 2));
    (*(**(this + 2) + 32))(*(this + 2));
    v4 = *(this + 2);
    *(this + 2) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v2)
  {
    dispatch_release(v2);
  }
}

void sub_1E52D5AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void ___ZN11BBULogIOABP7disableEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + *(*v1 - 80) + 56) == 1 && *(v1 + 16))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN11BBULogIOABP7disableEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_47_1;
    v3 = *(a1 + 40);
    aBlock[4] = v1;
    object = v3;
    if (v3)
    {
      dispatch_retain(v3);
    }

    *(v1 + 80) = 1;
    v4 = operator new(0x28uLL);
    *v4 = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    *(v4 + 4) = _Block_copy(aBlock);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    if (v6 >= v5)
    {
      v11 = *(v1 + 32);
      v12 = v6 - v11;
      v13 = (v6 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v5 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v17 = operator new(8 * v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = &v17[8 * v13];
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v17, v11, v12);
      *(v1 + 32) = v17;
      *(v1 + 40) = v9;
      *(v1 + 48) = &v17[8 * v16];
      if (v11)
      {
        operator delete(v11);
        v8 = *v4;
        v7 = *(v4 + 1);
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      *v6 = v4;
      v9 = v6 + 8;
    }

    *(v1 + 40) = v9;
    if ((*(**(v1 + 16) + 64))(*(v1 + 16), v7, v8, 1, BBULogIOABP::cbReadLogs, v4))
    {
      dispatch_group_leave(*(a1 + 40));
    }

    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    v10 = *(a1 + 40);

    dispatch_group_leave(v10);
  }
}

void sub_1E52D5D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN11BBULogIOABP7disableEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN11BBULogIOABP7disableEv_block_invoke_3;
  v5[3] = &__block_descriptor_tmp_44_0;
  v5[4] = v2;
  object = v1;
  if (v1)
  {
    dispatch_retain(v1);
  }

  dispatch_async(v3, v5);
  if (object)
  {
    dispatch_release(object);
  }

  return 1;
}

void ___ZN11BBULogIOABP7disableEv_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBULogIOABP", "", "last readLogBlock callback\n");
  }

LABEL_5:
  *(v2 + *(*v2 - 80) + 56) = 0;
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void BBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this)
{
  *this = &unk_1F5F025E8;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_1F5F025E8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void virtual thunk toBBULogCircularBuffer::~BBULogCircularBuffer(BBULogCircularBuffer *this)
{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F5F025E8;
  v2 = v1[4];
  if (v2)
  {
    v1[5] = v2;
    operator delete(v2);
  }
}

{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F5F025E8;
  v2 = v1[4];
  if (v2)
  {
    v1[5] = v2;
    operator delete(v2);
  }

  operator delete(v1);
}

uint64_t DaleImage_DDR::create@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x40uLL);
  *__p = *a1;
  v9 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  DaleImage_DDR::DaleImage_DDR(v4, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*v4 + 16))(v4);
  if (result)
  {
    *a2 = v4;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init image object for ddr\n", "DaleImage_DDR", "create");
    v7 = *(*v4 + 8);

    return v7(v4);
  }

  return result;
}

void sub_1E52D61A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  *v16 = 0;
  _Unwind_Resume(a1);
}

void sub_1E52D61D4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void *DaleImage_DDR::DaleImage_DDR(void *a1, const void **a2)
{
  v13 = 2;
  v14 = 1;
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = v3 + 7;
  if (v3 + 7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    *(&v11 + 1) = v3 + 7;
    v12 = v7 | 0x8000000000000000;
    *&v11 = v8;
    goto LABEL_11;
  }

  v12 = 0;
  v11 = 0uLL;
  v8 = &v11;
  HIBYTE(v12) = v3 + 7;
  if (v3)
  {
LABEL_11:
    if (v2 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v3);
  }

  strcpy(v8 + v3, "ddr.bin");
  v15 = v11;
  v16 = v12;
  v12 = 0;
  v11 = 0uLL;
  v17 = 0;
  v18 = 1;
  DaleImage::DaleImage(a1, &v13);
  if (v18 == 1 && v17 != -1)
  {
    v20[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v20[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v20[v17])(&v19, &v15);
  }

  *a1 = &unk_1F5F02480;
  return a1;
}

void sub_1E52D63AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

uint64_t DaleImage_DDR::saveNewDataToFile(DaleImage_DDR *this, const void *a2, uint64_t a3)
{
  v37 = 0;
  v38 = 0;
  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid data\n");
    return 0;
  }

  if (!a3)
  {
    v22 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v22, 2, "%s::%s: invalid data size\n");
    return 0;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v23 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v23, 2, "%s::%s: invalid image source\n");
    return 0;
  }

  if (*(this + 10))
  {
    v24 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v24, 2, "%s::%s: invalid image save path (not a path)\n");
    return 0;
  }

  v5 = *(this + 39);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(this + 3);
  }

  if (!v5)
  {
    v25 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v25, 2, "%s::%s: invalid image save path (empty)\n");
    return 0;
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    v8 = MEMORY[0x1E6926300]();
    operator delete(v8);
    if (*(this + 10))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(this + 2), *(this + 3));
  }

  else
  {
    v36 = *(this + 16);
  }

  support::fs::SyncFile::create(&v36, 20, 0x100000uLL, &block);
  v11 = block;
  v10 = v41;
  block = 0;
  v41 = 0;
  v37 = v11;
  v38 = v10;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    v26 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to create file object\n", "DaleImage_DDR", "saveNewDataToFile");
    goto LABEL_51;
  }

  block = MEMORY[0x1E69E9820];
  v41 = 0x40000000;
  v42 = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v43 = &__block_descriptor_tmp_2;
  v44 = v11;
  ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped((v11 + 8), &block);
  isOpen = support::fs::SyncFile::isOpen(v11);
  if ((isOpen & 1) == 0)
  {
    v27 = ACFULogging::getLogInstance(isOpen);
    v28 = "%s::%s: failed to open file (%s)\n";
LABEL_43:
    v31 = *(v11 + 40);
    v30 = v11 + 40;
    v29 = v31;
    if (*(v30 + 23) >= 0)
    {
      v29 = v30;
    }

    ACFULogging::handleMessage(v27, 2, v28, "DaleImage_DDR", "saveNewDataToFile", v29);
LABEL_51:
    result = 0;
    if (!v10)
    {
      return result;
    }

    goto LABEL_30;
  }

  v13 = support::fs::SyncFile::write(v11, a2, a3);
  if ((v13 & 1) == 0)
  {
    v27 = ACFULogging::getLogInstance(v13);
    v28 = "%s::%s: failed to write to file (%s)\n";
    goto LABEL_43;
  }

  v39 = v11;
  block = MEMORY[0x1E69E9820];
  v41 = 0x40000000;
  v42 = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v43 = &__block_descriptor_tmp_17;
  v44 = v11 + 8;
  v45 = &v39;
  v14 = *(v11 + 24);
  if (*(v11 + 32))
  {
    dispatch_async_and_wait(v14, &block);
  }

  else
  {
    dispatch_sync(v14, &block);
  }

  v15 = support::fs::SyncFile::isOpen(v11);
  if (v15)
  {
    v27 = ACFULogging::getLogInstance(v15);
    v28 = "%s::%s: failed to close file (%s)\n";
    goto LABEL_43;
  }

  LODWORD(block) = 0;
  LODWORD(v39) = 0;
  UidGid = support::fs::getUidGid(1, &block, &v39);
  if ((UidGid & 1) == 0)
  {
    v32 = ACFULogging::getLogInstance(UidGid);
    ACFULogging::handleMessage(v32, 2, "%s::%s: failed to get uid/gid for wireless\n", "DaleImage_DDR", "saveNewDataToFile");
    goto LABEL_51;
  }

  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(v11 + 40), *(v11 + 48));
  }

  else
  {
    v35 = *(v11 + 40);
  }

  updated = support::fs::updateOwner(&v35, block, v39);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = updated;
    operator delete(v35.__r_.__value_.__l.__data_);
    updated = v18;
  }

  if ((updated & 1) == 0)
  {
    v33 = ACFULogging::getLogInstance(updated);
    if (*(v11 + 63) >= 0)
    {
      v34 = (v11 + 40);
    }

    else
    {
      v34 = *(v11 + 40);
    }

    ACFULogging::handleMessage(v33, 2, "%s::%s: failed to chown for wireless (%s)\n", "DaleImage_DDR", "saveNewDataToFile", v34);
    goto LABEL_51;
  }

  result = 1;
  if (!v10)
  {
    return result;
  }

LABEL_30:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = result;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    return v20;
  }

  return result;
}

void sub_1E52D67D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void DaleImage_DDR::~DaleImage_DDR(DaleImage_DDR *this)
{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }

    *(this + 10) = -1;
  }
}

{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }
  }

  operator delete(this);
}

void DaleImageParameters::~DaleImageParameters(DaleImageParameters *this)
{
  if (*(this + 40) == 1)
  {
    v1 = *(this + 8);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = this;
      (v4[v1])(&v3, this + 8);
      this = v2;
    }

    *(this + 8) = -1;
  }
}

{
  if (*(this + 40) == 1)
  {
    v1 = *(this + 8);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = this;
      (v4[v1])(&v3, this + 8);
      this = v2;
    }

    *(this + 8) = -1;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t __cxx_global_var_init_15()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUICEProgrammer::BBUICEProgrammer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUProgrammer::BBUProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F024A8;
  v6 = capabilities::programmer::connectAttemptCount(v5);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xCu, "Assertion failure(capabilities::programmer::connectAttemptCount() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::connectAttemptCount() exceeds maximum allowable value)");
    goto LABEL_8;
  }

  v7 = capabilities::programmer::connectTimeout(v6);
  if (v7 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xDu, "Assertion failure(capabilities::programmer::connectTimeout().count() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::connectTimeout().count() exceeds maximum allowable value)");
    goto LABEL_8;
  }

  v8 = capabilities::programmer::commandTimeout(v7);
  if (v8 >= 0x100000000)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0xEu, "Assertion failure(capabilities::programmer::commandTimeout().count() <= std::numeric_limits<UInt32>::max() && capabilities::programmer::commandTimeout().count() exceeds maximum allowable value)");
LABEL_8:
  }

  v9 = capabilities::programmer::connectAttemptCount(v8);
  *(a1 + 68) = v9;
  v10 = capabilities::programmer::connectTimeout(v9);
  *(a1 + 72) = v10;
  *(a1 + 76) = capabilities::programmer::commandTimeout(v10);
  *(a1 + 80) = 0;
  return a1;
}

void sub_1E52D6C24(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  BBUProgrammer::~BBUProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUICEProgrammer::~BBUICEProgrammer(BBUICEProgrammer *this)
{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  operator delete(this);
}

void BBUICEProgrammer::gatherPersonalizationParameters(BBUICEProgrammer *this, BOOL a2, BOOL a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  exception = __cxa_allocate_exception(0x210uLL);
  _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0x36u, "Assertion failure(false && Error in gathering personalization parameters.)");
}

void BBUICEProgrammer::program()
{
  exception = __cxa_allocate_exception(0x210uLL);
  _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICEProgrammer.cpp", 0x3Du, "Assertion failure(false && Programmer failure.)");
}

uint64_t BBUProgrammer::collectCoreDump()
{
  return 0;
}

{
  return 0;
}

void BBUProgrammer::getHashVerifiedFiles(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *DaleCommon::DalePersonalizationParams::DalePersonalizationParams(void *a1, uint64_t a2)
{
  __p = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 != *a2)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v4 - *a2);
    memcpy(__p, v5, v6);
  }

  ACFUCommon::PersonalizeParams::PersonalizeParams();
  if (__p)
  {
    operator delete(__p);
  }

  *a1 = &unk_1F5F02560;
  ACFUCommon::Parameter::Parameter((a1 + 26));
  a1[28] = 0;
  a1[29] = 0;
  a1[30] = 0;
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    a1[28] = v9;
    a1[29] = v9;
    v10 = &v9[v8];
    a1[30] = &v9[v8];
    memcpy(v9, v7, v8);
    a1[29] = v10;
  }

  return a1;
}

void sub_1E52D7174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E52D7190(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 29) = v5;
    operator delete(v5);
  }

  MEMORY[0x1E6925A00](v2);
  ACFUCommon::PersonalizeParams::~PersonalizeParams(v1);
  _Unwind_Resume(a1);
}

__CFDictionary *DaleCommon::DalePersonalizationParams::copyParametersDictionary(DaleCommon::DalePersonalizationParams *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = *(this + 28); i != *(this + 29); ++i)
    {
      location = CFStringFind(*i, @"ChipID", 0).location;
      if (location != -1)
      {
        if (*(this + 16) == 1)
        {
          v4 = *i;
          v5 = *(this + 1);
          goto LABEL_5;
        }

        LogInstance = ACFULogging::getLogInstance(location);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: missing chipid\n", "DaleCommon", "copyParametersDictionary");
      }

      v8 = CFStringFind(*i, @"SNUM", 0).location;
      if (v8 != -1)
      {
        if (*(this + 48) == 1)
        {
          v4 = *i;
          v5 = *(this + 5);
          goto LABEL_5;
        }

        v9 = ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage(v9, 0, "%s::%s: missing snum\n", "DaleCommon", "copyParametersDictionary");
      }

      v10 = CFStringFind(*i, @"GoldCertId", 0).location;
      if (v10 != -1)
      {
        if (*(this + 216) == 1)
        {
          v4 = *i;
          v5 = *(this + 26);
          goto LABEL_5;
        }

        v11 = ACFULogging::getLogInstance(v10);
        ACFULogging::handleMessage(v11, 0, "%s::%s: missing goldcertid\n", "DaleCommon", "copyParametersDictionary");
      }

      v12 = CFStringFind(*i, @"Nonce", 0).location;
      if (v12 == -1)
      {
        continue;
      }

      if (*(this + 64) != 1)
      {
        v13 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v13, 0, "%s::%s: missing nonce\n", "DaleCommon", "copyParametersDictionary");
        continue;
      }

      v4 = *i;
      v5 = *(this + 7);
LABEL_5:
      CFDictionaryAddValue(Mutable, v4, v5);
    }
  }

  else
  {
    v14 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v14, 2, "%s::%s: failed to allocate output dictionary\n", "DaleCommon", "copyParametersDictionary");
  }

  return Mutable;
}

void DaleCommon::DalePersonalizationParams::logParameters(DaleCommon::DalePersonalizationParams *this)
{
  v2 = ACFUCommon::PersonalizeParams::logParameters(this);
  if (*(this + 216) == 1)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFUCommon::Parameter::dataAsString(__p, (this + 208));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: goldCertId: 0x%s\n", "DaleCommon", "logParameters", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E52D7494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DaleCommon::DalePersonalizationParams::~DalePersonalizationParams(DaleCommon::DalePersonalizationParams *this)
{
  *this = &unk_1F5F02560;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  MEMORY[0x1E6925A00](this + 208);

  ACFUCommon::PersonalizeParams::~PersonalizeParams(this);
}

{
  *this = &unk_1F5F02560;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  MEMORY[0x1E6925A00](this + 208);
  ACFUCommon::PersonalizeParams::~PersonalizeParams(this);

  operator delete(v3);
}

void *BBULogCircularBuffer::clearLog(void *this)
{
  this[1] = 0;
  this[3] = this[2];
  return this;
}

void *virtual thunk toBBULogCircularBuffer::clearLog(void *this)
{
  v1 = (this + *(*this - 24));
  v1[1] = 0;
  v1[3] = v1[2];
  return this;
}

uint64_t BBULogCircularBuffer::log(BBULogCircularBuffer *this, const char *a2, size_t a3)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (!v4 && *(this + 56) == 1)
  {
    v6 = result;
    v7 = *(this + 1);
    v8 = *(this + 2);
    v9 = a3 - v8;
    if (a3 < v8)
    {
      v9 = 0;
    }

    v10 = &a2[v9];
    if (v8 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = *(this + 2);
    }

    v12 = v8 - v7;
    v13 = (*(this + 4) + v7);
    v14 = v11 - (v8 - v7);
    if (v11 <= v8 - v7)
    {
      memcpy(v13, &a2[v9], v11);
    }

    else
    {
      memcpy(v13, &a2[v9], v8 - v7);
      v15 = *(this + 3);
      v16 = *(this + 4);
      v17 = v15 >= v12;
      v18 = v15 - v12;
      if (!v17)
      {
        v18 = 0;
      }

      *(this + 3) = v18;
      v19 = (*(this + 1) + v12) % *(this + 2);
      *(this + 1) = v19;
      memcpy((v16 + v19), &v10[v12], v14);
      v11 = v14;
    }

    v21 = *(this + 2);
    v20 = *(this + 3);
    v17 = v20 >= v11;
    v22 = v20 - v11;
    if (!v17)
    {
      v22 = 0;
    }

    *(this + 3) = v22;
    *(this + 1) = (*(this + 1) + v11) % v21;
    return v6;
  }

  return result;
}

uint64_t virtual thunk toBBULogCircularBuffer::log(BBULogCircularBuffer *this, const char *a2, size_t a3)
{
  v4 = *(*this - 40);
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (!v5)
  {
    v7 = (this + v4);
    if (*(this + v4 + 56) == 1)
    {
      v8 = result;
      v9 = v7[1];
      v10 = v7[2];
      v11 = a3 - v10;
      if (a3 < v10)
      {
        v11 = 0;
      }

      v12 = &a2[v11];
      if (v10 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v7[2];
      }

      v14 = v10 - v9;
      v15 = (v7[4] + v9);
      v16 = v13 - (v10 - v9);
      if (v13 <= v10 - v9)
      {
        memcpy(v15, &a2[v11], v13);
      }

      else
      {
        memcpy(v15, &a2[v11], v10 - v9);
        v17 = v7[3];
        v18 = v7[4];
        v19 = v17 >= v14;
        v20 = v17 - v14;
        if (!v19)
        {
          v20 = 0;
        }

        v7[3] = v20;
        v21 = (v7[1] + v14) % v7[2];
        v7[1] = v21;
        memcpy((v18 + v21), &v12[v14], v16);
        v13 = v16;
      }

      v23 = v7[2];
      v22 = v7[3];
      v19 = v22 >= v13;
      v24 = v22 - v13;
      if (!v19)
      {
        v24 = 0;
      }

      v7[3] = v24;
      v7[1] = (v7[1] + v13) % v23;
      return v8;
    }
  }

  return result;
}

uint64_t BBULogCircularBuffer::getLogAsStringStreamSharedRef@<X0>(BBULogCircularBuffer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x118uLL);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  *a2 = v4;
  v5 = operator new(0x20uLL);
  *v5 = &unk_1F5F02660;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  a2[1] = v5;
  if (!*(this + 3))
  {
    std::ostream::write();
  }

  if (*(this + 1))
  {
    std::ostream::write();
  }

  return (**this)(this);
}

void BBULogCircularBuffer::resize(BBULogCircularBuffer *this, unint64_t a2)
{
  if (*(this + 56) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogCircularBuffer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogCircularBuffer.cpp", 114, "!fEnabled");
    }
  }

  else if (*(this + 2) >= a2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBULogCircularBuffer", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogCircularBuffer.cpp", 115, "size > fMaxCapacity");
    }
  }

  else
  {
    v5 = *(this + 4);
    v4 = *(this + 5);
    v6 = v4 - v5;
    v7 = a2 - (v4 - v5);
    if (a2 <= v4 - v5)
    {
      if (a2 < v4 - v5)
      {
        *(this + 5) = &v5[a2];
      }
    }

    else
    {
      v8 = *(this + 6);
      if (v8 - v4 >= v7)
      {
        bzero(v4, v7);
        *(this + 5) = &v5[a2];
      }

      else
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v9 = v8 - v5;
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v12 = operator new(v11);
        bzero(&v12[v6], v7);
        memcpy(v12, v5, v6);
        *(this + 4) = v12;
        *(this + 5) = &v12[a2];
        *(this + 6) = &v12[v11];
        if (v5)
        {
          operator delete(v5);
        }
      }
    }

    *(this + 2) = a2;
    *(this + 3) = a2;
    *(this + 1) = 0;
  }
}

void std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,std::shared_ptr<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::__shared_ptr_default_delete<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>,std::allocator<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5392607)
  {
    if (((v2 & 0x80000001E5392607 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5392607))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5392607 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUICEUpdateSource::containsFile(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    v4 = *(a1 + 103);
    if (v4 >= 0)
    {
      v5 = *(a1 + 103);
    }

    else
    {
      v5 = *(a1 + 88);
    }

    v6 = v5 + 1;
    if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 < 0x17)
    {
      memset(&v19, 0, sizeof(v19));
      v10 = &v19;
      *(&v19.__r_.__value_.__s + 23) = v5 + 1;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((v6 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v6 | 7) + 1;
      }

      v9 = a1;
      v10 = operator new(v8);
      a1 = v9;
      v19.__r_.__value_.__l.__size_ = v5 + 1;
      v19.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
      v19.__r_.__value_.__r.__words[0] = v10;
    }

    if (v4 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    memmove(v10, v11, v5);
LABEL_19:
    *&v10[v5] = 47;
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    result = ctu::fs::file_exists();
    if (SHIBYTE(v21) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      result = v17;
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v18 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v18;
  }

  v2 = *(a1 + 64);

  return BBUZipFile::containsFile(v2, a2);
}

void sub_1E52D7E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void BBUICEUpdateSource::listFiles(uint64_t a1, void **a2, const void **a3)
{
  v63 = &v63;
  v64 = &v63;
  v65 = 0;
  if (*(a1 + 64))
  {
    BBUZipFile::getFileList(&__p, *(a1 + 64));
    if (v65)
    {
      v5 = v64;
      v6 = *(v63 + 8);
      v7 = *v64;
      *(v7 + 8) = v6;
      *v6 = v7;
      v65 = 0;
      if (v5 != &v63)
      {
        do
        {
          v13 = v5[1];
          if (*(v5 + 39) < 0)
          {
            v14 = v5;
            operator delete(v5[2]);
            v5 = v14;
          }

          operator delete(v5);
          v5 = v13;
        }

        while (v13 != &v63);
      }
    }

    v8 = __p.__r_.__value_.__r.__words[2];
    if (__p.__r_.__value_.__r.__words[2])
    {
      v9 = *&__p.__r_.__value_.__l.__data_;
      v10 = *(__p.__r_.__value_.__r.__words[0] + 8);
      v11 = *__p.__r_.__value_.__l.__size_;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = v63;
      *(v63 + 8) = *(&v9 + 1);
      **(&v9 + 1) = v12;
      *(v9 + 8) = &v63;
      v63 = v9;
      v65 += v8;
    }
  }

  else
  {
    BBUpdaterCommon::BBUReadDirectory((a1 + 80), &v63);
  }

  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_12;
    }

LABEL_65:
    if (&v63 != a2)
    {
      v35 = v64;
      v36 = a2[1];
      if (v64 != &v63 && v36 != a2)
      {
        do
        {
          if (v36 != v35)
          {
            v40 = *(v35 + 39);
            if (*(v36 + 39) < 0)
            {
              if (v40 >= 0)
              {
                v37 = v35 + 2;
              }

              else
              {
                v37 = v35[2];
              }

              if (v40 >= 0)
              {
                v38 = *(v35 + 39);
              }

              else
              {
                v38 = v35[3];
              }

              std::string::__assign_no_alias<false>(v36 + 2, v37, v38);
            }

            else if ((*(v35 + 39) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v36 + 2, v35[2], v35[3]);
            }

            else
            {
              v41 = *(v35 + 1);
              v36[4] = v35[4];
              *(v36 + 1) = v41;
            }
          }

          v35 = v35[1];
          v36 = v36[1];
        }

        while (v35 != &v63 && v36 != a2);
      }

      if (v36 == a2)
      {
        if (v35 != &v63)
        {
          v45 = operator new(0x28uLL);
          v46 = v45;
          *v45 = 0;
          *(v45 + 1) = 0;
          if (*(v35 + 39) < 0)
          {
            std::string::__init_copy_ctor_external((v45 + 16), v35[2], v35[3]);
          }

          else
          {
            v47 = *(v35 + 1);
            *(v45 + 4) = v35[4];
            *(v45 + 1) = v47;
          }

          v48 = v35[1];
          v49 = 1;
          if (v48 == &v63)
          {
            v53 = v46;
          }

          else
          {
            v50 = v46;
            do
            {
              v52 = operator new(0x28uLL);
              v53 = v52;
              *v52 = v50;
              *(v52 + 1) = 0;
              if (*(v48 + 39) < 0)
              {
                std::string::__init_copy_ctor_external((v52 + 16), *(v48 + 16), *(v48 + 24));
              }

              else
              {
                v51 = *(v48 + 16);
                *(v52 + 4) = *(v48 + 32);
                *(v52 + 1) = v51;
              }

              v50[1] = v53;
              ++v49;
              v48 = *(v48 + 8);
              v50 = v53;
            }

            while (v48 != &v63);
          }

          v54 = *a2;
          v54[1] = v46;
          *v46 = v54;
          *a2 = v53;
          v53[1] = a2;
          a2[2] = a2[2] + v49;
        }
      }

      else
      {
        v42 = *(*a2 + 1);
        v43 = *v36;
        v43[1] = v42;
        *v42 = v43;
        do
        {
          v44 = v36[1];
          a2[2] = a2[2] - 1;
          if (*(v36 + 39) < 0)
          {
            operator delete(v36[2]);
          }

          operator delete(v36);
          v36 = v44;
        }

        while (v44 != a2);
      }
    }

    goto LABEL_102;
  }

  if (!a3[1])
  {
    goto LABEL_65;
  }

LABEL_12:
  for (i = v64; i != &v63; i = i[1])
  {
    memset(&__p, 170, sizeof(__p));
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v16 = *(a3 + 23);
    if (v16 < 0)
    {
      v17 = a3[1];
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_21:
        if (v17 > size)
        {
          continue;
        }

        v19 = size;
LABEL_25:
        if ((v16 & 0x80000000) != 0)
        {
          v20 = v19 - a3[1];
          if ((size & 0x80000000) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v20 = v19 - v16;
          if ((size & 0x80000000) == 0)
          {
LABEL_27:
            if (v20 > size)
            {
              goto LABEL_108;
            }

            p_p = &__p;
            v22 = size - v20;
            if (size - v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_109;
            }

            goto LABEL_33;
          }
        }

        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ < v20)
        {
LABEL_108:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        v22 = __p.__r_.__value_.__l.__size_ - v20;
        if (__p.__r_.__value_.__l.__size_ - v20 >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_109:
          std::string::__throw_length_error[abi:ne200100]();
        }

LABEL_33:
        if (v22 >= 0x17)
        {
          if ((v22 | 7) == 0x17)
          {
            v24 = 25;
          }

          else
          {
            v24 = (v22 | 7) + 1;
          }

          p_dst = operator new(v24);
          v60 = v22;
          v61 = v24 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v61) = v22;
          p_dst = &__dst;
          if (size == v20)
          {
LABEL_41:
            v25 = 0;
            *(p_dst + v22) = 0;
            v26 = *(a3 + 23);
            if (v26 >= 0)
            {
              v27 = *(a3 + 23);
            }

            else
            {
              v27 = a3[1];
            }

            v28 = HIBYTE(v61);
            v29 = SHIBYTE(v61);
            if (v61 < 0)
            {
              v28 = v60;
            }

            if (v27 == v28)
            {
              if (v26 >= 0)
              {
                v30 = a3;
              }

              else
              {
                v30 = *a3;
              }

              if (v61 >= 0)
              {
                v31 = &__dst;
              }

              else
              {
                v31 = __dst;
              }

              v25 = memcmp(v30, v31, v27) == 0;
              if (v29 < 0)
              {
                goto LABEL_54;
              }

LABEL_58:
              if (!v25)
              {
LABEL_55:
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  continue;
                }

                goto LABEL_14;
              }
            }

            else
            {
              if ((SHIBYTE(v61) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_54:
              operator delete(__dst);
              if (!v25)
              {
                goto LABEL_55;
              }
            }

            v32 = operator new(0x28uLL);
            v33 = v32;
            *v32 = 0;
            *(v32 + 1) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external((v32 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              *(v32 + 16) = __p;
            }

            v34 = *a2;
            *v33 = *a2;
            v33[1] = a2;
            v34[1] = v33;
            *a2 = v33;
            a2[2] = a2[2] + 1;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              continue;
            }

            goto LABEL_14;
          }
        }

        memmove(p_dst, p_p + v20, v22);
        goto LABEL_41;
      }
    }

    else
    {
      v17 = *(a3 + 23);
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v19 = __p.__r_.__value_.__l.__size_;
    if (v17 <= __p.__r_.__value_.__l.__size_)
    {
      goto LABEL_25;
    }

LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_102:
  if (v65)
  {
    v55 = v64;
    v56 = *(v63 + 8);
    v57 = *v64;
    *(v57 + 8) = v56;
    *v56 = v57;
    v65 = 0;
    if (v55 != &v63)
    {
      do
      {
        v58 = v55[1];
        if (*(v55 + 39) < 0)
        {
          operator delete(v55[2]);
        }

        operator delete(v55);
        v55 = v58;
      }

      while (v58 != &v63);
    }
  }
}

void sub_1E52D8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operator delete(v15);
  std::list<std::string>::~list(va);
  _Unwind_Resume(a1);
}

void sub_1E52D8420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  operator delete(v17);
  __cxa_begin_catch(a1);
  while (1)
  {
    v19 = *v16;
    if (*(v16 + 39) < 0)
    {
      operator delete(v16[2]);
    }

    operator delete(v16);
    v16 = v19;
    if (!v19)
    {
      __cxa_rethrow();
    }
  }
}

void sub_1E52D8498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  operator delete(v19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::list<std::string>::~list(&a19);
  _Unwind_Resume(a1);
}

void *BBUICEUpdateSource::createDataSource(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = *(a1 + 103);
    }

    else
    {
      v9 = *(a1 + 88);
    }

    v10 = v9 + 1;
    if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 < 0x17)
    {
      memset(&v21, 0, sizeof(v21));
      v13 = &v21;
      *(&v21.__r_.__value_.__s + 23) = v9 + 1;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      v12 = a1;
      v13 = operator new(v11);
      a1 = v12;
      v21.__r_.__value_.__l.__size_ = v9 + 1;
      v21.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
      v21.__r_.__value_.__r.__words[0] = v13;
    }

    if (v8 >= 0)
    {
      v14 = (a1 + 80);
    }

    else
    {
      v14 = *(a1 + 80);
    }

    memmove(v13, v14, v9);
LABEL_23:
    *&v13[v9] = 47;
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    v18 = std::string::append(&v21, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v23 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v7 = operator new(0x30uLL);
    *v7 = &unk_1F5F00F28;
    *(v7 + 1) = 0u;
    *(v7 + 3) = 0u;
    if (BBUFileDataSource::init(v7, __p, a3))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    operator delete(v21.__r_.__value_.__l.__data_);
    return v7;
  }

  v6 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = operator new(0x38uLL);
  *v7 = &unk_1F5F02918;
  v7[1] = v5;
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = 0;
  if (BBUZipDataSource::init(v7, a2, a3))
  {
    (*(*v7 + 8))(v7);
    v7 = 0;
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return v7;
}

void sub_1E52D8798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::saveFile(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x58u, "Assertion failure(fZipFile && Error: BBU firmware data error!)");
  }

  if (!BBUZipFile::containsFile(v4, a2))
  {
    return 35;
  }

  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v46 = v8;
  v47 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, a2, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9)
    {
      goto LABEL_10;
    }

    return 35;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!v9)
  {
    return 35;
  }

LABEL_10:
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v10;
  v44[8] = v10;
  v44[5] = v10;
  v44[6] = v10;
  v44[3] = v10;
  v44[4] = v10;
  v44[1] = v10;
  v44[2] = v10;
  v44[0] = v10;
  v42 = v10;
  v43 = v10;
  v40 = v10;
  *__p = v10;
  v38 = v10;
  v39 = v10;
  v37 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = a3[1];
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/", 1);
  v16 = *(a2 + 23);
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
    v18 = a2[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_45;
  }

  v19 = (**a1)(a1);
  if ((BYTE8(v43) & 0x10) != 0)
  {
    v23 = v43;
    if (v43 < *(&v40 + 1))
    {
      *&v43 = *(&v40 + 1);
      v23 = *(&v40 + 1);
    }

    v24 = v40;
    v20 = v23 - v40;
    if ((v23 - v40) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if ((BYTE8(v43) & 8) == 0)
    {
      v20 = 0;
      HIBYTE(v36) = 0;
      p_dst = &__dst;
      goto LABEL_41;
    }

    v24 = *(&v38 + 1);
    v20 = *(&v39 + 1) - *(&v38 + 1);
    if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_67:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v20 | 7) + 1;
    }

    p_dst = operator new(v25);
    v35 = v20;
    v36 = v25 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v36) = v20;
    p_dst = &__dst;
    if (!v20)
    {
      goto LABEL_41;
    }
  }

  memmove(p_dst, v24, v20);
LABEL_41:
  *(p_dst + v20) = 0;
  v26 = &__dst;
  if (v36 < 0)
  {
    v26 = __dst;
  }

  _BBULog(3, 0, v19, "", "Saving %s\n", v26);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

LABEL_45:
  if ((BYTE8(v43) & 0x10) != 0)
  {
    v29 = v43;
    if (v43 < *(&v40 + 1))
    {
      *&v43 = *(&v40 + 1);
      v29 = *(&v40 + 1);
    }

    v30 = v40;
    v27 = v29 - v40;
    if ((v29 - v40) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if ((BYTE8(v43) & 8) == 0)
    {
      v27 = 0;
      HIBYTE(v36) = 0;
      v28 = &__dst;
      goto LABEL_59;
    }

    v30 = *(&v38 + 1);
    v27 = *(&v39 + 1) - *(&v38 + 1);
    if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_65:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v28 = operator new(v31);
    v35 = v27;
    v36 = v31 | 0x8000000000000000;
    __dst = v28;
  }

  else
  {
    HIBYTE(v36) = v27;
    v28 = &__dst;
    if (!v27)
    {
      goto LABEL_59;
    }
  }

  memmove(v28, v30, v27);
LABEL_59:
  *(v28 + v27) = 0;
  v32 = (*(*v9 + 48))(v9, &__dst, 0);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  (*(*v9 + 8))(v9);
  *&v37 = *MEMORY[0x1E69E54E8];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v37 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v37 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v38);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v44);
  return v32;
}

void sub_1E52D8DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::saveImages(BBUICEUpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x72u, "Assertion failure(fZipFile && Error: BBU firmware data error!)");
  }

  memset(__src, 170, 24);
  capabilities::radio::personalizedFirmwarePath(__src, this);
  if (SHIBYTE(__src[2]) < 0)
  {
    if (__src[1])
    {
      v2 = __src[0];
      goto LABEL_7;
    }

LABEL_76:
    v26 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v26, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x75u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

  if (!HIBYTE(__src[2]))
  {
    goto LABEL_76;
  }

  v2 = __src;
LABEL_7:
  v27 = this;
  BBUFeedback::handleComment(*(this + 1), "Saving image to %s", v2);
  v3 = 0;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v29.st_blksize = v4;
  *v29.st_qspare = v4;
  v29.st_birthtimespec = v4;
  *&v29.st_size = v4;
  v29.st_mtimespec = v4;
  v29.st_ctimespec = v4;
  *&v29.st_uid = v4;
  v29.st_atimespec = v4;
  *&v29.st_dev = v4;
  while (1)
  {
    v5 = __src[2] >= 0 ? __src : __src[0];
    v6 = stat(v5, &v29);
    result = 0;
    if (v3 == -1 || !v6)
    {
      break;
    }

    v8 = HIBYTE(__src[2]);
    v9 = __src[1];
    if (__src[2] >= 0)
    {
      v10 = HIBYTE(__src[2]);
    }

    else
    {
      v10 = __src[1];
    }

    if (v10 <= v3 || ((v11 = __src[0], __src[2] >= 0) ? (v12 = __src) : (v12 = __src[0]), (v13 = memchr(v12 + v3, 47, v10 - v3), v14 = v13 - v12, v13) ? (v15 = v14 == -1) : (v15 = 1), v15))
    {
      v3 = 1;
      if ((v8 & 0x80) != 0)
      {
        if (v9)
        {
          memset(__dst, 170, sizeof(__dst));
          v14 = v9;
          v8 = v9;
          v11 = __src[0];
          v16 = v9;
          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }
      }

      else if (v8)
      {
        v14 = v8;
        memset(__dst, 170, sizeof(__dst));
        v11 = __src;
        v16 = v8;
        goto LABEL_38;
      }
    }

    else
    {
      v3 = 1;
      if (v14)
      {
        memset(__dst, 170, sizeof(__dst));
        if ((v8 & 0x80) != 0)
        {
          v8 = v9;
          if (v9 >= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v9;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_60:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        else
        {
          v11 = __src;
          if (v8 >= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v8;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_60;
          }
        }

LABEL_38:
        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __dst[1] = v16;
          __dst[2] = (v18 | 0x8000000000000000);
          __dst[0] = v17;
LABEL_45:
          memmove(v17, v11, v16);
          goto LABEL_46;
        }

        HIBYTE(__dst[2]) = v16;
        v17 = __dst;
        if (v8)
        {
          goto LABEL_45;
        }

LABEL_46:
        *(v17 + v16) = 0;
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v19 = __dst;
        }

        else
        {
          v19 = __dst[0];
        }

        if (stat(v19, &v29))
        {
          v20 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
          if (mkdir(v20, 0x1EDu))
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              v21 = v27;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
LABEL_63:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  v22 = (**v21)(v21);
                  v23 = __dst;
                  if (SHIBYTE(__dst[2]) < 0)
                  {
                    v23 = __dst[0];
                  }

                  _BBULog(3, 0, v22, "", "Failed to create path %s", v23);
                }
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v21 = v27;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
                goto LABEL_63;
              }
            }

            if (SHIBYTE(__dst[2]) < 0)
            {
              operator delete(__dst[0]);
            }

            result = 35;
            break;
          }
        }

        if (SHIBYTE(__dst[2]) < 0)
        {
          operator delete(__dst[0]);
        }

        v3 = v14 + 1;
      }
    }
  }

  if (SHIBYTE(__src[2]) < 0)
  {
    v24 = result;
    operator delete(__src[0]);
    return v24;
  }

  return result;
}

void sub_1E52D9238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((*(v17 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v17 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v17 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::cleanupFirmwareImage(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x9Bu, "Assertion failure(fZipFile && Error: BBU firmware data error!)");
  }

  memset(v30, 170, sizeof(v30));
  capabilities::radio::personalizedFirmwarePath(v30, a1);
  v4 = SHIBYTE(v30[2]);
  if ((SHIBYTE(v30[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v30[2]))
    {
      v5 = v30[1];
      goto LABEL_6;
    }

LABEL_44:
    v26 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v26, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xA0u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)");
  }

  v5 = v30[1];
  if (!v30[1])
  {
    goto LABEL_44;
  }

LABEL_6:
  if (SHIBYTE(v30[2]) >= 0)
  {
    v6 = SHIBYTE(v30[2]);
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v27, 0, sizeof(v27));
    v9 = &v27;
    *(&v27.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v27.__r_.__value_.__l.__size_ = v6 + 1;
    v27.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v27.__r_.__value_.__r.__words[0] = v9;
  }

  if (v4 >= 0)
  {
    v10 = v30;
  }

  else
  {
    v10 = v30[0];
  }

  memmove(v9, v10, v6);
LABEL_20:
  *&v9[v6] = 47;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v27, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = v30;
  if (SHIBYTE(v30[2]) < 0)
  {
    v17 = v30[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Removing Firmware image [%s] in path [%s]\n", v16, v17);
  v18 = HIBYTE(v29);
  if (v29 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (unlink(v19))
  {
    v20 = *(a1 + 8);
    v21 = *__error();
    v22 = __error();
    v23 = strerror(*v22);
    BBUFeedback::handleComment(v20, "Unable to remove Firmware image [%s]. Error[%d][%s]\n", v19, v21, v23);
    v18 = HIBYTE(v29);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v30[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_42:
    operator delete(v30[0]);
    return 0;
  }

  if (SHIBYTE(v30[2]) < 0)
  {
    goto LABEL_42;
  }

  return 0;
}

void sub_1E52D955C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::saveFirmwareImage(uint64_t a1, const char *a2)
{
  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xB1u, "Assertion failure(fZipFile && Error: BBU firmware data error!)");
  }

  memset(v35, 170, sizeof(v35));
  capabilities::radio::personalizedFirmwarePath(v35, a1);
  if ((SHIBYTE(v35[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v35[2]))
    {
      goto LABEL_4;
    }

LABEL_21:
    v16 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v16, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xB8u, "Assertion failure(dirPath.empty() != true && Failed finding the bbfw path.)");
  }

  if (!v35[1])
  {
    goto LABEL_21;
  }

LABEL_4:
  v4 = BBUICEUpdateSource::saveImages(a1);
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v5;
  v33[8] = v5;
  v33[5] = v5;
  v33[6] = v5;
  v33[3] = v5;
  v33[4] = v5;
  v33[1] = v5;
  v33[2] = v5;
  v33[0] = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  *__p = v5;
  v27 = v5;
  v28 = v5;
  v26 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  if (v35[2] >= 0)
  {
    v6 = v35;
  }

  else
  {
    v6 = v35[0];
  }

  if (v35[2] >= 0)
  {
    v7 = HIBYTE(v35[2]);
  }

  else
  {
    v7 = v35[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/", 1);
  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  if (v4)
  {
    goto LABEL_41;
  }

  v13 = *(a1 + 64);
  if ((BYTE8(v32) & 0x10) != 0)
  {
    v17 = v32;
    if (v32 < *(&v29 + 1))
    {
      *&v32 = *(&v29 + 1);
      v17 = *(&v29 + 1);
    }

    v18 = v29;
    v14 = v17 - v29;
    if ((v17 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(v25) = 0;
      v15 = __dst;
      goto LABEL_33;
    }

    v18 = *(&v27 + 1);
    v14 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_47:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v14 | 7) + 1;
    }

    v15 = operator new(v19);
    __dst[1] = v14;
    v25 = v19 | 0x8000000000000000;
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(v25) = v14;
    v15 = __dst;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  memmove(v15, v18, v14);
LABEL_33:
  *(v15 + v14) = 0;
  v4 = BBUZipFile::saveDataToFile(v13, __dst);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a2[23] >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v21 = v35;
  if (v35[2] < 0)
  {
    v21 = v35[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "Saving Firmware image [%s] in path [%s]\n", v20, v21);
LABEL_41:
  *&v26 = *MEMORY[0x1E69E54E8];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v26 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v33);
  if (SHIBYTE(v35[2]) < 0)
  {
    operator delete(v35[0]);
  }

  return v4;
}

void sub_1E52D99A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  _Unwind_Resume(a1);
}

void BBUICEUpdateSource::loadProvisioningData(BBUICEUpdateSource *this)
{
  v2 = operator new(0x30uLL);
  strcpy(v2, "provisioning/info.plist");
  v23 = v2;
  v24 = xmmword_1E5392690;
  strcpy(v22, "provisioning/puk.pem");
  HIBYTE(v22[2]) = 20;
  v3 = operator new(0x30uLL);
  strcpy(v3, "provisioning/manifest.bin");
  __p = v3;
  v21 = xmmword_1E53926A0;
  v4 = *(this + 8);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xD2u, "Assertion failure(fZipFile && BBU firmware data error.)");
    goto LABEL_60;
  }

  v19 = 13;
  strcpy(v18, "provisioning/");
  if (BBUZipFile::containsFile(v4, v18))
  {
    *(this + 120) = 1;
  }

  if (BBUZipFile::containsFile(*(this + 8), &v23))
  {
    if (*(this + 16))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xDDu, "Assertion failure(fProvisioningDictSource == __null)");
      goto LABEL_60;
    }

    v6 = *(this + 8);
    v5 = *(this + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = operator new(0x38uLL);
    *v7 = &unk_1F5F02918;
    v7[1] = v6;
    v7[4] = 0;
    v7[5] = 0;
    v7[3] = 0;
    if (BBUZipDataSource::init(v7, &v23, 0))
    {
      (*(*v7 + 8))(v7);
      v7 = 0;
    }

    *(this + 16) = v7;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v8 = (**this)(this);
      _BBULog(3, 0, v8, "", "Loaded provisioning dictionary\n");
    }
  }

LABEL_17:
  if (!BBUZipFile::containsFile(*(this + 8), v22))
  {
    goto LABEL_30;
  }

  if (*(this + 17))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xE7u, "Assertion failure(fProvisioningPublicKeySource == __null)");
    goto LABEL_60;
  }

  v10 = *(this + 8);
  v9 = *(this + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = operator new(0x38uLL);
  *v11 = &unk_1F5F02918;
  v11[1] = v10;
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = 0;
  if (BBUZipDataSource::init(v11, v22, 0))
  {
    (*(*v11 + 8))(v11);
    v11 = 0;
  }

  *(this + 17) = v11;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**this)(this);
    _BBULog(3, 0, v12, "", "Loaded public key source\n");
  }

LABEL_30:
  if (!BBUZipFile::containsFile(*(this + 8), &__p))
  {
    goto LABEL_43;
  }

  if (*(this + 18))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0xF0u, "Assertion failure(fProvisioningManifestSource == __null)");
LABEL_60:
  }

  v14 = *(this + 8);
  v13 = *(this + 9);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = operator new(0x38uLL);
  *v15 = &unk_1F5F02918;
  v15[1] = v14;
  v15[4] = 0;
  v15[5] = 0;
  v15[3] = 0;
  if (BBUZipDataSource::init(v15, &__p, 0))
  {
    (*(*v15 + 8))(v15);
    v15 = 0;
  }

  *(this + 18) = v15;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_43;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v16 = (**this)(this);
    _BBULog(3, 0, v16, "", "Loaded provisioning manifest\n", v14, v13);
  }

LABEL_43:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        return;
      }

LABEL_49:
      operator delete(v23);
      return;
    }
  }

  else if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v22[0]);
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_49;
  }
}

void sub_1E52DA114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v24 - 57) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 33) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v24 - 57) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v24 - 80));
  if ((*(v24 - 33) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v24 - 56));
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::copyProvisioningData(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2 != 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 70, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x105u, "Assertion failure(false && Unrecognized provisioning support type.)");
  }

  v5 = *(a1 + 136);
  if (*(a1 + 136) == 0)
  {
    return 0;
  }

  v6 = operator new(0x18uLL);
  v7 = v6;
  v8 = *(a1 + 144);
  *v6 = &unk_1F5F037C0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v9 = (v6 + 16);
  if (v5)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v6, v6 + 1, v5);
  }

  if (v8)
  {
    BBUMatureProvisioningData::loadDataSourceToData(v7, v9, v8);
  }

  *a3 = v7;
  return 1;
}

void sub_1E52DA2F4(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::getFusingSource(BBUICEUpdateSource *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x10Eu, "Assertion failure(fZipFile && BBU firmware data error.)");
    goto LABEL_22;
  }

  v3 = *(this + 26);
  if ((v3 & 4) != 0)
  {
    return *(this + 14);
  }

  *(this + 26) = v3 | 4;
  v11 = 19;
  strcpy(__p, "fusingprogram.plist");
  if (!BBUZipFile::containsFile(v2, __p))
  {
    return *(this + 14);
  }

  if (*(this + 14))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x116u, "Assertion failure(fFusingSource == __null)");
LABEL_22:
  }

  v5 = *(this + 8);
  v4 = *(this + 9);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 19;
  strcpy(__p, "fusingprogram.plist");
  v6 = operator new(0x38uLL);
  *v6 = &unk_1F5F02918;
  v6[1] = v5;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = 0;
  if (BBUZipDataSource::init(v6, __p, 0))
  {
    (*(*v6 + 8))(v6);
    v6 = 0;
  }

  *(this + 14) = v6;
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 14);
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 14);
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = (**this)(this);
    _BBULog(3, 0, v7, "", "Loaded Fusing program\n");
  }

  return *(this + 14);
}

void sub_1E52DA5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUICEUpdateSource::getManifestSource(BBUICEUpdateSource *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    return *(this + 19);
  }

  *(this + 26) = v2 | 1;
  v3 = *(this + 8);
  if (!v3)
  {
    v5 = *(this + 103);
    if (v5 < 0)
    {
      if (!*(this + 11))
      {
        return *(this + 19);
      }
    }

    else if (!*(this + 103))
    {
      return *(this + 19);
    }

    if (v5 >= 0)
    {
      v10 = *(this + 103);
    }

    else
    {
      v10 = *(this + 11);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_88;
    }

    v12 = (this + 80);
    if (v11 < 0x17)
    {
      memset(&v38, 0, sizeof(v38));
      v14 = &v38;
      *(&v38.__r_.__value_.__s + 23) = v10 + 1;
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v11 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v11 | 7) + 1;
      }

      v14 = operator new(v13);
      v38.__r_.__value_.__l.__size_ = v10 + 1;
      v38.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
      v38.__r_.__value_.__r.__words[0] = v14;
    }

    if (v5 >= 0)
    {
      v15 = this + 80;
    }

    else
    {
      v15 = *v12;
    }

    memmove(v14, v15, v10);
LABEL_38:
    *&v14[v10] = 47;
    (*(*this + 56))(&v35, this);
    if ((v37 & 0x80u) == 0)
    {
      v16 = &v35;
    }

    else
    {
      v16 = v35;
    }

    if ((v37 & 0x80u) == 0)
    {
      v17 = v37;
    }

    else
    {
      v17 = v36;
    }

    v18 = std::string::append(&v38, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v42 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = ctu::fs::file_exists();
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_46:
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_51;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    operator delete(v35);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if (!v20)
      {
        return *(this + 19);
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v38.__r_.__value_.__l.__data_);
    if (!v20)
    {
      return *(this + 19);
    }

LABEL_52:
    if (*(this + 19))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x132u, "Assertion failure(fRootManifestSource == __null)");
LABEL_91:
    }

    v21 = *(this + 103);
    if (v21 >= 0)
    {
      v22 = *(this + 103);
    }

    else
    {
      v22 = *(this + 11);
    }

    v23 = v22 + 1;
    if (v22 + 1 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v23 < 0x17)
      {
        memset(&v38, 0, sizeof(v38));
        v25 = &v38;
        *(&v38.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v38.__r_.__value_.__l.__size_ = v22 + 1;
        v38.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v38.__r_.__value_.__r.__words[0] = v25;
      }

      if (v21 >= 0)
      {
        v26 = this + 80;
      }

      else
      {
        v26 = *v12;
      }

      memmove(v25, v26, v22);
LABEL_67:
      *&v25[v22] = 47;
      (*(*this + 56))(&v35, this);
      if ((v37 & 0x80u) == 0)
      {
        v27 = &v35;
      }

      else
      {
        v27 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v28 = v37;
      }

      else
      {
        v28 = v36;
      }

      v29 = std::string::append(&v38, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v42 = v29->__r_.__value_.__r.__words[2];
      *__p = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = operator new(0x30uLL);
      *v31 = &unk_1F5F00F28;
      *(v31 + 8) = 0u;
      *(v31 + 24) = 0u;
      if (BBUFileDataSource::init(v31, __p, 0))
      {
        (*(*v31 + 8))(v31);
        v31 = 0;
      }

      *(this + 19) = v31;
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if ((v37 & 0x80000000) == 0)
        {
LABEL_77:
          if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

      else if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v35);
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_78:
        if (gBBULogMaskGet(void)::once != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_79;
      }

LABEL_85:
      operator delete(v38.__r_.__value_.__l.__data_);
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_86;
      }

LABEL_79:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        return *(this + 19);
      }

      goto LABEL_80;
    }

LABEL_88:
    std::string::__throw_length_error[abi:ne200100]();
  }

  (*(*this + 56))(__p, this);
  v4 = BBUZipFile::containsFile(v3, __p);
  if (SHIBYTE(v42) < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    if (!v6)
    {
      return *(this + 19);
    }
  }

  else if (!v4)
  {
    return *(this + 19);
  }

  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x129u, "Assertion failure(fRootManifestSource == __null)");
    goto LABEL_91;
  }

  v8 = *(this + 8);
  v7 = *(this + 9);
  v39 = v8;
  v40 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*this + 56))(__p, this);
  v9 = operator new(0x38uLL);
  *v9 = &unk_1F5F02918;
  v9[1] = v8;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  if (BBUZipDataSource::init(v9, __p, 0))
  {
    (*(*v9 + 8))(v9);
    v9 = 0;
  }

  *(this + 19) = v9;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return *(this + 19);
    }

    goto LABEL_80;
  }

LABEL_86:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    return *(this + 19);
  }

LABEL_80:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v32 = (**this)(this);
    _BBULog(3, 0, v32, "", "Loaded Manifest\n");
  }

  return *(this + 19);
}

void sub_1E52DAC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a15);
  goto LABEL_6;
}

uint64_t BBUICEUpdateSource::hasManifestSource(BBUICEUpdateSource *this)
{
  if (*(this + 104))
  {
    return *(this + 19) != 0;
  }

  (*(*this + 56))(__p);
  result = BBUICEUpdateSource::containsFile(this, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_1E52DADF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEUpdateSource::generateHash(BBUICEUpdateSource *this, unsigned __int8 *a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/ICE/BBUICEUpdateSource.cpp", 0x154u, "Assertion failure(fZipFile && BBU firmware data error.)");
  }

  v4 = *(v2 + 144);
  v5 = operator new(0x18uLL);
  v5[4] = 0;
  *v5 = &unk_1F5F04B00;
  *(v5 + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  BBUDataSource::generateHash(v5, a2, 0);
  (*(*v5 + 8))(v5);
  return 1;
}

uint64_t BBUEUR13Communication::freeTransportSync(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    return 1;
  }

  if (v2 != a2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = a1;
      v8 = a2;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      a1 = v9;
      a2 = v8;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_5:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUEUR13Communication", "", "call with %p different from fTransportCreated(%p)\n", a2, *(a1 + 80));
        }
      }
    }

    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = TelephonyUtilTransportFree();
  v7 = *(v4 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN21BBUEUR13Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  v11 = v6;
  block[4] = v4;
  block[5] = v5;
  dispatch_sync(v7, block);
  return v6;
}

uint64_t ___ZN21BBUEUR13Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 80) = 0;
    return result;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v1 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(2, 0, "BBUEUR13Communication", "", "fail to free transport: %p\n", *(result + 40));
  }

  return result;
}

uint64_t BBUEUR13Communication::createTransport(uint64_t a1, const void *a2, int a3, double a4, uint64_t a5, int a6)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 3;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v11;
  v31 = v11;
  v28 = v11;
  v29 = v11;
  v27 = v11;
  TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 80))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x4Du, "Assertion failure(nullptr == fTransportCreated && Telephony transport error.)");
    goto LABEL_32;
  }

  v12 = *(a1 + 72);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke;
  v26[3] = &__block_descriptor_tmp_11;
  v26[4] = a2;
  *(&v27 + 1) = v12;
  *&v28 = v26;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "Creating transport:%p stage:%d interface:%d %f ms\n", a2, a3, a6, a4);
  }

LABEL_6:
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      goto LABEL_14;
    }

    if (a3 != 2)
    {
      goto LABEL_33;
    }

    v13 = 0;
    LODWORD(v27) = 0;
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    v13 = 1;
    LODWORD(v27) = 1;
LABEL_17:
    DWORD2(v28) = 5000;
    LODWORD(v32) = 25;
    *(a1 + 88) = v13;
    if (gBBULogMaskGet(void)::once != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (a3 == 8)
  {
    if (a6 == 1)
    {
      v17 = 3;
LABEL_26:
      LODWORD(v27) = v17;
      DWORD2(v28) = 5000;
      *(a1 + 88) = v17;
      if (gBBULogMaskGet(void)::once != -1)
      {
        goto LABEL_27;
      }

LABEL_18:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (!a6)
    {
      v17 = 2;
      goto LABEL_26;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_40:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUEUR13Communication", "", "Unsupported intf: %d\n", a6);
        }
      }
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x72u, "Assertion failure(false)");
LABEL_32:
  }

  if (a3 != 16)
  {
LABEL_33:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_35:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUEUR13Communication", "", "Unsupported BBU stage: %d\n", a3);
        }
      }
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x78u, "Assertion failure(false && Unsupported BBU stage.)");
    goto LABEL_32;
  }

LABEL_14:
  LODWORD(v27) = 2;
  DWORD2(v28) = 2000;
  *(a1 + 88) = 2;
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_18;
  }

LABEL_27:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "Creating with timeout set to %u ms\n", DWORD2(v28));
  }

LABEL_21:
  v14 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2;
  block[3] = &__block_descriptor_tmp_20_0;
  block[6] = a1;
  block[7] = a2;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v20 = v27;
  v21 = v28;
  block[4] = v33;
  block[5] = &v35;
  dispatch_sync(v14, block);
  v15 = *(v36 + 6);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
  return v15;
}

void sub_1E52DB6B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 160), 8);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "transport %p, status: %#x\n", v3, a2);
  }

LABEL_5:
  if (a2 != 1)
  {
    return;
  }

  Controller = TelephonyBasebandCreateController();
  v5 = TelephonyBasebandResetModem();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v5;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v5 = v7;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_8:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v6 = "failure";
        if (v5)
        {
          v6 = "success";
        }

        _BBULog(2, 0, "BBUEUR13Communication", "", "Resetting modem: %s\n", v6);
      }
    }
  }

  if (Controller)
  {
    CFRelease(Controller);
  }
}

void sub_1E52DB878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN21BBUEUR13Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v2 + 80) = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = TelephonyBasebandPCITransportCreate();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v3 = "success";
    }

    else
    {
      v3 = "failure";
    }

    _BBULog(2, 0, "BBUEUR13Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v3);
  }

LABEL_8:
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (!*(v2 + 80))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/Eureka/BBUEUR13Communication.cpp", 0x8Au, "Assertion failure(nullptr != fTransportCreated && Telephony Util transport error!)");
    }

    v4 = 0;
  }

  else
  {
    BBUEUR13Communication::freeTransportSync(v2, *(a1 + 56));
    v4 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t BBUEUR13Communication::getBasebandState(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a1 + 88);
  if (v3 > 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = dword_1E53927C0[v3];
  }

  *a3 = v4;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v6;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "returning state: %d\n", *a3);
  }

  return 0;
}

uint64_t BBUEUR13Communication::freeTransport(uint64_t a1, const void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUEUR13Communication", "", "request to free transport: %p\n", a2);
  }

LABEL_5:
  v4 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUEUR13Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_23_1;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN21BBUEUR13Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(uint64_t a1)
{
  result = BBUEUR13Communication::freeTransportSync(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void BBUEUR13Communication::~BBUEUR13Communication(BBUEUR13Communication *this)
{
  *this = &unk_1F5F028B0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F02A18;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  *this = &unk_1F5F028B0;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F02A18;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void *BBUEUR13Communication::getIPCLogBuffer@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  BBULogIOABP::BBULogIOABP(v2);
  *a1 = v2 + *(*v2 - 88);
  result = operator new(0x20uLL);
  *result = &unk_1F5F02860;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

void std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBULogIOABP *,std::shared_ptr<BBULogBuffer>::__shared_ptr_default_delete<BBULogBuffer,BBULogIOABP>,std::allocator<BBULogIOABP>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5392764)
  {
    if (((v2 & 0x80000001E5392764 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5392764))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5392764 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void BBUZipFile::BBUZipFile(BBUZipFile *this, const __CFData *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  pthread_mutex_init(this, 0);
  *(this + 12) = 0;
  v4 = (this + 96);
  *(this + 11) = this + 96;
  v5 = this + 88;
  *(this + 8) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53[2] = v6;
  v53[3] = v6;
  v53[0] = v6;
  v53[1] = v6;
  fill_memory_filefunc(v53);
  v70 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v7;
  v69 = v7;
  *(this + 18) = a2;
  CFRetain(a2);
  BytePtr = CFDataGetBytePtr(*(this + 18));
  Length = CFDataGetLength(*(this + 18));
  snprintf(__str, 0x28uLL, "%lx+%lx", BytePtr, Length);
  v10 = unzOpen2(__str, v53);
  *(this + 8) = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x31u, "Assertion failure(ret == (0))");
LABEL_97:
  }

  *(this + 72) = *(v10 + 72);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUZipFile", &str_4_4, "%s - Num entries %lu\n", __str, *(this + 9));
  }

LABEL_6:
  v11 = *(this + 8);
  if (!v11 || (v12 = v11[8].i64[1], v11[6].i64[0] = 0, v11[6].i64[1] = v12, CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v11, v11 + 9, &v11[17].i64[1], 0, 0, 0, 0, 0, 0), v11[7].i64[0] = CurrentFileInfoInternal == 0, CurrentFileInfoInternal))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x4Bu, "Assertion failure(ret == (0))");
    goto LABEL_97;
  }

  do
  {
    while (1)
    {
      v64 = 0xAAAAAAAAAAAAAAAALL;
      v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v62 = v15;
      v63 = v15;
      v60 = v15;
      v61 = v15;
      v58 = v15;
      v59 = v15;
      v56 = v15;
      v57 = v15;
      v55 = v15;
      memset(v54, 0, sizeof(v54));
      *__s = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0;
      *v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0;
      v16 = *(this + 8);
      if (!v16 || !v16[7].i64[0])
      {
        v51 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v51, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x57u, "Assertion failure(ret == (0))");
        goto LABEL_94;
      }

      v55 = vextq_s8(v16[6], v16[6], 8uLL);
      if (unzlocal_GetCurrentFileInfoInternal(v16, &v56, 0, __s, 0x63uLL, 0, 0, v71, 0x63uLL))
      {
        v51 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v51, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x5Eu, "Assertion failure(ret == (0))");
LABEL_94:
      }

      std::string::__assign_external(v54, __s);
      std::string::__assign_external(&v54[1], v71);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_19;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUZipFile", &str_4_4, "Loaded file %s, Comment %s\n", __s, v71);
      }

LABEL_19:
      v17 = v5;
      v18 = *v4;
      v19 = (this + 96);
      v20 = this + 96;
      if (*v4)
      {
        if ((v54[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = v54;
        }

        else
        {
          v21 = v54[0].__r_.__value_.__r.__words[0];
        }

        if ((v54[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v54[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v54[0].__r_.__value_.__l.__size_;
        }

        while (1)
        {
          v20 = v18;
          v25 = *(v18 + 4);
          v23 = v18 + 32;
          v24 = v25;
          v26 = v23[23];
          if (v26 >= 0)
          {
            v27 = v23;
          }

          else
          {
            v27 = v24;
          }

          if (v26 >= 0)
          {
            v28 = v23[23];
          }

          else
          {
            v28 = *(v23 + 1);
          }

          if (v28 >= size)
          {
            v29 = size;
          }

          else
          {
            v29 = v28;
          }

          v30 = memcmp(v21, v27, v29);
          if (v30)
          {
            if (v30 < 0)
            {
              goto LABEL_26;
            }

LABEL_40:
            v31 = memcmp(v27, v21, v29);
            if (v31)
            {
              if ((v31 & 0x80000000) == 0)
              {
                goto LABEL_53;
              }
            }

            else if (v28 >= size)
            {
LABEL_53:
              v33 = v20;
              v5 = v17;
              v35 = (v20 + 56);
              if (v20 + 56 != v54)
              {
                goto LABEL_54;
              }

              goto LABEL_76;
            }

            v18 = *(v20 + 1);
            if (!v18)
            {
              v19 = v20 + 8;
              break;
            }
          }

          else
          {
            if (size >= v28)
            {
              goto LABEL_40;
            }

LABEL_26:
            v18 = *v20;
            v19 = v20;
            if (!*v20)
            {
              break;
            }
          }
        }
      }

      v5 = v17;
      v32 = operator new(0x100uLL);
      v33 = v32;
      v65 = v32;
      v66 = v17;
      v67 = 0;
      if (SHIBYTE(v54[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v32 + 32), v54[0].__r_.__value_.__l.__data_, v54[0].__r_.__value_.__l.__size_);
      }

      else
      {
        *(v32 + 32) = v54[0];
      }

      *(v33 + 31) = 0;
      *(v33 + 232) = 0u;
      *(v33 + 216) = 0u;
      *(v33 + 200) = 0u;
      *(v33 + 184) = 0u;
      *(v33 + 168) = 0u;
      *(v33 + 152) = 0u;
      *(v33 + 136) = 0u;
      *(v33 + 120) = 0u;
      *(v33 + 104) = 0u;
      *(v33 + 88) = 0u;
      *(v33 + 72) = 0u;
      *(v33 + 56) = 0u;
      *v33 = 0;
      *(v33 + 1) = 0;
      *(v33 + 2) = v20;
      *v19 = v33;
      v34 = **v17;
      if (v34)
      {
        *v17 = v34;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 12), v33);
      ++*(this + 13);
      v35 = (v33 + 56);
      if (v33 + 56 != v54)
      {
LABEL_54:
        if (v33[79] < 0)
        {
          if ((v54[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = v54;
          }

          else
          {
            v36 = v54[0].__r_.__value_.__r.__words[0];
          }

          if ((v54[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v54[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v54[0].__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v35, v36, v37);
        }

        else if ((*(&v54[0].__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v35, v54[0].__r_.__value_.__l.__data_, v54[0].__r_.__value_.__l.__size_);
        }

        else
        {
          *v35 = v54[0];
        }

        if (v33[103] < 0)
        {
          if ((v54[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            data = &v54[1];
          }

          else
          {
            data = v54[1].__r_.__value_.__l.__data_;
          }

          if ((v54[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v54[1].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v54[1].__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(v33 + 10, data, v39);
        }

        else if ((*(&v54[1].__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v33 + 10, v54[1].__r_.__value_.__l.__data_, v54[1].__r_.__value_.__l.__size_);
        }

        else
        {
          *(v33 + 80) = v54[1];
        }
      }

LABEL_76:
      v40 = v59;
      *(v33 + 184) = v60;
      *(v33 + 168) = v40;
      v41 = v57;
      *(v33 + 152) = v58;
      *(v33 + 136) = v41;
      v42 = v64;
      v43 = v62;
      *(v33 + 232) = v63;
      v44 = v61;
      *(v33 + 216) = v43;
      *(v33 + 200) = v44;
      v45 = v56;
      *(v33 + 104) = v55;
      *(v33 + 31) = v42;
      *(v33 + 120) = v45;
      v46 = *(this + 8);
      if (!v46)
      {
LABEL_92:
        v51 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v51, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUZipFile.cpp", 0x6Fu, "Assertion failure(ret == (0))");
        goto LABEL_94;
      }

      if (v46[7].i64[0])
      {
        v47 = v46[4].i64[1];
        v48 = v46[6].i64[0] + 1;
        if (v47 == 0xFFFF || v48 != v47)
        {
          v49 = v46[13].i64[0] + v46[13].i64[1] + v46[14].i64[0] + v46[6].i64[1] + 46;
          v46[6].i64[0] = v48;
          v46[6].i64[1] = v49;
          v50 = unzlocal_GetCurrentFileInfoInternal(v46, v46 + 9, &v46[17].i64[1], 0, 0, 0, 0, 0, 0);
          v46[7].i64[0] = v50 == 0;
          if (v50 != -100)
          {
            break;
          }
        }
      }

      v14 = 0;
      if (SHIBYTE(v54[1].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_83;
      }

LABEL_10:
      if (SHIBYTE(v54[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_84;
      }

LABEL_11:
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    if (v50)
    {
      goto LABEL_92;
    }

    v14 = 1;
    if ((SHIBYTE(v54[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_83:
    operator delete(v54[1].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v54[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_84:
    operator delete(v54[0].__r_.__value_.__l.__data_);
  }

  while ((v14 & 1) != 0);
}

void sub_1E52DC7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  __cxa_free_exception(v47);
  if (*(v46 + 135) < 0)
  {
    operator delete(*a11);
  }

  std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(v48, *(v46 + 96));
  pthread_mutex_destroy(v46);
  _Unwind_Resume(a1);
}

void sub_1E52DC844(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void BBUZipFile::~BBUZipFile(BBUZipFile *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(v2 + 288);
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
      }

      *v3 = 0;
      if (*(v3 + 128))
      {
        inflateEnd((v3 + 8));
      }

      free(v3);
      *(v2 + 288) = 0;
    }

    (*(v2 + 40))(*(v2 + 56), *(v2 + 64));
    free(v2);
    *(this + 8) = 0;
  }

  v4 = *(this + 18);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::destroy(this + 88, *(this + 12));
  pthread_mutex_destroy(this);
}