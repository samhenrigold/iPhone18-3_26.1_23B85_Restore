void sub_1A695C86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a13);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a18);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinIrCreateInstructions_v11(uint64_t **a1@<X0>, unsigned int a2@<W1>, ZinIrOpLayer ***a3@<X2>, ZinIrHalH13g *a4@<X3>, uint64_t x8_0@<X8>)
{
  LOBYTE(__p) = 0;
  v8 = 0;
  ZinIrCodegenHandleTdsMakeList<11u>(a1, &__p, a2, a3, a4, x8_0);
}

void sub_1A695CC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<11u>::GetSizeInWords(uint64_t a1)
{
  if ((*(*a1 + 24))(a1, 5) == 1)
  {
    v2 = 9;
  }

  else
  {
    v2 = 8;
  }

  AddressDefaultValueMapping = GetAddressDefaultValueMapping(*(a1 + 1008));
  v4 = *(a1 + 1004);
  RelocInfos = ZinAneTdHw_v11::GetRelocInfos((a1 + 8));
  GetRegistersProgrammedAsRelocationCommands(RelocInfos, v26);
  ZinCodegen::GetDontCareRegisters<11u>(a1, v24);
  for (i = v25; i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v26, i + 4, i + 4);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v7 = ZinRegisterPacking::ProcessRegisters(a1 + 44, 0x46uLL, 6400, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v20 = 60;
  v22 = 0;
  v23 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, &v20, &__p, 1uLL);
  v8 = ZinRegisterPacking::ProcessRegisters(a1 + 492, 0x13uLL, 0, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v9 = ZinRegisterPacking::ProcessRegisters(a1 + 576, 0x35uLL, 4352, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v10 = ZinRegisterPacking::ProcessRegisters(a1 + 796, 0x19uLL, 1280, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v11 = ZinRegisterPacking::ProcessRegisters(a1 + 932, 5uLL, 3328, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v12 = ZinRegisterPacking::ProcessRegisters(a1 + 960, 9uLL, 5376, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v13 = ZinRegisterPacking::ProcessRegisters(a1 + 904, 5uLL, 2304, 0, 0, v4, AddressDefaultValueMapping, v26, 0, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v14 = *(a1 + 1056);
  v15 = ZinAneTdHw_v11::GetRelocInfos((a1 + 8));
  v16 = v7 + v2 + v8 + v9 + v10 + v11 + v12 + v13 + (v14 >> 2);
  v17 = *v15;
  v18 = v15[1];
  if (*v15 != v18)
  {
    do
    {
      ZinAneRelocationCommand_v11::ZinAneRelocationCommand_v11(&__p, *(v17 + 32));
      v16 = v16 + (*(__p + 5))(&__p) + 1;
      v17 += 40;
    }

    while (v17 != v18);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v24);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v26);
  return v16;
}

void sub_1A695CFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a15);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::allocator<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>>::vector[abi:ne200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::allocator<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>>::__vallocate[abi:ne200100](a1, a3);
  }

  return a1;
}

void sub_1A695D090(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block const,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>::pair[abi:ne200100]<true,0>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  *(a1 + 8) = 0;
  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a3 + 8);
  if (v4 != *a3)
  {
    std::vector<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::allocator<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>>::__vallocate[abi:ne200100]((a1 + 8), (v4 - *a3) >> 2);
  }

  *(a1 + 32) = *(a3 + 24);
  return a1;
}

void sub_1A695D134(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::allocator<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        v2[6] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::__map_value_compare<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::less<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>,true>,std::allocator<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::__map_value_compare<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::less<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>,true>,std::allocator<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::__map_value_compare<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>,std::less<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block>,true>,std::allocator<std::__value_type<HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::Block,HasInternalTMBufferOverflow(unsigned int const*,unsigned int const*)::BlockInfo>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void ZinIrCodegenHandleTdsMakeList<11u>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ZinIrOpLayer ***a4@<X3>, ZinIrHalH13g *a5@<X4>, uint64_t a7@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v12 = **a1;
  v13 = (*a1)[1];
  v32 = *a1;
  v14 = a1[5];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v13 + 222))
  {
    NumAnes = 1;
  }

  else
  {
    NumAnes = ZinIrDeviceMesh::GetNumAnes((v12 + 2248));
  }

  v16 = *(v13 + 168);
  v17 = *(v13 + 176);
  if (v16 == v17 || NumAnes == (v17 - v16) >> 3)
  {
    v18 = *(v13 + 192);
    v19 = *(v13 + 200);
    if (v18 == v19 || NumAnes == (v19 - v18) >> 3)
    {
      v50 = 0u;
      v51 = 0u;
      v52 = 1065353216;
      memset(v48, 0, sizeof(v48));
      v49 = 1065353216;
      v30 = a1[6];
      v21 = *a4;
      v20 = a4[1];
      v22 = (v20 - *a4) >> 3;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>,std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>>(&v45, v20, v20, v21, v21, v22);
      v23 = a1[11] & *(a2 + 24);
      v24 = a1[5];
      v42 = a1[4];
      v43 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      instruction::creation::GetFirstAndLastInNetworkLayers(a4, &v42, v23 & 1, v44);
      v28 = a5;
      v29 = v14;
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      v36[0] = 0;
      v37[0] = v37;
      v37[1] = v37;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
      v25 = v45;
      v26 = v46;
      if (v45 != v46)
      {
        do
        {
          v53 = *v25;
          if (ZinIrOpLayer::IsANELayer(v53) || ((*(*v53 + 136))(v53) & 1) != 0)
          {
            if ((v23 & 1) == 0)
            {
              goto LABEL_36;
            }

            if ((a1[11] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            *buf = 0;
            v55 = 0;
            v56 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(buf, a1[8], a1[9], (a1[9] - a1[8]) >> 1);
            if ((*(a2 + 24) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __p = 0;
            v34 = 0;
            v35 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
            v27 = ZinEngineLayer::RunsOnDeviceId(v53, (**a1 + 2248), buf, &__p);
            if (__p)
            {
              v34 = __p;
              operator delete(__p);
            }

            if (*buf)
            {
              v55 = *buf;
              operator delete(*buf);
            }

            if (v27)
            {
LABEL_36:
              if (!(*(*v53 + 136))(v53))
              {
                operator new();
              }

              ZinAssertImpl("No tasklet for given architecture", a7, a4, v28, v29, v30, a3, v32);
            }
          }

          ++v25;
        }

        while (v25 != v26);
      }

      ZinInstructionList::CompletedSetup(v36);
      ZinInstructionList::GetTds(v36);
    }

    ZinAssertImpl("Force Hazard Stalls End size doesn't match ANE size");
  }

  ZinAssertImpl("Force Hazard Stalls Begin size doesn't match ANE size");
}

void sub_1A695E3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  v59 = *(v57 - 168);
  *(v57 - 168) = 0;
  if (v59)
  {
    (*(*v59 + 16))(v59);
  }

  ranges::reverse_view<ranges::any_view<ZinAneTdInstruction *,(ranges::category)23,void>>::~reverse_view(&a19);
  if (a18)
  {
    (*(*a18 + 16))(a18);
  }

  ZinInstructionList::~ZinInstructionList(&a22);
  instruction::creation::FirstAndLastInNetworkLayers::~FirstAndLastInNetworkLayers(&a34);
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v57 - 224);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A695E8F8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 16))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void LegalizeNetworks<11u>(const ZinIrHalParameters ***a1, ZinInstructionList *a2, ZinIrHalH13g *this, uint64_t a4, void *a5)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);
  ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
  v7 = **a1;
  ZinAlignPower2(8, *(v7 + 536));
  if (*((*a1)[1] + 652) == 1)
  {
    ZinAlignPower2(40, *(v7 + 536));
  }

  ZinInstructionList::GetAllInstructions();
}

void sub_1A695F258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  ZinIrHalParameters::~ZinIrHalParameters(&a35);
  if (a15)
  {
    (*(*a15 + 16))(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1A695F680(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 16))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<11u>::GetField(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    case 10:
    case 11:
    case 13:
    case 23:
    case 24:
      return (*(a1 + 800) >> 25) & 3;
    case 4:
      return *(a1 + 36) & 1;
    case 5:
      return (*(a1 + 36) >> 1) & 1;
    case 8:
      return *(a1 + 40);
    case 9:
      return *(a1 + 38) & 7;
    case 12:
      return (*(a1 + 800) >> 2) & 3;
    case 14:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
      return *(a1 + 16) & 0xFFFFFF;
    case 15:
      v4 = *(a1 + 800);
      return (v4 >> 4) & 1;
    case 16:
      v5 = *(a1 + 800);
      return (v5 >> 5) & 1;
    case 17:
      v4 = *(a1 + 844);
      return (v4 >> 4) & 1;
    case 18:
      v5 = *(a1 + 844);
      return (v5 >> 5) & 1;
    case 19:
      v6 = *(a1 + 800);
      return (v6 >> 20) & 1;
    case 20:
      v3 = *(a1 + 800);
      return (v3 >> 22) & 1;
    case 21:
      v6 = *(a1 + 844);
      return (v6 >> 20) & 1;
    case 22:
      v3 = *(a1 + 844);
      return (v3 >> 22) & 1;
    case 25:
      return *(a1 + 10) & 0x7FF;
    case 26:
      return *(a1 + 890);
    case 27:
      return *(a1 + 894);
    case 28:
      v7 = *(a1 + 888);
      goto LABEL_22;
    case 29:
      v7 = *(a1 + 892);
LABEL_22:
      result = v7 & 3;
      break;
    case 49:
      result = *(a1 + 32);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetField(uint64_t result, int a2, int a3)
{
  switch(a2)
  {
    case 4:
      goto LABEL_24;
    case 5:
      v3 = *(result + 36) & 0xFFFFFFFD | (2 * (a3 & 1));
      goto LABEL_25;
    case 8:
      *(result + 40) = a3;
      return result;
    case 9:
      v3 = *(result + 36) & 0xFFF8FFFF | ((a3 & 7) << 16);
      goto LABEL_25;
    case 12:
      v5 = *(result + 800) & 0xFFFFFFF3 | (4 * (a3 & 3));
      goto LABEL_17;
    case 13:
      v5 = *(result + 800) & 0xF9FFFFFF | ((a3 & 3) << 25);
      goto LABEL_17;
    case 15:
      v5 = *(result + 800) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_17;
    case 16:
      v5 = *(result + 800) & 0xFFFFFFDF | (32 * (a3 & 1));
      goto LABEL_17;
    case 17:
      v4 = *(result + 844) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_20;
    case 18:
      v4 = *(result + 844) & 0xFFFFFFDF | (32 * (a3 & 1));
      goto LABEL_20;
    case 19:
      v5 = *(result + 800) & 0xFFEFFFFF | ((a3 & 1) << 20);
      goto LABEL_17;
    case 20:
      v5 = *(result + 800) & 0xFFBFFFFF | ((a3 & 1) << 22);
LABEL_17:
      *(result + 800) = v5;
      return result;
    case 21:
      v4 = *(result + 844) & 0xFFEFFFFF | ((a3 & 1) << 20);
      goto LABEL_20;
    case 22:
      v4 = *(result + 844) & 0xFFBFFFFF | ((a3 & 1) << 22);
LABEL_20:
      *(result + 844) = v4;
      break;
    case 25:
      *(result + 8) = *(result + 8) & 0xF800FFFF | ((a3 & 0x7FF) << 16);
      break;
    case 26:
      *(result + 890) = a3;
      break;
    case 27:
      *(result + 894) = a3;
      break;
    case 28:
      *(result + 888) = *(result + 888) & 0xFFFFFFFC | a3 & 3;
      break;
    case 29:
      *(result + 892) = *(result + 892) & 0xFFFFFFFC | a3 & 3;
      break;
    case 49:
      *(result + 32) = a3;
      break;
    case 50:
      *(result + 16) = a3 & 0xFFFFFF | (*(result + 19) << 24);
LABEL_24:
      v3 = *(result + 36) & 0xFFFFFFFE | a3 & 1;
LABEL_25:
      *(result + 36) = v3;
      break;
    default:
      return result;
  }

  return result;
}

void ZinAneTd<11u>::HandleUserTags(ZinIrHalH13g *a1, uint64_t a2)
{
  v4 = ZinEngineLayerMirInfo::HasDmaRead(*(a2 + 520), 0);
  IsCompressed = 0;
  if (v4)
  {
    IsCompressed = ZinMirDmaConfig::DramAccess::IsCompressed((*(a2 + 520) + 608));
  }

  v6 = ZinEngineLayerMirInfo::HasDmaRead(*(a2 + 520), 1);
  if (v6)
  {
    v7 = ZinMirDmaConfig::DramAccess::IsCompressed((*(a2 + 520) + 688));
    if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392) && *(a2 + 376) == 1)
    {
      v6 = (*(*a2 + 528))(a2);
      v8 = *(a2 + 384);
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392) && !*(a2 + 376))
  {
    v6 |= (*(*a2 + 528))(a2);
    v8 = *(a2 + 384);
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = *(a2 + 384);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

LABEL_13:
  ZinAneTd<11u>::SetTileDmaSrcDma1UserTag(a1, v8);
  if (IsCompressed)
  {
    ZinAneTd<11u>::SetTileDmaSrcCompressedMdUserTag(a1, v8);
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_17:
  ZinAneTd<11u>::SetTileDmaSrcDma2UserTag(a1, v8);
  if (v7)
  {
    ZinIrHalH13g::~ZinIrHalH13g(a1);
  }

LABEL_19:
  if (*(*(a2 + 520) + 1408) - 1 <= 1)
  {
    ZinAneTd<11u>::SetTileDmaDstUserTag(a1, v8);
  }

  v9 = *(a2 + 160);
  if (v9)
  {
    v10 = *(v9 + 888);
    if (v10)
    {
      v11 = v10[4];
      v12 = v10[2];
      v13 = v10[3];
      v14 = v10[1];
      if (v10[5])
      {
        ZinAneTd<11u>::SetKernelDmaSrcCoeffUserTag(a1, v8);
      }

      if (v13)
      {
        ZinAneTd<11u>::SetKernelDmaSrcPostScaleUserTag(a1, v8);
      }

      if (v11)
      {
        ZinAneTd<11u>::SetKernelDmaSrcPostScaleUserTag(a1, v8);
      }

      if (v14)
      {
        ZinAneTd<11u>::SetKernelDmaSrcPostScaleUserTag(a1, v8);
      }

      if (v12)
      {
        ZinAneTd<11u>::SetKernelDmaSrcPostScaleUserTag(a1, v8);
      }
    }
  }

  if (*(*(a2 + 520) + 1181) == 1)
  {

    ZinIrHalH13g::~ZinIrHalH13g(a1);
  }
}

uint64_t ZinAneTd<11u>::HandleEWCommon(uint64_t a1, ZinIrOpLayer *this)
{
  InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
  v5 = *(RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(this + 784) + 88);
  v15 = 0;
  v6 = *(InputTensor + 64);
  if (ZinCodegenUtil::ValueToRegister(*(InputTensor + 72), (*(a1 + 1040) + 40), &v15) && (*(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v15 & 0x1FFFF, *(a1 + 524) &= 0xF801FFFF, ZinAneTd<11u>::SetCommonConvCfgSx(a1, 1uLL), ZinAneTd<11u>::SetCommonConvCfgSy(a1, 1uLL), ZinAneTd<11u>::SetCommonConvCfgOx(a1, 1uLL), ZinAneTd<11u>::SetCommonConvCfgOy(a1, 1uLL), ZinAneTd<11u>::SetOrReturnNumGroups(a1, v6)) && ZinAneTd<11u>::SetCommonConvCfgKw(a1, 1uLL) && ZinAneTd<11u>::SetCommonConvCfgKh(a1, 1uLL) && ((ZinAneTd<11u>::SetUnicastEn(a1, *(*(this + 65) + 1278)), MemoryPools = ZinIrContext::GetMemoryPools(this), MemoryPools[1] - *MemoryPools != 16) ? (v10 = *(this + 65), v8 = *(v10 + 72), v9 = *(v10 + 88)) : (v8 = 2, v9 = 2), (v14 = 0, ZinCodegenUtil::ValueToRegister(v8, (*(a1 + 1040) + 40), &v14)) && (*(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v14 & 0x1FFFF, ZinAneTd<11u>::SetUnicastCin(a1, v9), *(a1 + 532) = *(a1 + 532) & 0xFFFF7FFF | ((*(v5 + 12) == 2) << 15), v11 = *(v5 + 12), v11 < 8)))
  {
    v12 = 0x9Eu >> v11;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

BOOL ZinAneTd<11u>::HandleCommonMACBypassMode(uint64_t a1, void *a2)
{
  v2 = a2[65];
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<8u>::HandleCommonMACBypassMode();
    }

    return 0;
  }

  ZinAneTd<11u>::SetUnicastEn(a1, *(v2 + 1278));
  *(a1 + 524) &= 0xF801FFFF;
  ZinAneTd<11u>::SetCommonConvCfgSx(a1, 1uLL);
  ZinAneTd<11u>::SetCommonConvCfgSy(a1, 1uLL);
  ZinAneTd<11u>::SetCommonConvCfgOx(a1, 1uLL);
  ZinAneTd<11u>::SetCommonConvCfgOy(a1, 1uLL);
  v5 = (*(*a2 + 40))(a2, 0);
  if (!ZinAneTd<11u>::SetOrReturnNumGroups(a1, *(v5 + 64)) || !ZinAneTd<11u>::SetCommonConvCfgKw(a1, 1uLL) || !ZinAneTd<11u>::SetCommonConvCfgKh(a1, 1uLL))
  {
    return 0;
  }

  v6 = *(a2[65] + 88);

  return ZinAneTd<11u>::SetUnicastCin(a1, v6);
}

BOOL ZinAneTd<11u>::HandleCommonArgMinMax(uint64_t a1, ZinIrContext *a2)
{
  v4 = RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760);
  v5 = *(v4 + 88);
  ZinIrContext::GetMemoryPools(a2);
  (*(*a2 + 408))(&v13, a2);
  (*(*a2 + 416))(&v9, a2);
  if (!*(a2 + 65))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinAneTd<8u>::HandleCommonArgMinMax();
      return 0;
    }

    return result;
  }

  v8 = 0;
  result = ZinCodegenUtil::ValueToRegister(*(v5 + 72), (*(a1 + 1040) + 104), &v8);
  if (!result)
  {
    return result;
  }

  *(a1 + 524) = *(a1 + 524) & 0xFFC1FFFF | ((v8 & 0x1F) << 17);
  v8 = 0;
  result = ZinCodegenUtil::ValueToRegister(*(v5 + 64), (*(a1 + 1040) + 96), &v8);
  if (!result)
  {
    return result;
  }

  *(a1 + 524) = *(a1 + 524) & 0xF83FFFFF | ((v8 & 0x1F) << 22);
  ZinAneTd<11u>::SetCommonConvCfgSx(a1, *(v5 + 40));
  ZinAneTd<11u>::SetCommonConvCfgSy(a1, *(v5 + 44));
  result = ZinAneTd<11u>::SetOrReturnNumGroups(a1, v13);
  if (!result)
  {
    return result;
  }

  v7 = *(*(v4 + 88) + 104);
  if (v7 <= 7)
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        return 1;
      }

      goto LABEL_13;
    }

LABEL_24:
    result = ZinAneTd<11u>::SetOrReturnWin(a1, v16);
    if (result)
    {
      result = ZinAneTd<11u>::SetOrReturnHin(a1, v15);
      if (result)
      {
        result = ZinAneTd<11u>::SetOrReturnWout(a1, v12);
        if (result)
        {
          result = ZinAneTd<11u>::SetOrReturnHout(a1, v11);
          if (result)
          {
            result = ZinAneTd<11u>::SetCommonConvCfgKw(a1, *(v5 + 16));
            if (result)
            {
              result = ZinAneTd<11u>::SetCommonConvCfgKh(a1, *(v5 + 24));
              if (result)
              {
                result = ZinAneTd<11u>::SetUnicastCin(a1, 1uLL);
                if (result)
                {
                  v8 = 0;
                  result = ZinCodegenUtil::ValueToRegister(v14, (*(a1 + 1040) + 40), &v8);
                  if (result)
                  {
                    *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v8 & 0x1FFFF;
                    v8 = 0;
                    result = ZinCodegenUtil::ValueToRegister(v10, (*(a1 + 1040) + 48), &v8);
                    if (result)
                    {
                      *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v8 & 0x1FFFF;
                      ZinAneTd<11u>::SetUnicastEn(a1, *(*(a2 + 65) + 1278));
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }

  if (v7 == 8)
  {
    goto LABEL_24;
  }

  if (v7 != 9)
  {
    return 1;
  }

LABEL_13:
  result = ZinAneTd<11u>::SetOrReturnWin(a1, v16);
  if (result)
  {
    result = ZinAneTd<11u>::SetOrReturnHin(a1, v15);
    if (result)
    {
      result = ZinAneTd<11u>::SetOrReturnWout(a1, v12);
      if (result)
      {
        result = ZinAneTd<11u>::SetOrReturnHout(a1, v11);
        if (result)
        {
          v8 = 0;
          result = ZinCodegenUtil::ValueToRegister(v14, (*(a1 + 1040) + 40), &v8);
          if (result)
          {
            *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v8 & 0x1FFFF;
            v8 = 0;
            result = ZinCodegenUtil::ValueToRegister(v10, (*(a1 + 1040) + 48), &v8);
            if (result)
            {
              *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v8 & 0x1FFFF;
              ZinAneTd<11u>::SetUnicastEn(a1, *(*(a2 + 65) + 1278));
              result = ZinAneTd<11u>::SetOrReturnNumGroups(a1, v13);
              if (result)
              {
                result = ZinAneTd<11u>::SetCommonConvCfgKw(a1, 1uLL);
                if (result)
                {
                  result = ZinAneTd<11u>::SetCommonConvCfgKh(a1, 1uLL);
                  if (result)
                  {
                    return ZinAneTd<11u>::SetUnicastCin(a1, v14);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL ZinAneTd<11u>::HandleCommonPoolOpcode(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = RawOrShared<ZinPoolLayer>::unwrap_const_ptr((a2 + 95));
  if (!a2[65])
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinAneTd<8u>::HandleCommonPoolOpcode();
    return 0;
  }

  v7 = *(v6 + 88);
  result = ZinAneTd<11u>::SetOrReturnNumGroups(a1, a3);
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<11u>::SetCommonConvCfgSx(a1, *(v7 + 40));
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<11u>::SetCommonConvCfgSy(a1, *(v7 + 44));
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<11u>::SetCommonConvCfgOx(a1, 1uLL);
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<11u>::SetCommonConvCfgOy(a1, 1uLL);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 104) != 2)
  {
    result = ZinAneTd<11u>::SetCommonConvCfgKw(a1, *(v7 + 16));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<11u>::SetCommonConvCfgKh(a1, *(v7 + 24));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<11u>::SetCommonConvCfgPadLeft(a1, *(v7 + 64));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<11u>::SetCommonConvCfgPadTop(a1, *(v7 + 72));
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  (*(*a2 + 384))(&v11, a2);
  (*(*a2 + 360))(v10, a2);
  if (!ZinAneTd<11u>::SetCommonConvCfgKw(a1, v10[0]) || !ZinAneTd<11u>::SetCommonConvCfgKh(a1, v10[1]) || !ZinAneTd<11u>::SetCommonConvCfgPadLeft(a1, v11) || !ZinAneTd<11u>::SetCommonConvCfgPadTop(a1, v12))
  {
    return 0;
  }

LABEL_21:
  ZinAneTd<11u>::SetUnicastEn(a1, *(a2[65] + 1278));
  v9 = a2[65];
  if (*(v9 + 1278) != 1)
  {
    return 1;
  }

  ZinAneTd<11u>::SetUnicastCin(a1, *(v9 + 88));
  LODWORD(v11) = 0;
  result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 72), (*(a1 + 1040) + 40), &v11);
  if (result)
  {
    *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v11 & 0x1FFFF;
    LODWORD(v11) = 0;
    result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 80), (*(a1 + 1040) + 48), &v11);
    if (result)
    {
      *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v11 & 0x1FFFF;
      return 1;
    }
  }

  return result;
}

BOOL ZinAneTd<11u>::HandleCommonConvOpcode(uint64_t a1, void *a2)
{
  (*(*a2 + 384))(&v11, a2);
  (*(*a2 + 360))(v10, a2);
  if (a2[65])
  {
    v4 = a2[20];
    v5 = (*(*a2 + 400))(a2, 4);
    result = ZinAneTd<11u>::SetOrReturnWout(a1, v5);
    if (result)
    {
      result = ZinAneTd<11u>::SetCommonConvCfgKw(a1, v10[0]);
      if (result)
      {
        result = ZinAneTd<11u>::SetCommonConvCfgPadLeft(a1, v11);
        if (result)
        {
          v7 = (*(*a2 + 400))(a2, 3);
          result = ZinAneTd<11u>::SetOrReturnHout(a1, v7);
          if (result)
          {
            result = ZinAneTd<11u>::SetCommonConvCfgKh(a1, v10[1]);
            if (result)
            {
              result = ZinAneTd<11u>::SetCommonConvCfgPadTop(a1, v12);
              if (result)
              {
                ZinAneTd<11u>::SetCommonConvCfgSx(a1, v4[82]);
                ZinAneTd<11u>::SetCommonConvCfgSy(a1, v4[83]);
                ZinAneTd<11u>::SetCommonConvCfgOx(a1, v4[85]);
                ZinAneTd<11u>::SetCommonConvCfgOy(a1, v4[86]);
                v9 = 0;
                result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 72), (*(a1 + 1040) + 40), &v9);
                if (result)
                {
                  *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v9 & 0x1FFFF;
                  v9 = 0;
                  result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 80), (*(a1 + 1040) + 48), &v9);
                  if (result)
                  {
                    *(a1 + 508) = *(a1 + 508) & 0xFFFE0000 | v9 & 0x1FFFF;
                    result = ZinAneTd<11u>::SetOrReturnNumGroups(a1, *(a2[65] + 96));
                    if (result)
                    {
                      v8 = a2[65];
                      if (*(v8 + 1277) == 2)
                      {
                        ZinAneTd<11u>::SetUnicastEn(a1, *(v8 + 1278));
                        ZinAneTd<11u>::SetUnicastCin(a1, *(a2[65] + 88));
                      }

                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinAneTd<8u>::HandleCommonConvOpcode();
      return 0;
    }
  }

  return result;
}

uint64_t ZinAneTd<11u>::ForceHazardStalls(_DWORD *a1)
{
  a1[144] = a1[144] & 0xCFFFFFFF | 0x10000000;
  (*(*a1 + 32))(a1, 15, 1);
  (*(*a1 + 32))(a1, 16, 1);
  (*(*a1 + 32))(a1, 17, 1);
  (*(*a1 + 32))(a1, 18, 1);
  a1[137] |= 0x800000u;
  (*(*a1 + 32))(a1, 19, 1);
  (*(*a1 + 32))(a1, 20, 1);
  (*(*a1 + 32))(a1, 21, 1);
  v2 = *(*a1 + 32);

  return v2(a1, 22, 1);
}

uint64_t ZinAneTd<11u>::SetRAWdmaDependency(ZinIrHalH13g *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 1)
  {
    ZinAneTd<11u>::SetRAWdmaDependencySrc2(a1, a2);
    return 1;
  }

  if (!a3)
  {
    ZinAneTd<11u>::SetRAWdmaDependencySrc1(a1, a2, a4);
    return 1;
  }

  return 0;
}

uint64_t ZinAneTd<11u>::HandleDMADepErrata(_DWORD *a1)
{
  result = (*(*a1 + 24))(a1, 1);
  if (result == 1)
  {
    a1[144] = a1[144] & 0xCFFFFFFF | 0x10000000;
  }

  else
  {
    result = (*(*a1 + 24))(a1, 0);
    if (result != 1)
    {
      return (a1[144] & 0x30000000) == 0x10000000;
    }
  }

  return result;
}

uint64_t ZinAneTd<11u>::HandleCommonConfigFormatAndConvParams(uint64_t a1, int a2, unint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  result = ZinAneTd<11u>::SetOrReturnWin(a1, a3[3]);
  if (result)
  {
    result = ZinAneTd<11u>::SetOrReturnHin(a1, a3[2]);
    if (result)
    {
      v12 = 0;
      result = ZinCodegenUtil::ValueToRegister(a3[1], (*(a1 + 1040) + 40), &v12);
      if (result)
      {
        *(a1 + 504) = *(a1 + 504) & 0xFFFE0000 | v12 & 0x1FFFF;
        ZinAneTd<11u>::SetCommonInFmt(a1, a2);
        ZinAneTd<11u>::SetCommonOutFmt(a1, a4);
        result = ZinAneTd<11u>::SetCommonConvCfgOx(a1, 1uLL);
        if (result)
        {
          result = ZinAneTd<11u>::SetCommonConvCfgOy(a1, 1uLL);
          if (result)
          {
            result = ZinAneTd<11u>::SetOrReturnNumGroups(a1, 1uLL);
            if (result)
            {
              ZinAneTd<11u>::SetUnicastEn(a1, 0);
              ZinAneTd<11u>::SetUnicastCin(a1, 1uLL);
              return (*(*a1 + 232))(a1, a6);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL ZinAneTd<11u>::HandleCommonConfigOutputDimension(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 400))(a2, 2);
  v5 = (*(*a2 + 400))(a2, 4);
  v6 = (*(*a2 + 400))(a2, 3);
  if (!ZinAneTd<11u>::SetOrReturnWout(a1, v5) || !ZinAneTd<11u>::SetOrReturnHout(a1, v6))
  {
    return 0;
  }

  return ZinAneTd<11u>::SetOrReturnCout(a1, v4);
}

uint64_t ZinAneTd<11u>::HandleCommonConfigTileAndTaskInfo(uint64_t a1, uint64_t a2)
{
  *(a1 + 536) = 0;
  NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 160));
  if (!ZinAneTd<11u>::SetTileHeight(a1, NumNeededNEs))
  {
    return 0;
  }

  CPUSubtype = ZinIrTarget::GetCPUSubtype((a2 + 160));
  if (!ZinAneTd<11u>::SetTileOverlap(a1, CPUSubtype))
  {
    return 0;
  }

  OCGSize = MirInfoChannelAssignment::GetOCGSize((a2 + 160));
  if (!ZinAneTd<11u>::SetTileOverlapPadTop(a1, OCGSize))
  {
    return 0;
  }

  OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom((a2 + 160));
  if (!ZinAneTd<11u>::SetTileOverlapPadBottom(a1, OverlapPadBottom))
  {
    return 0;
  }

  *(a1 + 548) = 0;
  ZinAneTd<11u>::SetNESmallSourceMode(a1, *(a2 + 152));
  v22 = 0;
  ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
  v9 = MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment);
  Pow2Log2 = ZinRoundUpToNextPow2Log2(v9);
  if (!ZinCodegenUtil::ValueToRegister(Pow2Log2, (*(a1 + 1040) + 256), &v22))
  {
    return 0;
  }

  *(a1 + 548) = *(a1 + 548) & 0xFFC7FFFF | ((v22 & 7) << 19);
  v22 = 0;
  v11 = ZinRoundUpToNextPow2Log2(*(a2 + 128));
  v12 = v11 >= 4 ? 4 : v11;
  if (!ZinCodegenUtil::ValueToRegister(v12, (*(a1 + 1040) + 232), &v22))
  {
    return 0;
  }

  *(a1 + 548) = *(a1 + 548) & 0xFFFFF8FF | ((v22 & 7) << 8);
  v22 = 0;
  v13 = ZinRoundUpToNextPow2Log2(*(a2 + 112));
  v14 = v13 >= 4 ? 4 : v13;
  if (!ZinCodegenUtil::ValueToRegister(v14, (*(a1 + 1040) + 240), &v22))
  {
    return 0;
  }

  *(a1 + 548) = *(a1 + 548) & 0xFFFF8FFF | ((v22 & 7) << 12);
  v22 = 0;
  v15 = ZinRoundUpToNextPow2Log2(*(a2 + 120));
  v16 = v15 >= 4 ? 4 : v15;
  if (!ZinCodegenUtil::ValueToRegister(v16, (*(a1 + 1040) + 248), &v22))
  {
    return 0;
  }

  *(a1 + 548) = *(a1 + 548) & 0xFFF8FFFF | ((v22 & 7) << 16);
  v22 = 0;
  v17 = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
  v18 = MirInfoChannelAssignment::GetNumNeededNEs(v17);
  v19 = ZinRoundUpToNextPow2Log2(v18);
  if (!ZinCodegenUtil::ValueToRegister(v19, (*(a1 + 1040) + 256), &v22))
  {
    return 0;
  }

  *(a1 + 548) = *(a1 + 548) & 0xFFC7FFFF | ((v22 & 7) << 19);
  v20 = 1;
  ZinAneTd<11u>::SetNID(a1);
  return v20;
}

BOOL ZinAneTd<11u>::HandleCommonConfigPerArch(uint64_t a1, ZinEngineLayerMirInfo **a2, unint64_t a3)
{
  ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
  OCGSize = MirInfoChannelAssignment::GetOCGSize(ChannelAssignment);
  Pow2Log2 = ZinRoundUpToNextPow2Log2(OCGSize);
  ZinAneTd<11u>::SetNEOcgSize(a1, Pow2Log2);
  (*(*a2 + 48))(&v23, a2);
  (*(*a2 + 45))(v22, a2);
  (*(*a2 + 46))(a2);
  v10 = v9;
  (*(*a2 + 47))(a2);
  v12 = v11;
  v13 = (*(*a2 + 49))(a2, 1);
  v14 = (*(*a2 + 50))(a2, 1);
  ZinAneTd<11u>::SetCommonConvCfg3dKd(a1, v22[2]);
  ZinAneTd<11u>::SetCommonConvCfg3dPz(a1, v24);
  ZinAneTd<11u>::SetCommonConvCfg3dSz(a1, v10);
  ZinAneTd<11u>::SetCommonConvCfg3dOz(a1, v12);
  result = ZinAneTd<11u>::SetOrReturnDin(a1, v13);
  if (result)
  {
    result = ZinAneTd<11u>::SetOrReturnDout(a1, v14);
    if (result)
    {
      ZinAneTd<11u>::SetCommonSourceRouting(a1, 1);
      v16 = (*(*a2 + 55))(a2);
      ZinAneTd<11u>::SetOutputTranspose(a1, v16);
      v17 = a2[65];
      if (*(v17 + 64) == 1)
      {
        if ((*(v17 + 24) & 1) == 0)
        {
          ZinAssertImpl("kernel_group_stride should have value when kernel_stride_enable is set");
        }

        v18 = ZinAlignPower2(*(v17 + 2), a3);
        v19 = a2[65];
        if ((*(v19 + 8) & 1) == 0)
        {
          ZinAssertImpl("kernel_ocg_stride should have value when kernel_stride_enable is set");
        }

        v20 = v18 / a3;
        v21 = ZinAlignPower2(*v19, a3);
        ZinAneTd<11u>::SetKernelStrideRegisters(a1, v20, v21 / a3);
        v17 = a2[65];
      }

      ZinAneTd<11u>::SetFillLowerNEFirst(a1, *(v17 + 1280));
      ZinAneTd<1u>::Set1DWinogradMode(a1, *(a2[65] + 153));
      ZinAneTd<1u>::SetNEHalfWUMode(a1, *(a2[65] + 154));
      return 1;
    }
  }

  return result;
}

uint64_t ZinAneTd<11u>::HandleTileDmaSrcConfig(ZinIrHalH13g *a1, ZinIrOpLayer *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!ZinIrOpLayer::IsNELayer(this))
  {
    ZinAssertImpl("Only NE layers allowed\n");
  }

  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] - *MemoryPools >= 0x20uLL)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<8u>::HandleTileDmaSrcConfig();
    }

    return 0;
  }

  InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
  v30 = 0;
  v29 = 0;
  ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 0, &v30, v12);
  if (!ZinMemSourceIndexTranslator::GetL2SrcType(this, 0, &v29))
  {
    v15 = v29 != 0;
    v16 = *(*(this + 65) + 80 * v30 + 640);
    if (!v16)
    {
      return 1;
    }

    if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(this + 392) && !*(this + 47))
    {
      if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(this + 392))
      {
        HIDWORD(v27) = *(this + 47) == 1;
      }

      else
      {
        HIDWORD(v27) = 0;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
      if (!RawOrShared<ZinTextureLayer>::unwrap_const_ptr(this + 392))
      {
        v26 = 0;
        v27 = 0;
        goto LABEL_22;
      }

      HIDWORD(v27) = *(this + 47) == 1;
      if (*(this + 47) != 1)
      {
        v26 = 0;
        LOBYTE(v27) = 0;
        HIDWORD(v27) = 0;
LABEL_22:
        v19 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(this + 24 * v30 + 448);
        if (v19)
        {
        }

        if (!ZinCodegen::SetPrimarySourceDMA<11u>(InputTensor, a1, *(this + 65), v30, v15, *(a3 + 560), *(a3 + 592), v17, BYTE4(v27), v27, v19))
        {
          return 0;
        }

        **(a5 + 128) = v16;
        v28 = 0;
        v13 = 1;
        ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 1, &v28, v20);
        v21 = v28;
        if (!*(*(this + 65) + 80 * v28 + 640))
        {
          return v13;
        }

        if (v26)
        {
          v22 = ZinIrContext::GetMemoryPools(this);
          v21 = v28;
          if (v22[1] - *v22 >= 9uLL)
          {
            v23 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(this + 24 * v28 + 448);
            if (v23)
            {
            }

            else
            {
              v24 = 0;
            }

            v25 = ZinIrOpLayer::GetInputTensor(this, 1uLL);
            if (!ZinCodegen::SetSecondarySourceDMA<11u>(v25, a1, *(this + 65), v28, *(a3 + 560), *(a3 + 592), v17, HIDWORD(v27), v27, v24, a4))
            {
              return 0;
            }

            v21 = v28;
          }
        }

        *(*(a5 + 128) + 8) = *(*(this + 65) + 80 * v21 + 640);
        return 1;
      }
    }

    v18 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(this + 392);
    v26 = 1;
    LOBYTE(v27) = (*(*v18 + 344))(v18);
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinAneTd<17u>::HandleTileDmaSrcConfig();
  }

  return 0;
}

BOOL ZinAneTd<11u>::HandleL2Config(uint64_t a1, ZinIrOpLayer *a2, void *a3)
{
  (*(*a1 + 56))(a1);
  v6 = *(*(a2 + 11) + 8);
  if (v6 == 93)
  {
    if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
    {
      v11 = *(a2 + 20);
      v8 = *(v11 + 376);
      v12 = a3[191];
      v13 = a3[192];
      if (v12 != v13)
      {
        while (*v12 != v8)
        {
          if (++v12 == v13)
          {
            goto LABEL_15;
          }
        }
      }

      if (v12 == v13 || v8 == 4 || v8 == 2)
      {
LABEL_15:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinAneTd<8u>::HandleL2Config();
        }

        return 0;
      }

      v15 = *(v11 + 380);
      v10 = a1;
      goto LABEL_27;
    }

    v6 = *(*(a2 + 11) + 8);
    goto LABEL_18;
  }

  if (v6 != 97)
  {
LABEL_18:
    if (v6 != 98)
    {
      goto LABEL_28;
    }

    v14 = *(*(RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(a2 + 784) + 88) + 12);
    if (v14 == 8)
    {
      v10 = a1;
      v8 = 4;
    }

    else
    {
      if (v14 != 7)
      {
        goto LABEL_28;
      }

      v10 = a1;
      v8 = 2;
    }

    goto LABEL_26;
  }

  v7 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760) + 88);
  v8 = *(v7 + 100);
  v9 = *(v7 + 104);
  if (v9 != 1)
  {
    if (v9 || v8 == 2)
    {
      goto LABEL_6;
    }

LABEL_23:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<8u>::HandleL2Config();
    }

    return 0;
  }

  if (v8 != 4)
  {
    goto LABEL_23;
  }

LABEL_6:
  v10 = a1;
LABEL_26:
  v15 = 0;
LABEL_27:
  ZinAneTd<11u>::SetPaddingMode(v10, v8, v15);
LABEL_28:
  L2RdMode = ZinEngineLayerMirInfo::GetL2RdMode(*(a2 + 65), 0);
  ZinAneTd<11u>::SetL2Src1SourceType(a1, L2RdMode);
  if (!ZinCodegen::SetPrimaryL2SourceBuffer<11u>(a3, a2, a1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<1u>::HandleNEControlCommon();
    }

    return 0;
  }

  v17 = (*(*a2 + 40))(a2, 0);
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(a2 + 65));
  if (!L2WrSymbol)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<8u>::HandleL2Config();
    }

    return 0;
  }

  v19 = L2WrSymbol;
  if (ZinIrSymbol::GetMemType(L2WrSymbol) != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PECodegenUtils::HandlePEIndexingBuffer<17u>();
    }

    return 0;
  }

  ZinAneTd<11u>::SetL2ResultType(a1, *(*(a2 + 65) + 1408));
  ZinAneTd<11u>::SetL2BfrMode(a1, *(*(a2 + 65) + 244));
  ZinAneTd<11u>::SetL2ResultCfgDmaFmt(a1, *(v17 + 104));
  ZinAneTd<4u>::SetL2OutputCropOffsetXLSBs(a1, *(*(a2 + 65) + 232));
  v20 = *(a2 + 65);
  if (*(v20 + 1408) - 1 > 1)
  {
    v23 = 1;
  }

  else
  {
    TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((*(v20 + 800) + 216));
    EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(TensorDesc);
    v23 = EventTensor;
    if (!EventTensor)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinAneTd<8u>::HandleL2Config();
      }

      return 0;
    }
  }

  ZinAneTd<11u>::SetL2ResultInterleave(a1, v23);
  ZinAneTd<11u>::SetL2ResultBaseAddr(a1, *(v19 + 24) % a3[55] / a3[56]);
  ZinAneTd<11u>::SetL2ResultChannelStride(a1, *(*(a2 + 65) + 200));
  v30 = *(v19 + 680);
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v30);
  CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v30);
  ZinAneTd<4u>::SetL2ResultWrapAddrOffset(a1, SrcSymbol);
  ZinAneTd<4u>::SetL2ResultWrapAddr(a1, CompressedBytes);
  if ((ZinCodegen::SetL2ResultWrapInfo<11u>(a1, v19) & 1) == 0)
  {
    return 0;
  }

  v29 = 0;
  L2RowStride = ZinCodegen::GetL2RowStride((v17 + 64), *(*(a2 + 65) + 192), *(*(a1 + 1040) + 404), &v29, v26);
  if (L2RowStride)
  {
    ZinAneTd<11u>::SetL2ResultRowStride(a1, v29);
    ZinAneTd<11u>::SetL2ResultDepthStride(a1, *(*(a2 + 65) + 216));
    ZinAneTd<11u>::SetL2ResultGroupStride(a1, *(*(a2 + 65) + 208));
    if (RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 624))
    {
      *(a1 + 796) |= 1u;
    }
  }

  return L2RowStride;
}

BOOL ZinAneTd<11u>::HandleNEConfig(uint64_t a1, uint64_t a2, const ZinIrHalParameters *a3)
{
  (*(*a1 + 88))(a1);
  v7 = (a2 + 160);
  v6 = *(a2 + 160);
  if (!v6)
  {
    KernelGroupReuse = GetKernelGroupReuse(a2);
    v10 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 456);
  v9 = (v8 >> 4) & 1;
  v10 = (v8 >> 3) & 1;
  KernelGroupReuse = GetKernelGroupReuse(a2);
  if ((v8 & 4) == 0)
  {
LABEL_7:
    ShouldUseSparseBinaryForCompression = 0;
    v15 = 0;
    v14 = 4;
    goto LABEL_8;
  }

  v12 = *v7;
  v13 = *(*(*v7 + 111) + 40);
  if (v13)
  {
    v14 = *(v12 + 44);
    v15 = *v13;
    if (v15 == 1)
    {
      ShouldUseSparseBinaryForCompression = ZinIrKernel::ShouldUseSparseBinaryForCompression(v12);
      v12 = *v7;
    }

    else
    {
      ShouldUseSparseBinaryForCompression = 0;
    }

    if (ZinIrKernel::HasVectorPalettizedWeight(v12))
    {
      v23 = ZinLog2OfPow2(*(*v7 + 52));
      ZinAneTd<4u>::SetPaletteBlockSize(a1, v23);
    }

    v24 = *v7;
    if (*(*v7 + 425) == 1 && *(v24 + 424) == 1)
    {
      v25 = *(v24 + 86);
      if (v25 && (*(v24 + 44) - 7) <= 0x14 && v25[1] - *v25 > 0x10uLL)
      {
        ZinAneTd<4u>::SetMultiPaletteEnable();
      }

      ZinAssertImpl("Invalid multi-palette LUT configuration.");
    }

LABEL_8:
    ZinAneTd<11u>::SetKernelPalettizedEn(a1, v14);
    ZinAneTd<11u>::SetKernelPalettizedBits(a1, v14);
    ZinAneTd<11u>::SetKernelSparseFmt(a1, v15);
    ZinAneTd<11u>::SetKernelSparseBinary(a1, ShouldUseSparseBinaryForCompression);
    ZinAneTd<11u>::SetGroupKernelReuse(a1, KernelGroupReuse);
    v43 = 0;
    MacCfgOpMode = GetMacCfgOpMode(a2, a3, &v43);
    result = 0;
    if (!MacCfgOpMode)
    {
      ZinAneTd<11u>::SetOpMode(a1, v43);
      MacCfgKernelMode = GetMacCfgKernelMode(a2, a3);
      ZinAneTd<11u>::SetKernelMode(a1, MacCfgKernelMode);
      MacCfgPassthroughEnable = GetMacCfgPassthroughEnable(a2, a3);
      ZinAneTd<1u>::SetPassthroughEnable(a1, MacCfgPassthroughEnable);
      v42 = 0;
      if (GetKernelCfgKernelFmt(a2, a3, v43, &v42))
      {
        return 0;
      }

      ZinAneTd<11u>::SetKernelFmt(a1, v42);
      v21 = *(a2 + 748);
      if ((v21 & 0x100000000) == 0)
      {
        ZinAssertImpl("Binary point is missing from NE layer.");
      }

      ZinAneTd<11u>::SetNEBinaryPoint(a1, v21);
      if ((*(*a1 + 328))(a1, a2))
      {
        if (RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 672))
        {
          v22 = *(RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 672) + 176);
        }

        else
        {
          v22 = 0;
        }

        ZinAneTd<11u>::SetNENonLinearMode(a1, v22, a3 + 1600);
        if (RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720))
        {
          v26 = RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720) != 0;
          v27 = RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720);
          ScalarZeroPoint = ZinDeQuantLayer::GetScalarZeroPoint(v27);
          ZinAneTd<4u>::SetQuantizationOutputZeroOffset(a1, v26, ScalarZeroPoint);
        }

        if (v10)
        {
          v29 = *(*v7 + 180);
          v30 = 1;
        }

        else
        {
          v29 = 0;
          v30 = 0;
        }

        ZinAneTd<11u>::SetNEPostScale(a1, v29, v30);
        if (v9)
        {
          v31 = *(*v7 + 188);
          v32 = 1;
        }

        else
        {
          v32 = 0;
          v31 = 0;
        }

        ZinAneTd<11u>::SetNEBias(a1, v31, v32);
        if (*(*(a2 + 88) + 8) == 93)
        {
          v33 = ZinNEConvLayer::GetMatrixMultBias(a2) & 0xFFFFFFFFFFLL;
        }

        else
        {
          v33 = 0;
        }

        ZinAneTd<11u>::SetNEMatrixVectorBias(a1, (a2 + 160), v33);
        if (*v7)
        {
          HasZeroPoint = ZinIrKernel::HasZeroPoint(*v7);
        }

        else
        {
          HasZeroPoint = 0;
        }

        ZinAneTd<4u>::SetKernelAsymQuantEn(a1, HasZeroPoint);
        v35 = *v7;
        if (*v7)
        {
          v35 = *(v35 + 111);
          if (v35)
          {
            LOBYTE(v35) = *v35;
          }
        }

        ZinAneTd<4u>::SetKernelDetectZeros(a1, v35 & 1);
        v36 = (*(*a2 + 144))(a2);
        v37 = *(a2 + 160);
        if (v36)
        {
          if (*(v37 + 408) != 1)
          {
            ZinAssertImpl("Tensor kernel is not using aligned format!");
          }

          v38 = 0;
        }

        else if (v37)
        {
          v38 = *(v37 + 408) != 1;
        }

        else
        {
          v38 = 1;
        }

        ZinAneTd<11u>::SetKernelAlignmentFormat(a1, v38);
        ZinAneTd<4u>::SetDoubleInt8Enable(a1, *(*(a2 + 520) + 1279));
        ZinAneTd<11u>::SetKernelSparseBlockSize(a1, 0);
        v39 = *(a2 + 160);
        if (v39 && ZinIrKernel::HasVectorPalettizedWeight(v39) && **(*(*v7 + 111) + 40) == 1)
        {
          v40 = ZinLog2OfPow2(*(*v7 + 52));
          ZinAneTd<11u>::SetKernelSparseBlockSize(a1, v40);
        }

        if (*(*(a2 + 88) + 8) == 97)
        {
          v41 = *(*(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760) + 88) + 104);
          ZinAneTd<11u>::SetArgOutputSelect(a1, v41);
          ZinAneTd<11u>::SetMaxPoolMode(a1, v41);
        }

        if ((*(*a1 + 320))(a1, a2))
        {
          return 1;
        }

        else
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            ZinAneTd<8u>::HandleNEConfig();
            return 0;
          }
        }
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ZinAneTd<8u>::HandleNEConfig();
          return 0;
        }
      }
    }

    return result;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinAneTd<1u>::HandleNEConfig();
    return 0;
  }

  return result;
}

uint64_t ZinAneTd<11u>::HandleNEConfigRCASCfg(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 88) + 8) == 101)
  {
    v2 = *(RawOrShared<ZinRCASLayer>::unwrap_const_ptr(a2 + 760) + 88);
    v3 = *(v2 + 48);
    if (v3 != (v2 + 56))
    {
      v4 = 0;
      do
      {
        v5 = v3[4];
        if (v5 >= 8)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        v6 = v3[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v3[2];
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (!v8);
        }

        v4 |= 1 << v5;
        v3 = v7;
      }

      while (v7 != (v2 + 56));
    }

    ZinAneTd<1u>::SetRcasKeyMask();
  }

  return 1;
}

BOOL ZinAneTd<11u>::HandleTileDmaDstConfig(int a1, ZinIrOpLayer *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!ZinIrOpLayer::IsNELayer(this) && !ZinIrOpLayer::IsTransposeEngineLayer(this))
  {
    ZinAssertImpl("Only NE and TransposeEngineLayer allowed\n");
  }

  v8 = (*(*this + 40))(this, 0);
  v9 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(this + 496);
  if (v9)
  {
    v10 = *(*(v9 + 88) + 8) == 117;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 65);
  if (*(v11 + 1408) - 1 > 1)
  {
    return 1;
  }

  v12 = *(a5 + 208);
  v13 = *(a3 + 560);
  v14 = *(a3 + 592);

  return ZinCodegen::SetResultDMA<11u>(v8, v12, v11, v13, v14, v10);
}

uint64_t ZinAneTd<11u>::HandleKernelDmaSrcConfig(unint64_t *a1, ZinIrKernel **a2, void *a3, void *a4, uint64_t a5)
{
  (*(*a1 + 64))(a1, *(*a3 + 4));
  ZinAneTd<11u>::InitializeKernelDmaSrcConfig(a1);
  ZinAneTd<11u>::HandleKernelDmaSrcConfigAligned(a1, a2, a3, a4);
  v16 = 0;
  ZinAneTd<11u>::HandleKernelDmaSrcConfigCoeffBuffer(a1, a2, a3, a5, a2 + 20, &v16);
  if (v16 != 1)
  {
    return 1;
  }

  ZinAneTd<17u>::AddKernelSymbols(a1, a2, a3, a5);
  v15 = 0;
  if (ZinIrCodeGenGetBarIdForCoeffKDMABlock(a2, a4, &v15))
  {
    return 0;
  }

  v12 = a3[1];
  if ((*(v12 + 476) & 1) != 0 || *(v12 + 656) == 1)
  {
    v13 = *(a5 + 24) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(a5 + 8) - 24);
  v10 = 1;
  ZinAneTdHw_v11::AddRelocInfo(a1 + 1, v14, 1602, v15, 1, 1, v13 & 1, 0);
  if (*(*a3 + 1337) == 1)
  {
    ZinAneTd<1u>::SetKernelDmaSrcConfigPrefetch();
  }

  return v10;
}

uint64_t ZinAneTd<11u>::HandleANELayer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void **a5, uint64_t a6, CFArrayRef *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a5 + 88) == 1 && *(a6 + 24) == 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v20, a5[8], a5[9], (a5[9] - a5[8]) >> 1);
    if ((*(a6 + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    __p = 0;
    v18 = 0;
    v19 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
    if (!ZinEngineLayer::RunsOnDeviceId(a2, (**a5 + 2248), &v20, &__p))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = ZinSPMDUtils::AneIndexFromDeviceId((**a5 + 2248), &v20, &__p);
        ZinAneTd<11u>::HandleANELayer(buf, v15);
      }

      ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      return 0;
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  if (!*(a2 + 520))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<8u>::HandleANELayer();
    }

    ZinIrNetworkStatus::SetError(a7, @"CodeGenerationFailure");
    return 0;
  }

  ZinIrMemoryPools::GetSections(a5[3], 0, 1, &v20);
  v14 = *(v21 + 2);
  std::__list_imp<ZinIrSection *>::clear(&v20);
  if ((ZinAneTdInstruction::HandleTdHeader(a4, a2, a3, *a5, v14) & 1) == 0)
  {
    ZinIrNetworkStatus::SetError(a7, @"InvalidHWHeader");
    return 0;
  }

  (*(*a1 + 448))(a1);
  if (ZinIrOpLayer::IsPELayer(a2))
  {
    if (!HandlePELayer<11u>(a2, a3, a4, **a5, a6))
    {
      ZinIrNetworkStatus::SetError(a7, @"PEConfigFailure");
      return 0;
    }

    goto LABEL_33;
  }

  if (ZinIrOpLayer::IsNELayer(a2))
  {
    if (!HandleNELayer<11u>(a2, a3, a4, *a5, a5[3], a6, a7))
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (!ZinIrOpLayer::IsCcdmaLayer(a2))
  {
    ZinAssertImpl("TransposeEngineLayer based graph should not need DMA buffer\n");
  }

  if ((a5[11] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((*(a6 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (HandleCcdmaLayer<11u>(a2, a4, *a5, (a5 + 8), a6, a7))
  {
LABEL_33:
    result = (*(*a1 + 360))(a1, **a5, a2);
    if (result)
    {
      result = (*(*a1 + 376))(a1, a2);
      if (result)
      {
        (*(*a1 + 384))(a1, a2, a5[2]);
        (*(*a1 + 208))(a1, a2);
        if (ZinAneTd<11u>::CodegenIntermediateMCacheDSIDs(a1, a2, *a5, a5[2]))
        {
          if (*(a4 + 169) == 1)
          {
            *(*(a4 + 208) + 44) |= 0x80u;
          }

          if (*(a2 + 552) == 1)
          {
            (*(*a1 + 480))(a1, a2);
          }

          return 1;
        }

        else
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            ZinAneTd<17u>::HandleANELayer();
            return 0;
          }
        }
      }
    }

    return result;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinAneTd<11u>::HandleANELayer();
    return 0;
  }

  return result;
}

void sub_1A696265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<11u>::HandleTextureConfig(uint64_t a1, uint64_t a2, void *a3)
{
  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a3 + 49)) && !a3[47])
  {
    v6 = 56;
  }

  else
  {
    if (!RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a3 + 49)) || a3[47] != 1)
    {
      return 1;
    }

    v6 = 59;
  }

  v7 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(&a3[v6]);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v25 = vdupq_n_s64(1uLL);
  v26 = v25;
  v27 = 1;
  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a3 + 49)) && !a3[47])
  {
    (*(*a3 + 544))(__p, a3);
    v9 = __p[0];
    v10 = *__p[0];
  }

  else
  {
    if (!RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a3 + 49)) || a3[47] != 1)
    {
      goto LABEL_15;
    }

    (*(*a3 + 544))(__p, a3);
    v9 = __p[0];
    v10 = *(__p[0] + 1);
  }

  v11 = v10[5];
  v25 = v10[4];
  v26 = v11;
  v27 = v10[6].i64[0];
  __p[1] = v9;
  operator delete(v9);
LABEL_15:
  if (!ZinAneTd<11u>::SetTextureExtMax(a1, &v25))
  {
    ZinAssertImpl("Codegen Error: Invalid TexExt XY/GZ is given");
  }

  LODWORD(__p[0]) = *(v8 + 176);
  ZinAneTd<11u>::SetTextureMode(a1, __p);
  v12 = *(v8 + 180);
  v22 = *(v8 + 216);
  __p[0] = v12;
  ZinAneTd<11u>::SetTextureNormalization(a1, __p, &v22);
  __p[0] = *(v8 + 188);
  ZinAneTd<11u>::SetTextureFilter(a1, __p);
  LOWORD(__p[0]) = *(v8 + 196);
  ZinAneTd<11u>::SetTextureWrap(a1, __p);
  ZinAneTd<11u>::SetTextureIndexTensorInterleave(a1, *(v8 + 208));
  ZinAneTd<11u>::SetTextureBackgroundEn(a1, *(v8 + 198));
  if (*(v8 + 198) == 1)
  {
    ZinAneTd<11u>::SetTextureBackgroundVal(a1, *(v8 + 202));
  }

  *(a1 + 800) = *(a1 + 800) & 0xFFFFF0FF | ((HIBYTE(*(a1 + 658)) & 0xF) << 8);
  if (*(a2 + 1318) == 1 && *(v8 + 199) == 1)
  {
    ZinAneTd<8u>::SetTexturePreserveFraction(a1, 1);
    ZinAneTd<11u>::SetL2Src1DmaFormat(a1, 3);
  }

  else
  {
    ZinAneTd<8u>::SetTexturePreserveFraction(a1, 0);
    *(a1 + 800) = *(a1 + 800) & 0xFFFFFF3F | ((*(a1 + 656) & 3) << 6);
  }

  v13 = *(v8 + 176);
  if ((v13 - 1) <= 1)
  {
    *__p = *(v8 + 224);
    v24 = *(v8 + 240);
    ZinAneTd<11u>::SetTextureSrcPermute(a1, __p);
    *__p = *(v8 + 244);
    v24 = *(v8 + 260);
    ZinAneTd<11u>::SetTextureIndPermute(a1, __p);
    *__p = *(v8 + 264);
    v24 = *(v8 + 280);
    ZinAneTd<11u>::SetTextureIdxPermute(a1, __p);
    ZinAneTd<8u>::SetTextureBypassFilter(a1, *(v8 + 200));
    v13 = *(v8 + 176);
  }

  if ((v13 - 3) <= 1)
  {
    v14 = *(v8 + 248);
    v15 = *(v8 + 256);
    if (*(a2 + 2184) < ((v15 - v14) >> 5))
    {
      ZinAssertImpl("Codegen Error: Invalid Texture CropCfg");
    }

    if (v15 != v14)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        ZinAneTd<11u>::SetTextureCropCfg(a1, (v14 + v16), v17++);
        v14 = *(v8 + 248);
        v16 += 32;
      }

      while (v17 < (*(v8 + 256) - v14) >> 5);
    }

    v18 = *(v8 + 224);
    v19 = *(v8 + 232);
    if (*(a2 + 2176) < ((v19 - v18) >> 2))
    {
      ZinAssertImpl("Codegen Error: Invalid Texture CropCoeff");
    }

    if (v19 != v18)
    {
      v20 = 0;
      do
      {
        ZinAneTd<11u>::SetTextureCropCoeff(a1, *(v18 + 4 * v20), v20);
        ++v20;
        v18 = *(v8 + 224);
      }

      while (v20 < (*(v8 + 232) - v18) >> 2);
    }

    LODWORD(__p[0]) = *(v8 + 272);
    ZinAneTd<11u>::SetTextureGroupValue(a1, __p);
    LODWORD(__p[0]) = *(v8 + 276);
    ZinAneTd<11u>::SetTextureDepthValue(a1, __p);
    ZinAneTd<8u>::SetTextureCropBatchSplit(a1, *(v8 + 280));
  }

  return 1;
}

uint64_t ZinAneTd<11u>::HandleL2Hazards(uint64_t a1, uint64_t a2, uint64_t a3, ZinIrContext *a4, void *a5)
{
  v27 = a4;
  v6 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a5, &v27)[3];
  v7 = *(a4 + 65);
  MemoryPools = ZinIrContext::GetMemoryPools(a4);
  if (MemoryPools[1] != *MemoryPools)
  {
    for (i = 0; i < (v19[1] - *v19) >> 3; ++i)
    {
      InputTensor = ZinIrOpLayer::GetInputTensor(a4, i);
      if (((*(*a4 + 224))(a4, InputTensor) & 1) == 0 && ZinIrOpLayer::IsANELayer(a4))
      {
        LODWORD(v27) = 0;
        if (!ZinMemSourceIndexTranslator::GetL2SrcType(a4, i, &v27))
        {
          L2SrcDep = ZinMirL2Config::GetL2SrcDep((v7 + 112), v27);
          v12 = L2SrcDep;
          if (i)
          {
            v13 = 13;
          }

          else
          {
            v13 = 12;
          }

          v14 = *(L2SrcDep + 40);
          if (v14 == 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2 * (v14 == 2);
          }

          (*(**(v6 + 208) + 32))(*(v6 + 208), v13, v15);
          v26 = 0;
          v25 = 0;
          if (GetProgrammedDependencyOffsetAndDimension(v12, &v25, &v26))
          {
            return 0;
          }

          if (i)
          {
            v16 = 29;
          }

          else
          {
            v16 = 28;
          }

          if (i)
          {
            v17 = 27;
          }

          else
          {
            v17 = 26;
          }

          (*(**(v6 + 208) + 32))(*(v6 + 208), v17, v25);
          if (v26 - 1 < 3)
          {
            v18 = (v26 - 1) + 1;
          }

          else
          {
            v18 = 0;
          }

          (*(**(v6 + 208) + 32))(*(v6 + 208), v16, v18);
        }
      }

      v19 = ZinIrContext::GetMemoryPools(a4);
    }
  }

  if ((*(v6 + 160) & 1) == 0)
  {
    if (v7[248])
    {
      v20 = 1;
    }

    else
    {
      v20 = v7[250];
    }

    (*(**(v6 + 208) + 32))(*(v6 + 208), 15, v20);
    if (v7[249])
    {
      v21 = 1;
    }

    else
    {
      v21 = v7[251];
    }

    (*(**(v6 + 208) + 32))(*(v6 + 208), 16, v21);
    (*(**(v6 + 208) + 32))(*(v6 + 208), 17, v7[254]);
    (*(**(v6 + 208) + 32))(*(v6 + 208), 18, v7[255]);
    if (v7[256])
    {
      v22 = 1;
    }

    else
    {
      v22 = v7[258];
    }

    (*(**(v6 + 208) + 32))(*(v6 + 208), 19, v22);
    if (v7[257])
    {
      v23 = 1;
    }

    else
    {
      v23 = v7[259];
    }

    (*(**(v6 + 208) + 32))(*(v6 + 208), 20, v23);
    (*(**(v6 + 208) + 32))(*(v6 + 208), 21, v7[262]);
    (*(**(v6 + 208) + 32))(*(v6 + 208), 22, v7[263]);
  }

  return 1;
}

unint64_t ZinAneTd<11u>::SetRAWdmaDependencySrc1(ZinIrHalH13g *a1, int a2, unsigned int a3)
{
  ZinAneTd<11u>::SetTileDmaSrc1DependencyMode(a1, a2);
  if (a2 == 1)
  {
    ZinIrHalH13g::~ZinIrHalH13g(a1);
  }

  return ZinAneTd<11u>::SetTileDmaSrc1DependencyInterval(a1, a3);
}

void ZinAneTd<11u>::SetRAWdmaDependencySrc2(ZinIrHalH13g *a1, int a2)
{
  ZinAneTd<11u>::SetTileDmaSrc1DependencyMode(a1, a2);
  if (a2 == 1)
  {
    ZinIrHalH13g::~ZinIrHalH13g(a1);
  }

  ZinIrHalH13g::~ZinIrHalH13g(a1);
}

uint64_t ZinAneTd<11u>::InitializeKernelDmaSrcConfig(uint64_t a1)
{
  for (i = 0; i != 16; ++i)
  {
    ZinAneTd<10u>::SetKernelDmaSrcCoeffDmaCacheHint(a1, 1, i);
  }

  ZinAneTd<11u>::SetKernelDmaSrcPostScaleDmaCacheHint(a1, 1);
  ZinAneTd<11u>::SetKernelDmaSrcBiasDmaCacheHint(a1, 1);
  ZinAneTd<11u>::SetKernelDmaSrcPaletteLutDmaCacheHint(a1, 1);

  return ZinAneTd<11u>::SetKernelDmaSrcNonLinearLutDmaCacheHint(a1, 1);
}

void ZinAneTd<11u>::HandleKernelDmaSrcConfigAligned(_DWORD *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a2 + 160);
  if (v4 && *(v4 + 888))
  {
    v32 = 0;
    if (ZinIrCodeGenGetBarIdForNonCoeffKDMABlocks(a2, a4, &v32))
    {
      ZinAssertImpl("Cannot get barid for kernels");
    }

    v8 = *(*a3 + 560);
    v9 = *(a3[1] + 164);
    v10 = *(v4 + 888);
    v11 = v10[1];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = ZinDivRoundUp(v11, *(*a3 + 560));
      ZinAneTd<11u>::SetAlignedKernelNonLinearLut(a1, v32, v13);
    }

    v14 = v10[2];
    if (v14)
    {
      v15 = ZinDivRoundUp(v14, v8);
      ZinAneTd<11u>::SetAlignedKernelPaletteLut(a1, v32, v15);
      v12 = 1;
    }

    v16 = v10[3];
    if (v16)
    {
      v17 = ZinDivRoundUp(v16, v8);
      ZinAneTd<11u>::SetAlignedKernelPostScale(a1, v32, v17);
      v12 = 1;
    }

    v18 = v10[4];
    if (v18)
    {
      v19 = ZinDivRoundUp(v18, v8);
      ZinAneTd<11u>::SetAlignedKernelBias(a1, v32, v19);
      v20 = *(a2 + 160);
      if (v9)
      {
        if (*(v20 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v20, *(v20 + 1));
        }

        else
        {
          v21 = *v20;
          __p.__r_.__value_.__r.__words[2] = *(v20 + 2);
          *&__p.__r_.__value_.__l.__data_ = v21;
        }
      }

      else
      {
        ZinIrKernel::GetFinalHash(&v33, v20);
        v24 = std::string::insert(&v33, 0, "K", 1uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_26;
    }

    v22 = *(a2 + 160);
    if (!v9)
    {
      ZinIrKernel::GetFinalHash(&v33, v22);
      v26 = std::string::insert(&v33, 0, "K", 1uLL);
      v27 = *&v26->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    if (*(v22 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v22, v22[1]);
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v23 = *v22;
      __p.__r_.__value_.__r.__words[2] = v22[2];
      *&__p.__r_.__value_.__l.__data_ = v23;
      if (!v12)
      {
LABEL_33:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

LABEL_26:
    ZinAneTd<8u>::SetKernelDmaSrcEnable(a1);
    a1[11] = a1[11] & 0xFFFFFFDF | (32 * (**(*(v4 + 888) + 40) & 1));
    if (*(*(a2 + 160) + 176))
    {
      v28 = *(*(v4 + 888) + 40);
      if ((*v28 & 1) == 0)
      {
        ZinAneTd<8u>::SetAlignedCoeffSizePerCh(a1, *(v28 + 8));
      }
    }

    v29 = a3[1];
    if (*(v29 + 476))
    {
      v30 = 1;
    }

    else
    {
      v30 = *(v29 + 656);
    }

    ZinAneTd<11u>::SetAlignedKernelRelocationCommand(a1, v10, v32, &__p.__r_.__value_.__l.__data_, v30 & 1);
    goto LABEL_33;
  }
}

void sub_1A6963208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinAneTd<11u>::HandleKernelDmaSrcConfigCoeffBuffer(uint64_t result, uint64_t (***a2)(ZinEngineLayerMirInfo **), uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6)
{
  v8 = result;
  v9 = *a5;
  if (*a5 && (v10 = *(v9 + 888)) != 0)
  {
    v29 = 0;
    v28 = *(v9 + 888);
    v11 = *(v10 + 40);
  }

  else
  {
    v28 = 0;
    v11 = 0;
    v29 = 1;
  }

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = *(*a3 + 4);
  v15 = 560;
  if (*(*a3 + 1154))
  {
    v15 = 600;
  }

  if (v14)
  {
    v16 = 0;
    v17 = *(*a3 + v15);
    v18 = 40;
    do
    {
      if (v13 && (ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]), MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment) > v16))
      {
        v20 = *(*(v11 + 32) + v18);
        v21 = v20 != 0;
        *a6 |= v21;
        ZinAneTd<10u>::SetKernelDmaSrcCoeffDmaEn(v8, v21, v16);
        if (v20)
        {
          ZinAneTd<8u>::SetKernelDmaSrcEnable(v8);
          v22 = *(v11 + 32);
          if (v16 >= (*(v11 + 40) - v22) >> 6)
          {
            ZinAssertImpl("Kernel DMA NE number greater than kernel data prepped\n");
          }

          if (*(*a3 + 1320) == 1)
          {
            if (*(a2[65] + 1280) == 1)
            {
              if ((*a2)[18](a2))
              {
                v23 = ZinDivRoundUp(a2[65][4], v17);
                ZinAneTd<11u>::SetKernelDmaSrcCoeffMemBufferSize(v8, v23, v16);
                LODWORD(v24) = ZinDivRoundUp(*(a2[65][5] + v16), v17);
                goto LABEL_34;
              }

              v22 = *(v11 + 32);
            }

            v26 = ZinDivRoundUp(*(v22 + v18), v17);
            ZinAneTd<11u>::SetKernelDmaSrcCoeffMemBufferSize(v8, v26, v16);
            if ((v29 & 1) != 0 || *(v28 + 1) != 1)
            {
              v27 = *(*(v11 + 32) + v18 - 40);
            }

            else
            {
              v27 = **(v11 + 32);
            }

            v24 = v27 / v17;
LABEL_34:
            ZinAneTd<11u>::SetKernelDmaSrcCoeffBaseOffset(v8, v24, v16);
          }

          else
          {
            v25 = ZinDivRoundUp(*(v22 + v18), v17);
            ZinAneTd<11u>::SetKernelDmaSrcCoeffMemBufferSize(v8, v25, v16);
          }

          result = ZinAneTd<10u>::SetKernelDmaSrcCoeffDmaCacheHint(v8, *(a2[65] + 1269), v16);
          goto LABEL_25;
        }
      }

      else
      {
        ZinAneTd<10u>::SetKernelDmaSrcCoeffDmaEn(v8, 0, v16);
      }

      result = ZinAneTd<11u>::SetKernelDmaSrcCoeffMemBufferSize(v8, 1u, v16);
LABEL_25:
      ++v16;
      v18 += 64;
    }

    while (v14 != v16);
  }

  return result;
}

BOOL HandlePELayer<11u>(ZinIrContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 208);
  v10 = *(a1 + 65);
  SetPatchSettings<11u>(v9, (v10 + 14));
  v11 = (*(*a1 + 400))(a1, 0);
  ZinAneTd<11u>::SetOrReturnNumGroups(v9, v11);
  if ((PECodegenUtils::HandlePrimarySourceTensor<11u>(a1, a4, a5, v9) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    HandlePELayer<17u>();
    return 0;
  }

  if (!PECodegenUtils::HandleSecondarySourceTensor<11u>(a1, v10, a4, a5, v9))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    HandlePELayer<17u>();
    return 0;
  }

  if ((PECodegenUtils::HandleTernarySourceTensor<11u>(a1, v10, a4, a5, v9) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    HandlePELayer<17u>();
    return 0;
  }

  v12 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(a1 + 496);
  if (v12)
  {
    v13 = *(*(v12 + 88) + 8) == 117;
  }

  else
  {
    v13 = 0;
  }

  v15 = (*(*a1 + 40))(a1, 0);
  if ((PECodegenUtils::HandleOutputTensor<11u>(v15, v10, a4, v9, v13) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    HandlePELayer<17u>();
    return 0;
  }

  if (*(a4 + 1648) == 1 && (*(*a1 + 616))(a1))
  {
    v16 = (*(*a1 + 624))(a1);
    ZinDeQuantLayer::GetScalarZeroPoint(v16);
    ZinAneTd<7u>::SetQuantizationSrc1InputOffset();
  }

  if (*(a4 + 1648) == 1 && (*(*a1 + 632))(a1))
  {
    v17 = (*(*a1 + 640))(a1);
    ZinDeQuantLayer::GetScalarZeroPoint(v17);
    ZinAneTd<7u>::SetQuantizationSrc2InputOffset();
  }

  v18 = 0;
  v19 = *(*(a1 + 11) + 8);
  if (v19 > 90)
  {
    if (v19 == 91)
    {
      v20 = PECodegenUtils::HandlePEPoolLayer<11u>(a4, a1, v9);
    }

    else
    {
      if (v19 != 92)
      {
        goto LABEL_33;
      }

      v20 = PECodegenUtils::HandlePEGOCLayer<11u>(a4, a1, v9);
    }

LABEL_32:
    v18 = v20;
    goto LABEL_33;
  }

  if (v19 == 89)
  {
    v20 = PECodegenUtils::HandlePEElementWiseLayer<11u>(a4, a1, v9);
    goto LABEL_32;
  }

  if (v19 == 90)
  {
    if ((*(a3 + 160) & 1) == 0)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      HandlePELayer<8u>();
      return 0;
    }

    v20 = PECodegenUtils::HandlePESecureFlushLayer<11u>(v9, *(a3 + 164));
    goto LABEL_32;
  }

LABEL_33:
  if (*(a4 + 1648) == 1 && (*(*a1 + 712))(a1))
  {
    v21 = (*(*a1 + 808))(a1);
    ZinDeQuantLayer::GetScalarZeroPoint(v21);
    ZinAneTd<7u>::SetPEOutputQuantization();
  }

  if ((v18 & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    HandlePELayer<17u>();
    return 0;
  }

  if ((*(a4 + 1316) & 1) == 0)
  {
    if ((*(*a1 + 608))(a1))
    {
      v22 = ZinEngineLayerMirInfo::HasDmaRead(v10, 0);
      v23 = ZinEngineLayerMirInfo::HasDmaRead(v10, 1);
      if (!v22 || (v24 = 0, (v23 & 1) == 0))
      {
        if (v23)
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v25;
        }
      }
    }

    else
    {
      v24 = 1;
    }

    ZinAneTd<11u>::SetCommonSourceRouting(v9, v24);
  }

  **(a3 + 128) = v10[80];
  *(*(a3 + 128) + 8) = v10[90];
  *(a3 + 152) = v10[100];
  return 1;
}

BOOL HandleNELayer<11u>(ZinIrOpLayer *a1, uint64_t a2, ZinAneTdInstruction *a3, const ZinIrHalParameters **a4, void *a5, uint64_t a6, CFArrayRef *a7)
{
  v13 = *(a3 + 26);
  v32 = 0;
  if (ZinIrCodeGenGetBarIdForCoeffKDMABlock(a1, a5, &v32) || (v31 = 0, ZinIrCodeGenGetBarIdForNonCoeffKDMABlocks(a1, a5, &v31)))
  {
LABEL_3:
    v14 = @"CodeGenerationFailure";
LABEL_4:
    ZinIrNetworkStatus::SetError(a7, v14);
    return 0;
  }

  v16 = *(a1 + 20);
  if (v16 && *(v16 + 888))
  {
    ZinIrHalH13g::~ZinIrHalH13g(v13);
    v17 = *(*(a1 + 20) + 888);
    if (v17[1])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[2])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[4])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }

    if (v17[3])
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
    }
  }

  if (ZinAneTdInstruction::HandleCommonConfig(a3, a1, *a4, a7))
  {
    if (((*(*v13 + 344))(v13, a1, a4, a5, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"KernelDMASourceAllocationFailure";
      goto LABEL_4;
    }

    if (((*(*v13 + 280))(v13, a1, *a4, a6, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"TileDMASourceAllocationFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 288))(*(a3 + 26), a1, *a4) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"L2AllocationFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 296))(*(a3 + 26), a1, *a4) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"NEConfigFailure";
      goto LABEL_4;
    }

    if (((*(**(a3 + 26) + 336))(*(a3 + 26), a1, *a4, a6, a3) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      v14 = @"TileDMADestinationAllocationFailure";
      goto LABEL_4;
    }

    if (!ZinAneTd<11u>::ValidateOCGSizes(v13, a1, *a4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      goto LABEL_3;
    }

    ZinIrHalH13g::~ZinIrHalH13g(v13);
    v18 = *(v13 + 234);
    v19 = *(v13 + 125) & 3;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_49;
      }

      v19 = 3;
    }

    else if (!v19)
    {
      v19 = 2;
    }

    v30 = v19;
    v20 = *(v13 + 233) & 3;
    if (v20 == 3)
    {
LABEL_49:
      ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      return 0;
    }

    v21 = (v18 >> 5) >> 3;
    v22 = ZinMirPrepareBinaryPoint::CalculateBinaryPointAdjustment(v20, &v30);
    v23 = *(v13 + 237);
    if (ZinIrOpLayer::IsNELayer(a1) && v22 + v21 + (HIWORD(v23) & 0x1F) >= 0x20u)
    {
      ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        HandleNELayer<17u>();
      }

      return 0;
    }

    v24 = *(a1 + 20);
    if (v24)
    {
      if (ZinIrKernel::HasBias(v24))
      {
        v25 = *(a1 + 20);
        if (*(v25 + 664))
        {
          v26 = ldexp(1.0, v22 + v21 + ((*(v13 + 236) << 11) >> 27));
          if (!ZinIrCodegenValidBiasShift((v25 + 664), v26, v27, v28, v29))
          {
            ZinIrNetworkStatus::SetError(a7, @"NEConfigFailure");
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              HandleNELayer<17u>();
            }

            return 0;
          }
        }
      }
    }

    if (*(*a4 + 1307) != 1 || (ZinAneTd<11u>::SetDPE(v13, a1) & 1) != 0)
    {
      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      HandleNELayer<17u>();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      HandleNELayer<17u>();
      return 0;
    }
  }

  return result;
}

uint64_t HandleCcdmaLayer<11u>(ZinCcdmaLayer *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, CFArrayRef *a6)
{
  if (*(*a3 + 1163))
  {
    if (ZinEngineLayer::RunsOnDeviceId(a1, (*a3 + 2248), a4, a5))
    {
      ZinCcdmaLayer::GetCcdmaMirInfo(a1);
      (*(*a1 + 608))(a1);
      ZinAneTd<11u>::SetCcdmaSrcMode();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      HandleCcdmaLayer<11u>(a3, a4, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    HandleCcdmaLayer<11u>();
  }

  ZinIrNetworkStatus::SetError(a6, @"CodeGenerationFailure");
  return 0;
}

void sub_1A696454C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a13);
  if (a20 == 1 && __p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  v25 = *(v22 - 80);
  if (v25)
  {
    *(v22 - 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinAneTd<11u>::CodegenIntermediateMCacheDSIDs(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v7 = *a3;
  v8 = *(a3[1] + 162);
  v9 = *(a2 + 520);
  v10 = v9[1273];
  if (v10 == 3)
  {
    goto LABEL_19;
  }

  DSIDFromPriorityHalAndSecureMode = GetDSIDFromPriorityHalAndSecureMode(v10, *a3, *(a3[1] + 162));
  ZinAneTd<11u>::SetTileDmaSrc1DataSetId(a1, DSIDFromPriorityHalAndSecureMode);
  if (*(v7 + 1312) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v12 = *(*(a2 + 520) + 1273);
    if (v12 == 2)
    {
      if ((a4[2] & 1) == 0)
      {
        ZinAssertImpl("Missing Bar for MCache HighNonSelfReplaceable");
      }

      v13 = *a4;
      goto LABEL_16;
    }

    if (v12 == 1)
    {
      if (a4[10] == 1)
      {
        v13 = *(a4 + 4);
        goto LABEL_16;
      }
    }

    else
    {
      if (*(*(a2 + 520) + 1273))
      {
        v13 = 0;
        goto LABEL_16;
      }

      if (a4[6] == 1)
      {
        v13 = *(a4 + 2);
LABEL_16:
        ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1088, v13, 0, 0, 0, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = *(a2 + 520);
        goto LABEL_19;
      }
    }

    ZinAssertImpl("Missing Bar for MCache");
  }

  v9 = *(a2 + 520);
  if (!DSIDFromPriorityHalAndSecureMode && v9[1265] == 2)
  {
    return 0;
  }

LABEL_19:
  v14 = v9[1274];
  if (v14 != 3)
  {
    v15 = GetDSIDFromPriorityHalAndSecureMode(v14, v7, v8);
    ZinAneTd<11u>::SetTileDmaSrc2DataSetId(a1, v15);
    if (*(v7 + 1312) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v16 = *(*(a2 + 520) + 1274);
      if (v16 == 2)
      {
        if ((a4[2] & 1) == 0)
        {
          ZinAssertImpl("Missing Bar for MCache HighNonSelfReplaceable");
        }

        v17 = *a4;
        goto LABEL_34;
      }

      if (v16 == 1)
      {
        if (a4[10] == 1)
        {
          v17 = *(a4 + 4);
          goto LABEL_34;
        }
      }

      else
      {
        if (*(*(a2 + 520) + 1274))
        {
          v17 = 0;
          goto LABEL_34;
        }

        if (a4[6] == 1)
        {
          v17 = *(a4 + 2);
LABEL_34:
          ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1089, v17, 0, 0, 0, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = *(a2 + 520);
          goto LABEL_37;
        }
      }

      ZinAssertImpl("Missing Bar for MCache");
    }

    v9 = *(a2 + 520);
    if (!v15 && v9[1270] == 2)
    {
      return 0;
    }
  }

LABEL_37:
  v18 = v9[1275];
  if (v18 != 3)
  {
    v19 = GetDSIDFromPriorityHalAndSecureMode(v18, v7, v8);
    ZinAneTd<11u>::SetTileDmaDstDataSetId(a1, v19);
    if (*(v7 + 1312) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v20 = *(*(a2 + 520) + 1275);
      if (v20 == 2)
      {
        if ((a4[2] & 1) == 0)
        {
          ZinAssertImpl("Missing Bar for MCache HighNonSelfReplaceable");
        }

        v21 = *a4;
        goto LABEL_52;
      }

      if (v20 == 1)
      {
        if (a4[10] == 1)
        {
          v21 = *(a4 + 4);
          goto LABEL_52;
        }
      }

      else
      {
        if (*(*(a2 + 520) + 1275))
        {
          v21 = 0;
          goto LABEL_52;
        }

        if (a4[6] == 1)
        {
          v21 = *(a4 + 2);
LABEL_52:
          ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, 1344, v21, 0, 0, 0, 0);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = *(a2 + 520);
          goto LABEL_55;
        }
      }

      ZinAssertImpl("Missing Bar for MCache");
    }

    v9 = *(a2 + 520);
    if (!v19 && v9[1268] == 2)
    {
      return 0;
    }
  }

LABEL_55:
  v23 = v9[1276];
  if (v23 != 3)
  {
    v24 = GetDSIDFromPriorityHalAndSecureMode(v23, v7, v8);
    v25 = *(a2 + 160);
    if (v25 && (v26 = *(v25 + 888)) != 0)
    {
      v27 = *(v26 + 40);
    }

    else
    {
      v27 = 0;
    }

    v28 = !v25 || v27 == 0;
    v29 = !v28;
    if (*(v7 + 4))
    {
      v30 = 0;
      v31 = 40;
      __format = "Missing Bar for MCache";
      do
      {
        if (v29)
        {
          ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(*(a2 + 520));
          if (MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment) > v30)
          {
            if (*(*(v27 + 32) + v31))
            {
              ZinAneTd<10u>::SetKernelDmaSrcDataSetId(a1, v24, v30);
              if (*(v7 + 1312) == 1)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, "");
                v33 = *(*(a2 + 520) + 1276);
                if (v33 == 2)
                {
                  if (a4[2] != 1)
                  {
                    __format = "Missing Bar for MCache HighNonSelfReplaceable";
LABEL_88:
                    ZinAssertImpl(__format, __format);
                  }

                  v34 = *a4;
                }

                else if (v33 == 1)
                {
                  if (a4[10] != 1)
                  {
                    goto LABEL_88;
                  }

                  v34 = *(a4 + 4);
                }

                else if (*(*(a2 + 520) + 1276))
                {
                  v34 = 0;
                }

                else
                {
                  if ((a4[6] & 1) == 0)
                  {
                    goto LABEL_88;
                  }

                  v34 = *(a4 + 2);
                }

                ZinAneTdHw_v11::AddRelocInfo((a1 + 8), &__p, (v30 + 1606) & 0x3FFFFFFF, v34, 0, 0, 0, 0);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        ++v30;
        v31 += 64;
      }

      while (v30 < *(v7 + 4));
    }
  }

  return 1;
}

void sub_1A6964B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetPatchSettings<11u>(uint64_t a1, uint64_t a2)
{
  OCGSize = MirInfoChannelAssignment::GetOCGSize((a2 + 68));
  v5 = ZinAneTd<11u>::SetPatchHeight(a1, OCGSize);
  NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 68));
  v7 = v5 & ZinAneTd<11u>::SetPatchWidth(a1, NumNeededNEs);
  v8 = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 48));
  v9 = ZinAneTd<11u>::SetTileHeight(a1, v8);
  CPUSubtype = ZinIrTarget::GetCPUSubtype((a2 + 48));
  v11 = v7 & v9 & ZinAneTd<11u>::SetTileOverlap(a1, CPUSubtype);
  OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom((a2 + 48));
  v13 = ZinAneTd<11u>::SetTileOverlapPadBottom(a1, OverlapPadBottom);
  v14 = MirInfoChannelAssignment::GetOCGSize((a2 + 48));
  v15 = v13 & ZinAneTd<11u>::SetTileOverlapPadTop(a1, v14);
  OverlapPadReflect = ZinMirL2Config::Tile::GetOverlapPadReflect((a2 + 48));
  ZinAneTd<7u>::SetTileOverlapPadReflect(a1, OverlapPadReflect);
  return v11 & v15;
}

uint64_t PECodegenUtils::HandlePrimarySourceTensor<11u>(ZinIrOpLayer *a1, uint64_t a2, uint64_t a3, ZinIrHalH13g *a4)
{
  v21 = 0;
  InputTensor = ZinIrOpLayer::GetInputTensor(a1, 0);
  (*(*a1 + 408))(v20, a1);
  v19 = 0;
  if (ZinMemSourceIndexTranslator::GetL2SrcType(a1, 0, &v19))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      PECodegenUtils::HandlePrimarySourceTensor<17u>();
      return 0;
    }
  }

  else
  {
    v10 = v19 != 0;
    ZinMemSourceIndexTranslator::GetDMASrcIndex(a1, 0, &v21, v8);
    ZinAneTd<11u>::SetOrReturnWin(a4, v20[3]);
    ZinAneTd<11u>::SetOrReturnHin(a4, v20[2]);
    ZinAneTd<11u>::SetOrReturnDin(a4, v20[4]);
    ZinAneTd<11u>::SetOrReturnCin(a4, v20[1]);
    TileSrc = ZinMirL2Config::GetTileSrc(*(a1 + 65) + 112, v19);
    ZinAneTd<11u>::SetCommonInFmt(a4, *(TileSrc + 56));
    L2RdMode = ZinEngineLayerMirInfo::GetL2RdMode(*(a1 + 65), v19);
    ZinAneTd<11u>::SetL2Src1SourceType(a4, L2RdMode);
    v13 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && !*(a1 + 47);
    v14 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && *(a1 + 47) == 1;
    if (!ZinEngineLayerMirInfo::HasDmaRead(*(a1 + 65), v19))
    {
      return ZinCodegen::SetPrimaryL2SourceBuffer<11u>(a2, a1, a4);
    }

    v15 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(a1 + 24 * v21 + 448);
    if (v13 || v14)
    {
      v17 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392);
      v18 = (*(*v17 + 344))(v17);
    }

    else
    {
      v18 = 0;
    }

    result = ZinCodegen::SetPrimarySourceDMA<11u>(InputTensor, a4, *(a1 + 65), v21, v10, *(a2 + 560), *(a2 + 592), v13, v14, v18, v16);
    if (result)
    {
      return ZinCodegen::SetPrimaryL2SourceBuffer<11u>(a2, a1, a4);
    }
  }

  return result;
}

BOOL PECodegenUtils::HandleSecondarySourceTensor<11u>(ZinIrContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, ZinIrHalH13g *a5)
{
  v26 = a5;
  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  if (MemoryPools[1] - *MemoryPools < 9uLL)
  {
    return 1;
  }

  v25 = 0;
  InputTensor = ZinIrOpLayer::GetInputTensor(a1, 1uLL);
  v24 = 0;
  if (ZinMemSourceIndexTranslator::GetL2SrcType(a1, 1uLL, &v24))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PECodegenUtils::HandlePrimarySourceTensor<17u>();
    return 0;
  }

  v14 = v24 != 0;
  ZinMemSourceIndexTranslator::GetDMASrcIndex(a1, 1, &v25, v13);
  v15 = v24;
  if (v24 == 1)
  {
    TileSrc = ZinMirL2Config::GetTileSrc(a2 + 112, 1u);
    ZinAneTd<11u>::SetCommonSrc2InFmt(a5, *(TileSrc + 56));
    ZinAneTd<11u>::SetPESecondSource(a5, 2);
    L2RdMode = ZinEngineLayerMirInfo::GetL2RdMode(a2, v24);
    ZinAneTd<11u>::SetL2Src2SourceType(a5, L2RdMode);
    v15 = v24;
  }

  if (v15 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = ZinEngineLayerMirInfo::HasDmaRead(a2, v15);
  }

  v19 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && !*(a1 + 47);
  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && *(a1 + 47) == 1)
  {
    v20 = 1;
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v20 = 0;
    if (!v18)
    {
      goto LABEL_31;
    }
  }

  if (v19 | v20)
  {
    v21 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392);
    v22 = (*(*v21 + 344))(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(a1 + 24 * v25 + 448);
  if (v20)
  {
    if (v23)
    {
    }

    if ((ZinCodegen::SetPrimarySourceDMA<11u>(InputTensor, a5, a2, v25, v14, *(a3 + 560), *(a3 + 592), v19, 1u, v22, v23) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v23)
    {
    }

    result = ZinCodegen::SetSecondarySourceDMA<11u>(InputTensor, a5, a2, v25, *(a3 + 560), *(a3 + 592), v19, 0, v22, v23, a4);
    if (!result)
    {
      return result;
    }
  }

LABEL_31:
  if (v24 != 2)
  {
    return v24 != 1 || (ZinCodegen::SetSecondaryL2SourceBuffer<11u>(a3, a1, a5) & 1) != 0;
  }

  if ((*(a3 + 1180) & 1) == 0)
  {
    ZinAssertImpl("Error: PE indexing is not supported");
  }

  result = PECodegenUtils::HandlePEIndexingBuffer<11u>(InputTensor, a3, a2, &v26);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t PECodegenUtils::HandleTernarySourceTensor<11u>(ZinIrContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, ZinIrHalH13g *a5)
{
  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  if (MemoryPools[1] - *MemoryPools < 0x11uLL)
  {
    return 1;
  }

  v19 = 0;
  InputTensor = ZinIrOpLayer::GetInputTensor(a1, 2uLL);
  v18 = 0;
  if (ZinMemSourceIndexTranslator::GetL2SrcType(a1, 2uLL, &v18))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PECodegenUtils::HandlePrimarySourceTensor<17u>();
    return 0;
  }

  ZinMemSourceIndexTranslator::GetDMASrcIndex(a1, 2, &v19, v13);
  if (v18 == 1)
  {
    TileSrc = ZinMirL2Config::GetTileSrc(a2 + 112, 1u);
    ZinAneTd<11u>::SetCommonSrc2InFmt(a5, *(TileSrc + 56));
    L2RdMode = ZinEngineLayerMirInfo::GetL2RdMode(a2, v18);
    ZinAneTd<11u>::SetL2Src2SourceType(a5, L2RdMode);
  }

  v16 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && !*(a1 + 47);
  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a1 + 392) && *(a1 + 47) == 1)
  {
    v17 = RawOrShared<ZinDMALayer>::unwrap_const_ptr(a1 + 24 * v19 + 448);
    if (v17)
    {
    }

    return ZinCodegen::SetSecondarySourceDMA<11u>(InputTensor, a5, a2, v19, *(a3 + 560), *(a3 + 592), v16, 1, 1, v17, a4);
  }

  if (v18 != 1)
  {
    return 1;
  }

  result = ZinCodegen::SetSecondaryL2SourceBuffer<11u>(a3, a1, a5);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t PECodegenUtils::HandleOutputTensor<11u>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 104);
  ZinAneTd<11u>::SetOrReturnWout(a4, *(a1 + 88));
  ZinAneTd<11u>::SetOrReturnHout(a4, *(a1 + 80));
  ZinAneTd<11u>::SetOrReturnDout(a4, *(a1 + 96));
  ZinAneTd<11u>::SetOrReturnCout(a4, *(a1 + 72));
  ZinAneTd<11u>::SetCommonOutFmt(a4, v10);
  ZinAneTd<11u>::SetL2ResultType(a4, *(a2 + 1408));
  if (*(a2 + 1408) - 1 <= 1 && !ZinCodegen::SetResultDMA<11u>(a1, a4, a2, a3[70], a3[74], a5))
  {
    return 0;
  }

  v11 = *(ZinEngineLayerMirInfo::GetL2WrSymbol(a2) + 24) % a3[55] / a3[56];
  *(a4 + 848) = *(a4 + 848) & 0xFFE0000F | (16 * (v11 & 0x1FFFF));
  if (!CheckRegValueRange(v11, (*(a4 + 1040) + 384)))
  {
    return 0;
  }

  *(a4 + 852) = *(a4 + 852) & 0xFFE0000F | (16 * (*(a2 + 200) & 0x1FFFF));
  if (!CheckRegValueRange(*(a2 + 200), (*(a4 + 1040) + 392)))
  {
    return 0;
  }

  *(a4 + 864) = *(a4 + 864) & 0xFFE0000F | (16 * (*(a2 + 208) & 0x1FFFF));
  if (!CheckRegValueRange(*(a2 + 208), (*(a4 + 1040) + 416)))
  {
    return 0;
  }

  *(a4 + 860) = *(a4 + 860) & 0xFFE0000F | (16 * (*(a2 + 216) & 0x1FFFF));
  if (!CheckRegValueRange(*(a2 + 216), (*(a4 + 1040) + 408)))
  {
    return 0;
  }

  *(a4 + 856) = *(a4 + 856) & 0xFFE0000F | (16 * (*(a2 + 192) & 0x1FFFF));
  if (!CheckRegValueRange(*(a2 + 192), (*(a4 + 1040) + 400)))
  {
    return 0;
  }

  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(a2);
  v17 = *(L2WrSymbol + 680);
  CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v17);
  ZinAneTd<4u>::SetL2ResultWrapAddr(a4, CompressedBytes);
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v17);
  ZinAneTd<4u>::SetL2ResultWrapAddrOffset(a4, SrcSymbol);
  v15 = ZinCodegen::SetL2ResultWrapInfo<11u>(a4, L2WrSymbol);
  if (v15)
  {
    ZinAneTd<4u>::SetL2OutputCropOffsetXLSBs(a4, *(a2 + 232));
  }

  return v15;
}

uint64_t PECodegenUtils::HandlePEElementWiseLayer<11u>(uint64_t a1, ZinCodegen *this, ZinIrHalH13g *a3)
{
  HWTaskType = ZinCodegen::GetHWTaskType(this, this);
  ZinAneTd<11u>::SetCommonTaskType(a3, HWTaskType);
  v7 = (*(*this + 648))(this);
  ZinAneTd<11u>::SetPESrc1ReLu(a3, v7);
  v8 = (*(*this + 656))(this);
  ZinAneTd<11u>::SetPESrc2ReLu(a3, v8);
  v9 = (*(*this + 680))(this);
  ZinAneTd<11u>::SetPESrc1Transpose(a3, v9);
  v10 = (*(*this + 688))(this);
  ZinAneTd<11u>::SetPESrc2Transpose(a3, v10);
  if ((*(*this + 696))(this) && *((*(*this + 736))(this) + 88))
  {
    v11 = (*(*this + 736))(this);
    ZinAneTd<11u>::SetPESrc1Broadcast(a3, *(v11 + 88) + 16);
  }

  if ((*(*this + 704))(this) && *((*(*this + 744))(this) + 88))
  {
    v12 = (*(*this + 744))(this);
    ZinAneTd<11u>::SetPESrc2Broadcast(a3, *(v12 + 88) + 16, 0);
  }

  if (RawOrShared<ZinIndexLayer>::unwrap_const_ptr(this + 816))
  {
    RawOrShared<ZinIndexLayer>::unwrap_const_ptr(this + 816);
    ZinIrHalH13g::~ZinIrHalH13g(a3);
    RawOrShared<ZinTransposeLayer>::unwrap_const_ptr(this + 840);
    ZinIrHalH13g::~ZinIrHalH13g(a3);
    if (RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(this + 864) && *(RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(this + 864) + 88))
    {
      RawOrShared<ZinBroadcastLayer>::unwrap_const_ptr(this + 864);
      ZinIrHalH13g::~ZinIrHalH13g(a3);
    }

    ZinIrHalH13g::~ZinIrHalH13g(a3);
  }

  ZinIrScaledEWInfo::ZinIrScaledEWInfo(&v32, 0, 0, 0, 1.0, 1.0, 0.0);
  v13 = RawOrShared<ZinScaledElementWiseLayer>::unwrap_const_ptr(this + 888);
  if (v13)
  {
    v14 = *(v13 + 88);
    *v33 = *(v14 + 8);
    v15 = *(v14 + 28);
    *&v33[4] = *(v14 + 12);
    *&v33[20] = v15;
    v16 = (*(*this + 608))(this);
  }

  else
  {
    v16 = 0;
  }

  ZinAneTd<11u>::SetPEBias(a3, *&v33[16]);
  ZinAneTd<11u>::SetPEScale(a3, *&v33[12]);
  ZinAneTd<11u>::SetPEPreScale(a3, *&v33[8]);
  if (!ZinAneTd<11u>::SetPEOperationMode(a3, *&v33[4]))
  {
    ZinIrHalH13g::~ZinIrHalH13g(&v32);
    return 0;
  }

  ZinAneTd<11u>::SetPEFirstSource(a3, v33[20] ^ 1);
  if (v33[21])
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  ZinAneTd<11u>::SetPESecondSource(a3, v18);
  ZinIrHalH13g::~ZinIrHalH13g(&v32);
  if (!PECodegenUtils::HandlePECommonPostOps<11u>(a1, a3, this))
  {
    return 0;
  }

  (*(*this + 416))(&v32, this);
  ZinAneTd<11u>::SetOrReturnHout(a3, *&v33[8]);
  ZinAneTd<11u>::SetOrReturnWout(a3, *&v33[16]);
  ZinAneTd<11u>::SetOrReturnCout(a3, *v33);
  ZinAneTd<11u>::SetOrReturnDout(a3, v34);
  Dout = ZinGetRegisterProgramming<7u>::GetDout(a3 + 8);
  Wout = ZinGetRegisterProgramming<11u>::GetWout(a3 + 8);
  Hin = ZinGetRegisterProgramming<11u>::GetHin(a3 + 8);
  Hout = ZinGetRegisterProgramming<11u>::GetHout(a3 + 8);
  Cin = ZinGetRegisterProgramming<11u>::GetCin(a3 + 8);
  Cout = ZinGetRegisterProgramming<11u>::GetCout(a3 + 8);
  Din = ZinGetRegisterProgramming<11u>::GetDin(a3 + 8);
  v26 = ZinGetRegisterProgramming<11u>::GetDout(a3 + 8);
  v29 = Dout == Wout && Hin == Hout && Cin == Cout && Din == v26;
  v30 = v29;
  if (!v29 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PECodegenUtils::HandlePEElementWiseLayer<17u>();
  }

  return v30;
}

void sub_1A6965BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrHalH13g::~ZinIrHalH13g(va);
  _Unwind_Resume(a1);
}

uint64_t PECodegenUtils::HandlePEGOCLayer<11u>(uint64_t a1, ZinIrContext *this, uint64_t a3)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v38 = 0;
  v39 = 0;
  __p = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *MemoryPools, *(MemoryPools + 8), (*(MemoryPools + 8) - *MemoryPools) >> 3);
  v7 = RawOrShared<ZinTernaryDynamicGOCLayer>::unwrap_const_ptr(this + 768);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PECodegenUtils::HandlePEGOCLayer<8u>();
    }

    goto LABEL_15;
  }

  v9 = v7;
  HWTaskType = ZinCodegen::GetHWTaskType(this, v8);
  ZinAneTd<11u>::SetCommonTaskType(a3, HWTaskType);
  v11 = (*(*this + 648))(this);
  ZinAneTd<11u>::SetPESrc1ReLu(a3, v11);
  v12 = (*(*this + 656))(this);
  ZinAneTd<11u>::SetPESrc2ReLu(a3, v12);
  v13 = (*(*this + 680))(this);
  ZinAneTd<11u>::SetPESrc1Transpose(a3, v13);
  v14 = *(v9 + 88);
  ZinAneTd<11u>::SetPESrc2Transpose(a3, *(v14 + 80));
  if ((*(*this + 696))(this) && *((*(*this + 736))(this) + 88))
  {
    v15 = (*(*this + 736))(this);
    ZinAneTd<11u>::SetPESrc1Broadcast(a3, *(v15 + 88) + 16);
  }

  if (*(v14 + 64))
  {
    ZinAneTd<11u>::SetPESrc2Broadcast(a3, v14 + 40, 1);
  }

  v16 = *(RawOrShared<ZinTernaryDynamicGOCLayer>::unwrap_const_ptr(this + 768) + 88);
  if (!v16)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_39;
  }

  ZinAneTd<11u>::SetPEPreScale(a3, *(v16 + 12));
  ZinAneTd<11u>::SetPEFirstSource(a3, *(v16 + 16) ^ 1);
  if (*(v16 + 17))
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  ZinAneTd<11u>::SetPESecondSource(a3, v17);
  if ((*(*this + 832))(this))
  {
    v18 = 1;
LABEL_19:
    ZinAneTd<11u>::SetPECondition(a3, v18);
    goto LABEL_20;
  }

  if ((*(*this + 840))(this))
  {
    v20 = *((*(*this + 856))(this) + 176) - 25;
    if (v20 >= 6)
    {
      ZinAssertImpl("Error: Invalid non linear mode");
    }

    v18 = dword_1A75D376C[v20];
    goto LABEL_19;
  }

LABEL_20:
  if (*(a1 + 1179) == 1)
  {
    PieceWiseLinearUnitUtils::ProgramPieceWiseLUTForActivationGOCOrGOCReLUAndQuantizationScale<7u>(a3, this);
  }

  if ((*(*this + 720))(this))
  {
    v22 = (*(*this + 816))(this);
    v21.n128_u64[0] = ZinAneTd<11u>::SetPEOutputReLU(a3, (v22 + 176));
  }

  v23 = (*(*this + 440))(this, v21);
  ZinAneTd<11u>::SetPEOutputCtoW(a3, v23);
  (*(*this + 416))(v36, this);
  ZinAneTd<11u>::SetOrReturnHout(a3, v36[2]);
  ZinAneTd<11u>::SetOrReturnWout(a3, v36[3]);
  ZinAneTd<11u>::SetOrReturnCout(a3, v36[1]);
  ZinAneTd<11u>::SetOrReturnDout(a3, v36[4]);
  Dout = ZinGetRegisterProgramming<7u>::GetDout(a3 + 8);
  Wout = ZinGetRegisterProgramming<11u>::GetWout(a3 + 8);
  Hin = ZinGetRegisterProgramming<11u>::GetHin(a3 + 8);
  Hout = ZinGetRegisterProgramming<11u>::GetHout(a3 + 8);
  Cin = ZinGetRegisterProgramming<11u>::GetCin(a3 + 8);
  Cout = ZinGetRegisterProgramming<11u>::GetCout(a3 + 8);
  Din = ZinGetRegisterProgramming<11u>::GetDin(a3 + 8);
  v31 = ZinGetRegisterProgramming<11u>::GetDout(a3 + 8);
  v34 = Dout == Wout && Hin == Hout && Cin == Cout && Din == v31;
  v19 = v34;
  if (!v34 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PECodegenUtils::HandlePEElementWiseLayer<17u>();
  }

LABEL_39:
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  return v19;
}

void sub_1A69660E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL PECodegenUtils::HandlePEPoolLayer<11u>(uint64_t a1, ZinCodegen *a2, uint64_t a3)
{
  v6 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 744) + 88);
  if (ZinAneTd<11u>::SetCommonConvCfgKw(a3, *(v6 + 16)) && ZinAneTd<11u>::SetCommonConvCfgKh(a3, *(v6 + 24)) && ZinAneTd<11u>::SetCommonConvCfgSx(a3, *(v6 + 40)) && ZinAneTd<11u>::SetCommonConvCfgSy(a3, *(v6 + 44)) && ZinAneTd<11u>::SetCommonConvCfgOx(a3, 1uLL) && ZinAneTd<11u>::SetCommonConvCfgOy(a3, 1uLL) && (*(a3 + 524) = *(a3 + 524) & 0xFFC1FFFF | ((*(v6 + 64) & 0x1F) << 17), CheckRegValueRange(*(v6 + 64), (*(a3 + 1040) + 104))) && (*(a3 + 524) = *(a3 + 524) & 0xF83FFFFF | ((*(v6 + 72) & 0x1F) << 22), CheckRegValueRange(*(v6 + 72), (*(a3 + 1040) + 96))))
  {
    if ((*(*a2 + 648))(a2))
    {
      v7 = (*(*a2 + 648))(a2);
      ZinAneTd<11u>::SetPESrc1ReLu(a3, v7);
    }

    if ((*(*a2 + 608))(a2))
    {
      v8 = (*(*a2 + 656))(a2);
      ZinAneTd<11u>::SetPESrc2ReLu(a3, v8);
      v9 = (*(*a2 + 688))(a2);
      ZinAneTd<11u>::SetPESrc2Transpose(a3, v9);
    }

    v10 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 744) + 88);
    HWTaskType = ZinCodegen::GetHWTaskType(a2, v11);
    ZinAneTd<11u>::SetCommonTaskType(a3, HWTaskType);
    ZinAneTd<11u>::SetPEFirstSource(a3, 1);
    if (*(v10 + 116) == 1)
    {
      ZinAneTd<11u>::SetPESecondSource(a3, 2);
    }

    ZinAneTd<11u>::SetPEPreScale(a3, *(v10 + 112));
    v13 = *(v10 + 104);
    if (v13 == 2)
    {
      v14 = *(a3 + 904) & 0xFFFFFFFC | *(v10 + 108) ^ 1;
      v15 = 1;
      goto LABEL_27;
    }

    if (v13 == 1)
    {
      if (*(v10 + 100) == 4)
      {
        v14 = *(a3 + 904) | 3;
        v15 = 4;
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        PECodegenUtils::HandlePEPoolLayer<8u>();
      }
    }

    else if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        PECodegenUtils::HandlePEPoolLayer<8u>();
      }
    }

    else
    {
      if (*(v10 + 100) == 2)
      {
        v14 = *(a3 + 904) & 0xFFFFFFFC | 2;
        v15 = 2;
LABEL_27:
        *(a3 + 904) = v14;
        ZinAneTd<11u>::SetPaddingMode(a3, v15, 0);
        PECodegenUtils::HandlePECommonPostOps<11u>(a1, a3, a2);
        return 1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        PECodegenUtils::HandlePEPoolLayer<8u>();
      }
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      PECodegenUtils::HandlePEPoolLayer<8u>();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      PECodegenUtils::HandlePEPoolLayer<8u>();
      return 0;
    }
  }

  return result;
}

uint64_t PECodegenUtils::HandlePESecureFlushLayer<11u>(int8x16_t *a1, int a2)
{
  a1[34].i32[1] = a1[34].i32[1] & 0xFFFFFF8F | 0x20;
  ZinAneTd<11u>::SetCommonSrc2InFmt(a1, 2);
  ZinAneTd<11u>::SetNEOcgSize(a1, 3);
  ZinAneTd<8u>::SetKernelDmaSrcKid(a1, 0);
  ZinAneTd<8u>::SetKernelDmaSrcNoReuseHint(a1, 0);
  ZinAneTd<11u>::SetL2Src1ChannelStride(a1, 0);
  ZinAneTd<11u>::SetL2Src1DepthStride(a1, 0);
  ZinAneTd<11u>::SetL2Src1GroupStride(a1, 0);
  a1[50].i32[3] &= 0xFFE0000F;
  ZinAneTd<11u>::SetL2Src2ChannelStride(a1, 0);
  ZinAneTd<11u>::SetL2Src2DepthStride(a1, 0);
  ZinAneTd<11u>::SetL2Src2GroupStride(a1, 0);
  a1[52].i32[0] &= 0xFFE0000F;
  ZinAneTd<11u>::SetKernelFmt(a1, 2);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  ZinAneTd<11u>::SetKernelMode(a1, 0);
  ZinAneTd<11u>::SetOpMode(a1, 0);
  ZinAneTd<11u>::SetNEPostScale(a1, 0, 1);
  a1[56].i32[2] &= 0xFFF3FFFF;
  ZinAneTd<11u>::SetPatchHeight(a1, 1uLL);
  ZinAneTd<11u>::SetTileDmaDstDepthStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaDstGroupStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaDstChannelStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaDstRowStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaSrc1CacheHint(a1, 1, 1, 1);
  ZinAneTd<11u>::SetTileDmaSrc2CacheHint(a1, 1, 1, 1);
  ZinAneTd<11u>::SetTileDmaSrc1DepthStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaSrc1GroupStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaSrc1ChannelStride(a1, 0);
  ZinAneTd<11u>::SetTileDmaSrc1RowStride(a1, 0);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  a1[39] = vandq_s8(a1[39], v4);
  a1[36].i32[0] |= 1u;
  ZinAneTd<11u>::SetTileDmaSrc1Interleave(a1, 8u);
  a1[41].i32[0] = a1[41].i32[0] & 0xFFFFCFFF | 0x1000;
  a1[60].i32[0] &= ~0x1000000u;
  a1[62].i32[0] = a1[62].i32[0] & 0xF0CFCFFF | 0x8100000;
  ZinAneTd<11u>::SetL2Src1Interleave(a1, 8u);
  ZinAneTd<11u>::SetL2Src1SourceType(a1, 2);
  a1[52].i32[3] = a1[52].i32[3] & 0xFFFFFFFC | 1;
  (*(a1->i64[0] + 32))(a1, 18, 0);
  (*(a1->i64[0] + 32))(a1, 17, 0);
  (*(a1->i64[0] + 32))(a1, 22, 0);
  (*(a1->i64[0] + 32))(a1, 21, 0);
  (*(a1->i64[0] + 32))(a1, 16, 0);
  (*(a1->i64[0] + 32))(a1, 15, 0);
  (*(a1->i64[0] + 32))(a1, 20, 0);
  (*(a1->i64[0] + 32))(a1, 19, 0);
  if (a2 == 2)
  {
    ZinAneTd<11u>::SetOrReturnHin(a1, 4uLL);
    ZinAneTd<11u>::SetOrReturnWin(a1, 0x10uLL);
    ZinAneTd<11u>::SetOrReturnHout(a1, 4uLL);
    ZinAneTd<11u>::SetOrReturnWout(a1, 0x10uLL);
    ZinAneTd<11u>::SetPatchHeight(a1, 2uLL);
    ZinAneTd<11u>::SetTileHeight(a1, 4u);
    a1[52].i32[3] = a1[52].i32[3] & 0xFFFFF0F7 | 0x300;
    a1[53].i32[2] = a1[53].i32[2] & 0xFFE0000F | 0x10;
    a1[50].i32[3] = a1[50].i32[3] & 0xFFE0000F | 0x10;
    ZinAneTd<11u>::SetL2Src1Interleave(a1, 3u);
    a1[62].i32[0] = a1[62].i32[0] & 0xF0FFFFFF | 0x3000000;
    v7 = 64;
    a1[61].i32[0] = a1[61].i32[0] & 0x3F | 0x40;
    ZinAneTd<11u>::SetTileDmaSrc1Interleave(a1, 3u);
    a1[41].i32[0] &= 0xFFFFCFFF;
    v6 = (a1 + 600);
    v8 = 63;
  }

  else if (a2 == 1)
  {
    v6 = a1 + 41;
    v7 = 1;
    ZinAneTd<11u>::SetOrReturnHin(a1, 1uLL);
    ZinAneTd<11u>::SetOrReturnWin(a1, 0x10uLL);
    ZinAneTd<11u>::SetOrReturnHout(a1, 1uLL);
    ZinAneTd<11u>::SetOrReturnWout(a1, 0x10uLL);
    a1[52].i32[3] &= 0xFFFFFFF4;
    ZinAneTd<11u>::SetL2Src1DmaFormat(a1, 3);
    ZinAneTd<11u>::SetL2Src2DmaFormat(a1, 3);
    a1[60].i32[0] &= ~1u;
    a1[62].i32[0] = a1[62].i32[0] & 0xF0EFFFFF | 0x1000000;
    v8 = -12292;
  }

  else
  {
    result = 0;
    if (a2)
    {
      return result;
    }

    v6 = a1 + 62;
    ZinAneTd<11u>::SetCommonInFmt(a1, 3);
    ZinAneTd<11u>::SetCommonSrc2InFmt(a1, 3);
    a1[31].i32[1] = a1[31].i32[1] & 0xFFFFFFCF | 0x20;
    ZinAneTd<11u>::SetOrReturnHin(a1, 1uLL);
    ZinAneTd<11u>::SetOrReturnWin(a1, 0x40uLL);
    ZinAneTd<11u>::SetOrReturnHout(a1, 1uLL);
    ZinAneTd<11u>::SetOrReturnWout(a1, 0x40uLL);
    ZinAneTd<11u>::SetTileDmaDstandL2DstFifoMode(a1, 0);
    ZinAneTd<11u>::SetTileDmaDstandL2DstInterleave(a1, 8u);
    (*(a1->i64[0] + 32))(a1, 18, 1);
    (*(a1->i64[0] + 32))(a1, 17, 1);
    (*(a1->i64[0] + 32))(a1, 22, 1);
    (*(a1->i64[0] + 32))(a1, 21, 1);
    (*(a1->i64[0] + 32))(a1, 16, 1);
    (*(a1->i64[0] + 32))(a1, 15, 1);
    (*(a1->i64[0] + 32))(a1, 20, 1);
    (*(a1->i64[0] + 32))(a1, 19, 1);
    ZinAneTd<11u>::SetTileDmaSrc1Format(a1, 1, 0);
    v7 = 4096;
    v8 = -12289;
  }

  v6->i32[0] = v6->i32[0] & v8 | v7;
  return 1;
}

BOOL PECodegenUtils::HandlePEIndexingBuffer<11u>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(a3, 2u);
  if (!L2RdSymbol)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PECodegenUtils::HandlePEIndexingBuffer<8u>();
    return 0;
  }

  v9 = L2RdSymbol;
  if (ZinIrSymbol::GetMemType(L2RdSymbol) != 2)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PECodegenUtils::HandlePEIndexingBuffer<17u>();
    return 0;
  }

  v10 = *(v9 + 3);
  v11 = *(a2 + 448);
  if (v10 % v11)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    PECodegenUtils::HandlePEIndexingBuffer<8u>();
    return 0;
  }

  ZinAneTd<11u>::SetL2Src2BaseAddress(*a4, v10 % *(a2 + 440) / v11);
  v13 = *a4;
  TileSrc = ZinMirL2Config::GetTileSrc(a3 + 112, 2u);
  ZinAneTd<11u>::SetL2Src2ChannelStride(v13, *(TileSrc + 8));
  v15 = *a4;
  v16 = ZinMirL2Config::GetTileSrc(a3 + 112, 2u);
  ZinAneTd<11u>::SetL2Src2GroupStride(v15, *(v16 + 24));
  v17 = *a4;
  v18 = ZinMirL2Config::GetTileSrc(a3 + 112, 2u);
  ZinAneTd<11u>::SetL2Src2RowStride(v17, (a1 + 64), *v18, v19, v20);
  v21 = *a4;
  v22 = ZinMirL2Config::GetTileSrc(a3 + 112, 2u);
  ZinAneTd<11u>::SetL2Src2DepthStride(v21, *(v22 + 16));
  return 1;
}

BOOL PECodegenUtils::HandlePECommonPostOps<11u>(uint64_t a1, uint64_t a2, ZinCcdmaLayer *a3)
{
  (*(*a3 + 408))(v12, a3);
  if ((*(*a3 + 832))(a3))
  {
    v6 = 1;
LABEL_6:
    ZinAneTd<11u>::SetPECondition(a2, v6);
    goto LABEL_7;
  }

  if ((*(*a3 + 840))(a3))
  {
    v7 = *((*(*a3 + 856))(a3) + 176) - 25;
    if (v7 >= 6)
    {
      ZinAssertImpl("Error: Invalid non linear mode");
    }

    v6 = dword_1A75D376C[v7];
    goto LABEL_6;
  }

LABEL_7:
  if (!RawOrShared<ZinReductionLayer>::unwrap_const_ptr(a3 + 960) || (CodegenReduction<11u>(a3, v12, a2) & 1) != 0)
  {
    if (*(a1 + 1179) == 1)
    {
      if (RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(a3 + 1008))
      {
        RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(a3 + 1008);
      }

      else
      {
        if (!RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a3 + 1032))
        {
          PieceWiseLinearUnitUtils::ProgramPieceWiseLUTForActivationGOCOrGOCReLUAndQuantizationScale<7u>(a2, a3);
          goto LABEL_13;
        }

        RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a3 + 1032);
      }

      ZinCcdmaLayer::GetCcdmaMirInfo(a3);
      ZinPELayer::GetOutputBias(a3);
      (*(*a3 + 808))(a3);
      ZinAssertImpl("Error: Invalid access to the piece wise linear LUT");
    }

LABEL_13:
    if ((*(*a3 + 720))(a3))
    {
      v9 = (*(*a3 + 816))(a3);
      v8.n128_u64[0] = ZinAneTd<11u>::SetPEOutputReLU(a2, (v9 + 176));
    }

    v10 = (*(*a3 + 440))(a3, v8);
    ZinAneTd<11u>::SetPEOutputCtoW(a2, v10);
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    PECodegenUtils::HandlePECommonPostOps<17u>();
    return 0;
  }

  return result;
}

uint64_t CodegenReduction<11u>(ZinPEElementWiseLayer *a1, _DWORD *a2, uint64_t a3)
{
  v6 = *(*(RawOrShared<ZinReductionLayer>::unwrap_const_ptr(a1 + 960) + 88) + 12);
  v14 = 0;
  v7 = *(a1 + 250);
  OutputReductionFinalScaleValue = ZinPEElementWiseLayer::GetOutputReductionFinalScaleValue(a1, &v14 + 1);
  OutputReductionEpsilonValue = ZinPEElementWiseLayer::GetOutputReductionEpsilonValue(a1, &v14);
  result = 0;
  if (OutputReductionFinalScaleValue)
  {
    if (OutputReductionEpsilonValue)
    {
      v11 = a2[6] * a2[4] * a2[8];
      v12 = CodegenReductionMode<11u>(v6, a3);
      v13 = v12 & CodegenReductionPostProcess<11u>(v7, a3);
      return v13 & CodegenReductionFinalScaleEpsilon<11u>(v6, v11, a3, *(&v14 + 1), *&v14);
    }
  }

  return result;
}

uint64_t CodegenReductionMode<11u>(int a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11[0] = xmmword_1A75D3724;
  v11[1] = *algn_1A75D3734;
  v11[2] = xmmword_1A75D3744;
  std::map<ZinIrReductionType,BOOL CodegenReductionMode<11u>(ZinIrReductionType,ZinAneTd<11u> *)::ModeInfo,std::less<ZinIrReductionType>,std::allocator<std::pair<ZinIrReductionType const,BOOL CodegenReductionMode<11u>(ZinIrReductionType,ZinAneTd<11u> *)::ModeInfo>>>::map[abi:ne200100](v9, v11, 4);
  v4 = v10[0];
  if (!v10[0])
  {
    goto LABEL_15;
  }

  v5 = v10;
  do
  {
    if (*(v4 + 7) >= a1)
    {
      v5 = v4;
    }

    v4 = v4[*(v4 + 7) < a1];
  }

  while (v4);
  if (v5 != v10 && *(v5 + 7) <= a1)
  {
    v8 = *(v5 + 9);
    *(a2 + 904) = *(a2 + 904) & 0xFFFFFFFC | v5[4] & 3;
    ZinAneTd<11u>::SetPaddingMode(a2, v8, 0);
    v6 = 1;
  }

  else
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CodegenReductionMode<17u>();
    }

    v6 = 0;
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v9, v10[0]);
  return v6;
}

BOOL CodegenReductionPostProcess<11u>(signed int a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = xmmword_1A75D3754;
  v13 = 0x200000010;
  std::map<ZinIrNonLinearMode,unsigned int>::map[abi:ne200100](&v9, &v12, 3);
  *&v12 = 0x30000000FLL;
  std::__tree<std::__value_type<ZinIrNonLinearMode,unsigned int>,std::__map_value_compare<ZinIrNonLinearMode,std::__value_type<ZinIrNonLinearMode,unsigned int>,std::less<ZinIrNonLinearMode>,true>,std::allocator<std::__value_type<ZinIrNonLinearMode,unsigned int>>>::__emplace_unique_key_args<ZinIrNonLinearMode,std::pair<ZinIrNonLinearMode const,unsigned int>>(&v9, &v12, &v12);
  v4 = v10[0];
  if (!v10[0])
  {
    goto LABEL_15;
  }

  v5 = v10;
  do
  {
    if (*(v4 + 7) >= a1)
    {
      v5 = v4;
    }

    v4 = v4[*(v4 + 7) < a1];
  }

  while (v4);
  if (v5 != v10 && *(v5 + 7) <= a1)
  {
    v8 = *(v5 + 8);
    *(a2 + 904) = *(a2 + 904) & 0xFFFFCFFF | ((v5[4] & 3) << 12);
    v6 = CheckRegValueRange(v8, (*(a2 + 1040) + 616));
  }

  else
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrEnumToStringUtil::NonLinearModeToString(a1, &v12);
      CodegenReductionPostProcess<17u>(&v12, buf);
    }

    v6 = 0;
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v9, v10[0]);
  return v6;
}

BOOL CodegenReductionFinalScaleEpsilon<11u>(int a1, unsigned int a2, uint64_t a3, float a4, float a5)
{
  _S8 = a5;
  if (a1 == 3)
  {
    a4 = (1.0 / a2) * a4;
  }

  if (a4 == 0.0 || ((LODWORD(a4) & 0x7FFFFFFFu) < 0x7F800001 ? (_ZF = (LODWORD(a4) & 0x7F800000) == 0) : (_ZF = 1), _ZF))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      CodegenReductionFinalScaleEpsilon<20u>();
      return 0;
    }
  }

  else
  {
    ZinAneTd<11u>::SetPEFinalScale(a3, a4);
    __asm { FCVT            H0, S8 }

    *(a3 + 912) = _H0;
    return 1;
  }

  return result;
}

uint64_t std::map<ZinIrReductionType,BOOL CodegenReductionMode<11u>(ZinIrReductionType,ZinAneTd<11u> *)::ModeInfo,std::less<ZinIrReductionType>,std::allocator<std::pair<ZinIrReductionType const,BOOL CodegenReductionMode<11u>(ZinIrReductionType,ZinAneTd<11u> *)::ModeInfo>>>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 12 * a3;
    do
    {
      std::__tree<std::__value_type<ZinIrReductionType,BOOL CodegenReductionMode<17u>(ZinIrReductionType,ZinAneTd<17u> *)::ModeInfo>,std::__map_value_compare<ZinIrReductionType,std::__value_type<ZinIrReductionType,BOOL CodegenReductionMode<17u>(ZinIrReductionType,ZinAneTd<17u> *)::ModeInfo>,std::less<ZinIrReductionType>,true>,std::allocator<std::__value_type<ZinIrReductionType,BOOL CodegenReductionMode<17u>(ZinIrReductionType,ZinAneTd<17u> *)::ModeInfo>>>::__emplace_hint_unique_key_args<ZinIrReductionType,std::pair<ZinIrReductionType const,BOOL CodegenReductionMode<17u>(ZinIrReductionType,ZinAneTd<17u> *)::ModeInfo> const&>(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 12;
    }

    while (v6);
  }

  return a1;
}

double PECodegenUtils::HandlePECommonPostOps<11u>(uint64_t a1, uint64_t a2, ZinCcdmaLayer *a3)
{
  if ((*(*a3 + 832))(a3))
  {
    v6 = 1;
LABEL_6:
    ZinAneTd<11u>::SetPECondition(a2, v6);
    goto LABEL_7;
  }

  if ((*(*a3 + 840))(a3))
  {
    v7 = *((*(*a3 + 856))(a3) + 176) - 25;
    if (v7 >= 6)
    {
      ZinAssertImpl("Error: Invalid non linear mode");
    }

    v6 = dword_1A75D376C[v7];
    goto LABEL_6;
  }

LABEL_7:
  if ((*(a1 + 1648) & 1) == 0)
  {
    if ((*(*a3 + 712))(a3))
    {
      v8 = (*(*a3 + 808))(a3);
      if (ZinQuantLayer::HasZeroPoint(v8))
      {
        ZinAssertImpl("Unexpected quantization zero_point\n");
      }
    }
  }

  if (*(a1 + 1179) == 1)
  {
    PieceWiseLinearUnitUtils::ProgramPieceWiseLUTForActivationGOCOrGOCReLUAndQuantizationScale<7u>(a2, a3);
  }

  if ((*(*a3 + 720))(a3))
  {
    v10 = ((*(*a3 + 816))(a3) + 176);

    *&result = ZinAneTd<11u>::SetPEOutputReLU(a2, v10);
  }

  return result;
}

BOOL ZinAneTd<11u>::ValidateOCGSizes(_DWORD *a1, uint64_t a2, const ZinIrHalParameters *a3)
{
  v5 = a1[125];
  v6 = *(*(a2 + 88) + 8) - 93;
  v7 = v6 > 5;
  v8 = (1 << v6) & 0x31;
  v9 = v7 || v8 == 0;
  if (v9 && !RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648))
  {
    return 1;
  }

  v10 = a1[130] & 7;
  v11 = a1[131];
  v12 = (v11 >> 28) & 3;
  v13 = v11 >> 30;
  v14 = a1[132];
  v15 = (v14 >> 13) & 3;
  if ((a1[137] & 0xC) == 4)
  {
    v16 = v12 * v13 * v15;
    if (v16 > 3)
    {
      if (v16 == 4)
      {
        if (v10 >= 4)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }

      if (v16 == 8)
      {
        if (v10 >= 3)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v16 == 1)
      {
        if (v10 >= 6)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }

      if (v16 == 2)
      {
        if (v10 >= 5)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

LABEL_68:
        v20 = v14 & 0x1F;
        if ((a1[132] & 0x1Fu) < 2)
        {
          return 1;
        }

        v30 = 0;
        v23.i64[1] = 1 << v10;
        NESmallSourceMode = ZinAneTd<11u>::GetNESmallSourceMode(a1);
        v21 = a1[132] >> 6;
        v23.i64[0] = v20;
        v25 = v21;
        v26 = v12;
        v27 = v13;
        v28 = v15;
        v22 = a1[125] & 3;
        if (v22 > 1)
        {
          if (v22 != 2)
          {
            ZinAssertImpl("Error: Invalid tensor format", *&v23);
          }

          v22 = 3;
        }

        else if (!v22)
        {
          v22 = 2;
        }

        v24 = v22;
        return ZinMirConvUtils::Validate3DConvProgrammingConstraints(&v23, a3) == 0;
      }
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_63;
  }

  if ((v5 & 2) == 0)
  {
    v18 = v12 * v13 * v15;
    if (v18 > 3)
    {
      if (v18 == 4)
      {
        if (v10 >= 2)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }

      if (v18 == 8)
      {
        if (v10)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v18 == 1)
      {
        if (v10 >= 4)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }

      if (v18 == 2)
      {
        if (v10 >= 3)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            goto LABEL_78;
          }

          return result;
        }

        goto LABEL_68;
      }
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_63:
    ZinAneTd<17u>::ValidateOCGSizes();
    return 0;
  }

  if ((a1[125] & 3) != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinAneTd<20u>::ValidateOCGSizes();
    }

    return 0;
  }

  v19 = v12 * v13 * v15;
  if (v19 <= 3)
  {
    if (v19 == 1)
    {
      if (v10 >= 5)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          goto LABEL_78;
        }

        return result;
      }

      goto LABEL_68;
    }

    if (v19 == 2)
    {
      if (v10 >= 4)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          goto LABEL_78;
        }

        return result;
      }

      goto LABEL_68;
    }

    goto LABEL_62;
  }

  if (v19 != 4)
  {
    if (v19 == 8)
    {
      if (v10 >= 2)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          goto LABEL_78;
        }

        return result;
      }

      goto LABEL_68;
    }

LABEL_62:
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (v10 < 3)
  {
    goto LABEL_68;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
LABEL_78:
    ZinAneTd<17u>::ValidateOCGSizes();
    return 0;
  }

  return result;
}

uint64_t ZinAneTd<11u>::SetDPE(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 500) & 0x22) == 0 && (*(a1 + 932) & 2) == 0;
  if (*(*(a2 + 520) + 1264))
  {
    v3 = 7;
  }

  else
  {
    v4 = *(a1 + 936);
    if ((v4 & 7) != 0)
    {
      if (v2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 2;
      }

      if ((*(a1 + 936) & 7u) >= 3)
      {
        v3 = 0;
      }
    }

    else
    {
      v5 = !v2;
      if (v2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 0;
      }

      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      if ((v4 & 8) != 0)
      {
        v3 = v6;
      }
    }
  }

  *(a1 + 556) = *(a1 + 556) & 0xFFFFFFF0 | v3;
  return 1;
}

uint64_t AdjustTaskSizeForRdar107730882<11u>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 208);
  v5 = 4 * (*(*v4 + 24))(v4, 25);
  v6 = *(a1 + 200) + v5;
  result = ZinAlignPower2(v6, *(a2 + 536));
  if ((result & 0x3F) == 0)
  {
    v8 = result - v6;
    if (v8 >= 8)
    {
      v9 = 16 * (v8 < 0x10);
    }

    else
    {
      v9 = 8;
    }

    result = (*(*v4 + 32))(v4, 25, (v9 + v5) >> 2);
    *(v4 + 1056) = v9;
    if (v8 <= 0xF)
    {
      *(v4 + 996) = 57005;
    }
  }

  return result;
}

void *CollectSegmentStats<11u>(uint64_t **a1, void **a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v49 = **a1;
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 24))(&v52);
    v7 = v52;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  __format = "Incorrect internal state: collect segment stats";
  v44 = a4;
  v45 = v5;
  while (v7)
  {
    v11 = *v5;
    v12 = (*(*v7 + 16))(v7);
    if ((**v11)(v11, v12))
    {
      return (*(*v7 + 8))(v7);
    }

    v52 = v8;
    v13 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a4, &v52);
    v14 = (*(*v7 + 24))(v7);
    if (*v13)
    {
      v15 = v10;
    }

    else
    {
      v16 = *(v13 + 5);
      *(v13 + 12) = v10;
      if (*v5)
      {
        (*(**v5 + 24))(&v52);
        v17 = v52;
      }

      else
      {
        v17 = 0;
      }

      v51 = v17;
      (*(*v7 + 56))(&v50, v7);
      *(v13 + 14) = std::distance[abi:ne200100]<ranges::basic_iterator<ranges::detail::any_cursor<std::variant<std::unique_ptr<ZinAneTdInstruction>,std::unique_ptr<ZinAneTaskletInstruction>> *,(ranges::category)23>>>(&v51, &v50);
      v18 = v50;
      v50 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      v15 = v10 + 4 * v16;
      v19 = v51;
      v51 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v9 = v10;
    }

    ZinInstructionCommonUtil::SetMemOffset(v14, v15);
    ++*v13;
    if (instruction::util::IsTasklet(v14))
    {
      Tasklet = instruction::util::GetTasklet(v14);
      SizeInWords = ZinAneTaskletInstruction::GetSizeInWords(Tasklet);
      v15 = ZinAlignPower2(v15 + 4 * SizeInWords, *(v49 + 536));
      v22 = 4 * SizeInWords;
    }

    else if (instruction::util::IsTd(v14))
    {
      v46 = v9;
      v47 = v8;
      Td = instruction::util::GetTd(v14);
      v24 = *(Td + 208);
      v25 = *(v24 + 8);
      v52 = Td;
      if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3, &v52))
      {
        goto LABEL_56;
      }

      v52 = Td;
      v26 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3, &v52);
      if (!v26)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v28 = v13[10];
      v27 = v13[11];
      if (v28 >= v27)
      {
        v30 = v13[9];
        v31 = (v28 - v30) >> 3;
        if ((v31 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v32 = v27 - v30;
        v33 = v32 >> 2;
        if (v32 >> 2 <= (v31 + 1))
        {
          v33 = v31 + 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>((v13 + 9), v34);
        }

        v35 = (8 * v31);
        *v35 = v26[3];
        v29 = 8 * v31 + 8;
        v36 = v13[9];
        v37 = v13[10] - v36;
        v38 = v35 - v37;
        memcpy(v35 - v37, v36, v37);
        v39 = v13[9];
        v13[9] = v38;
        v13[10] = v29;
        v13[11] = 0;
        if (v39)
        {
          operator delete(v39);
        }

        a4 = v44;
      }

      else
      {
        *v28 = v26[3];
        v29 = (v28 + 1);
      }

      v13[10] = v29;
      v52 = Td;
      v40 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3, &v52);
      if (!v40)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if (*(v40[3] + 552) == 1)
      {
        if (*(v13 + 16) != -1)
        {
          __format = "Incorrect internal state: one segment can not have more than one branching td.";
LABEL_56:
          ZinAssertImpl(__format, __format);
        }

        *(v13 + 16) = v25;
      }

      if (*(v49 + 2157) == 1)
      {
        if (*(a4 + 16))
        {
          *(v24 + 1056) = 0;
          (*(*v24 + 400))(v24, 0);
        }

        AdjustTaskSizeForRdar107730882<11u>(Td, v49);
      }

      v41 = (*(*v24 + 16))(v24);
      v15 = ZinAlignPower2(v15 + 4 * v41, *(v49 + 536));
      v42 = *(v13 + 1);
      if (!v42)
      {
        *(v13 + 3) = v25;
        *(v13 + 2) = (*(*v24 + 16))(v24) - 1;
        v42 = *(v13 + 1);
      }

      v22 = 4 * v41;
      *(v13 + 1) = v42 + 1;
      v5 = v45;
      v9 = v46;
      v8 = v47;
    }

    else
    {
      v22 = 0;
    }

    if (ZinInstructionCommonUtil::IsLastInstrInSegment(v14))
    {
      *(v13 + 15) = ZinInstructionCommonUtil::GetMemOffset(v14);
      *(v13 + 4) += (v22 - v9 + ZinInstructionCommonUtil::GetMemOffset(v14)) >> 2;
      v15 = ZinAlignPower2(v15, *(v49 + 656));
      ++v8;
    }

    result = (*(*v7 + 40))(v7);
    v10 = v15;
  }

  return result;
}

uint64_t ZinInstructionCommonUtil::GetInstructionSizeInWords<11u>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F19F1E30[v1])(&v4, a1);
}

void DumpTask<11u>(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Checking for Internal Buffer Overflow failed", buf, 2u);
}

void ZinAneTd<11u>::HandleANELayer(uint8_t *buf, uint64_t a2)
{
  *buf = 136315394;
  *(buf + 4) = "virtual BOOL ZinAneTd<11>::HandleANELayer(const ZinANELayer *, size_t, ZinAneTdInstruction *, const ZinTdCodegenParams &, const std::optional<DeviceId> &, ZinIrNetworkStatus *) [HWVersion = 11]";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error in %s: Attempting to create task descriptor but the device does not own a task descriptor for the layer, ane_index: %lu", buf, 0x16u);
}

void HandleCcdmaLayer<11u>()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void HandleCcdmaLayer<11u>(uint64_t a1, uint64_t a2, void *a3)
{
  ZinSPMDUtils::AneIndexFromDeviceId((*a1 + 2248), a2, a3);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

ANEDebugInfo::DebugInfoParser *ANEDebugInfo::DebugInfoParser::DebugInfoParser(ANEDebugInfo::DebugInfoParser *this, const unsigned __int8 *a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  ANEDebugInfo::DebugInfoInMem::DebugInfoInMem((this + 24));
  *(this + 24) = a2;
  *(this + 50) = a3;
  *(this + 26) = a2;
  *(this + 27) = &a2[a3];
  return this;
}

void sub_1A69687B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ANEDebugInfo::DebugInfoInMem>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL ANEDebugInfo::DebugInfoParser::Parse(ANEDebugInfo::DebugInfoParser *this)
{
  v2 = ANEDebugInfo::DebugInfoParser::ParseCU(this);
  if (v2)
  {
      ;
    }
  }

  return v2;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseCU(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v23[5] = v1;
  v23[6] = v2;
  if (*v3)
  {
    return 0;
  }

  *(this + 24) = v3 + 2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2061))
  {
    goto LABEL_12;
  }

  *&v12[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  *(&v12[0] + 1) = v6;
  if (!HIDWORD(*&v12[0]))
  {
    goto LABEL_12;
  }

  Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v12);
  if (!Scalar)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseCU();
    }

    return 0;
  }

  if (*Scalar >= 2uLL)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ANEDebugInfo::DebugInfoParser::ParseCU();
      return 0;
    }
  }

  else
  {
LABEL_12:
    if (ANEDebugInfo::DebugInfoParser::ParseStringTable(this))
    {
      if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2049))
      {
        *&v12[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
        *(&v12[0] + 1) = v8;
        if (HIDWORD(*&v12[0]))
        {
          v9 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v12);
          if (!v9)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ANEDebugInfo::DebugInfoParser::ParseCU();
            }

            return 0;
          }

          *(this + 22) = *v9;
        }
      }

      if (ANEDebugInfo::DebugInfoParser::ParseProc(this))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs(this);
        if (ANEDebugInfo::DebugInfoParser::ParseIdentString(this))
        {
          ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold(this);
          std::vector<ANEDebugInfo::DebugInfoInMem>::push_back[abi:ne200100](this, (this + 24));
          ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(v12);
          v10 = v12[1];
          *(this + 24) = v12[0];
          *(this + 40) = v10;
          *(this + 7) = v13;
          std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vdeallocate(this + 8);
          *(this + 4) = v14;
          *(this + 10) = v15;
          v15 = 0;
          v14 = 0uLL;
          v11 = v17;
          *(this + 88) = v16;
          *(this + 104) = v11;
          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__move_assign(this + 120, v18);
          std::vector<std::string>::__vdeallocate((this + 160));
          *(this + 10) = v19;
          *(this + 22) = v20;
          v20 = 0;
          v19 = 0uLL;
          *(this + 92) = v21;
          *(this + 186) = v22;
          v23[0] = &v19;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v18);
          v23[0] = &v14;
          std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](v23);
          return 1;
        }

        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ANEDebugInfo::DebugInfoParser::ParseCU();
          return 0;
        }
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ANEDebugInfo::DebugInfoParser::ParseCU();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        ANEDebugInfo::DebugInfoParser::ParseCU();
        return 0;
      }
    }
  }

  return result;
}

void ANEDebugInfo::DebugInfoParser::GetCompilationUnit(uint64_t *__return_ptr a1@<X8>, ANEDebugInfo::DebugInfoParser *this@<X0>, unint64_t a3@<X1>)
{
  v4 = *this;
  if (0xCF3CF3CF3CF3CF3DLL * ((*(this + 1) - *this) >> 3) <= a3)
  {
    v9 = 0;
    ANEDebugInfo::DebugInfoInMem::DebugInfoInMem(v5);
    std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem,0>(a1, &v9, v5);
    v10 = &v8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v7);
    v10 = &v6;
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  else
  {
    LOBYTE(v5[0]) = 1;
    std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem&,0>(a1, v5, (v4 + 168 * a3));
  }
}

uint64_t std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem&,0>(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *a1 = *a2;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 4);
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>((a1 + 48), *(a3 + 5), *(a3 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - *(a3 + 5)) >> 4));
  v9 = a3[4];
  *(v8 + 40) = a3[5];
  *(v8 + 24) = v9;
  std::unordered_map<std::string,unsigned int>::unordered_map(v8 + 56, (a3 + 6));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 144), *(a3 + 17), *(a3 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 18) - *(a3 + 17)) >> 3));
  v10 = *(a3 + 80);
  *(a1 + 170) = *(a3 + 162);
  *(a1 + 168) = v10;
  return a1;
}

void sub_1A6968BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v10 + 7);
  a10 = v10;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::pair<BOOL,ANEDebugInfo::DebugInfoInMem>::pair[abi:ne200100]<BOOL,ANEDebugInfo::DebugInfoInMem,0>(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *a1 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  *(a1 + 24) = a3[1];
  *(a1 + 8) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a3 + 40);
  *(a1 + 64) = *(a3 + 7);
  *(a3 + 40) = 0uLL;
  *(a3 + 7) = 0;
  v7 = a3[4];
  *(a1 + 88) = a3[5];
  *(a1 + 72) = v7;
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 104, a3 + 12);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a3 + 136);
  *(a1 + 160) = *(a3 + 19);
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  *(a3 + 19) = 0;
  v8 = *(a3 + 80);
  *(a1 + 170) = *(a3 + 162);
  *(a1 + 168) = v8;
  return a1;
}

BOOL ANEDebugInfo::DebugInfoParser::CheckToken(uint64_t a1, int a2)
{
  v4 = *(a1 + 192);
  v5 = *(a1 + 216);
  if (v4 >= v5)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  if (v4 + v4[1] <= v5)
  {
    return *v4 == a2;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
  if (result)
  {
    *v7 = 0;
    _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Record size is bigger than the buffer size. ", v7, 2u);
    return 0;
  }

  return result;
}

unint64_t ANEDebugInfo::DebugInfoParser::MatchRecord(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  v2 = v1[1];
  *(this + 24) = v1 + v2;
  if (v1 + v2 <= *(this + 27))
  {
    v3 = *v1;
    v4 = (v2 - 8) << 32;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::MatchRecord();
    }

    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t ANEDebugInfo::Record::GetScalarVal<unsigned long long>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::Record::GetScalarVal<unsigned long long>();
  }

  return v1;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseStringTable(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  if (v1 >= *(this + 27) || *v1 != 8)
  {
    return 0;
  }

  *(this + 24) = v1 + 2;
  result = ANEDebugInfo::DebugInfoParser::CheckToken(this, 2051);
  if (!result)
  {
    return result;
  }

  v5 = ANEDebugInfo::DebugInfoParser::MatchRecord(this) >> 32;
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = 0;
  do
  {
    v8 = strlen(v6) + 1;
    if (v8 >= 2)
    {
      v9 = strlen(v6);
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      v12 = v9;
      if (v9)
      {
        memmove(&__dst, v6, v9);
      }

      *(&__dst + v10) = 0;
      ANEDebugInfo::DebugInfoInMem::AddString(this + 24, &__dst);
      if (v12 < 0)
      {
        operator delete(__dst);
      }
    }

    v7 += v8;
    v6 += v8;
  }

  while (v7 < v5);
  return 1;
}

void sub_1A6968F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ANEDebugInfo::DebugInfoParser::ParseProc(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v12 = v1;
  v13 = v2;
  if (*v3 != 1)
  {
    return 0;
  }

  *(this + 24) = v3 + 2;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2048))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v11 = v5;
    if (HIDWORD(matched))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!Scalar)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParseProc();
        }

        return 0;
      }

      *(this + 23) = *Scalar;
    }
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2056))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v11 = v7;
    if (HIDWORD(matched))
    {
      v8 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (v8)
      {
        *(this + 12) = *v8;
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseProc();
      }

      return 0;
    }
  }

LABEL_11:
  if (!ANEDebugInfo::DebugInfoParser::ParseGroup(this))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseProc();
    return 0;
  }

    ;
  }

  return 1;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseHwConfigs(ANEDebugInfo::DebugInfoParser *this)
{
  v3 = *(this + 24);
  if (v3 >= *(this + 27))
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  result = 1;
  if (*v3 != 10)
  {
    return result;
  }

  *(this + 24) = v3 + 2;
  *(this + 184) = 1;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2057))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v13 = v6;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
      }

      return 0;
    }

    *(this + 3) = *Scalar;
  }

  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2058))
  {
LABEL_11:
    if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2059))
    {
      return 1;
    }

    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v13 = v10;
    if (HIDWORD(matched))
    {
      v11 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (v11)
      {
        *(this + 6) = *v11;
        return 1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
      }
    }

    return 0;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v13 = v8;
  if (HIDWORD(matched))
  {
    v9 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (v9)
    {
      *(this + 4) = *v9;
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseHwConfigs();
    }
  }

  return 0;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseIdentString(ANEDebugInfo::DebugInfoParser *this)
{
  if (*(this + 24) >= *(this + 27))
  {
    return 0;
  }

  v7[4] = v1;
  v7[5] = v2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(this, 2063))
  {
    return 1;
  }

  v7[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v7[1] = v4;
  if (HIDWORD(v7[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v7);
    if (Scalar)
    {
      *(this + 28) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseIdentString();
    }
  }

  return 0;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold(ANEDebugInfo::DebugInfoParser *this)
{
  if (*(this + 24) >= *(this + 27))
  {
    return 0;
  }

  v8[4] = v1;
  v8[5] = v2;
  v4 = ANEDebugInfo::DebugInfoParser::CheckToken(this, 2064);
  result = 1;
  if (!v4)
  {
    return result;
  }

  *(this + 185) = 1;
  v8[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
  v8[1] = v6;
  if (HIDWORD(v8[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v8);
    if (Scalar)
    {
      *(this + 13) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold();
    }
  }

  return 0;
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ANEDebugInfo::DebugInfoInMem>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem const&>(a1, a2);
  }

  else
  {
    std::vector<ANEDebugInfo::DebugInfoInMem>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem const&>(a1, a2);
    result = v3 + 168;
  }

  a1[1] = result;
  return result;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseGroup(ANEDebugInfo::DebugInfoParser *this)
{
  v1 = *(this + 24);
  if (v1 >= *(this + 27) || *v1 != 9)
  {
    return 0;
  }

  *(this + 24) = v1 + 2;
  *__p = 0u;
  v7 = 0u;
  *v5 = 0u;
  if (ANEDebugInfo::DebugInfoParser::ParseLayer(this, v5))
  {
      ;
    }

    if (ANEDebugInfo::DebugInfoParser::ParseTD(this, v5))
    {
        ;
      }

      std::vector<ANEDebugInfo::DebugInfoInMem::Group>::push_back[abi:ne200100](this + 8, v5);
      v3 = 1;
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseGroup();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParseGroup();
  }

  v3 = 0;
LABEL_15:
  if (__p[1])
  {
    *&v7 = __p[1];
    operator delete(__p[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  return v3;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseLayer(ANEDebugInfo::DebugInfoParser *this, ANEDebugInfo::DebugInfoInMem::Group *a2)
{
  v2 = *(this + 24);
  if (v2 >= *(this + 27) || *v2 != 3)
  {
    return 0;
  }

  *(this + 24) = v2 + 2;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2048))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v22 = v5;
    if (HIDWORD(matched))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!Scalar)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParseLayer();
        }

        return 0;
      }

      LODWORD(v23) = *Scalar;
    }
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2060))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v22 = v7;
    if (!HIDWORD(matched))
    {
      goto LABEL_12;
    }

    v8 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (v8)
    {
      v24 = *v8;
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseLayer();
    }

    return 0;
  }

  v24 = 1065353216;
LABEL_12:
  if (!ANEDebugInfo::DebugInfoParser::ParseOperation(this, &v23))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseLayer();
    return 0;
  }

  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v10 >= v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 2);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1555555555555555)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 2);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a2, v16);
    }

    v17 = 12 * v13;
    *v17 = v23;
    *(v17 + 8) = v24;
    v11 = 12 * v13 + 12;
    v18 = *(a2 + 1) - *a2;
    v19 = 12 * v13 - v18;
    memcpy((v17 - v18), *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 1) = v11;
    *(a2 + 2) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v23;
    *(v10 + 8) = v24;
    v11 = v10 + 12;
  }

  *(a2 + 1) = v11;
  return 1;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseTD(ANEDebugInfo::DebugInfoParser *this, ANEDebugInfo::DebugInfoInMem::Group *a2)
{
  v2 = *(this + 24);
  if (v2 >= *(this + 27) || *v2 != 5)
  {
    return 0;
  }

  *(this + 24) = v2 + 2;
  v26[4] = 0;
  memset(&v26[8], 0, 64);
  if (ANEDebugInfo::DebugInfoParser::CheckToken(this, 2050))
  {
    v25[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(this);
    v25[1] = v5;
    if (HIDWORD(v25[0]))
    {
      Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v25);
      if (Scalar)
      {
        *v26 = *Scalar;
        goto LABEL_7;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParseTD();
      }

      return 0;
    }
  }

LABEL_7:
  if ((ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag(this, v26) & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoParser::ParseTD();
    return 0;
  }

  ANEDebugInfo::DebugInfoParser::ParsePerfStats(this, v26);
  ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo(this, v26);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v7 >= v8)
  {
    v13 = *(a2 + 3);
    v14 = 0x8E38E38E38E38E39 * ((v7 - v13) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x8E38E38E38E38E39 * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x1C71C71C71C71C7)
    {
      v17 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::TD>>(a2 + 24, v17);
    }

    v18 = 72 * v14;
    v19 = *&v26[48];
    *(v18 + 32) = *&v26[32];
    *(v18 + 48) = v19;
    *(v18 + 64) = *&v26[64];
    v20 = *&v26[16];
    *v18 = *v26;
    *(v18 + 16) = v20;
    v11 = 72 * v14 + 72;
    v21 = *(a2 + 3);
    v22 = *(a2 + 4) - v21;
    v23 = 72 * v14 - v22;
    memcpy((v18 - v22), v21, v22);
    v24 = *(a2 + 3);
    *(a2 + 3) = v23;
    *(a2 + 4) = v11;
    *(a2 + 5) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v9 = *&v26[48];
    *(v7 + 32) = *&v26[32];
    *(v7 + 48) = v9;
    *(v7 + 64) = *&v26[64];
    v10 = *&v26[16];
    *v7 = *v26;
    *(v7 + 16) = v10;
    v11 = v7 + 72;
  }

  *(a2 + 4) = v11;
  return 1;
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem::Group const&>(a1, a2);
  }

  else
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

BOOL ANEDebugInfo::DebugInfoParser::ParseOperation(ANEDebugInfo::DebugInfoParser *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 >= *(a1 + 27))
  {
    return 0;
  }

  if (*v2 != 4)
  {
    return 0;
  }

  *(a1 + 24) = v2 + 2;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2048))
  {
    return 0;
  }

  v9[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v9[1] = v5;
  Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v9);
  v7 = Scalar != 0;
  if (Scalar)
  {
    *(a2 + 4) = *Scalar;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParseOperation();
  }

  return v7;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag(ANEDebugInfo::DebugInfoParser *a1, uint64_t a2)
{
  if (*(a1 + 24) >= *(a1 + 27))
  {
    return 0;
  }

  v9[4] = v2;
  v9[5] = v3;
  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2062))
  {
    return 1;
  }

  v9[0] = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v9[1] = v6;
  if (HIDWORD(v9[0]))
  {
    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(v9);
    if (Scalar)
    {
      *(a2 + 4) = *Scalar;
      return 1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag();
    }
  }

  return 0;
}

BOOL ANEDebugInfo::DebugInfoParser::ParsePerfStats(uint64_t a1, void *a2)
{
  v4 = *(a1 + 192);
  if (v4 >= *(a1 + 216))
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  if (*v4 != 6)
  {
    return 0;
  }

  *(a1 + 192) = v4 + 2;
  *(a1 + 184) = 1;
  if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2052))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v17 = v7;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParsePerfStats();
      }

      return 0;
    }

    a2[1] = *Scalar;
  }

  if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2053))
  {
    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v17 = v9;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    v10 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEDebugInfo::DebugInfoParser::ParsePerfStats();
      }

      return 0;
    }

    a2[2] = *v10;
  }

  if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2054))
  {
    goto LABEL_15;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v17 = v11;
  if (!HIDWORD(matched))
  {
    return 0;
  }

  v12 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoParser::ParsePerfStats();
    }

    return 0;
  }

  a2[3] = *v12;
LABEL_15:
  result = ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2055);
  if (!result)
  {
    return result;
  }

  matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
  v17 = v14;
  if (!HIDWORD(matched))
  {
    return 0;
  }

  v15 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
  if (v15)
  {
    a2[4] = *v15;
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ANEDebugInfo::DebugInfoParser::ParsePerfStats();
    return 0;
  }

  return result;
}

uint64_t ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 192);
  if (v4 >= *(a1 + 216))
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  result = 1;
  if (*v4 != 11)
  {
    return result;
  }

  *(a1 + 192) = v4 + 2;
  *(a1 + 186) = 1;
  v7 = (a2 + 44);
  v8 = 4;
  while (1)
  {
    if (!ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2066))
    {
      goto LABEL_8;
    }

    matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
    v14 = v9;
    if (!HIDWORD(matched))
    {
      return 0;
    }

    Scalar = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
    if (!Scalar)
    {
      break;
    }

    *(v7 - 1) = *Scalar;
LABEL_8:
    if (ANEDebugInfo::DebugInfoParser::CheckToken(a1, 2067))
    {
      matched = ANEDebugInfo::DebugInfoParser::MatchRecord(a1);
      v14 = v11;
      if (!HIDWORD(matched))
      {
        return 0;
      }

      v12 = ANEDebugInfo::Record::GetScalarVal<unsigned long long>(&matched);
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo();
        }

        return 0;
      }

      *v7 = *v12;
    }

    v7 += 2;
    if (!--v8)
    {
      return 1;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo();
  }

  return 0;
}

void std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(uint64_t a1, void **a2)
{
  v3 = a2 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a2 + 12);
  v3 = a2 + 5;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t *std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6969E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>,ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(a4, *(a2 + v7), *(a2 + v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 8) - *(a2 + v7)) >> 2));
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(a4 + 3, *(v8 + 24), *(v8 + 32), 0x8E38E38E38E38E39 * ((*(v8 + 32) - *(v8 + 24)) >> 3));
      a4 += 6;
      v7 += 48;
    }

    while (v8 + 48 != a3);
  }

  return a4;
}

void sub_1A6969F94(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PerfTracerCategory> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t *std::vector<ANEDebugInfo::DebugInfoInMem>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v5;
  *(v4 + 16) = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>((v4 + 40), *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 4));
  v7 = a2[5];
  *(v4 + 64) = a2[4];
  *(v4 + 80) = v7;
  std::unordered_map<std::string,unsigned int>::unordered_map(v4 + 96, (a2 + 6));
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 136), *(a2 + 17), *(a2 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 18) - *(a2 + 17)) >> 3));
  v9 = *(a2 + 80);
  *(v4 + 162) = *(a2 + 162);
  *(v4 + 160) = v9;
  *(a1 + 8) = v4 + 168;
  return result;
}

void sub_1A696A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v4 + 96));
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>>(a1, v6);
  }

  v7 = 168 * v2;
  v19 = 0;
  v20 = v7;
  v21 = 168 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  v10 = 168 * v2;
  *(v10 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group*,ANEDebugInfo::DebugInfoInMem::Group*>((v10 + 40), *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 4));
  v11 = a2[5];
  *(v7 + 64) = a2[4];
  *(v7 + 80) = v11;
  std::unordered_map<std::string,unsigned int>::unordered_map(v7 + 96, (a2 + 6));
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 136), *(a2 + 17), *(a2 + 18), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 18) - *(a2 + 17)) >> 3));
  v12 = *(a2 + 80);
  *(v7 + 162) = *(a2 + 162);
  *(v7 + 160) = v12;
  *&v21 = v21 + 168;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(&v19);
  return v18;
}

void sub_1A696A300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v6 + 96));
  *(v7 - 40) = v5;
  std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__destroy_vector::operator()[abi:ne200100]((v7 - 40));
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 12;
    do
    {
      v9 = *(v8 - 5);
      v10 = *(v8 - 8);
      *v4 = *(v8 - 6);
      *(v4 + 16) = v9;
      *(v4 + 32) = v10;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 40) = *(v8 - 7);
      *(v4 + 56) = *(v8 - 5);
      *(v8 - 7) = 0;
      *(v8 - 6) = 0;
      *(v8 - 5) = 0;
      v11 = *(v8 - 1);
      *(v4 + 64) = *(v8 - 2);
      *(v4 + 80) = v11;
      std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(v4 + 96, v8);
      *(v4 + 136) = 0;
      *(v4 + 144) = 0;
      *(v4 + 152) = 0;
      *(v4 + 136) = *(v8 + 5);
      *(v4 + 152) = v8[7];
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      v12 = *(v8 + 32);
      *(v4 + 162) = *(v8 + 66);
      *(v4 + 160) = v12;
      v4 = v18 + 168;
      v18 += 168;
      v13 = v8 + 9;
      v8 += 21;
    }

    while (v13 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(a1, v6);
      v6 += 21;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ANEDebugInfo::DebugInfoInMem>,ANEDebugInfo::DebugInfoInMem*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 21;
      std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ANEDebugInfo::DebugInfoInMem>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    std::allocator_traits<std::allocator<ANEDebugInfo::DebugInfoInMem>>::destroy[abi:ne200100]<ANEDebugInfo::DebugInfoInMem,void,0>(v5, (v4 - 168));
  }
}

void std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t *std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__construct_one_at_end[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Group const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(v4 + 3, *(a2 + 24), *(a2 + 32), 0x8E38E38E38E38E39 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_1A696A7D8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ANEDebugInfo::DebugInfoInMem::Group>::__emplace_back_slow_path<ANEDebugInfo::DebugInfoInMem::Group const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(v7, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>((v7 + 24), *(a2 + 24), *(a2 + 32), 0x8E38E38E38E38E39 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>,ANEDebugInfo::DebugInfoInMem::Group*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ANEDebugInfo::DebugInfoInMem::Group>::~__split_buffer(&v14);
  return v13;
}

void sub_1A696A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  std::__split_buffer<ANEDebugInfo::DebugInfoInMem::Group>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ANEDebugInfo::DebugInfoParser::ParseCU()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParseProc()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParseHwConfigs()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParseGroup()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParseLayer()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParseTD()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParsePerfStats()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

void ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_4(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4);
}

uint64_t ZinCreateComposites(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2)
{
  v4 = *(a2 + 4);
  Hal = ZinIrTarget::GetHal(*(v4 + 200));
  v9[0] = (*(*Hal + 16))(Hal);
  v9[1] = (v4 + 216);
  v11 = 0;
  v12 = 0;
  __p = 0;
  v13 = 0;
  ZinFlattenCompositeLayer::MakeFlattenCompositeLayer(a1, a2, v6);
  ZinUnflattenCompositeLayer::MakeUnflattenCompositeLayer(a1, a2, v7);
  ZinFurthestPointSamplingWithRadiusCompositeLayer::MakeFurthestPointSamplingWithRadiusCompositeLayer(a1, v9, a2);
  ZinPixelShuffleCompositeLayer::MakeComposite(a1, v9, a2);
  ZinPixelUnshuffleCompositeLayer::MakeComposite(a1, v9, a2);
  ZinChannelToSpaceLargeFactorCompositeLayer::MakeComposite(a1, v9, a2);
  ZinConvCompositeLayer::MakeComposite(a1, v9, a2);
  ZinMatrixDecompositionMatrixMultiplicationCompositeLayer::MakeComposite(a1, v9, a2);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1A696B99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ZinMirBatchLegalizerForHWConstraintsTransform(ZinIrOpLayerGraph *a1, ZinIrOpLayer *this)
{
  if (*(*(this + 11) + 8) == 93 && RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760))
  {
    if ((*(*this + 96))(this) != 1)
    {
      return 0;
    }
  }

  else if (!ZinIrOpLayer::IsANELayer(this))
  {
    return 0;
  }

  __src = 0;
  v90 = 0;
  v91 = 0;
  Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
  v5 = (*(*Hal + 16))(Hal);
  if (*(v5 + 1298) == 1)
  {
    InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
    if (ZinIrOpLayer::IsANELayer(this))
    {
      v7 = *(InputTensor + 64);
      if (v7 > *(v5 + 376))
      {
        SplitBatchChunksByMaxNumGroups(v7, v5, &__src);
        goto LABEL_10;
      }
    }

LABEL_43:
    v35 = 1;
    goto LABEL_68;
  }

  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v13 = *((*(***MemoryPools + 40))(**MemoryPools, 0) + 72);
  v14 = *((*(*this + 40))(this, 0) + 72);
  v15 = *(*(this + 11) + 8);
  if (v15 == 97)
  {
    v16 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(this + 760) + 88);
    v17 = *(v16 + 40);
    v18 = *(v16 + 44);
    InputTensor = *((*(*this + 40))(this, 0) + 64);
  }

  else
  {
    if (v15 == 93 && RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760))
    {
      RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760);
      operator new();
    }

    InputTensor = *((*(*this + 40))(this, 0) + 64);
    v18 = 1;
    v17 = 1;
  }

  v19 = v18 * v13 * v17;
  v20 = v14;
  v21 = *(v5 + 736);
  if (InputTensor == 1 && (v19 > v21 || v14 > *(v5 + 744)))
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      ZinMirBatchLegalizerForHWConstraintsTransform(v23, v24, v25, v26, v27, v28, v29, v30);
    }

LABEL_65:
    InputTensor = 3;
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v64)
    {
LABEL_67:
      v35 = 0;
      goto LABEL_68;
    }

LABEL_66:
    ZinMirBatchLegalizerForHWConstraintsTransform(v64, v65, v66, v67, v68, v69, v70, v71);
    goto LABEL_67;
  }

  if (v19 * InputTensor <= v21 && v14 * InputTensor <= *(v5 + 744))
  {
    goto LABEL_43;
  }

  if (!InputTensor)
  {
    goto LABEL_63;
  }

  v31 = 1;
  while (1)
  {
    v32 = InputTensor / (v31 + 1);
    v33 = v32 + InputTensor - v32 * (v31 + 1);
    if (v32 > v33)
    {
      v33 = InputTensor / (v31 + 1);
    }

    if (v33 * v19 < v21 && v33 * v20 < *(v5 + 744))
    {
      break;
    }

    ++v31;
    if (!v33)
    {
      goto LABEL_63;
    }
  }

  *&v94[0] = v33;
  if (!v33)
  {
LABEL_63:
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v56)
    {
      ZinMirBatchLegalizerForHWConstraintsTransform(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    goto LABEL_65;
  }

  v90 = __src;
  std::vector<unsigned long>::reserve(&__src, v31 + 1);
  v36 = 0;
  if (v31)
  {
    v37 = v90;
    do
    {
      if (v37 >= v91)
      {
        v38 = __src;
        v39 = v37 - __src;
        v40 = (v37 - __src) >> 3;
        v41 = v40 + 1;
        if ((v40 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v42 = v91 - __src;
        if ((v91 - __src) >> 2 > v41)
        {
          v41 = v42 >> 2;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v43);
        }

        v44 = (v37 - __src) >> 3;
        v45 = (8 * v40);
        v46 = (8 * v40 - 8 * v44);
        *v45 = v32;
        v37 = v45 + 1;
        memcpy(v46, v38, v39);
        v47 = __src;
        __src = v46;
        v90 = v37;
        v91 = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v37++ = v32;
      }

      v90 = v37;
      v36 += v32;
      --v31;
    }

    while (v31);
  }

  std::vector<unsigned long>::push_back[abi:ne200100](&__src, v94);
  if (*&v94[0] + v36 != InputTensor)
  {
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v48)
    {
      ZinMirBatchLegalizerForHWConstraintsTransform(v48, v49, v50, v51, v52, v53, v54, v55);
    }

    goto LABEL_65;
  }

LABEL_10:
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v8 = (v90 - __src) >> 3;
  v99 = 0;
  v100 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v90, v8);
  ZinIrLayerBatchSplitInfo::AppendBatchSplit(&v101, v8, &__p);
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  v96[0] = v96;
  v96[1] = v96;
  v97 = 0;
  InputTensor = ZinMirTensorTransform::SplitLayerPerBatch(a1, this, &v101, v96);
  if (!InputTensor)
  {
    if (v97)
    {
      v9 = *(v96[0] + 16);
      memset(v94, 0, sizeof(v94));
      v95 = 1065353216;
      v10 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, this, v9, v94, 0, 0);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v94);
      if (v10)
      {
        v92.n128_u64[0] = this;
        v93 = 0;
        v11 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v92);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v92, v11);
        ZinIrOpLayerGraph::RemoveNode(a1, &v92, 0);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v92);
        InputTensor = 0;
        goto LABEL_78;
      }

      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v81)
      {
        ZinMirBatchSplitNEConvWithKernelTensor(v81, v82, v83, v84, v85, v86, v87, v88);
      }
    }

    else
    {
      v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        ZinMirBatchLegalizerForHWConstraintsTransform(v73, v74, v75, v76, v77, v78, v79, v80);
      }
    }

    InputTensor = 3;
  }

LABEL_78:
  std::__list_imp<ZinIrSection *>::clear(v96);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (InputTensor)
  {
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v64)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v35 = 1;
LABEL_68:
  if (__src)
  {
    v90 = __src;
    operator delete(__src);
  }

  if (v35)
  {
    return 0;
  }

  return InputTensor;
}

void sub_1A696C044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a12);
  std::__list_imp<ZinIrSection *>::clear(&a21);
  v27 = *(v25 - 112);
  if (v27)
  {
    *(v25 - 104) = v27;
    operator delete(v27);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirPrepareForBatchesWithNoHWSupport(ZinIrOpLayerGraph *a1, std::string *a2)
{
  Hal = ZinIrTarget::GetHal(*(a2[1].__r_.__value_.__l.__size_ + 200));
  if (*((*(*Hal + 16))(Hal) + 1298))
  {
    return 0;
  }

  if (!ZinIrOpLayer::IsIntermediate(a2))
  {
    return 0;
  }

  v5 = *(a2[3].__r_.__value_.__r.__words[2] + 8);
  if (v5 == 7)
  {
    return 0;
  }

  v8 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
  v9 = ZinMirCheckBatchSplitForLayersConnectedToConcat(ZinIrOpLayerGraph *,ZinIrOpLayer *)::$_0::operator()(a1, v8, a2, v58);
  if (!v58[0] && *((*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0, v9) + 64) >= 2)
  {
    v53.n128_u64[0] = a2;
    v54 = 0;
    v10 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v53);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v53, v10);
    v56.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v53);
    v11 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 8, &v56);
    if (v11)
    {
      v12 = (v11 + 3);
    }

    else
    {
      v12 = a1 + 104;
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v53);
    v13 = *v12;
    v14 = *(v12 + 1);
    while (v13 != v14)
    {
      v56.n128_u64[0] = *v13;
      v57 = 0;
      v15 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v56);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v56, v15);
      v16 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56);
      v17 = (*(*v16 + 40))(v16, 0);
      ZinMirCheckBatchSplitForLayersConnectedToConcat(ZinIrOpLayerGraph *,ZinIrOpLayer *)::$_0::operator()(a1, v17, a2, &v53);
      v18 = v53.n128_u8[0];
      std::string::operator=(&v59, &v53.n128_i8[8]);
      if (v18)
      {
        v58[0] = v18;
        if (v55 < 0)
        {
          operator delete(v53.n128_u64[1]);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
        break;
      }

      if (v55 < 0)
      {
        operator delete(v53.n128_u64[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
      ++v13;
    }
  }

  v51 = v58[0];
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v52 = v59;
  }

  if (v51)
  {
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2);
    v20 = *OutgoingLayers;
    v21 = OutgoingLayers[1];
    while (v20 != v21)
    {
      v22 = *v20;
      if (*((*v20)[3].__r_.__value_.__r.__words[2] + 8) == 7)
      {
        v23 = SHIBYTE(v22[2].__r_.__value_.__r.__words[2]);
        if (v23 >= 0)
        {
          size = HIBYTE(v22[2].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22[2].__r_.__value_.__l.__size_;
        }

        v25 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = v52.__r_.__value_.__l.__size_;
        }

        if (size != v25 || ((data = v22[2].__r_.__value_.__l.__data_, v26 = v22 + 2, v27 = data, v23 >= 0) ? (v29 = v26) : (v29 = v27), (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v30 = &v52) : (v30 = v52.__r_.__value_.__r.__words[0]), memcmp(v29, v30, size)))
        {
          v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v43)
          {
            ZinMirPrepareForBatchesWithNoHWSupport(v43, v44, v45, v46, v47, v48, v49, v50);
          }

          goto LABEL_57;
        }
      }

      else if (ZinMirBatchLegalizer(a1, v22, v58))
      {
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v35)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      ++v20;
    }
  }

  else if (v5 == 37)
  {
    v31 = a2[3].__r_.__value_.__r.__words[2];
    if (*(v31 + 8) == 37)
    {
      v32 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
      v33 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
      ZinIrTensor::GetParentTensor(v58, v33);
      v34 = *v58;
      if (v59.__r_.__value_.__r.__words[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59.__r_.__value_.__l.__data_);
      }

      if (*(v32 + 72) * *(v31 + 64) != *(v34 + 72) && ZinMirBatchLegalizer(a1, a2, &v53))
      {
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v35)
        {
LABEL_56:
          ZinMirBatchLegalizerForHWConstraintsTransform(v35, v36, v37, v38, v39, v40, v41, v42);
        }

LABEL_57:
        v6 = 3;
        goto LABEL_58;
      }
    }
  }

  v6 = 0;
LABEL_58:
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1A696C538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a17);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirPrepareForBatchesTransform(ZinIrOpLayerGraph *a1, ZinIrOpLayer *this)
{
  if (!ZinIrOpLayer::IsIntermediate(this))
  {
    return 0;
  }

  v5 = *(*(this + 11) + 8);
  if (v5 != 93)
  {
    if (v5 == 7 && ZinMirUtils::ZinMirHandleConstTensorBatching(a1, this, v4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinMirPrepareForBatchesTransform();
      }

      return 3;
    }

    return 0;
  }

  if (!RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760))
  {
    return 0;
  }

  if ((*(*this + 96))(this) == 1)
  {
    if ((*(*this + 144))(this))
    {
      (*(*this + 152))(&v19, this);
      v7 = *(v19 + 64);
      v8 = v7 == *((*(*this + 40))(this, 0) + 64);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = 0;
    if (*((*(*this + 40))(this, 0) + 64) >= 2 && !v8)
    {
      v6 = 0;
      v18 = *(RawOrShared<ZinConvLayer>::unwrap_const_ptr(this + 760) + 160);
      *(v18 + 640) = 1;
      *(v18 + 456) |= 0x80u;
    }
  }

  else
  {
    v6 = ZinMirBatchLegalizer(a1, this, &v19);
    if (v6)
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v10)
      {
        ZinMirBatchLegalizerForHWConstraintsTransform(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  return v6;
}

void sub_1A696C7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirBatchLegalizer(ZinIrOpLayerGraph *a1, std::string *a2, BOOL *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = 0;
  v54 = 0;
  Hal = ZinIrTarget::GetHal(*(a2[1].__r_.__value_.__l.__size_ + 200));
  v7 = (*(*Hal + 16))(Hal);
  v51 = 0;
  IncomingLayersNodeKey = ZinIrOpLayer::GetIncomingLayersNodeKey(a2);
  HaveSameBatch = ZinIrBatchUtils::LayersHaveSameBatch(IncomingLayersNodeKey, &v51);
  *a3 = 0;
  if ((HaveSameBatch & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v13 = a2 + 2;
      if (SHIBYTE(a2[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v13->__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Batch Splitting is skipped for %s because inputs have different batch sizes.\n", &buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v51 == 1)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  if (*(v7 + 1298) != 1)
  {
    goto LABEL_19;
  }

  v10 = (*(a2->__r_.__value_.__r.__words[0] + 96))(a2);
  if (ZinIrOpLayer::IsNELayer(a2))
  {
    (*(a2->__r_.__value_.__r.__words[0] + 424))(&buf, a2);
    v11 = *(&buf + 1);
    (*(a2->__r_.__value_.__r.__words[0] + 432))(&buf, a2);
    if (ZinMirConvUtils::IsChannelwiseConvolution(v11, *(&buf + 1), v10))
    {
      v12 = v51;
      if (v51 > *(v7 + 376))
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  if (v10 != 1)
  {
    goto LABEL_19;
  }

  v12 = v51;
  if (v51 <= *(v7 + 376))
  {
    if (*(a2[3].__r_.__value_.__r.__words[2] + 8) == 93)
    {
      if ((*(a2->__r_.__value_.__r.__words[0] + 144))(a2))
      {
        (*(a2->__r_.__value_.__r.__words[0] + 152))(&buf, a2);
        v34 = *(buf + 64);
        v35 = v34 == *((*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0) + 64);
        if (*(&buf + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
        }
      }

      else
      {
        v35 = 0;
      }

      if (RawOrShared<ZinGOCLayer>::unwrap_const_ptr(&a2[27]) && *(RawOrShared<ZinGOCLayer>::unwrap_const_ptr(&a2[27]) + 160) != 0 && !v35)
      {
        v36 = *(RawOrShared<ZinGOCLayer>::unwrap_const_ptr(&a2[27]) + 160);
        *(v36 + 640) = 1;
        *(v36 + 456) |= 0x80u;
      }

      if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(&a2[31].__r_.__value_.__r.__words[2]) && *(RawOrShared<ZinConvLayer>::unwrap_const_ptr(&a2[31].__r_.__value_.__r.__words[2]) + 160) != 0 && !v35)
      {
        v14 = 0;
        v37 = *(RawOrShared<ZinConvLayer>::unwrap_const_ptr(&a2[31].__r_.__value_.__r.__words[2]) + 160);
        *(v37 + 640) = 1;
        *(v37 + 456) |= 0x80u;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_18:
  *a3 = 1;
  SplitBatchChunksByMaxNumGroups(v12, v7, &v52);
LABEL_19:
  buf = 0uLL;
  v56 = 0;
  v16 = v51;
  v49 = 0;
  v50 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, v52, v53, (v53 - v52) >> 3);
  ZinIrLayerBatchSplitInfo::AppendBatchSplit(&buf, v16, &__p);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (*(&buf + 1) - buf >= 9uLL)
  {
    *a3 = 1;
  }

  v46[0] = v46;
  v46[1] = v46;
  v47 = 0;
  v14 = ZinMirTensorTransform::SplitLayerPerBatch(a1, a2, &buf, v46);
  if (v14 || !v47)
  {
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      ZinMirBatchLegalizerForHWConstraintsTransform(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_38;
  }

  v17 = *(v46[0] + 16);
  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v18 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, a2, v17, v44, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v44);
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  if (MemoryPools[1] == *MemoryPools)
  {
    v41.n128_u64[0] = 0;
    v42 = 0;
  }

  else
  {
    v41.n128_u64[0] = **ZinIrContext::GetMemoryPools(a2);
    v42 = 0;
    v20 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v41);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v41, v20);
  }

  v29 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v41);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v41);
  v43 = v29;
  v39.n128_u64[0] = a2;
  v40 = 0;
  v30 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v39);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v39, v30);
  v31 = v18 & ZinIrOpLayerGraph::RemoveNode(a1, &v39, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v39);
  if (v29)
  {
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v29);
    if (OutgoingLayers[1] == *OutgoingLayers)
    {
      RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v38, &v43);
      v33 = v31 & ZinIrOpLayerGraph::RemoveNode(a1, &v38, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v38);
      if (v33)
      {
        goto LABEL_33;
      }

LABEL_35:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinMirBatchLegalizer();
      }

      v14 = 3;
      goto LABEL_38;
    }
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  v14 = 0;
LABEL_38:
  std::__list_imp<ZinIrSection *>::clear(v46);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

LABEL_13:
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  return v14;
}

void sub_1A696CD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 136);
  if (v32)
  {
    *(v29 - 128) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirPrepareFrontEndConcats(ZinIrOpLayerGraph *a1, ZinIrOpLayer *this)
{
  v2 = *(this + 11);
  if (*(v2 + 8) != 7)
  {
    return 0;
  }

  if (*(v2 + 24) == *(v2 + 16))
  {
    ZinAssertImpl("Concat has no view information");
  }

  v5 = *(v2 + 12);
  IncomingLayersNodeKey = ZinIrOpLayer::GetIncomingLayersNodeKey(this);
  HaveBatches = ZinIrBatchUtils::LayersHaveBatches(IncomingLayersNodeKey);
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] != *MemoryPools)
  {
    v9 = 0;
    v10 = !HaveBatches;
    do
    {
      v11 = ZinIrContext::GetMemoryPools(this);
      if (v9 >= (v11[1] - *v11) >> 3)
      {
        std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(*v11 + 8 * v9);
      v13 = (*(*v12 + 40))(v12, 0);
      v14 = v13;
      if (*(v13 + 168) == 0 || v10 || v5 == 5)
      {
        v15 = *(v13 + 152);
        v16 = *(*(v15 + 11) + 8);
        __p = 0;
        v53 = 0;
        v54 = 0;
        IsNoOp = ZinIrOpLayer::IsNoOp(v15, &__p);
        if (v16 == 7)
        {
          v20 = 0;
        }

        else
        {
          v20 = IsNoOp;
        }

        if (v20)
        {
          v56.__r_.__value_.__r.__words[0] = &__p;
          std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
        }

        else
        {
          IsConnectedToLiveOut = ZinOpLayerUtils::IsConnectedToLiveOut(*(v14 + 152), v18, v19);
          v56.__r_.__value_.__r.__words[0] = &__p;
          std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
          if ((IsConnectedToLiveOut & 1) == 0)
          {
            v56.__r_.__value_.__r.__words[0] = *(v14 + 152);
            LODWORD(v56.__r_.__value_.__r.__words[2]) = 0;
            v23 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v56);
            RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v56, v23);
            v57 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56);
            v24 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a1 + 3, &v57);
            v25 = (v24 + 3);
            if (!v24)
            {
              v25 = a1 + 104;
            }

            v53 = 0;
            v54 = 0;
            __p = 0;
            std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *v25, *(v25 + 1), (*(v25 + 1) - *v25) >> 3);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
            v26 = __p;
            v27 = v53;
            if (__p != v53)
            {
              v28 = 0;
              do
              {
                v56.__r_.__value_.__r.__words[0] = *v26;
                LODWORD(v56.__r_.__value_.__r.__words[2]) = 0;
                v29 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v56);
                RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v56, v29);
                if (*(*(RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56) + 88) + 8) == 7)
                {
                  if ((RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56) != this) | v28 & 1)
                  {
                    v30 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56);
                    IndexOfMatchedIncomingLayer = ZinIrOpLayerGraph::GetIndexOfMatchedIncomingLayer(a1, v30, v12);
                    v32 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v56);
                    ZinMirTensorTransform::CopyAndReplaceInputAtIndex(a1, v32, IndexOfMatchedIncomingLayer);
                  }

                  else
                  {
                    v28 = 1;
                  }
                }

                std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v56);
                ++v26;
              }

              while (v26 != v27);
            }

            InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
            Interleave = ZinIrTensor::GetInterleave(InputTensor);
            if (v35)
            {
              v36 = Interleave;
            }

            else
            {
              v36 = 1;
            }

            v37 = *ZinIrContext::GetMemoryPools(this);
            v38 = *(ZinIrContext::GetMemoryPools(this) + 8);
            while (v37 != v38)
            {
              v39 = (*(**v37 + 40))(*v37, 0);
              v40 = ZinIrTensor::GetInterleave(v39);
              if (v41)
              {
                v42 = v40;
              }

              else
              {
                v42 = 1;
              }

              if (v42 != v36)
              {
                ZinMirTensorTransform::CopyAndReplaceInputAtIndex(a1, this, v9);
                break;
              }

              ++v37;
            }

            if (__p)
            {
              v53 = __p;
              operator delete(__p);
            }

            goto LABEL_15;
          }
        }

        ZinMirTensorTransform::CopyAndReplaceInputAtIndex(a1, this, v9);
      }

LABEL_15:
      ++v9;
      v22 = ZinIrContext::GetMemoryPools(this);
    }

    while (v9 < (v22[1] - *v22) >> 3);
  }

  v43 = *((*(*this + 40))(this, 0) + 104);
  v44 = ZinIrContext::GetMemoryPools(this);
  if (v44[1] == *v44)
  {
    return 0;
  }

  v45 = 0;
  while (v43 == *(ZinIrOpLayer::GetInputTensor(this, v45) + 104))
  {
    ++v45;
    v46 = ZinIrContext::GetMemoryPools(this);
    if (v45 >= (v46[1] - *v46) >> 3)
    {
      return 0;
    }
  }

  if (*(this + 71) >= 0)
  {
    v49 = *(this + 71);
  }

  else
  {
    v49 = *(this + 7);
  }

  v50 = &v56;
  std::string::basic_string[abi:ne200100](&v56, v49 + 21);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v50 = v56.__r_.__value_.__r.__words[0];
  }

  if (v49)
  {
    if (*(this + 71) >= 0)
    {
      v51 = this + 48;
    }

    else
    {
      v51 = *(this + 6);
    }

    memmove(v50, v51, v49);
  }

  strcpy(v50 + v49, "copy_for_format_match");
  ZinObjectNameFactory::ZinObjectNameFactory(&__p, &v56);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v47 = ZinMirTensorTransform::ReconcileInputTensorFormat(a1, this, &__p, v43);
  __p = &unk_1F19D0088;
  if (v55 < 0)
  {
    operator delete(v53);
  }

  return v47;
}

void sub_1A696D324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirPrepareIr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v19 = *MEMORY[0x1E69E9840];
  Hal = ZinIrTarget::GetHal(*(*v3 + 32));
  RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(*Hal + 32);
  if (!ZinMirOpt::FoldBatchForMatmult(v8, v7))
  {
    ZinMirPrepareLayers(v8, v7, v5);
  }

  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v10)
  {
    ZinMirPrepareIr(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return 0;
}

void ZinMirPrepareLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  ZinIrOpt::ReverseCSE(v3, v4, &v5, 4);
}

void sub_1A696F4FC(_Unwind_Exception *a1)
{
  ZinMirLayerSplitterBase::~ZinMirLayerSplitterBase(&STACK[0xFD8]);
  ZinMirLayerFusion::~ZinMirLayerFusion(&STACK[0x2E38]);
  ZinMirLayerFusion::~ZinMirLayerFusion(&STACK[0x4890]);
  ZinMirPadOptimization::~ZinMirPadOptimization(&STACK[0x4C88]);
  if (STACK[0x5F80])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x5F80]);
  }

  _Unwind_Resume(a1);
}

unint64_t ZinMirBatchLegalizerForHWConstraints(ZinIrControlFlowGraph *a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F19CAEB8;
  v5[1] = ZinMirPrepareForBatchesWithNoHWSupport;
  v5[3] = v5;
  v2 = ZinIrControlFlowGraph::TraverseForward(a1, v5, 0);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v5);
  if (!v2)
  {
    v4[0] = &unk_1F19CAEB8;
    v4[1] = ZinMirBatchLegalizerForHWConstraintsTransform;
    v4[3] = v4;
    v2 = ZinIrControlFlowGraph::TraverseForward(a1, v4, 0);
    std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v4);
  }

  return v2;
}

void sub_1A696FAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void SplitBatchChunksByMaxNumGroups(unint64_t a1, uint64_t a2, const void **a3)
{
  v6 = a1;
  LODWORD(v3) = vcvtps_u32_f32(a1 / *(a2 + 376));
  std::vector<unsigned long>::reserve(a3, v3);
  if (v3)
  {
    v7 = *(a2 + 376);
    do
    {
      if (v7 >= v6)
      {
        v7 = v6;
      }

      v8 = v7;
      std::vector<unsigned long>::push_back[abi:ne200100](a3, &v8);
      v7 = *(a2 + 376);
      v6 -= v7;
      LODWORD(v3) = v3 - 1;
    }

    while (v3);
  }
}

double ZinMirCheckBatchSplitForLayersConnectedToConcat(ZinIrOpLayerGraph *,ZinIrOpLayer *)::$_0::operator()@<D0>(ZinIrOpLayerGraph *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, BOOL *a4@<X8>)
{
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*(a2 + 152));
  v8 = *OutgoingLayers;
  v9 = OutgoingLayers[1];
  if (*OutgoingLayers == v9)
  {
    *a4 = 0;
    v18 = (a4 + 8);
    goto LABEL_22;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v12 = *v8;
    if (*((*v8)[3].__r_.__value_.__r.__words[2] + 8) != 7)
    {
      goto LABEL_12;
    }

    std::string::operator=(&v21, v12 + 2);
    v13 = *(v12[3].__r_.__value_.__r.__words[2] + 12);
    if ((v13 & 0xFFFFFFFE) == 2)
    {
      break;
    }

    if ((v13 & 0xFFFFFFFB) != 1)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (++v8 == v9)
    {
      goto LABEL_18;
    }
  }

  v14 = ZinIrOpLayer::GetOutgoingLayers(v12);
  v15 = *v14;
  v16 = v14[1];
  if (*v14 != v16)
  {
    while (*(*(*v15 + 88) + 8) != 7)
    {
      v15 += 8;
      if (v15 == v16)
      {
        goto LABEL_12;
      }
    }
  }

  if (v15 == v16)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (ZinMirBatchLegalizer(a1, a3, &v22) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    ZinMirCheckBatchSplitForLayersConnectedToConcat(ZinIrOpLayerGraph *,ZinIrOpLayer *)::$_0::operator()(v20, &v20[1]);
  }

  v10 = v22;
  if (!v22)
  {
    goto LABEL_12;
  }

LABEL_18:
  v17 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  *a4 = v10;
  v18 = (a4 + 8);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_22:
    result = *&v21.__r_.__value_.__l.__data_;
    *v18 = v21;
    return result;
  }

  std::string::__init_copy_ctor_external(v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return result;
}

void sub_1A696FD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirPrepareFoldWeightsWithScale(ZinIrOpLayerGraph *a1, ZinIrOpLayer *a2)
{
  if (!*(*(a2 + 4) + 372))
  {
    return 0;
  }

  if (*(*(a2 + 11) + 8) != 93)
  {
    return 0;
  }

  if (!RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
  {
    return 0;
  }

  if (!RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648))
  {
    return 0;
  }

  v3 = RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760);
  v4 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648);
  v5 = *(v3 + 160);
  if (!*(v5 + 84) || !ZinIrKernel::IsNonMutable(v5) || !ZinIrKernel::IsNonMutable(*(v4 + 160)) || *(*(v4 + 160) + 185) != 1 || ZinIrKernel::GetWeightFormat(*(v3 + 160)) != 6 || ZinIrKernel::GetScaleFormat(*(v4 + 160)) != 6)
  {
    return 0;
  }

  v6 = RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760);
  v7 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648);
  ZinIrKernel::FoldWeightsWithScale(&v16, *(v6 + 160), *(v7 + 160));
  v8 = v16;
  if (!v16)
  {
    v9 = RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760);
    v10 = v17;
    v17 = 0;
    std::unique_ptr<ZinIrKernel>::reset[abi:ne200100]((v9 + 160), v10);
    v11 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648);
    v12 = v18;
    v18 = 0;
    std::unique_ptr<ZinIrKernel>::reset[abi:ne200100]((v11 + 160), v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    ZinIrKernel::~ZinIrKernel(v13);
    MEMORY[0x1AC55A070]();
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
    ZinIrKernel::~ZinIrKernel(v14);
    MEMORY[0x1AC55A070]();
  }

  return v8;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F1E50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = (*(**a3 + 184))(*a3, *a2, *(a1 + 8));
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()();
  }

  return v3;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_1,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_1>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F1ED0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_1,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_1>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F1F50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *(*(*a3 + 88) + 8);
  v4 = v3 > 0x26;
  v5 = (1 << v3) & 0x5000000280;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v7 = (*(**a3 + 192))(*a3, *a2, *(a1 + 8));
  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()();
  }

  return v7;
}

uint64_t std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinMirValidateInOutLayerHints(ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirValidateInOutLayerHints(ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*a3 + 88) + 8);
  v4 = v3 > 0x1F;
  v5 = (1 << v3) & 0xE8000000;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v7 = (*(**a3 + 40))(*a3, 0);
  v8 = *(ZinIrTensor::GetRootTensor(v7) + 20);
  if (v8 && *(v8 + 96) == 2)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t std::__function::__func<ZinMirValidateInOutLayerHints(ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirValidateInOutLayerHints(ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinMirBatchLegalizerForHWConstraintsTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Batch splitting to sub-batches is not correct\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Batch splitting can't split the layer\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Can't satisfy the Cebu TRM (4.1.8) hw constaint\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Split oplayer per batch went wrong", a5, a6, a7, a8, v8);
}

void ZinMirPrepareForBatchesTransform()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinMirBatchLegalizer()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinMirPrepareIr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[MirOpt] Error: Fold height to batch Matrix multiplication.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: LiveIn and LiveOut are not allocated to DRAM", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not split batch.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not split channel.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: SplitConvAndHoistActivation!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Kernel Size Splitting failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Builder: Tensor Caching failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Builder: Chaining canonicalization failed!\n", a5, a6, a7, a8, v8);
}

void ZinMirPrepareLayers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Pre-lowering Reverse CSE failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Composite Creation failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Removal of Single Channel Elementwise Copy failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Pre-hoisting Reverse CSE failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: OptimizeQuantizedConcat failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Layer Hoisting failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: ScaledEW to GOC after Layer Hoisting failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Transpose collapse failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Pad layer optimization failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Merging Deconv-Conv failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MirOpt: PreFusionCSE failed", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Pre-fusion Reverse CSE failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Layer fusion failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: ChannelLast optimization failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Failed converting post-PixelShuffle GOC.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: remove default GOC failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not apply CSE.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not finish transpose insertion for PE reduce.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Failed to add copy layers for inputs to concats!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Failed to reshape the NEConv's tensor for enabling SSM!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Failed to collapse symmetric reshape!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Transpose reshape optimization failed!", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: DilatedConv->Conv failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Dynamic conv lowering failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: kernel tensor padding optimization failed\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not finish engine lowering.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not validate wrap axis.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not finish DCE before transpose collapse.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Post-Fusion transpose hoisting failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MirOpt: CSE failed", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Collapse Symmetric Transpose failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Collapse Transposes Around Concat failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Tensor Dimension Legalization failure.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Mir Opt MergeNEArgMinMax failed\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Mir Opt failed\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MIR Prepare Layers: Spatial Splitting failed!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: ZinMirPrepareFoldWeightsWithScale", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "MirOpt OptimizeConvWithSmallCout failed.\n", a5, a6, a7, a8, v8);
}

void ZinMirCheckBatchSplitForLayersConnectedToConcat(ZinIrOpLayerGraph *,ZinIrOpLayer *)::$_0::operator()(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Split oplayer per batch went wrong", buf, 2u);
}

void std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void std::__function::__func<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2,std::allocator<ZinMirPrepareLayers(ZinIrControlFlowGraph *,ZinIrParameters const&,ZinIrNetworkStatus *)::$_2>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinMirAneKernel::ZinMirAneKernel(ZinMirAneKernel *this, int a2, int a3, int a4, int a5, int a6, BOOL a7, BOOL a8)
{
  *this = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  operator new();
}

void sub_1A6971338(_Unwind_Exception *a1)
{
  MEMORY[0x1AC55A070](v2, 0x1020C4012B38EE3);
  std::unique_ptr<ZinMirAneKernelCoeff>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t ZinMirAneKernel::ZinMirAneKernel(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0u;
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *a3;
  *a3 = 0;
  std::unique_ptr<ZinMirAneKernelCoeff>::reset[abi:ne200100]((a1 + 40), v6);
  return a1;
}

void ZinMirAneKernelCoeff::ZinMirBuildNEKernelData(ZinMirAneKernelCoeff *this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  v12 = *(this + 1);
  *(this + 1) = a7;
  v67 = a3;
  ZinMirNECoreAssignment::ZinMirNECoreAssignment(v81, a3, a2);
  std::map<unsigned long,std::vector<unsigned long>>::map[abi:ne200100](v79, v82);
  *&v76 = 0;
  v13 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v79, &v76);
  v14 = *v13;
  v15 = ((a2 + a3 - 1) / a3);
  v69 = v13[1];
  if (*v13 != v69)
  {
    v70 = 0;
    v73 = 0;
    v16 = v12 * v15;
    v68 = (a4 - v16 * a6) & ~((a4 - v16 * a6) >> 31);
    while (1)
    {
      v74 = v14;
      v71 = *v14;
      v17 = (*(this + 4) + (*v14 << 6));
      v75 = a5;
      v18 = a5;
      if (a6 >= 1)
      {
        v19 = v17[3];
        v20 = a6;
        v18 = v75;
        do
        {
          v21 = *(this + 1);
          *&v22 = -1;
          *(&v22 + 1) = -1;
          v76 = v22;
          v77 = v22;
          v78 = -1;
          v23 = v17[4];
          if (v19 >= v23)
          {
            v26 = v17[2];
            v27 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v26) >> 3);
            v28 = v27 + 1;
            if ((v27 + 1) > 0x492492492492492)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v29 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v26) >> 3);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x249249249249249)
            {
              v30 = 0x492492492492492;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ZinOcgKernelData>>((v17 + 2), v30);
            }

            v31 = 56 * v27;
            *v31 = v18;
            *(v31 + 4) = v21;
            *&v32 = -1;
            *(&v32 + 1) = -1;
            *(v31 + 8) = v32;
            *(v31 + 24) = v32;
            *(v31 + 40) = -1;
            *(v31 + 48) = 0;
            v19 = 56 * v27 + 56;
            v33 = v17[2];
            v34 = v17[3] - v33;
            v35 = v31 - v34;
            memcpy((v31 - v34), v33, v34);
            v36 = v17[2];
            v17[2] = v35;
            v17[3] = v19;
            v17[4] = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v19 = v18;
            *(v19 + 4) = v21;
            v24 = v76;
            v25 = v78;
            *(v19 + 24) = v77;
            *(v19 + 8) = v24;
            *(v19 + 40) = v25;
            *(v19 + 48) = 0;
            v19 += 56;
          }

          v17[3] = v19;
          v18 += v16;
          --v20;
        }

        while (v20);
      }

      if ((*(this + 1) & 1) == 0)
      {
        break;
      }

      v37 = *(this + 1);
      if (v68 > v73)
      {
        if (v68 - v73 >= v37)
        {
          v38 = *(this + 1);
        }

        else
        {
          v38 = v68 - v73;
        }

        v39 = v38 + v73;
        goto LABEL_28;
      }

LABEL_43:
      a5 = v37 + v75;
      v14 = v74 + 1;
      if (v74 + 1 == v69)
      {
        goto LABEL_44;
      }
    }

    if (v71 / v67 >= (v68 % v15))
    {
      v38 = v68 / v15;
    }

    else
    {
      v38 = v68 / v15 + 1;
    }

    v39 = v73;
LABEL_28:
    v73 = v39;
    if (v38)
    {
      v40 = v18 - v70;
      v41 = v17[3];
      v42 = v17[4];
      if (v41 >= v42)
      {
        v45 = v17[2];
        v46 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v45) >> 3);
        v47 = v46 + 1;
        if ((v46 + 1) > 0x492492492492492)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v48 = 0x6DB6DB6DB6DB6DB7 * ((v42 - v45) >> 3);
        if (2 * v48 > v47)
        {
          v47 = 2 * v48;
        }

        if (v48 >= 0x249249249249249)
        {
          v49 = 0x492492492492492;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinOcgKernelData>>((v17 + 2), v49);
        }

        v50 = 56 * v46;
        *v50 = v40;
        *(v50 + 4) = v38;
        *&v51 = -1;
        *(&v51 + 1) = -1;
        *(v50 + 8) = v51;
        *(v50 + 24) = v51;
        *(v50 + 40) = -1;
        *(v50 + 48) = 0;
        v44 = 56 * v46 + 56;
        v52 = v17[2];
        v53 = v17[3] - v52;
        v54 = 56 * v46 - v53;
        memcpy((v50 - v53), v52, v53);
        v55 = v17[2];
        v17[2] = v54;
        v17[3] = v44;
        v17[4] = 0;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        *v41 = v40;
        *(v41 + 4) = v38;
        *&v43 = -1;
        *(&v43 + 1) = -1;
        *(v41 + 8) = v43;
        *(v41 + 24) = v43;
        v44 = v41 + 56;
        *(v41 + 40) = -1;
        *(v41 + 48) = 0;
      }

      v17[3] = v44;
      v37 = *(this + 1);
      v70 = v70 - v38 + v37;
    }

    else
    {
      v37 = *(this + 1);
    }

    goto LABEL_43;
  }

LABEL_44:
  v56 = v80;
  if (v80)
  {
    v57 = 0;
    do
    {
      if (v15 >= 1)
      {
        for (i = 0; i != v15; ++i)
        {
          *&v76 = 0;
          v59 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v79, &v76);
          if (i >= (v59[1] - *v59) >> 3)
          {
            std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
          }

          v60 = *(*v59 + 8 * i);
          *&v76 = v57;
          v61 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v79, &v76);
          if (i >= (v61[1] - *v61) >> 3)
          {
            std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
          }

          v62 = *(*v61 + 8 * i);
          v63 = *(this + 4);
          v64 = v63 + (v60 << 6);
          v65 = v63 + (v62 << 6);
          *v65 = *v64;
          if (v62 != v60)
          {
            std::vector<ZinOcgKernelData>::__assign_with_size[abi:ne200100]<ZinOcgKernelData*,ZinOcgKernelData*>((v65 + 16), *(v64 + 16), *(v64 + 24), 0x6DB6DB6DB6DB6DB7 * ((*(v64 + 24) - *(v64 + 16)) >> 3));
          }

          v66 = *(v64 + 40);
          *(v65 + 56) = *(v64 + 56);
          *(v65 + 40) = v66;
        }

        v56 = v80;
      }

      ++v57;
    }

    while (v56 > v57);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v79, v79[1]);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v82, v82[1]);
}

void sub_1A69718CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&a22, a23);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

void ZinMirAneKernelCoeff::ZinMirAneKernelCoeff(ZinMirAneKernelCoeff *this, int a2, int a3, int a4, int a5, int a6, int a7, char a8)
{
  *this = 0;
  *(this + 24) = 0u;
  v13 = this + 32;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 1) = a6;
  *(this + 3) = a5;
  if (a7)
  {
    std::vector<ZinNeKernelData>::resize(this + 4, 1uLL);
    v14 = ZinDivRoundUp(a2, a6);
    std::vector<ZinOcgKernelData>::reserve((*v13 + 16), v14);
    if (a3 >= 1)
    {
      v15 = 0;
      do
      {
        ZinMirAneKernelCoeff::ZinMirBuildNEKernelDataSharedKmem(this, a2, v15, a6);
        v15 += a2;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    std::vector<ZinNeKernelData>::resize(this + 4, a4);
    v19 = *(this + 4);
    v18 = *(this + 5);
    for (i = a2 / ((a4 + a5 - 1) / a5 * a6); v19 != v18; v19 += 64)
    {
      std::vector<ZinOcgKernelData>::reserve((v19 + 16), a3 + a3 * i);
    }

    if (a3 >= 1)
    {
      v21 = 0;
      do
      {
        ZinMirAneKernelCoeff::ZinMirBuildNEKernelData(this, a4, a5, a2, v21, i, a8);
        v21 += a2;
        --a3;
      }

      while (a3);
    }
  }
}

void sub_1A6971A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  a10 = a9;
  std::vector<ZinNeKernelData>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<ZinNeKernelData>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + (a2 << 6);
      while (v3 != v6)
      {
        v7 = *(v3 - 48);
        if (v7)
        {
          *(v3 - 40) = v7;
          operator delete(v7);
        }

        v3 -= 64;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<ZinNeKernelData>::__append(a1, v5);
  }
}

__n128 ZinMirAneKernelCoeff::ZinMirAneKernelCoeff(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  *a1 = a2;
  *(a1 + 1) = 0;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *a7;
  *(a1 + 32) = *a7;
  *(a1 + 48) = a7[1].n128_u64[0];
  *a7 = 0uLL;
  a7[1].n128_u64[0] = 0;
  return result;
}

uint64_t *std::vector<ZinOcgKernelData>::__assign_with_size[abi:ne200100]<ZinOcgKernelData*,ZinOcgKernelData*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ZinOcgKernelData>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t *std::vector<ZinNeKernelData>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 6)
  {
    if (a2)
    {
      v11 = a2 << 6;
      v12 = v4 + (a2 << 6);
      do
      {
        *v4 = -1;
        *(v4 + 8) = -1;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        v4 += 64;
        v11 -= 64;
      }

      while (v11);
      v4 = v12;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 6;
    v9 = v5 - *result;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinNeKernelData>>(result, v10);
    }

    v13 = v8 << 6;
    v20 = 0;
    v21 = v8 << 6;
    *(&v22 + 1) = 0;
    v14 = a2 << 6;
    v15 = v8 << 6;
    do
    {
      *v15 = -1;
      *(v15 + 8) = -1;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 16) = 0uLL;
      *(v15 + 32) = 0uLL;
      v15 += 64;
      v14 -= 64;
    }

    while (v14);
    *&v22 = v13 + (a2 << 6);
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinNeKernelData>,ZinNeKernelData*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<ZinNeKernelData>::~__split_buffer(&v20);
  }

  return result;
}