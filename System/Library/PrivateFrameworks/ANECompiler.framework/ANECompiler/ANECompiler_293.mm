uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__any_of[abi:ne200100]<std::__wrap_iter<MIL::IRValue const* const*>,std::__wrap_iter<MIL::IRValue const* const*>,std::__identity,MILWeightInfo<float> ToDisk<MIL::Fp16,float>(std::vector<MIL::IRValue const*> const&,MILFunctionInfo &,WeightTransform<float,float>,BOOL)::{lambda(std::__wrap_iter<MIL::IRValue const* const*> const*)#2}>(MIL::IRValue **a1, MIL::IRValue **a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  while (1)
  {
    if (*v6)
    {
      v7 = MIL::IRValue::AsTensor(*v6);
      if (IsMILMutableWeight(v7, *a3))
      {
        break;
      }
    }

    if (++v6 == a2)
    {
      return 0;
    }
  }

  return 1;
}

void ZinIrInputViewUnitInfo::ZinIrInputViewUnitInfo(ZinIrInputViewUnitInfo *this, const ZinIrInputViewUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33F90;
  *(this + 5) = *(a2 + 5);
  std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100](this + 4, a2 + 96);
}

uint64_t std::__shared_ptr_pointer<ZinIrInputViewUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrInputViewUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **std::optional<ZinIrInputViewUnitInfo>::~optional(void **this)
{
  if (*(this + 160) == 1)
  {
    *this = &unk_1F1A33F90;
    if (*(this + 152) == 1)
    {
      if (*(this + 143) < 0)
      {
        operator delete(this[15]);
      }

      if (*(this + 119) < 0)
      {
        operator delete(this[12]);
      }
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

__n128 std::__function::__func<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrInputViewUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B5F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrInputViewUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(&v6[1], 0, 24);
  v7 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = -1;
  v6[0] = &unk_1F1A33F90;
  v11 = xmmword_1A75A34F0;
  LOBYTE(v12) = 0;
  v16 = 0;
  std::optional<ZinIrInputViewUnitInfo>::operator=[abi:ne200100]<ZinIrInputViewUnitInfo,void>(a2, v6);
  v6[0] = &unk_1F1A33F90;
  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v6);
  a2[8] = 17;
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  a2[20] = *(v5 + 40 * *v4 + 24);
  a2[21] = *(v5 + 40 * *v4 + 28);
  a2[22] = *(v5 + 40 * *v4 + 32);
  a2[23] = *(v5 + 40 * *v4 + 36);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCropND(MILFunctionInfo &,std::string const&,std::vector<ZinMILUnitBuilder::Crop1DInfo> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrInputViewUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrInputViewUnitInfo>::operator=[abi:ne200100]<ZinIrInputViewUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    std::__optional_storage_base<ZinIrDynamicInputViewData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrDynamicInputViewData,false>>(a1 + 96, (a2 + 96));
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33F90;
    v6 = *(a2 + 80);
    *(a1 + 96) = 0;
    *(a1 + 80) = v6;
    *(a1 + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      v7 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 96) = v7;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 96) = 0;
      v8 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v8;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 120) = 0;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = 1;
    }

    *(a1 + 160) = 1;
  }

  return a1;
}

void sub_1A7460E9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ZinIrDynamicInputViewData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrDynamicInputViewData,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      result = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = result;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      *(a1 + 48) = *(a2 + 12);
    }
  }

  else if (*(a1 + 56))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = result;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 56) = 1;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrInputViewUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinIrKernelUnitInfo::ZinIrKernelUnitInfo(ZinIrKernelUnitInfo *this, const ZinIrKernelUnitInfo *a2)
{
  ZinIrUnitInfo::ZinIrUnitInfo(this, a2);
  *v4 = &unk_1F1A2EAA0;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  *(v4 + 128) = 0;
  *(v4 + 96) = v6;
  *(v4 + 112) = v7;
  *(v4 + 80) = v5;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>((v4 + 128), *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 19, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 3);
  v8 = *(a2 + 11);
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  *(this + 220) = *(a2 + 220);
  *(this + 12) = v9;
  *(this + 13) = v10;
  *(this + 11) = v8;
}

void sub_1A74610F0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ZinIrLinearUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrLinearUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ZinIrUnitInfo *std::optional<ZinIrLinearUnitInfo>::~optional(ZinIrUnitInfo *this)
{
  if (*(this + 336) == 1)
  {
    *this = &unk_1F1A2EA80;
    if (*(this + 320) == 1)
    {
      v2 = *(this + 37);
      if (v2)
      {
        *(this + 38) = v2;
        operator delete(v2);
      }

      v3 = *(this + 34);
      if (v3)
      {
        *(this + 35) = v3;
        operator delete(v3);
      }

      v4 = *(this + 31);
      if (v4)
      {
        *(this + 32) = v4;
        operator delete(v4);
      }
    }

    *this = &unk_1F1A2EAA0;
    v5 = *(this + 19);
    if (v5)
    {
      *(this + 20) = v5;
      operator delete(v5);
    }

    v6 = *(this + 16);
    if (v6)
    {
      *(this + 17) = v6;
      operator delete(v6);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

__n128 std::__function::__func<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0,std::allocator<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0>,void ()(std::optional<ZinIrLinearUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B6E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0,std::allocator<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0>,void ()(std::optional<ZinIrLinearUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  __p = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v51 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v41 = 0xFFFFFFFFLL;
  v39 = 0xFFFFFFFFLL;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  *&v34.__r_.__value_.__r.__words[1] = 0u;
  *&v38 = -1;
  v40 = -1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = -1;
  *&v46 = 0;
  DWORD2(v46) = 1;
  DWORD2(v47) = -1;
  *&v48 = -1;
  DWORD2(v48) = -1;
  v49 = -1;
  v50 = 0x3F80000000000006;
  v34.__r_.__value_.__r.__words[0] = &unk_1F1A2EA80;
  DWORD2(v51) = 5;
  v57 = -1;
  std::optional<ZinIrLinearUnitInfo>::operator=[abi:ne200100]<ZinIrLinearUnitInfo,void>(a2, &v34);
  v34.__r_.__value_.__r.__words[0] = &unk_1F1A2EA80;
  if (BYTE8(v56) == 1)
  {
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (*(&v53 + 1))
    {
      *&v54 = *(&v53 + 1);
      operator delete(*(&v53 + 1));
    }

    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }
  }

  v34.__r_.__value_.__r.__words[0] = &unk_1F1A2EAA0;
  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }

  if (*(&v43 + 1))
  {
    *&v44 = *(&v43 + 1);
    operator delete(*(&v43 + 1));
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v34.__r_.__value_.__l.__data_);
  *(a2 + 32) = 60;
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v5 = MIL::IRValue::AsTensor(ParameterValue);
  v6 = (*(*v5 + 32))(v5);
  v7 = (*(*v6 + 96))(v6);
  GetMILShapeAsVector(v7, &v31);
  memset(&v30, 0, sizeof(v30));
  ParameterType = MIL::IROperation::TryGetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v9);
  v11 = *(a1 + 24);
  v12 = MILTensorRank;
  *&v34.__r_.__value_.__r.__words[1] = 0uLL;
  v34.__r_.__value_.__r.__words[0] = &v34.__r_.__value_.__l.__size_;
  MILFunctionInfo::GetKernelLayout(v11, MILTensorRank, &v30, &v34);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v34, v34.__r_.__value_.__l.__size_);
  v13 = *(a1 + 32);
  v16 = *(v13 + 8);
  v14 = v13 + 8;
  v15 = v16;
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = v14;
  do
  {
    if (*(v15 + 32) >= v12)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v12));
  }

  while (v15);
  if (v17 == v14 || *(v17 + 32) > v12)
  {
LABEL_49:
    ZinAssertImpl("MIL weight custom layout is not specified.");
  }

  if (*(v17 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *(v17 + 40), *(v17 + 48));
  }

  else
  {
    v29 = *(v17 + 40);
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 8);
  if (*(v18 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *v18, *(v18 + 1));
  }

  else
  {
    v21 = *v18;
    v34.__r_.__value_.__r.__words[2] = *(v18 + 2);
    *&v34.__r_.__value_.__l.__data_ = v21;
  }

  LOBYTE(v35) = 1;
  MILOpConverter::FillWeightInfo(v20, ParameterValue, &v31, &v29, &v30, v19, a2, &v34);
  if (v35 == 1 && SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v29;
  }

  else
  {
    v22 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v24 = v22 + size;
  if (size >= 1)
  {
    v25 = v22;
    do
    {
      v26 = memchr(v25, 75, size);
      if (!v26)
      {
        break;
      }

      if (*v26 == 75)
      {
        goto LABEL_40;
      }

      v25 = (v26 + 1);
      size = v24 - v25;
    }

    while (v24 - v25 > 0);
  }

  v26 = v24;
LABEL_40:
  v27 = v26 - v22;
  if (v26 == v24)
  {
    v27 = -1;
  }

  v28 = *(v31 + v27);
  *(a2 + 72) = v28;
  **(a1 + 40) = v28;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_1A7461714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0,std::allocator<ZinMILUnitBuilder::InsertLinear(MILFunctionInfo &,MIL::IROperation const&,std::string const&,std::string const&,std::string const&,std::map<long,std::string> const&,std::map<long,std::string> const&,unsigned long &)::$_0>,void ()(std::optional<ZinIrLinearUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrLinearUnitInfo>::operator=[abi:ne200100]<ZinIrLinearUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    v5 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v5;
    *(a1 + 80) = v4;
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 128, (a2 + 128));
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 152, (a2 + 152));
    v6 = *(a2 + 176);
    v7 = *(a2 + 192);
    v8 = *(a2 + 208);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 192) = v7;
    *(a1 + 208) = v8;
    *(a1 + 176) = v6;
    *(a1 + 240) = *(a2 + 240);
    std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrShardingMap,false>>((a1 + 248), (a2 + 248));
    *(a1 + 328) = *(a2 + 328);
  }

  else
  {
    ZinIrLinearUnitInfo::ZinIrLinearUnitInfo(a1, a2);
    *(a1 + 336) = 1;
  }

  return a1;
}

__n128 std::__optional_storage_base<ZinIrShardingMap,false>::__construct[abi:ne200100]<ZinIrShardingMap>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  result = *(a2 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t ZinIrLinearUnitInfo::ZinIrLinearUnitInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F1A2EAA0;
  v6 = *(a2 + 80);
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  *(a1 + 80) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 192) = v9;
  *(a1 + 208) = v10;
  *(a1 + 176) = v8;
  *a1 = &unk_1F1A2EA80;
  *(a1 + 240) = *(a2 + 240);
  std::__optional_move_base<ZinIrShardingMap,false>::__optional_move_base[abi:ne200100]((a1 + 248), a2 + 248);
  *(a1 + 328) = *(a2 + 328);
  return a1;
}

void sub_1A7461AC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<ZinIrShardingMap,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[72] = 0;
  if (*(a2 + 72) == 1)
  {
    std::__optional_storage_base<ZinIrShardingMap,false>::__construct[abi:ne200100]<ZinIrShardingMap>(a1, a2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrLinearUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Stack(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v62 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v53);
  if (*(v53 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *v53, v53[1]);
  }

  else
  {
    v5 = *v53;
    v51.__r_.__value_.__r.__words[2] = v53[2];
    *&v51.__r_.__value_.__l.__data_ = v5;
  }

  *&v50[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v50);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  v9 = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(v9);
  MILTensorRank = GetMILTensorRank(v10);
  memset(v50, 0, sizeof(v50));
  std::string::basic_string[abi:ne200100]<0>(v60, "values");
  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v53, v60, &v62, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v50, a1, &v53, a3, &v48);
  v44[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  v47 = 0;
  RetrieveRequiredAxis(MILTensorRank, a1, &v47);
  v39 = v8;
  v38 = a1;
  v46 = 0;
  v54 = 0;
  v55 = 0;
  v53 = &v54;
  ToZinIrDimension(a3, MILTensorRank, v47, &v46, &v53);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v53, v54);
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  if (v49 != v48)
  {
    v12 = 0;
    v13 = MILTensorRank - 1;
    do
    {
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v42, size + 24);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v42;
      }

      else
      {
        v15 = v42.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v51;
        }

        else
        {
          v16 = v51.__r_.__value_.__r.__words[0];
        }

        memmove(v15, v16, size);
      }

      strcpy(v15 + size, "__@input_layout_convert_");
      std::to_string(&v41, v12);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v41;
      }

      else
      {
        v17 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v41.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v42, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = v48;
      if (v46 == 3)
      {
        v22 = "W";
      }

      else
      {
        v22 = "H";
      }

      v53 = 1;
      std::string::basic_string[abi:ne200100]<0>(&v54, v22);
      v23 = "CH";
      if (v46 == 3)
      {
        v23 = "CW";
      }

      if (v46 == 2)
      {
        v24 = "HW";
      }

      else
      {
        v24 = v23;
      }

      v56 = 2;
      std::string::basic_string[abi:ne200100]<0>(v57, v24);
      v25 = "NCH";
      if (v46 == 3)
      {
        v25 = "NCW";
      }

      if (v46 == 2)
      {
        v25 = "NHW";
      }

      if (v46)
      {
        v26 = v25;
      }

      else
      {
        v26 = "CHW";
      }

      v57[3] = 3;
      std::string::basic_string[abi:ne200100]<0>(v58, v26);
      if (v46)
      {
        if (v46 == 1)
        {
          v27 = "NCHW";
        }

        else
        {
          v28 = "NDCH";
          if (v46 == 3)
          {
            v28 = "NDCW";
          }

          if (v46 == 2)
          {
            v27 = "NDHW";
          }

          else
          {
            v27 = v28;
          }
        }
      }

      else
      {
        v27 = "DCHW";
      }

      v58[3] = 4;
      std::string::basic_string[abi:ne200100]<0>(v59, v27);
      std::map<long,std::string>::map[abi:ne200100](v40, &v53, 4);
      ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v44, a3, v13, v21 + 24 * v12, v40, 4);
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v40, v40[1]);
      for (i = 0; i != -16; i -= 4)
      {
        if (SHIBYTE(v59[i + 2]) < 0)
        {
          operator delete(v59[i]);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      std::vector<std::string>::push_back[abi:ne200100](v60, v44[0]);
      v53 = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
      ++v12;
    }

    while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3));
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v51.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&__p, v30 + 3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v30)
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v51;
    }

    else
    {
      v32 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v32, v30);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v30) = 4218719;
  v33 = *(v48 + 23);
  if (v33 >= 0)
  {
    v34 = v48;
  }

  else
  {
    v34 = *v48;
  }

  if (v33 >= 0)
  {
    v35 = *(v48 + 23);
  }

  else
  {
    v35 = *(v48 + 8);
  }

  v36 = std::string::append(&__p, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v45 = v36->__r_.__value_.__r.__words[2];
  *v44 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v52[0] = &unk_1F1A3B7D8;
  v52[1] = &v46;
  v52[3] = v52;
  ZinMILUnitBuilder::CreateUnit<ZinIrConcatUnitInfo>(v60, v52, &v53);
  std::__function::__value_func<void ()(std::optional<ZinIrConcatUnitInfo> &)>::~__value_func[abi:ne200100](v52);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ZinMILUnitBuilder::Finalize(v50, a3, v38, &v51.__r_.__value_.__l.__data_, v39, 1, 1);
  v44[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  v53 = v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v53 = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v53 = &v50[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v53 = v50;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v53);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_1A7462220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, char a60)
{
  *(v60 + 32) = v61 - 256;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a47);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrConcatUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A746269C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrConcatUnitInfo::ZinIrConcatUnitInfo(ZinIrConcatUnitInfo *this, const ZinIrConcatUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A34078;
  v6 = *(a2 + 20);
  *(this + 84) = *(a2 + 84);
  *(this + 20) = v6;
}

void sub_1A7462898(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrConcatUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrConcatUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConcatUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3B7D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConcatUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v4[0] = &unk_1F1A34078;
  v10 = 0;
  v9 = 2;
  v5 = 3;
  std::optional<ZinIrConcatUnitInfo>::operator=[abi:ne200100]<ZinIrConcatUnitInfo,void>(a2, v4);
  ZinIrUnitInfo::~ZinIrUnitInfo(v4);
  *(a2 + 32) = 3;
  *(a2 + 84) = 0;
  *(a2 + 80) = **(a1 + 8);
}

void sub_1A7462A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Stack(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConcatUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrConcatUnitInfo>::operator=[abi:ne200100]<ZinIrConcatUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A34078;
    v7 = *(a2 + 80);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 80) = v7;
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_1A7462C10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrConcatUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::PixelShuffle(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v11);
  if (*(*&v11[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, **&v11[0], *(*&v11[0] + 8));
  }

  else
  {
    v5 = **&v11[0];
    v12.__r_.__value_.__r.__words[2] = *(*&v11[0] + 16);
    *&v12.__r_.__value_.__l.__data_ = v5;
  }

  v14 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v11, 0, sizeof(v11));
  std::string::basic_string[abi:ne200100]<0>(v18, "x");
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v14, v18, &v20, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v11, a1, &v14, a3, v10);
  v13 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v9 = 1;
  v14 = &unk_1F1A3B8C8;
  v15 = &v9;
  v16 = a1;
  v17 = &v14;
  ZinMILUnitBuilder::CreateUnit<ZinIrPixelShuffleUnitInfo>(v10, &v14, v18);
  v13 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::__function::__value_func<void ()(std::optional<ZinIrPixelShuffleUnitInfo> &)>::~__value_func[abi:ne200100](&v14);
  ZinMILUnitBuilder::Finalize(v11, a3, a1, &v12.__r_.__value_.__l.__data_, v8, 1, 1);
  v13 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v10[0] = &v11[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v10[0] = v11;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1A7462EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *a26)
{
  a26 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void MILOpConverter::PixelUnshuffle(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v11);
  if (*(*&v11[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, **&v11[0], *(*&v11[0] + 8));
  }

  else
  {
    v5 = **&v11[0];
    v12.__r_.__value_.__r.__words[2] = *(*&v11[0] + 16);
    *&v12.__r_.__value_.__l.__data_ = v5;
  }

  v14 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v11, 0, sizeof(v11));
  std::string::basic_string[abi:ne200100]<0>(v18, "x");
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v14, v18, &v20, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v11, a1, &v14, a3, v10);
  v13 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v9 = 0;
  v14 = &unk_1F1A3B9B8;
  v15 = &v9;
  v16 = a1;
  v17 = &v14;
  ZinMILUnitBuilder::CreateUnit<ZinIrPixelUnshuffleUnitInfo>(v10, &v14, v18);
  v13 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::__function::__value_func<void ()(std::optional<ZinIrPixelUnshuffleUnitInfo> &)>::~__value_func[abi:ne200100](&v14);
  ZinMILUnitBuilder::Finalize(v11, a3, a1, &v12.__r_.__value_.__l.__data_, v8, 1, 1);
  v13 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v10[0] = &v11[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v10[0] = v11;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1A74631D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *a26)
{
  a26 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrPixelShuffleUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7463500(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrPixelShuffleUnitInfo::ZinIrPixelShuffleUnitInfo(ZinIrPixelShuffleUnitInfo *this, const ZinIrPixelShuffleUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33EC8;
  v6 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v6;
}

void sub_1A74636FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrPixelShuffleUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPixelShuffleUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelShuffleUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelShuffleUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  v12 = 0;
  v11 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = -1;
  __p = &unk_1F1A33EC8;
  v17 = 0x100000001;
  v18 = 1;
  v13 = 31;
  std::optional<ZinIrPixelShuffleUnitInfo>::operator=[abi:ne200100]<ZinIrPixelShuffleUnitInfo,void>(a2, &__p);
  ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  v9 = 0;
  if (**(a1 + 8) == 1)
  {
    v8 = 0;
    v4 = *(a1 + 16);
    std::string::basic_string[abi:ne200100]<0>(&__p, "upscale_factor");
    RetrieveRequiredValue<int>(v4, &__p, &v8, 0);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = v8;
  }

  else
  {
    v6 = *(a1 + 16);
    std::string::basic_string[abi:ne200100]<0>(&__p, "downscale_factor");
    RetrieveRequiredValue<unsigned int>(v6, &__p, &v9, 0);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = v9;
  }

  if (**(a1 + 8))
  {
    v7 = 31;
  }

  else
  {
    v7 = 32;
  }

  a2[8] = v7;
  a2[20] = v5;
  a2[21] = v5;
  a2[22] = 1;
}

void sub_1A7463988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelShuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelShuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelShuffleUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrPixelShuffleUnitInfo>::operator=[abi:ne200100]<ZinIrPixelShuffleUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33EC8;
    v7 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A7463B4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RetrieveRequiredValue<int>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  result = RetrieveIRValue<int,int>(ParameterValue, a3);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v8);
  }

  return result;
}

_DWORD *RetrieveRequiredValue<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!MIL::IROperation::TryGetParameterValue() || (result = MEMORY[0x1AC5596B0]()) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v7);
  }

  *a3 = *result;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPixelShuffleUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinMILUnitBuilder::CreateUnit<ZinIrPixelUnshuffleUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7463F38(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrPixelUnshuffleUnitInfo::ZinIrPixelUnshuffleUnitInfo(ZinIrPixelUnshuffleUnitInfo *this, const ZinIrPixelUnshuffleUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33EE8;
  v6 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v6;
}

void sub_1A7464134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrPixelUnshuffleUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPixelUnshuffleUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelUnshuffleUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelUnshuffleUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v15 = -1;
  __p = &unk_1F1A33EE8;
  v16 = 0x100000001;
  v17 = 1;
  std::optional<ZinIrPixelUnshuffleUnitInfo>::operator=[abi:ne200100]<ZinIrPixelUnshuffleUnitInfo,void>(a2, &__p);
  ZinIrUnitInfo::~ZinIrUnitInfo(&__p);
  v9 = 0;
  if (**(a1 + 8) == 1)
  {
    v8 = 0;
    v4 = *(a1 + 16);
    std::string::basic_string[abi:ne200100]<0>(&__p, "upscale_factor");
    RetrieveRequiredValue<int>(v4, &__p, &v8, 0);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = v8;
  }

  else
  {
    v6 = *(a1 + 16);
    std::string::basic_string[abi:ne200100]<0>(&__p, "downscale_factor");
    RetrieveRequiredValue<unsigned int>(v6, &__p, &v9, 0);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    v5 = v9;
  }

  if (**(a1 + 8))
  {
    v7 = 31;
  }

  else
  {
    v7 = 32;
  }

  a2[8] = v7;
  a2[20] = v5;
  a2[21] = v5;
  a2[22] = 1;
}

void sub_1A74643B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1},std::allocator<void MILOpConverter::PixelShuffle_Impl<ZinIrPixelUnshuffleUnitInfo>(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::{lambda(std::optional<ZinIrPixelUnshuffleUnitInfo> &)#1}>,void ()(std::optional<ZinIrPixelUnshuffleUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrPixelUnshuffleUnitInfo>::operator=[abi:ne200100]<ZinIrPixelUnshuffleUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33EE8;
    v7 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A746457C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPixelUnshuffleUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Cast(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (SHIBYTE(__p[0].__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p[0].__begin_->__r_.__value_.__l.__data_, __p[0].__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = *&__p[0].__begin_->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = __p[0].__begin_->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v5;
  }

  *&v14[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v14, 0, sizeof(v14));
  std::string::basic_string[abi:ne200100]<0>(v18, "x");
  memset(__p, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, v18, &v20, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v14, a1, __p, a3, &v13);
  v16 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v8 == 2)
  {
    v17[0] = &unk_1F1A3BA48;
    v17[3] = v17;
    ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&v13, v17, __p);
    std::vector<std::string>::__vdeallocate(&v13);
    v13 = __p[0];
    memset(__p, 0, 24);
    v18[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
    std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v17);
  }

  ZinMILUnitBuilder::Finalize(v14, a3, a1, &v15.__r_.__value_.__l.__data_, v8, 1, 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 88))(v10);
  if (SHIBYTE(__p[0].__end_cap_.__value_) < 0)
  {
    operator delete(__p[0].__begin_);
  }

  LODWORD(__p[0].__begin_) = 0;
  ToZinTensorFormat(v11, __p);
  __p[0].__begin_ = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0].__begin_ = (&v14[1] + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0].__begin_ = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1A74648E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void **p_p)
{
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

void std::__function::__func<MILOpConverter::Cast(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Cast(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v3[1], 0, 24);
  v4 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = -1;
  v3[0] = &unk_1F1A2EA10;
  v8 = 0;
  std::optional<ZinIrEWUnitInfo>::operator=[abi:ne200100]<ZinIrEWUnitInfo&,void>(a2, v3);
  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(a2 + 32) = 4;
  *(a2 + 80) = 11;
}

void sub_1A7464BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Cast(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Cast(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::NEBypass(MIL::IROperation *a1, uint64_t a2, MILOpConverter *a3, ZinIrUnitInfo *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v22[0] = -1;
  BYTE8(v23) = 0;
  v17 = &unk_1F19E5E00;
  MILOpConverter::FillNEBypassUnitInfo(a1, a3, &v17, a4);
  memset(v16, 0, sizeof(v16));
  v28 = 1;
  LOWORD(v27[0]) = 120;
  memset(&v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v14, v27, &v29, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v16, a1, &v14, a3, v15);
  v25 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  (*(*a1 + 200))(v27, a1);
  if (*(v27[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *v27[0], *(v27[0] + 1));
  }

  else
  {
    v6 = *v27[0];
    v14.__r_.__value_.__r.__words[2] = *(v27[0] + 2);
    *&v14.__r_.__value_.__l.__data_ = v6;
  }

  v25 = v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v8 = v27;
  std::string::basic_string[abi:ne200100](v27, size + 11);
  if (v28 < 0)
  {
    v8 = v27[0];
  }

  if (size)
  {
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    memmove(v8, v9, size);
  }

  strcpy(v8 + size, "__@nebypass");
  v26[0] = &unk_1F1A3BB28;
  v26[1] = &v17;
  v26[3] = v26;
  ZinMILUnitBuilder::CreateUnit<ZinIrNEBypassUnitInfo>(v15, v26, v13);
  v25 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  std::__function::__value_func<void ()(std::optional<ZinIrNEBypassUnitInfo> &)>::~__value_func[abi:ne200100](v26);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  OutputType = MIL::IROperation::GetOutputType(a1);
  v11 = MIL::IRValueType::AsTensorType(OutputType);
  v12 = (*(*v11 + 88))(v11);
  ZinMILUnitBuilder::Finalize(v16, a3, a1, &v14.__r_.__value_.__l.__data_, v12, 1, 1);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v14.__r_.__value_.__r.__words[0] = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  v15[0] = &v16[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v15);
  v15[0] = v16;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v15);
  v17 = &unk_1F19D1078;
  if (BYTE8(v23) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v22[21]);
  }

  if (LOBYTE(v22[20]) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v22[1]);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v17);
}

void sub_1A7464FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  *(v29 - 120) = v29 - 80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 120));
  __p = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a22);
  ZinIrNEUnitInfo::~ZinIrNEUnitInfo(&a29);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrNEBypassUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v15 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v15)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v15 == 1)
  {
    v10[0] = &unk_1F19D1078;
    if (v14 == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(&v13);
    }

    if (v12 == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(&v11);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7465360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrNEBypassUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__construct[abi:ne200100]<ZinIrGOCUnitInfo const&>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F19CA4D8;
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  *(a1 + 152) = 1;
  return result;
}

void sub_1A7465564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__construct[abi:ne200100]<ZinIrNeuronUnitInfo const&>(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F19CEE38;
  result = *(a2 + 80);
  v7 = *(a2 + 96);
  *(a1 + 80) = result;
  *(a1 + 96) = v7;
  *(a1 + 112) = 1;
  return result;
}

void sub_1A7465658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrNEBypassUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrNEBypassUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **std::optional<ZinIrNEBypassUnitInfo>::~optional(void **this)
{
  if (*(this + 368) == 1)
  {
    *this = &unk_1F19D1078;
    if (*(this + 352) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(this + 30);
    }

    if (*(this + 232) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo(this + 10);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

uint64_t std::__function::__func<MILOpConverter::NEBypass(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEBypass(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEBypassUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3BB28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::NEBypass(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEBypass(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEBypassUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrNEBypassUnitInfo>::operator=[abi:ne200100]<ZinIrNEBypassUnitInfo&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 368) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrGOCUnitInfo,false> const&>((a1 + 80), a2 + 80);
    std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrNeuronUnitInfo,false> const&>((a1 + 240), a2 + 240);
    v4 = *(a2 + 360);
    *(a1 + 364) = *(a2 + 364);
    *(a1 + 360) = v4;
  }

  else
  {
    ZinIrNEBypassUnitInfo::ZinIrNEBypassUnitInfo(a1, a2);
    *(a1 + 368) = 1;
  }

  return a1;
}

double std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrGOCUnitInfo,false> const&>(ZinIrUnitInfo *this, uint64_t a2)
{
  if (*(this + 152) == *(a2 + 152))
  {
    if (*(this + 152))
    {
      std::string::operator=((this + 8), (a2 + 8));
      *(this + 8) = *(a2 + 32);
      if (this != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
      }

      *(this + 4) = *(a2 + 64);
      v5 = *(a2 + 112);
      v4 = *(a2 + 128);
      v6 = *(a2 + 96);
      *(this + 18) = *(a2 + 144);
      *(this + 7) = v5;
      *(this + 8) = v4;
      *(this + 6) = v6;
      v7 = *(a2 + 80);
      *(this + 5) = v7;
    }
  }

  else if (*(this + 152))
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this);
    *(this + 152) = 0;
  }

  else
  {

    *&v7 = std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__construct[abi:ne200100]<ZinIrGOCUnitInfo const&>(this, a2).n128_u64[0];
  }

  return *&v7;
}

double std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrNeuronUnitInfo,false> const&>(ZinIrUnitInfo *this, uint64_t a2)
{
  if (*(this + 112) == *(a2 + 112))
  {
    if (*(this + 112))
    {
      std::string::operator=((this + 8), (a2 + 8));
      *(this + 8) = *(a2 + 32);
      if (this != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
      }

      *(this + 4) = *(a2 + 64);
      v4 = *(a2 + 80);
      v5 = *(a2 + 96);
      *(this + 5) = v4;
      *(this + 6) = v5;
    }
  }

  else if (*(this + 112))
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this);
    *(this + 112) = 0;
  }

  else
  {

    *&v4 = std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__construct[abi:ne200100]<ZinIrNeuronUnitInfo const&>(this, a2).n128_u64[0];
  }

  return *&v4;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrNEBypassUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ZinMILConstantFolding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 120))(a1, a3, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!MILFunctionInfo::ContainOp(a2, v6))
  {
    return 0;
  }

  v8 = *MILFunctionInfo::AtOp(a2, v7);
  if (!v8)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "cast");
  v18[0] = &unk_1F1A3BCD8;
  v18[1] = ConstantFoldCast;
  v18[3] = v18;
  std::map<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>::map[abi:ne200100](&v13, &__p, 1);
  std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::~__value_func[abi:ne200100](v18);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  GetMILOperationInfo(&__p, v8);
  v9 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v13, &v16);
  if (&v14 == v9)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 80);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v10 + 48))(v10, v8, a2, a4))
  {
LABEL_12:
    v11 = 0;
  }

  else
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a2 + 144), v7, v7);
    v11 = 1;
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v16);
  }

  std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::destroy(&v13, v14);
  return v11;
}

uint64_t ConstantFoldCast(const MIL::IROperation *a1, MILFunctionInfo *a2, ZinIrIOInfo *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 200))(__p, a1);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v5 = *__p[0];
    v12.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v12.__r_.__value_.__l.__data_ = v5;
  }

  v13 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (ParameterValue)
  {
    v6 = (*(*ParameterValue + 32))(ParameterValue);
    v7 = MIL::IRValueType::AsTensorType(v6);
    v8 = (*(*v7 + 88))(v7);
    LODWORD(v13) = 0;
    ToZinTensorFormat(v8, &v13);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1A7465EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, int a14, char a15, __int128 a16, int a17, __int16 a18, char a19, char a20, __int128 a21, uint64_t a22, __int16 a23, char a24, __int128 a25, char a26, uint64_t a27, int a28, char a29, uint64_t a30, void *__p, uint64_t a32)
{
  *(v32 - 72) = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v32 - 72));
  _Unwind_Resume(a1);
}

uint64_t ConstantFoldCast_Impl<int>(MIL::IROperation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  result = RetrieveIRValue<int,int>(a3, &v19);
  if (result)
  {
    OutputType = MIL::IROperation::GetOutputType(a1);
    v9 = MIL::IRValueType::AsTensorType(OutputType);
    v10 = (*(*v9 + 88))(v9);
    switch(v10)
    {
      case 0xE:
        LOBYTE(v15) = v19;
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v15, &v15 + 1, 1);
        v14 = 2;
        v11 = vdupq_n_s64(1uLL);
        v12 = v11;
        v13 = 1;
        MILOpConverter::CreateConstInfo<unsigned char>(a1, a2, &__p, &v14, v11.i8, a4);
        break;
      case 9:
        LOBYTE(v15) = v19;
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v15, &v15 + 1, 1);
        v14 = 1;
        v11 = vdupq_n_s64(1uLL);
        v12 = v11;
        v13 = 1;
        MILOpConverter::CreateConstInfo<signed char>(a1, a2, &__p, &v14, v11.i8, a4);
        break;
      case 4:
        v15 = MIL::Fp16::FromFloat(v10, v19);
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v15, &__p, 1);
        v14 = 3;
        v11 = vdupq_n_s64(1uLL);
        v12 = v11;
        v13 = 1;
        MILOpConverter::CreateConstInfo<MIL::Fp16>(a1, a2, &__p, &v14, v11.i8, a4);
        break;
      default:
        return 0;
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    return 1;
  }

  return result;
}

void sub_1A74662B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ConstantFoldCast_Impl<BOOL>(MIL::IROperation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = MEMORY[0x1AC559670](a3);
  if (!result)
  {
    return result;
  }

  v8 = *result;
  OutputType = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(OutputType);
  v11 = (*(*v10 + 88))(v10);
  if (v11 == 14)
  {
    LOBYTE(v16) = v8;
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v16, &v16 + 1, 1);
    v15 = 2;
    v12 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = 1;
    MILOpConverter::CreateConstInfo<unsigned char>(a1, a2, &__p, &v15, v12.i8, a4);
    goto LABEL_10;
  }

  if (v11 == 9)
  {
    LOBYTE(v16) = v8;
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v16, &v16 + 1, 1);
    v15 = 1;
    v12 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = 1;
    MILOpConverter::CreateConstInfo<signed char>(a1, a2, &__p, &v15, v12.i8, a4);
    goto LABEL_10;
  }

  if (v11 != 4)
  {
    return 0;
  }

  v16 = MIL::Fp16::FromFloat(v11, v8);
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v16, &__p, 1);
  v15 = 3;
  v12 = vdupq_n_s64(1uLL);
  v13 = v12;
  v14 = 1;
  MILOpConverter::CreateConstInfo<MIL::Fp16>(a1, a2, &__p, &v15, v12.i8, a4);
LABEL_10:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1A746649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ConstantFoldCast_Impl<unsigned int>(MIL::IROperation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = MEMORY[0x1AC5596B0](a3);
  if (!result)
  {
    return result;
  }

  v8 = *result;
  OutputType = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(OutputType);
  v11 = (*(*v10 + 88))(v10);
  if (v11 == 14)
  {
    LOBYTE(v16) = v8;
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v16, &v16 + 1, 1);
    v15 = 2;
    v12 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = 1;
    MILOpConverter::CreateConstInfo<unsigned char>(a1, a2, &__p, &v15, v12.i8, a4);
    goto LABEL_10;
  }

  if (v11 == 9)
  {
    LOBYTE(v16) = v8;
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&__p, &v16, &v16 + 1, 1);
    v15 = 1;
    v12 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = 1;
    MILOpConverter::CreateConstInfo<signed char>(a1, a2, &__p, &v15, v12.i8, a4);
    goto LABEL_10;
  }

  if (v11 != 4)
  {
    return 0;
  }

  v16 = MIL::Fp16::FromFloat(v11, v8);
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v16, &__p, 1);
  v15 = 3;
  v12 = vdupq_n_s64(1uLL);
  v13 = v12;
  v14 = 1;
  MILOpConverter::CreateConstInfo<MIL::Fp16>(a1, a2, &__p, &v15, v12.i8, a4);
LABEL_10:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1A7466688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::CreateConstInfo<MIL::Fp16>(uint64_t a1, uint64_t a2, unsigned __int16 **a3, _DWORD *a4, __int128 *a5, uint64_t a6)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v11 = VectorToDisk<MIL::Fp16>(a3, a2);
  *(a6 + 192) = v12;
  *(a6 + 184) = v11;
  *(a6 + 48) = *a4;
  v14 = *a5;
  v13 = a5[1];
  *(a6 + 88) = *(a5 + 4);
  *(a6 + 56) = v14;
  *(a6 + 72) = v13;
  (*(*a1 + 200))(v45, a1);
  v15 = v45[0];
  if (*(v45[0] + 23) >= 0)
  {
    v16 = *(v45[0] + 23);
  }

  else
  {
    v16 = *(v45[0] + 8);
  }

  v17 = &v33;
  std::string::basic_string[abi:ne200100](&v33, v16 + 7);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v33.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (v15[23] >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v15;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_const_");
  std::to_string(&v44, *(a2 + 112));
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v44;
  }

  else
  {
    v19 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v33, v19, size);
  v22 = v21->__r_.__value_.__r.__words[0];
  v46[0] = v21->__r_.__value_.__l.__size_;
  *(v46 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  v24 = v46[0];
  *a6 = v22;
  *(a6 + 8) = v24;
  *(a6 + 15) = *(v46 + 7);
  *(a6 + 23) = v23;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v44.__r_.__value_.__r.__words[0] = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  ShortenLongTensorName(a6, &v33);
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  *a6 = v33;
  v25 = *(a6 + 48);
  v27[0] = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v31 = 5;
  v32 = 0;
  LODWORD(v33.__r_.__value_.__l.__data_) = v25;
  v26 = *(a6 + 72);
  *&v33.__r_.__value_.__r.__words[1] = *(a6 + 56);
  v34 = v26;
  v35 = *(a6 + 88);
  v36 = 0;
  v37 = 1;
  v38 = vdupq_n_s64(1uLL);
  v39 = 0;
  v40 = 0;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v41, v27);
  MILFunctionInfo::RecordTensorInfo(a2, a6, &v33);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1A7466954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::CreateConstInfo<signed char>(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4, __int128 *a5, uint64_t a6)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v11 = VectorToDisk<signed char>(a3, a2);
  *(a6 + 192) = v12;
  *(a6 + 184) = v11;
  *(a6 + 48) = *a4;
  v14 = *a5;
  v13 = a5[1];
  *(a6 + 88) = *(a5 + 4);
  *(a6 + 56) = v14;
  *(a6 + 72) = v13;
  (*(*a1 + 200))(v45, a1);
  v15 = v45[0];
  if (*(v45[0] + 23) >= 0)
  {
    v16 = *(v45[0] + 23);
  }

  else
  {
    v16 = *(v45[0] + 8);
  }

  v17 = &v33;
  std::string::basic_string[abi:ne200100](&v33, v16 + 7);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v33.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (v15[23] >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v15;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_const_");
  std::to_string(&v44, *(a2 + 112));
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v44;
  }

  else
  {
    v19 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v33, v19, size);
  v22 = v21->__r_.__value_.__r.__words[0];
  v46[0] = v21->__r_.__value_.__l.__size_;
  *(v46 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  v24 = v46[0];
  *a6 = v22;
  *(a6 + 8) = v24;
  *(a6 + 15) = *(v46 + 7);
  *(a6 + 23) = v23;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v44.__r_.__value_.__r.__words[0] = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  ShortenLongTensorName(a6, &v33);
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  *a6 = v33;
  v25 = *(a6 + 48);
  v27[0] = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v31 = 5;
  v32 = 0;
  LODWORD(v33.__r_.__value_.__l.__data_) = v25;
  v26 = *(a6 + 72);
  *&v33.__r_.__value_.__r.__words[1] = *(a6 + 56);
  v34 = v26;
  v35 = *(a6 + 88);
  v36 = 0;
  v37 = 1;
  v38 = vdupq_n_s64(1uLL);
  v39 = 0;
  v40 = 0;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v41, v27);
  MILFunctionInfo::RecordTensorInfo(a2, a6, &v33);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1A7466C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::CreateConstInfo<unsigned char>(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4, __int128 *a5, uint64_t a6)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v11 = VectorToDisk<unsigned char>(a3, a2);
  *(a6 + 192) = v12;
  *(a6 + 184) = v11;
  *(a6 + 48) = *a4;
  v14 = *a5;
  v13 = a5[1];
  *(a6 + 88) = *(a5 + 4);
  *(a6 + 56) = v14;
  *(a6 + 72) = v13;
  (*(*a1 + 200))(v45, a1);
  v15 = v45[0];
  if (*(v45[0] + 23) >= 0)
  {
    v16 = *(v45[0] + 23);
  }

  else
  {
    v16 = *(v45[0] + 8);
  }

  v17 = &v33;
  std::string::basic_string[abi:ne200100](&v33, v16 + 7);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v33.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (v15[23] >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v15;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_const_");
  std::to_string(&v44, *(a2 + 112));
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v44;
  }

  else
  {
    v19 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v33, v19, size);
  v22 = v21->__r_.__value_.__r.__words[0];
  v46[0] = v21->__r_.__value_.__l.__size_;
  *(v46 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  v24 = v46[0];
  *a6 = v22;
  *(a6 + 8) = v24;
  *(a6 + 15) = *(v46 + 7);
  *(a6 + 23) = v23;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v44.__r_.__value_.__r.__words[0] = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v44);
  ShortenLongTensorName(a6, &v33);
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
  }

  *a6 = v33;
  v25 = *(a6 + 48);
  v27[0] = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v31 = 5;
  v32 = 0;
  LODWORD(v33.__r_.__value_.__l.__data_) = v25;
  v26 = *(a6 + 72);
  *&v33.__r_.__value_.__r.__words[1] = *(a6 + 56);
  v34 = v26;
  v35 = *(a6 + 88);
  v36 = 0;
  v37 = 1;
  v38 = vdupq_n_s64(1uLL);
  v39 = 0;
  v40 = 0;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v41, v27);
  MILFunctionInfo::RecordTensorInfo(a2, a6, &v33);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1A7466FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VectorToDisk<signed char>(char **a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F1A3BBB8;
  v4[3] = v4;
  v2 = ToDisk_Impl<signed char,signed char>(a1, a2, v4);
  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A74670C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ToDisk_Impl<signed char,signed char>(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 512);
  MEMORY[0x1AC55A4C0](*(v6 + 128));
  v8 = *a1;
  v7 = a1[1];
  while (v8 != v7)
  {
    v9 = *v8++;
    __ptr = std::function<signed char ()(signed char)>::operator()(a3, v9);
    fwrite(&__ptr, 1uLL, 1uLL, *(v6 + 128));
  }

  return MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), v6 + 136);
}

uint64_t std::function<signed char ()(signed char)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<MILFileInfo ToDisk_Impl<signed char,signed char>(std::vector<signed char> const&,MILFunctionInfo &,std::function<signed char ()(signed char)>)::$_0,std::allocator<MILFileInfo ToDisk_Impl<signed char,signed char>(std::vector<signed char> const&,MILFunctionInfo &,std::function<signed char ()(signed char)>)::$_0>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t VectorToDisk<unsigned char>(char **a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F1A3BC48;
  v4[3] = v4;
  v2 = ToDisk_Impl<unsigned char,unsigned char>(a1, a2, v4);
  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A74673B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ToDisk_Impl<unsigned char,unsigned char>(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 512);
  MEMORY[0x1AC55A4C0](*(v6 + 128));
  v8 = *a1;
  v7 = a1[1];
  while (v8 != v7)
  {
    v9 = *v8++;
    __ptr = std::function<unsigned char ()(unsigned char)>::operator()(a3, v9);
    fwrite(&__ptr, 1uLL, 1uLL, *(v6 + 128));
  }

  return MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), v6 + 136);
}

uint64_t std::function<unsigned char ()(unsigned char)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<MILFileInfo ToDisk_Impl<unsigned char,unsigned char>(std::vector<unsigned char> const&,MILFunctionInfo &,std::function<unsigned char ()(unsigned char)>)::$_0,std::allocator<MILFileInfo ToDisk_Impl<unsigned char,unsigned char>(std::vector<unsigned char> const&,MILFunctionInfo &,std::function<unsigned char ()(unsigned char)>)::$_0>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<BOOL (*)(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &),std::allocator<BOOL (*)(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>,BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3BCD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &),std::allocator<BOOL (*)(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>,BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t **std::map<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>::map[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 56 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>> const&>(a1, v4, a2, a2);
      a2 += 56;
      v6 -= 56;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::__construct_node<std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>> const&>();
  }

  return v4;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_1A74679E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,0>(uint64_t a1)
{
  std::__function::__value_func<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<BOOL ()(MIL::IROperation const&,MILFunctionInfo &,ZinIrIOInfo &)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void MILOpConverter::Call(const MIL::IROperation *a1, uint64_t a2, uint64_t a3)
{
  v178 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v144);
  IsRootFunction = MILFunctionInfo::IsRootFunction(a3);
  if (((*(*(a3 + 800) + 465) | IsRootFunction) & 1) == 0)
  {
    ZinAssertImpl("Basic Block does not support nested call");
  }

  v142 = 0;
  v143 = 0;
  v141 = &v142;
  v122 = (a3 + 528);
  std::map<std::string,std::string>::map[abi:ne200100](&v139, a3 + 528);
  v121 = (a3 + 552);
  std::map<std::string,std::string>::map[abi:ne200100](&v137, a3 + 552);
  if (*(a3 + 775) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, *(a3 + 752), *(a3 + 760));
  }

  else
  {
    v136 = *(a3 + 752);
  }

  v123 = (a3 + 776);
  std::map<std::string,MILOpInfo>::map[abi:ne200100](&v134, a3 + 776);
  __p[23] = 8;
  strcpy(__p, "function");
  MIL::IRObject::GetAttribute();
  MIL::IRValue::GetScalar<std::string>();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a3 + 712), v132))
  {
    v116 = v132;
    if ((v133 & 0x80u) != 0)
    {
      v116 = v132[0];
    }

    ZinAssertImpl("Ill-formed MIL program: cyclic call dependency for call operation on MIL function %s", v116);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a3 + 712), v132, v132);
  v6 = (*(**(a3 + 520) + 56))(*(a3 + 520), v132);
  v130 = 0;
  v131 = v6;
  v7 = (*(**(a3 + 520) + 40))(*(a3 + 520));
  v120 = IsRootFunction;
  if ((RetrieveFunctionAndBlock(v7, *(a3 + 520), v132, &v131, &v130) & 1) == 0)
  {
    ZinAssertImpl("Error: Could not retrieve function block.");
  }

  v119 = (a3 + 752);
  v8 = (*(*v131 + 128))(v131);
  v9 = (v8 + 1);
  v10 = *v8;
  if (*v8 != v8 + 1)
  {
    do
    {
      if (MIL::IRValueType::TryCastAsMemoryLayoutType(v10[7]))
      {
        ZinAssertImpl("Error: Call operation does not support memory layouts.");
      }

      v11 = v10[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v9);
  }

  (*(**(a3 + 520) + 40))(*(a3 + 520));
  MIL::Attributes::FlexibleShapeInfo::Make();
  EnumeratedShapes = MIL::Attributes::FlexibleShapeInfo::GetEnumeratedShapes(v129);
  MIL::Attributes::FlexibleShapeInfo::TryGetRangeShapes(&v127, v129);
  if (*(EnumeratedShapes + 24))
  {
    ZinAssertImpl("Error: Call operation does not support enumerated shapes.");
  }

  if (v127 && *(v127 + 24))
  {
    ZinAssertImpl("Error: Call operation does not support range shape flexibility.");
  }

  if (std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>((a3 + 672), v132))
  {
    v154.__r_.__value_.__r.__words[0] = v132;
    v15 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 672), v132, &std::piecewise_construct, &v154, &v151)[5];
  }

  else
  {
    v15 = 0;
  }

  if ((v133 & 0x80u) == 0)
  {
    v16 = v133;
  }

  else
  {
    v16 = v132[1];
  }

  std::string::basic_string[abi:ne200100](&v154, v16 + 1);
  if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v154;
  }

  else
  {
    v17 = v154.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if ((v133 & 0x80u) == 0)
    {
      v18 = v132;
    }

    else
    {
      v18 = v132[0];
    }

    memmove(v17, v18, v16);
  }

  *(&v17->__r_.__value_.__l.__data_ + v16) = 95;
  std::to_string(&v151, v15);
  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v151;
  }

  else
  {
    v19 = v151.__r_.__value_.__r.__words[0];
  }

  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v151.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v151.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v154, v19, size);
  v22 = *&v21->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v21->__r_.__value_.__l + 2);
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(__p, "_", 1uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v25 = v130;
  v26 = (*(*a1 + 160))(a1);
  (*(*a1 + 200))(&v151, a1);
  *&v150.__r_.__value_.__r.__words[1] = 0uLL;
  v150.__r_.__value_.__r.__words[0] = &v150.__r_.__value_.__l.__size_;
  *&v149.__r_.__value_.__r.__words[1] = 0uLL;
  v149.__r_.__value_.__r.__words[0] = &v149.__r_.__value_.__l.__size_;
  v27 = *v8;
  if (*v8 != v9)
  {
    do
    {
      v28 = std::map<std::string,std::string>::at(v26, v27 + 4);
      v29 = (*(***v28 + 32))(**v28);
      if (*(v29 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v147, *v29, *(v29 + 8));
      }

      else
      {
        v30 = *v29;
        v147.__r_.__value_.__r.__words[2] = *(v29 + 16);
        *&v147.__r_.__value_.__l.__data_ = v30;
      }

      MILFunctionInfo::GetTensorName(a3, &v147.__r_.__value_.__l.__data_, 0, &v146);
      LODWORD(v159) = 0;
      v158 = 0u;
      memset(__p, 0, sizeof(__p));
      *&v31 = -1;
      *(&v31 + 1) = -1;
      v160 = v31;
      v161 = v31;
      v162 = -1;
      v163 = 0;
      v164 = 0;
      v167 = -1;
      v165 = v31;
      v166[0] = v31;
      *(v166 + 12) = v31;
      v168 = 0;
      memset(v169, 0, 28);
      v169[7] = 5;
      v170 = -1;
      LOBYTE(v171) = 0;
      v177 = 0;
      v154.__r_.__value_.__s.__data_[0] = 0;
      v156[8] = 0;
      if (MILOpConverter::CreateConstInfo(a1, a3, (v27 + 4), 0, __p, &v154))
      {
        std::string::operator=(&v146, __p);
        MILOpConverter::AddConstInfo(a3, __p, v32);
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, v27 + 4, &v145);
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string,std::string&,0>(&v154, &v145, &v146);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(&v150, &v154, &v154);
      if ((v156[15] & 0x80000000) != 0)
      {
        operator delete(v155);
      }

      if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (v177 == 1)
      {
        if (v175)
        {
          v176 = v175;
          operator delete(v175);
        }

        if (v173)
        {
          v174 = v173;
          operator delete(v173);
        }

        if (v171)
        {
          v172 = v171;
          operator delete(v171);
        }
      }

      if (*&v169[1])
      {
        *&v169[3] = *&v169[1];
        operator delete(*&v169[1]);
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(*&__p[24]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      v33 = v27[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v27[2];
          v13 = *v34 == v27;
          v27 = v34;
        }

        while (!v13);
      }

      v27 = v34;
    }

    while (v34 != v9);
  }

  v35 = (*(*v25 + 88))(v25);
  v36 = v151.__r_.__value_.__r.__words[0];
  if (v151.__r_.__value_.__l.__size_ != v151.__r_.__value_.__r.__words[0])
  {
    v37 = v35;
    v38 = 0;
    v39 = 0;
    do
    {
      MILFunctionInfo::GetTensorName(a3, (v36 + v38), 0, &v154);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, (*v37 + v38), &v147);
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string,std::string&,0>(__p, &v147, &v154);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(&v149, __p, __p);
      if (SHIBYTE(v158) < 0)
      {
        operator delete(*&__p[24]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__data_);
      }

      ++v39;
      v36 = v151.__r_.__value_.__r.__words[0];
      v38 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 3) > v39);
  }

  if (v122 != &v150)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v122, v150.__r_.__value_.__l.__data_, &v150.__r_.__value_.__l.__size_);
  }

  if (v121 != &v149)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v121, v149.__r_.__value_.__l.__data_, &v149.__r_.__value_.__l.__size_);
  }

  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&v149, v149.__r_.__value_.__l.__size_);
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&v150, v150.__r_.__value_.__l.__size_);
  *__p = &v151;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::string::operator=(v119, &__str);
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__assign_unique<std::pair<std::string const,MILOpInfo> const*>(v123, 0, 0);
  *&v146.__r_.__value_.__r.__words[1] = 0uLL;
  v146.__r_.__value_.__r.__words[0] = &v146.__r_.__value_.__l.__size_;
  v40 = *(a3 + 328);
  if (*(v40 - 49) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, *(v40 - 72), *(v40 - 64));
  }

  else
  {
    v41 = *(v40 - 72);
    v145.__r_.__value_.__r.__words[2] = *(v40 - 56);
    *&v145.__r_.__value_.__l.__data_ = v41;
  }

  if ((*(*(a3 + 800) + 465) & 1) == 0)
  {
    memset(&v151, 0, sizeof(v151));
    std::vector<MILBasicBlock>::__init_with_size[abi:ne200100]<MILBasicBlock*,MILBasicBlock*>(&v151, *(a3 + 320), *(a3 + 328), 0x8E38E38E38E38E39 * ((*(a3 + 328) - *(a3 + 320)) >> 3));
    if (v151.__r_.__value_.__l.__size_ != v151.__r_.__value_.__r.__words[0])
    {
      v42 = 0;
      v43 = 0x8E38E38E38E38E39 * ((v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]) >> 3);
      if (v43 <= 1)
      {
        v43 = 1;
      }

      do
      {
        v44 = *(v151.__r_.__value_.__r.__words[0] + 72 * v42 + 24);
        v45 = *(v151.__r_.__value_.__r.__words[0] + 72 * v42 + 32) - v44;
        if (v45)
        {
          v46 = v45 >> 5;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          do
          {
            v47 = *v44;
            v44 += 8;
            if (v47 <= 1)
            {
              ZinAssertImpl("Nested call and cond_if/while_loop is not supported");
            }

            --v46;
          }

          while (v46);
        }

        ++v42;
      }

      while (v42 != v43);
    }

    v48 = *(a3 + 328);
    if (*(v48 - 49) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(v48 - 72), *(v48 - 64));
    }

    else
    {
      v49 = *(v48 - 72);
      *&__p[16] = *(v48 - 56);
      *__p = v49;
    }

    v158 = 0uLL;
    *&__p[24] = 0;
    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string>*,std::pair<MILBasicBlock::EdgeType,std::string>*>(&__p[24], *(v48 - 48), *(v48 - 40), (*(v48 - 40) - *(v48 - 48)) >> 5);
    v160 = 0uLL;
    v159 = 0;
    std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&v159, *(v48 - 24), *(v48 - 16), (*(v48 - 16) - *(v48 - 24)) >> 4);
    if (v159 != v160)
    {
      LODWORD(v154.__r_.__value_.__l.__data_) = 2;
      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v154.__r_.__value_.__r.__words[1], v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v154.__r_.__value_.__r.__words[1] = *&v145.__r_.__value_.__l.__data_;
        v155 = v145.__r_.__value_.__r.__words[2];
      }

      memset(&v149, 0, sizeof(v149));
      std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*>(&v149, &v154, v156, 1uLL);
      MILFunctionInfo::AddBasicBlock(a3, &v149, &v150);
      v147.__r_.__value_.__r.__words[0] = &v149;
      std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&v147);
      if (SHIBYTE(v155) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__size_);
      }

      std::string::operator=(&v145, (*(a3 + 328) - 72));
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }
    }

    v154.__r_.__value_.__r.__words[0] = &v159;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v154);
    v154.__r_.__value_.__r.__words[0] = &__p[24];
    std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&v154);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *__p = &v151;
    std::vector<MILBasicBlock>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v50 = (*(*v130 + 56))(v130);
  if ((ValidateOpList(v50, a3, &v146) & 1) == 0)
  {
    ZinAssertImpl("ANE internal validation error: Cannot convert call block");
  }

  memset(&v125, 0, sizeof(v125));
  v51 = v146.__r_.__value_.__r.__words[0];
  if (v146.__r_.__value_.__l.__data_ == &v146.__r_.__value_.__r.__words[1])
  {
LABEL_132:
    if (&v141 != v123)
    {
      std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,MILOpInfo>,std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *> *,long>>(&v141, *(a3 + 776), (a3 + 784));
    }

    if (v123 != &v134)
    {
      std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,MILOpInfo>,std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *> *,long>>(v123, v134, &v135);
    }

    (*(*v130 + 56))(v130);
    if (!v143)
    {
      ZinAssertImpl("ANEC internal error: callee ops are missing");
    }

    v148 = 0;
    memset(&v147, 0, sizeof(v147));
    *&__p[16] = 0;
    *&__p[8] = 0;
    *__p = &__p[8];
    *&v154.__r_.__value_.__r.__words[1] = 0uLL;
    v154.__r_.__value_.__r.__words[0] = &v154.__r_.__value_.__l.__size_;
    v54 = v141;
    if (v141 != &v142)
    {
      do
      {
        v55 = v54[8];
        v56 = v54[9];
        while (v55 != v56)
        {
          v57 = *v55;
          v151.__r_.__value_.__r.__words[0] = *v55 + 8;
          v58 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, v151.__r_.__value_.__l.__data_, &std::piecewise_construct, &v151, &v150) + 7);
          if (v58 != (v57 + 40))
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v58, *(v57 + 40), *(v57 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v57 + 48) - *(v57 + 40)) >> 3));
          }

          v59 = *(*v55 + 40);
          v60 = *(*v55 + 48);
          while (v59 != v60)
          {
            v151.__r_.__value_.__r.__words[0] = v59;
            v61 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, v59, &std::piecewise_construct, &v151, &v150);
            std::vector<std::string>::push_back[abi:ne200100]((v61 + 7), (*v55 + 8));
            v59 += 3;
          }

          v55 += 16;
        }

        v62 = v54[1];
        if (v62)
        {
          do
          {
            v63 = v62;
            v62 = *v62;
          }

          while (v62);
        }

        else
        {
          do
          {
            v63 = v54[2];
            v13 = *v63 == v54;
            v54 = v63;
          }

          while (!v13);
        }

        v54 = v63;
      }

      while (v63 != &v142);
    }

    *&v151.__r_.__value_.__r.__words[1] = 0uLL;
    v150.__r_.__value_.__r.__words[2] = 0;
    v151.__r_.__value_.__r.__words[0] = &v151.__r_.__value_.__l.__size_;
    v150.__r_.__value_.__r.__words[0] = &v150;
    v150.__r_.__value_.__l.__size_ = &v150;
    v64 = *(a3 + 528);
    if (v64 != (a3 + 536))
    {
      do
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v151, v64 + 7, (v64 + 7));
        v149.__r_.__value_.__r.__words[0] = (v64 + 7);
        v65 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, v64 + 7, &std::piecewise_construct, &v149, &v153);
        v66 = v65[7];
        if (v66 != v65[8])
        {
          std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(&v150, 0, 0, v66);
        }

        v67 = v64[1];
        if (v67)
        {
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67);
        }

        else
        {
          do
          {
            v68 = v64[2];
            v13 = *v68 == v64;
            v64 = v68;
          }

          while (!v13);
        }

        v64 = v68;
      }

      while (v68 != (a3 + 536));
    }

    v69 = *(a3 + 96);
    if (v69 != (a3 + 104))
    {
      do
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v151, v69 + 4, (v69 + 4));
        v149.__r_.__value_.__r.__words[0] = (v69 + 4);
        v70 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, v69 + 4, &std::piecewise_construct, &v149, &v153);
        v71 = v70[7];
        if (v71 != v70[8])
        {
          std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(&v150, 0, 0, v71);
        }

        v72 = v69[1];
        if (v72)
        {
          do
          {
            v73 = v72;
            v72 = *v72;
          }

          while (v72);
        }

        else
        {
          do
          {
            v73 = v69[2];
            v13 = *v73 == v69;
            v69 = v73;
          }

          while (!v13);
        }

        v69 = v73;
      }

      while (v73 != (a3 + 104));
    }

    for (i = v150.__r_.__value_.__r.__words[2]; v150.__r_.__value_.__r.__words[2]; i = v150.__r_.__value_.__r.__words[2])
    {
      v75 = v150.__r_.__value_.__l.__size_;
      if (*(v150.__r_.__value_.__l.__size_ + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v149, *(v150.__r_.__value_.__l.__size_ + 16), *(v150.__r_.__value_.__l.__size_ + 24));
        i = v150.__r_.__value_.__r.__words[2];
        v75 = v150.__r_.__value_.__l.__size_;
      }

      else
      {
        v149 = *(v150.__r_.__value_.__l.__size_ + 16);
      }

      v77 = *v75;
      v76 = *(v75 + 8);
      v77[1] = v76;
      *v76 = v77;
      v150.__r_.__value_.__r.__words[2] = i - 1;
      std::__list_imp<std::string>::__delete_node[abi:ne200100](&v150, v75);
      if (&v151.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, &v149))
      {
        v153 = &v149;
        v78 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__p, &v149, &std::piecewise_construct, &v153, &v152);
        v79 = v78[7];
        v80 = v78[8];
        while (v79 != v80)
        {
          if (&v151.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, v79))
          {
            std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(&v150, 0, 0, &v149);
          }

          v79 += 24;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v151, &v149, &v149);
        if (&v142 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v141, &v149))
        {
          std::vector<std::string>::push_back[abi:ne200100](&v147, &v149);
        }

        v153 = &v149;
        v81 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v154, &v149, &std::piecewise_construct, &v153, &v152);
        v82 = v81[7];
        if (v82 != v81[8])
        {
          std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(&v150, 0, 0, v82);
        }
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }
    }

    std::__list_imp<std::string>::clear(&v150);
    std::__tree<std::string>::destroy(&v151, v151.__r_.__value_.__l.__size_);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v154, v154.__r_.__value_.__l.__size_);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(__p, *&__p[8]);
    v83 = v120;
    if ((RetrieveOpIdentifier(a1, &v148) & 1) == 0)
    {
      (*(*a1 + 16))(__p, a1);
      if (__p[23] >= 0)
      {
        v118 = __p;
      }

      else
      {
        v118 = *__p;
      }

      ZinAssertImpl("Failed to retrieve ID for callee op %s", v118);
    }

    *&v151.__r_.__value_.__r.__words[1] = 0uLL;
    v151.__r_.__value_.__r.__words[0] = &v151.__r_.__value_.__l.__size_;
    v84 = *(a3 + 552);
    if (v84 != (a3 + 560))
    {
      do
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v151, v84 + 7, (v84 + 7));
        v85 = v84[1];
        if (v85)
        {
          do
          {
            v86 = v85;
            v85 = *v85;
          }

          while (v85);
        }

        else
        {
          do
          {
            v86 = v84[2];
            v13 = *v86 == v84;
            v84 = v86;
          }

          while (!v13);
        }

        v84 = v86;
      }

      while (v86 != (a3 + 560));
    }

    *&v154.__r_.__value_.__l.__data_ = a1;
    v155 = 0;
    v154.__r_.__value_.__r.__words[2] = 0;
    v88 = v147.__r_.__value_.__l.__size_;
    for (j = v147.__r_.__value_.__r.__words[0]; j != v88; j += 3)
    {
      v89 = std::map<std::string,std::string>::at(&v141, j);
      std::vector<MILToUnitConversion>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MILToUnitConversion const*>,std::__wrap_iter<MILToUnitConversion const*>>(&v154.__r_.__value_.__l.__size_, v154.__r_.__value_.__r.__words[2], *(v89 + 8), *(v89 + 16), (*(v89 + 16) - *(v89 + 8)) >> 4);
      if (&v151.__r_.__value_.__r.__words[1] != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v151, j))
      {
        if (v83)
        {
          std::pair<std::string const,MILOpInfo>::pair[abi:ne200100]<std::string const&,MILOpInfo&,0>(__p, j, &v154);
          v90 = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MILOpInfo>>(a3, __p, __p);
          v92 = v91;
          v150.__r_.__value_.__r.__words[0] = &v158;
          std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v150);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v150.__r_.__value_.__r.__words[0] = &v148;
          v93 = std::__tree<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 24, &v148, &std::piecewise_construct, &v150);
          v94 = v93;
          v95 = v90 + 7;
          v97 = v93[6];
          v96 = v93[7];
          if (v97 >= v96)
          {
            v100 = v93[5];
            v101 = (v97 - v100) >> 3;
            if ((v101 + 1) >> 61)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v102 = v96 - v100;
            v103 = v102 >> 2;
            if (v102 >> 2 <= (v101 + 1))
            {
              v103 = v101 + 1;
            }

            if (v102 >= 0x7FFFFFFFFFFFFFF8)
            {
              v104 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v104 = v103;
            }

            if (v104)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>((v93 + 5), v104);
            }

            v105 = (8 * v101);
            *v105 = v95;
            v98 = 8 * v101 + 8;
            v106 = v93[5];
            v107 = v93[6] - v106;
            v108 = v105 - v107;
            memcpy(v105 - v107, v106, v107);
            v109 = v94[5];
            v94[5] = v108;
            v94[6] = v98;
            v94[7] = 0;
            if (v109)
            {
              operator delete(v109);
            }

            v83 = v120;
          }

          else
          {
            *v97 = v95;
            v98 = (v97 + 1);
          }

          v94[6] = v98;
        }

        else
        {
          std::pair<std::string const,MILOpInfo>::pair[abi:ne200100]<std::string const&,MILOpInfo&,0>(__p, j, &v154);
          std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MILOpInfo>>(v123, __p, __p);
          v92 = v99;
          v150.__r_.__value_.__r.__words[0] = &v158;
          std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v150);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if ((v92 & 1) == 0)
        {
          ZinAssertImpl("ANEC internal error: Failed to insert op to function info");
        }

        v110 = v154.__r_.__value_.__r.__words[2];
        v111 = v154.__r_.__value_.__l.__size_;
        while (v110 != v111)
        {
          v112 = *(v110 - 8);
          if (v112)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v112);
          }

          v110 -= 16;
        }

        v154.__r_.__value_.__r.__words[2] = v111;
      }
    }

    *__p = &v154.__r_.__value_.__l.__size_;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__tree<std::string>::destroy(&v151, v151.__r_.__value_.__l.__size_);
    *__p = &v147;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    v113 = 1;
  }

  else
  {
    while ((v51[1].__r_.__value_.__s.__data_[16] & 1) != 0)
    {
      v52 = v51->__r_.__value_.__l.__size_;
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = v52->__r_.__value_.__r.__words[0];
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v51->__r_.__value_.__r.__words[2];
          v13 = v53->__r_.__value_.__r.__words[0] == v51;
          v51 = v53;
        }

        while (!v13);
      }

      v51 = v53;
      if (v53 == &v146.__r_.__value_.__r.__words[1])
      {
        goto LABEL_132;
      }
    }

    std::string::operator=(&v125, v51 + 2);
    v113 = 0;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>((a3 + 672), v132))
  {
    v154.__r_.__value_.__r.__words[0] = v132;
    v114 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 672), v132, &std::piecewise_construct, &v154, &v151);
    v115 = v114[5] + 1;
  }

  else
  {
    v154.__r_.__value_.__r.__words[0] = v132;
    v114 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 672), v132, &std::piecewise_construct, &v154, &v151);
    v115 = 1;
  }

  v114[5] = v115;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>((a3 + 712), v132);
  std::string::operator=(v119, &v136);
  if (v122 != &v139)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v122, v139, &v140);
  }

  if (v121 != &v137)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v121, v137, &v138);
  }

  if ((v113 & 1) == 0)
  {
    v117 = &v125;
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v117 = v125.__r_.__value_.__r.__words[0];
    }

    ZinAssertImpl("%s", v117);
  }

  if ((*(*(a3 + 800) + 465) & 1) == 0)
  {
    *__p = 2;
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
    }

    else
    {
      *&__p[8] = v145;
    }

    memset(&v154, 0, sizeof(v154));
    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*>(&v154, __p, &v158, 1uLL);
    MILFunctionInfo::AddBasicBlock(a3, &v154, &v124);
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v151.__r_.__value_.__r.__words[0] = &v154;
    std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&v151);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(&v146, v146.__r_.__value_.__l.__size_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v128)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v128);
  }

  std::unique_ptr<MIL::Attributes::FlexibleShapeInfo>::~unique_ptr[abi:ne200100](&v129);
  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(&v134, v135);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&v137, v138);
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&v139, v140);
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(&v141, v142);
  *__p = v144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A7469190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  MILBasicBlock::~MILBasicBlock(&STACK[0x240]);
  STACK[0x240] = &a68;
  std::vector<MILBasicBlock>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(&a66, a67);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  std::unique_ptr<MIL::Attributes::FlexibleShapeInfo>::~unique_ptr[abi:ne200100](&a31);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(&a40, a41);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&a50, a51);
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(&a53, a54);
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(&a56, a57);
  STACK[0x240] = &a59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MIL::Attributes::FlexibleShapeInfo>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1AC558EB0]();
    MEMORY[0x1AC55A070](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t *std::vector<MILBasicBlock>::__init_with_size[abi:ne200100]<MILBasicBlock*,MILBasicBlock*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MILBasicBlock>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7469688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<MILBasicBlock>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MILBasicBlock>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrBasicBlockInfo>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MILBasicBlock>,MILBasicBlock*,MILBasicBlock*,MILBasicBlock*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = 0;
      v4[1].__r_.__value_.__l.__size_ = 0;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string>*,std::pair<MILBasicBlock::EdgeType,std::string>*>(&v4[1], *(v6 + 3), *(v6 + 4), (*(v6 + 4) - *(v6 + 3)) >> 5);
      v4[2].__r_.__value_.__r.__words[0] = 0;
      v4[2].__r_.__value_.__l.__size_ = 0;
      v4[2].__r_.__value_.__r.__words[2] = 0;
      std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&v4[2], *(v6 + 6), *(v6 + 7), (*(v6 + 7) - *(v6 + 6)) >> 4);
      v6 = (v6 + 72);
      v4 = v12 + 3;
      v12 += 3;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILBasicBlock>,MILBasicBlock*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void sub_1A74697E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILBasicBlock>,MILBasicBlock*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILBasicBlock>,MILBasicBlock*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<MILBasicBlock>,std::reverse_iterator<MILBasicBlock*>,std::reverse_iterator<MILBasicBlock*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<MILBasicBlock>,std::reverse_iterator<MILBasicBlock*>,std::reverse_iterator<MILBasicBlock*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v10[3] = v5;
    v10[4] = v6;
    v8 = a3 - 3;
    do
    {
      v10[0] = v8;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v10);
      v10[0] = v8 - 3;
      std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](v10);
      if (*(v8 - 25) < 0)
      {
        operator delete(*(v8 - 6));
      }

      v9 = v8 - 6;
      v8 -= 9;
    }

    while (v9 != a5);
  }
}

void std::vector<MILBasicBlock>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MILBasicBlock>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MILBasicBlock>::clear[abi:ne200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v5 = v4;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = v4 - 3;
      std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v4 -= 9;
    }

    while (v4 + 3 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string>*,std::pair<MILBasicBlock::EdgeType,std::string>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7469A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>,std::pair<MILBasicBlock::EdgeType,std::string>*,std::pair<MILBasicBlock::EdgeType,std::string>*,std::pair<MILBasicBlock::EdgeType,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>,std::pair<MILBasicBlock::EdgeType,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>,std::pair<MILBasicBlock::EdgeType,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<BOOL,std::string>>,std::pair<BOOL,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7469C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*,MILToUnitConversion*,MILToUnitConversion*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILToUnitConversion>,MILToUnitConversion*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t *std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__init_with_size[abi:ne200100]<std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<MILBasicBlock::EdgeType,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7469D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>,std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string> const*,std::pair<MILBasicBlock::EdgeType,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<MILBasicBlock::EdgeType,std::string>>,std::pair<MILBasicBlock::EdgeType,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void MILBasicBlock::~MILBasicBlock(void **this)
{
  v2 = this + 6;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::pair<BOOL,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::pair<std::string const,MILOpInfo>::~pair(uint64_t a1)
{
  v3 = (a1 + 32);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

uint64_t *std::vector<MILToUnitConversion>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MILToUnitConversion const*>,std::__wrap_iter<MILToUnitConversion const*>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v19 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*,MILToUnitConversion*,MILToUnitConversion*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(v23, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v23[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a1, v15);
    }

    v20 = (16 * v16);
    v23[0] = 0;
    v23[1] = (16 * v16);
    v23[3] = 0;
    do
    {
      *v20 = *v7;
      v21 = v7[1];
      v20[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v20 += 2;
      v7 += 2;
    }

    while (v20 != (16 * v16 + 16 * a5));
    v23[2] = (16 * v16 + 16 * a5);
    v5 = std::vector<MILToUnitConversion>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<MILToUnitConversion>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void *std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MILOpInfo>>(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__construct_node<std::pair<std::string const,MILOpInfo>>();
  }

  return v3;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,MILOpInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,MILOpInfo>,0>(uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::string *std::pair<std::string const,MILOpInfo>::pair[abi:ne200100]<std::string const&,MILOpInfo&,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v6;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&this[1].__r_.__value_.__l.__size_, a3[1], a3[2], (a3[2] - a3[1]) >> 4);
  return this;
}

void sub_1A746A49C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,MILOpInfo>,0>((a2 + 4));

    operator delete(a2);
  }
}

char *std::map<std::string,MILOpInfo>::map[abi:ne200100](char *a1, uint64_t a2)
{
  *(a1 + 2) = 0;
  *(a1 + 1) = 0;
  *a1 = a1 + 8;
  std::map<std::string,MILOpInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MILOpInfo>,std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

char *std::map<std::string,MILOpInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MILOpInfo>,std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *> *,long>>>(char *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MILOpInfo> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MILOpInfo> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__construct_node<std::pair<std::string const,MILOpInfo> const&>();
  }

  return v4;
}

std::string *std::pair<std::string const,MILOpInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 4);
  return this;
}

void sub_1A746A774(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1A746A9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PerfTracerCategory>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A746AAAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PerfTracerCategory>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t ***std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__assign_unique<std::pair<std::string const,MILOpInfo> const*>(uint64_t ***result, uint64_t ***a2, uint64_t ***a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 7;
            break;
          }

          v11 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 7;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MILOpInfo> const&>(v5, a2);
    a2 += 7;
  }

  return result;
}

void sub_1A746ABBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__node_assign_unique(uint64_t ***a1, uint64_t ***a2, void *a3)
{
  v6 = std::__tree<std::string>::__find_equal<std::string>(a1, &v9, a2);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  v10[0] = (a3 + 4);
  v10[1] = (a3 + 7);
  std::pair<std::string &,MILOpInfo &>::operator=[abi:ne200100]<std::string const,MILOpInfo,0>(v10, a2);
  std::__tree<std::string>::__insert_node_at(a1, v9, v7, a3);
  return a3;
}

std::string **std::pair<std::string &,MILOpInfo &>::operator=[abi:ne200100]<std::string const,MILOpInfo,0>(std::string **a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = a1[1];
  v4->__r_.__value_.__r.__words[0] = a2[1].__r_.__value_.__r.__words[0];
  if (v4 != &a2[1])
  {
    std::vector<MILToUnitConversion>::__assign_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&v4->__r_.__value_.__l.__size_, a2[1].__r_.__value_.__l.__size_, a2[1].__r_.__value_.__r.__words[2], (a2[1].__r_.__value_.__r.__words[2] - a2[1].__r_.__value_.__l.__size_) >> 4);
  }

  return a1;
}

void std::vector<MILToUnitConversion>::__assign_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*,MILToUnitConversion*,MILToUnitConversion*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::destroy(*a1, v2);
  }

  return a1;
}

char *std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MILOpInfo> const&>(uint64_t **a1, uint64_t ***a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__construct_node<std::pair<std::string const,MILOpInfo> const&>();
  }

  return v2;
}

uint64_t **std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,MILOpInfo>,std::__tree_node<std::__value_type<std::string,MILOpInfo>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,MILOpInfo &>::operator=[abi:ne200100]<std::string const,MILOpInfo,0>(v16, (v9 + 4));
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_multi<std::pair<std::string const,MILOpInfo> const&>(v5);
  }

  return result;
}

void sub_1A746B060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MILOpConverter::DepthToSpace(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v13);
  if (*(*&v13[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, **&v13[0], *(*&v13[0] + 8));
  }

  else
  {
    v5 = **&v13[0];
    v14.__r_.__value_.__r.__words[2] = *(*&v13[0] + 16);
    *&v14.__r_.__value_.__l.__data_ = v5;
  }

  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(v17, "x");
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, v17, &v19, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v13, a1, __p, a3, v12);
  v15 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  LODWORD(v17[0]) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "block_size");
  RetrieveRequiredValue<int>(a1, __p, v17, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v16[0] = &unk_1F1A3BDE8;
  v16[1] = v17;
  v16[3] = v16;
  ZinMILUnitBuilder::CreateUnit<ZinIrChannelToSpaceUnitInfo>(v12, v16, v9);
  __p[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__function::__value_func<void ()(std::optional<ZinIrChannelToSpaceUnitInfo> &)>::~__value_func[abi:ne200100](v16);
  ZinMILUnitBuilder::Finalize(v13, a3, a1, &v14.__r_.__value_.__l.__data_, v8, 1, 1);
  __p[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v12[0] = &v13[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v12[0] = v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A746B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a19 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrChannelToSpaceUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A746B690(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::SpaceToDepth(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v13);
  if (*(*&v13[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, **&v13[0], *(*&v13[0] + 8));
  }

  else
  {
    v5 = **&v13[0];
    v14.__r_.__value_.__r.__words[2] = *(*&v13[0] + 16);
    *&v14.__r_.__value_.__l.__data_ = v5;
  }

  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(v17, "x");
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, v17, &v19, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v13, a1, __p, a3, v12);
  v15 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  LODWORD(v17[0]) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "block_size");
  RetrieveRequiredValue<int>(a1, __p, v17, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v16[0] = &unk_1F1A3BED8;
  v16[1] = v17;
  v16[3] = v16;
  ZinMILUnitBuilder::CreateUnit<ZinIrSpaceToChannelUnitInfo>(v12, v16, v9);
  __p[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__function::__value_func<void ()(std::optional<ZinIrSpaceToChannelUnitInfo> &)>::~__value_func[abi:ne200100](v16);
  ZinMILUnitBuilder::Finalize(v13, a3, a1, &v14.__r_.__value_.__l.__data_, v8, 1, 1);
  __p[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v12[0] = &v13[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v12[0] = v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v12);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A746BA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a19 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrSpaceToChannelUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A746BD64(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrChannelToSpaceUnitInfo::ZinIrChannelToSpaceUnitInfo(ZinIrChannelToSpaceUnitInfo *this, const ZinIrChannelToSpaceUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33EA8;
  v6 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v6;
}

void sub_1A746BF60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrChannelToSpaceUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrChannelToSpaceUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrChannelToSpaceUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3BDE8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrChannelToSpaceUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v10 = -1;
  v5 = &unk_1F1A33EA8;
  v11 = 0x100000001;
  v12 = 1;
  std::optional<ZinIrChannelToSpaceUnitInfo>::operator=[abi:ne200100]<ZinIrChannelToSpaceUnitInfo,void>(a2, &v5);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v5);
  a2[8] = 37;
  v4 = **(a1 + 8);
  a2[20] = v4;
  a2[21] = v4;
  a2[22] = 1;
}

uint64_t std::__function::__func<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::DepthToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrChannelToSpaceUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrChannelToSpaceUnitInfo>::operator=[abi:ne200100]<ZinIrChannelToSpaceUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33EA8;
    v7 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A746C2E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrChannelToSpaceUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinIrSpaceToChannelUnitInfo::ZinIrSpaceToChannelUnitInfo(ZinIrSpaceToChannelUnitInfo *this, const ZinIrSpaceToChannelUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33F08;
  v6 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v6;
}

void sub_1A746C45C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrSpaceToChannelUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrSpaceToChannelUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrSpaceToChannelUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3BED8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrSpaceToChannelUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v10 = -1;
  v5 = &unk_1F1A33F08;
  v11 = 0x100000001;
  v12 = 1;
  std::optional<ZinIrSpaceToChannelUnitInfo>::operator=[abi:ne200100]<ZinIrSpaceToChannelUnitInfo,void>(a2, &v5);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v5);
  a2[8] = 36;
  v4 = **(a1 + 8);
  a2[20] = v4;
  a2[21] = v4;
  a2[22] = 1;
}

uint64_t std::__function::__func<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SpaceToDepth(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrSpaceToChannelUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrSpaceToChannelUnitInfo>::operator=[abi:ne200100]<ZinIrSpaceToChannelUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33F08;
    v7 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A746C7E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrSpaceToChannelUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Reverse(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v5 = *__p[0];
    v36.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v36.__r_.__value_.__l.__data_ = v5;
  }

  v33 = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 96))(v10);
  GetMILShapeAsVector(v11, &v33);
  if (SBYTE7(v27[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "axes");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  RetrieveIRValue<int,int>(ParameterValue, &v32);
  if (SBYTE7(v27[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  begin = v32.__begin_;
  if (v32.__end_ != v32.__begin_)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      LODWORD(v25.__r_.__value_.__l.__data_) = 0;
      v16 = begin[v14];
      __p[1] = 0;
      *&v27[0] = 0;
      __p[0] = &__p[1];
      ToZinIrDimension(a3, (v34 - v33) >> 2, v16, &v25, __p);
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, __p[1]);
      LOBYTE(v37) = 0;
      v17 = v32.__begin_[v14];
      v18 = (v34 - v33) >> 2;
      if (v18 <= v17)
      {
        ZinAssertImpl("Syntax error: provided reverse axis %d at index #%d is out of range [0-%zu]", v17, v15, v18 - 1);
      }

      if ((ToCharDimension(v25.__r_.__value_.__l.__data_, &v37) & 1) == 0)
      {
        ZinGetZinIrDimensionString(&v25, __p);
        if ((SBYTE7(v27[0]) & 0x80u) == 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        ZinAssertImpl("ANE internal error: Invalid dimension %s.", v24);
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v28, size + 8);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v28;
      }

      else
      {
        v20 = v28.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v36;
        }

        else
        {
          v21 = v36.__r_.__value_.__r.__words[0];
        }

        memmove(v20, v21, size);
      }

      strcpy(v20 + size, "__@view_");
      std::string::push_back(&v28, v37);
      *__p = *&v28.__r_.__value_.__l.__data_;
      *&v27[0] = *(&v28.__r_.__value_.__l + 2);
      memset(&v28, 0, sizeof(v28));
      DWORD2(v27[0]) = 0;
      HIDWORD(v27[0]) = *(v33 + v32.__begin_[v14]);
      LODWORD(v27[1]) = -1;
      DWORD1(v27[1]) = v25.__r_.__value_.__l.__data_;
      v22 = v30;
      if (v30 >= v31)
      {
        v30 = std::vector<ZinMILUnitBuilder::Crop1DInfo>::__emplace_back_slow_path<ZinMILUnitBuilder::Crop1DInfo>(&v29, __p);
        if (SBYTE7(v27[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v23 = *__p;
        *(v30 + 16) = *&v27[0];
        *v22 = v23;
        __p[1] = 0;
        *&v27[0] = 0;
        __p[0] = 0;
        *(v22 + 24) = *(v27 + 8);
        v30 = v22 + 40;
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      begin = v32.__begin_;
      v14 = ++v15;
    }

    while (v15 < (v32.__end_ - v32.__begin_));
  }

  memset(v27, 0, sizeof(v27));
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(v38, "x");
  memset(&v25, 0, sizeof(v25));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v25, v38, &v40, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(__p, a1, &v25, a3, &v28);
  v37 = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  ZinMILUnitBuilder::InsertCropND(v28.__r_.__value_.__l.__data_, &v29, &v25);
  std::vector<std::string>::__vdeallocate(&v28);
  v28 = v25;
  memset(&v25, 0, sizeof(v25));
  v38[0] = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
  ZinMILUnitBuilder::Finalize(__p, a3, a1, &v36.__r_.__value_.__l.__data_, v8, 1, 1);
  v25.__r_.__value_.__r.__words[0] = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  v28.__r_.__value_.__r.__words[0] = v27 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  v28.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v28);
  __p[0] = &v29;
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_1A746CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  *(v38 - 184) = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v38 - 184));
  _Unwind_Resume(a1);
}

uint64_t std::vector<ZinMILUnitBuilder::Crop1DInfo>::__emplace_back_slow_path<ZinMILUnitBuilder::Crop1DInfo>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ZinMILUnitBuilder::Crop1DInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_1A746D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinMILUnitBuilder::Crop1DInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<ZinMILUnitBuilder::Crop1DInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ZinMILUnitBuilder::Crop1DInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ZinMILUnitBuilder::Crop1DInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ZinMILUnitBuilder::Crop1DInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ZinMILUnitBuilder::Crop1DInfo>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void MILOpConverter::MatrixDecomposition(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v55 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v42);
  if (*(v42 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *v42, *(v42 + 8));
  }

  else
  {
    v5 = *v42;
    v35.__r_.__value_.__r.__words[2] = *(v42 + 16);
    *&v35.__r_.__value_.__l.__data_ = v5;
  }

  *&v34[0] = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v34, 0, sizeof(v34));
  std::string::basic_string[abi:ne200100]<0>(&v37, "input");
  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v42, &v37, v40, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v34, a1, &v42, a3, v33);
  v32[0] = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
  if (v39 < 0)
  {
    operator delete(v37);
  }

  std::string::basic_string[abi:ne200100]<0>(&v42, "input");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v10);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v13 = &v37;
  std::string::basic_string[abi:ne200100](&v37, size + 44);
  if (v39 < 0)
  {
    v13 = v37;
  }

  if (size)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v35;
    }

    else
    {
      v14 = v35.__r_.__value_.__r.__words[0];
    }

    memmove(v13, v14, size);
  }

  strcpy(v13 + size, "__@matrix_decomposition_input_layout_convert");
  v15 = v33[0];
  v42 = 5;
  std::string::basic_string[abi:ne200100]<0>(&v43, "NDCHW");
  std::map<long,std::string>::map[abi:ne200100](&v29, &v42, 1);
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v32, a3, MILTensorRank, v15, &v29, 4);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v29, v30);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = -1;
  v42 = &unk_1F19D36C8;
  v50 = 0;
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  v53 = 0;
  v54 = 897988541;
  v46 = 53;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "type");
  RetrieveRequiredValue<std::string>(a1, &v37, &v29, 0);
  if (v39 < 0)
  {
    operator delete(v37);
  }

  ToZinIrZinMatrixDecompositionType(&v29, &v50);
  if (!v50)
  {
    std::string::basic_string[abi:ne200100]<0>(&v37, "epsilon");
    RetrieveRequiredValue<float>(a1, &v37, &v54, 0);
    if (v39 < 0)
    {
      operator delete(v37);
    }

    std::string::basic_string[abi:ne200100]<0>(&v37, "rotation_x");
    RetrieveRequiredValue<BOOL>(a1, &v37, v51, 0);
    if (v39 < 0)
    {
      operator delete(v37);
    }

    std::string::basic_string[abi:ne200100]<0>(&v37, "rotation_y");
    RetrieveRequiredValue<BOOL>(a1, &v37, &v51[1] + 8, 0);
    if (v39 < 0)
    {
      operator delete(v37);
    }

    std::string::basic_string[abi:ne200100]<0>(&v37, "rotation_z");
    RetrieveRequiredValue<BOOL>(a1, &v37, &v52, 0);
    if (v39 < 0)
    {
      operator delete(v37);
    }
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v35.__r_.__value_.__l.__size_;
  }

  v17 = &v37;
  std::string::basic_string[abi:ne200100](&v37, v16 + 23);
  if (v39 < 0)
  {
    v17 = v37;
  }

  if (v16)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v35;
    }

    else
    {
      v18 = v35.__r_.__value_.__r.__words[0];
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "__@matrix_decomposition");
  v41[0] = &unk_1F1A3BFC8;
  v41[1] = &v42;
  v41[3] = v41;
  ZinMILUnitBuilder::CreateUnit<ZinIrMatrixDecompositionUnitInfo>(v32, v41, &v28);
  std::__function::__value_func<void ()(std::optional<ZinIrMatrixDecompositionUnitInfo> &)>::~__value_func[abi:ne200100](v41);
  if (v39 < 0)
  {
    operator delete(v37);
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v35.__r_.__value_.__l.__size_;
  }

  v20 = __p;
  std::string::basic_string[abi:ne200100](__p, v19 + 45);
  if (v26 < 0)
  {
    v20 = __p[0];
  }

  if (v19)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v35;
    }

    else
    {
      v21 = v35.__r_.__value_.__r.__words[0];
    }

    memmove(v20, v21, v19);
  }

  strcpy(v20 + v19, "__@matrix_decomposition_output_layout_convert");
  begin = v28.__begin_;
  v37 = 5;
  std::string::basic_string[abi:ne200100]<0>(&v38, "NDCHW");
  std::map<long,std::string>::map[abi:ne200100](v24, &v37, 1);
  ZinMILUnitBuilder::ConvertToDefaultLayout(&v27, a3, MILTensorRank, begin, v24, 4);
  std::vector<std::string>::__vdeallocate(&v28);
  v28 = v27;
  memset(&v27, 0, sizeof(v27));
  v36 = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v24, v24[1]);
  if ((v40[7] & 0x80000000) != 0)
  {
    operator delete(v38);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  ZinMILUnitBuilder::Finalize(v34, a3, a1, &v35.__r_.__value_.__l.__data_, v8, 1, 1);
  v37 = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  v42 = &unk_1F19D36C8;
  if (v52)
  {
    operator delete(v52);
  }

  if (*(&v51[1] + 1))
  {
    operator delete(*(&v51[1] + 1));
  }

  if (*&v51[0])
  {
    operator delete(*&v51[0]);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v42);
  v42 = v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v23);
  v42 = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = &v34[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
  v42 = v34;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v42);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1A746DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  if (a57 < 0)
  {
    operator delete(*(v62 + 128));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  ZinIrMatrixDecompositionUnitInfo::~ZinIrMatrixDecompositionUnitInfo((v64 - 256));
  *v63 = &a33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v66);
  *v63 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v64 - 256));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a39);
  if (a50 < 0)
  {
    operator delete(*(v62 + 96));
  }

  _Unwind_Resume(a1);
}

void sub_1A746DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&a24, a25);
  if (*(v50 - 225) < 0)
  {
    operator delete(*(v49 + 8));
  }

  if (a48 < 0)
  {
    operator delete(*(v48 + 128));
  }

  JUMPOUT(0x1A746DB34);
}

uint64_t RetrieveRequiredValue<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  result = RetrieveIRValue<BOOL,BOOL>(ParameterValue, a3);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    ZinAssertImpl("Failed to retrieve parameter %s", v8);
  }

  return result;
}

void ZinMILUnitBuilder::CreateUnit<ZinIrMatrixDecompositionUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v14 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v14)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v14 == 1)
  {
    v10[0] = &unk_1F19D36C8;
    if (__p)
    {
      operator delete(__p);
    }

    if (v12)
    {
      operator delete(v12);
    }

    if (v11)
    {
      operator delete(v11);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A746DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrMatrixDecompositionUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

ZinIrUnitInfo *std::optional<ZinIrMatrixDecompositionUnitInfo>::~optional(ZinIrUnitInfo *this)
{
  if (*(this + 168) == 1)
  {
    *this = &unk_1F19D36C8;
    v2 = *(this + 17);
    if (v2)
    {
      operator delete(v2);
    }

    v3 = *(this + 14);
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *(this + 11);
    if (v4)
    {
      operator delete(v4);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

uint64_t std::__shared_ptr_pointer<ZinIrMatrixDecompositionUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrMatrixDecompositionUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixDecompositionUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3BFC8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixDecompositionUnitInfo> &)>::operator()(uint64_t a1, ZinIrUnitInfo *a2)
{
  ZinIrMatrixDecompositionUnitInfo::ZinIrMatrixDecompositionUnitInfo(v3, *(a1 + 8));
  v7 = 1;
  std::__optional_storage_base<ZinIrMatrixDecompositionUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrMatrixDecompositionUnitInfo,false>>(a2, v3);
  if (v7 == 1)
  {
    v3[0] = &unk_1F19D36C8;
    if (__p)
    {
      operator delete(__p);
    }

    if (v5)
    {
      operator delete(v5);
    }

    if (v4)
    {
      operator delete(v4);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  }
}

uint64_t std::__function::__func<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::MatrixDecomposition(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrMatrixDecompositionUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__optional_storage_base<ZinIrMatrixDecompositionUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrMatrixDecompositionUnitInfo,false>>(ZinIrUnitInfo *this, uint64_t a2)
{
  if (*(this + 168) == *(a2 + 168))
  {
    if (*(this + 168))
    {
      std::string::operator=((this + 8), (a2 + 8));
      *(this + 8) = *(a2 + 32);
      if (this != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
      }

      *(this + 4) = *(a2 + 64);
      *(this + 20) = *(a2 + 80);
      std::vector<BOOL>::__move_assign(this + 88, a2 + 88);
      std::vector<BOOL>::__move_assign(this + 112, a2 + 112);
      std::vector<BOOL>::__move_assign(this + 136, a2 + 136);
      *(this + 40) = *(a2 + 160);
    }
  }

  else if (*(this + 168))
  {
    *this = &unk_1F19D36C8;
    v4 = *(this + 17);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(this + 14);
    if (v5)
    {
      operator delete(v5);
    }

    v6 = *(this + 11);
    if (v6)
    {
      operator delete(v6);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
    *(this + 168) = 0;
  }

  else
  {
    ZinIrMatrixDecompositionUnitInfo::ZinIrMatrixDecompositionUnitInfo(this, a2);
    *(this + 168) = 1;
  }
}

uint64_t ZinIrMatrixDecompositionUnitInfo::ZinIrMatrixDecompositionUnitInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F19D36C8;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void sub_1A746E510(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrMatrixDecompositionUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::Conv(MIL::IROperation *a1, uint64_t a2, const MIL::IROperation *a3)
{
  v151 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&__p);
  if (*(__p + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, *__p, *(__p + 1));
  }

  else
  {
    v6 = *__p;
    v89.__r_.__value_.__r.__words[2] = *(__p + 2);
    *&v89.__r_.__value_.__l.__data_ = v6;
  }

  __src.i64[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  ParameterValue = MIL::IROperation::GetParameterValue();
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "dilations");
  v10 = MIL::IROperation::GetParameterValue();
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  v11 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p);
  }

  v88 = v11;
  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v12 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v14 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v106) < 0)
  {
    operator delete(__p);
  }

  MILTensorRank = GetMILTensorRank(v14);
  v16 = (*(*v14 + 96))(v14);
  v17 = MIL::IRDimension::AsConstant(*(*v16 + 8));
  v18 = (*(*v17 + 48))(v17);
  v19 = MIL::IROperation::GetOutputType(a1);
  v20 = MIL::IRValueType::AsTensorType(v19);
  v21 = (*(*v20 + 96))(v20);
  if (!(*(**(*v21 + 8) + 16))(*(*v21 + 8)))
  {
    ZinAssertImpl("Cannot retrieve output channel count as output tensor shape is not constant");
  }

  v22 = MIL::IROperation::GetOutputType(a1);
  v23 = MIL::IRValueType::AsTensorType(v22);
  v24 = (*(*v23 + 96))(v23);
  v25 = MIL::IRDimension::AsConstant(*(*v24 + 8));
  v76 = (*(*v25 + 48))(v25);
  __p = 3;
  std::string::basic_string[abi:ne200100]<0>(&v105, "NCW");
  v108 = 5;
  std::string::basic_string[abi:ne200100]<0>(&v109, "NCDHW");
  v75 = v12;
  std::map<long,std::string>::map[abi:ne200100](&v87, &__p, 2);
  for (i = 0; i != -64; i -= 32)
  {
    if (*(&v110 + i + 7) < 0)
    {
      operator delete(*(&v109 + i));
    }
  }

  v106 = 0;
  v105 = 0;
  LODWORD(v108) = 0;
  v107 = 0;
  v109 = 0u;
  v110 = 0u;
  v111 = -1;
  v112 = 0;
  v113 = -1;
  v114 = -1;
  v115 = -1;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = -1;
  v120 = 0;
  v121 = 1;
  v122 = 0;
  v123 = 0;
  v124 = -1;
  v125 = -1;
  v126 = -1;
  v127 = -1;
  v128 = 0x3F80000000000006;
  v129 = 0;
  __p = &unk_1F1A33E10;
  v130 = 0;
  v131 = 0;
  v132 = vdupq_n_s64(1uLL);
  v133 = 1;
  v134 = 1;
  *&v27 = 0x100000001;
  *(&v27 + 1) = 0x100000001;
  v135 = v27;
  v136 = 0x100000001;
  v138 = 0;
  v137 = 0uLL;
  v139 = 1;
  MILOpConverter::FillStridesInfo(ParameterValue, &v135 + 12);
  MILOpConverter::FillDilationsInfo(v10, &__p, v28);
  v29 = (a2 + 8);
  v30 = *(a2 + 31);
  if (v30 < 0)
  {
    if (*(a2 + 16) != 14)
    {
LABEL_30:
      v34 = 0;
      goto LABEL_31;
    }

    v29 = *v29;
  }

  else if (v30 != 14)
  {
    goto LABEL_30;
  }

  v31 = *v29;
  v32 = *(v29 + 6);
  v34 = v31 == 0x6172745F766E6F63 && v32 == 0x65736F70736E6172;
LABEL_31:
  v86 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__src, "groups");
  RetrieveRequiredValue<int>(a1, &__src, &v86, 0);
  if (v145.i8[7] < 0)
  {
    operator delete(__src.i64[0]);
  }

  v36 = v86;
  v132.i64[0] = v86;
  MILOpConverter::FillConvWeightInfo(a1, a3, &__p, v35);
  v39 = v36 == v18 && v36 == v76;
  MILOpConverter::FillConvolutionType(v34, v39, &__p, v37);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__src, "pad_type");
  RetrieveRequiredValue<std::string>(a1, &__src, &v83, 0);
  if (v145.i8[7] < 0)
  {
    operator delete(__src.i64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__src, "pad");
  v40 = MIL::IROperation::GetParameterValue();
  if (v145.i8[7] < 0)
  {
    operator delete(__src.i64[0]);
  }

  v81[0] = vdupq_n_s64(1uLL);
  v81[1] = v81[0];
  v82 = 1;
  v78 = v81[0];
  v79 = v81[0];
  v80 = 1;
  std::string::basic_string[abi:ne200100]<0>(&__src, "x");
  v41 = MIL::IROperation::GetParameterType();
  v42 = MIL::IRValueType::AsTensorType(v41);
  v43 = (*(*v42 + 96))(v42);
  ToZinTensorDimensions(a3, v43, v81, &v87);
  if (v145.i8[7] < 0)
  {
    operator delete(__src.i64[0]);
  }

  v44 = MIL::IROperation::GetOutputType(a1);
  v45 = MIL::IRValueType::AsTensorType(v44);
  v46 = (*(*v45 + 96))(v45);
  ToZinTensorDimensions(a3, v46, &v78, &v87);
  __src.i64[0] = 0;
  __src.i32[2] = 0;
  memset(v77, 0, sizeof(v77));
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(v77, __src.i32, &__src.i32[3], 3uLL);
  if (v34)
  {
    v90 = 0uLL;
    *&v91 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__src, "output_shape");
    v48 = MIL::IROperation::TryGetParameterValue();
    v49 = RetrieveIRValue<int,int>(v48, &v90);
    v50 = v49;
    if (v145.i8[7] < 0)
    {
      operator delete(__src.i64[0]);
      if (!v50)
      {
        goto LABEL_59;
      }
    }

    else if (!v49)
    {
LABEL_59:
      __src = v78;
      v145 = v79;
      v146 = v80;
      MILOpConverter::FillDeconvPadInfo(&v83, v40, MILTensorRank, v81, &__src, &v132.i64[1], &v135 + 3, &v135, v137.i32);
      __src.i32[0] = -v138.i32[0] & (v138.i32[0] >> 31);
      __src.i32[1] = -v137.i32[2] & (v137.i32[2] >> 31);
      __src.i32[2] = -v137.i32[0] & (v137.i32[0] >> 31);
      std::vector<ZinTensorFormat>::__assign_with_size[abi:ne200100]<ZinTensorFormat const*,ZinTensorFormat const*>(v77, __src.i8, &__src.i8[12], 3uLL);
      v137 = vmaxq_s32(v137, 0);
      v138 = vmax_s32(v138, 0);
      v55 = MILTensorRank;
      if (v90)
      {
        *(&v90 + 1) = v90;
        operator delete(v90);
      }

      if (v75)
      {
        v91 = 0u;
        *v92 = 0u;
        v90 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&v142, "x");
        __src = 0uLL;
        v145.i64[0] = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__src.i64, &v142, v143, 1uLL);
        ZinMILUnitBuilder::DeclareOperationInputs(&v90, a1, &__src, a3, v97);
        p_src = &__src;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_src);
        if (SHIBYTE(v142.__end_cap_.__value_) < 0)
        {
          operator delete(v142.__begin_);
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v89.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&__src, size + 23);
        if (v145.i8[7] >= 0)
        {
          v61 = &__src;
        }

        else
        {
          v61 = __src.i64[0];
        }

        if (size)
        {
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v62 = &v89;
          }

          else
          {
            v62 = v89.__r_.__value_.__r.__words[0];
          }

          memmove(v61, v62, size);
        }

        strcpy(&v61->i8[size], "__@input_layout_convert");
        ZinMILUnitBuilder::DeclareCustomOperationInputLayout(&v142, a3, v55, v97[0], &v87, 4);
        if (v145.i8[7] < 0)
        {
          operator delete(__src.i64[0]);
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v89.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&p_src, v63 + 7);
        if (v149 >= 0)
        {
          p_p_src = &p_src;
        }

        else
        {
          p_p_src = p_src;
        }

        if (v63)
        {
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = &v89;
          }

          else
          {
            v65 = v89.__r_.__value_.__r.__words[0];
          }

          memmove(p_p_src, v65, v63);
        }

        strcpy(p_p_src + v63, "__@conv");
        v103 = 0;
        operator new();
      }

      v102 = v88;
      v101 = v76;
      if (MILTensorRank == 4)
      {
        v66 = "Stride must be all 1 to support dynamic kernel convolution";
        if (HIDWORD(v135) == 1 && v136 == 0x100000001)
        {
          v66 = "Dilation must be all 1 to support dynamic kernel convolution";
          if (v135 == 1 && *(&v135 + 4) == 0x100000001)
          {
            if (v130 != 1)
            {
              ZinAssertImpl("Unsupported conv type for dynamic kernel");
            }

            if (v132.i64[0] == 1)
            {
              v66 = "Unsupported padding for dynamic kernel";
              if ((vmaxv_u16(vmovn_s32(vtstq_s32(v137, v137))) & 1) == 0 && !*&v138)
              {
                std::string::basic_string[abi:ne200100]<0>(&__src, "weight");
                v67 = MIL::IROperation::GetParameterType();
                if (v145.i8[7] < 0)
                {
                  operator delete(__src.i64[0]);
                }

                memset(v100, 0, sizeof(v100));
                v68 = MIL::IRValueType::AsTensorType(v67);
                v69 = (*(*v68 + 96))(v68);
                GetMILShapeAsVector(v69, v100);
                v70 = *(v100[0] + 3);
                v99 = *(v100[0] + 2);
                v98 = v70;
                memset(v97, 0, 48);
                std::string::basic_string[abi:ne200100]<0>(&__src, "x");
                std::string::basic_string[abi:ne200100]<0>(&v145.i64[1], "weight");
                v90 = 0uLL;
                *&v91 = 0;
                std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v90, &__src, &v147 + 8, 2uLL);
                ZinMILUnitBuilder::DeclareOperationInputs(v97, a1, &v90, a3, v96);
                v142.__begin_ = &v90;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v142);
                v71 = 0;
                while (1)
                {
                  if (*(&v147 + v71 * 8 + 7) < 0)
                  {
                    operator delete(v145.i64[v71 + 1]);
                  }

                  v71 -= 3;
                  if (v71 == -6)
                  {
                    *(&v90 + 1) = 0;
                    v91 = 0uLL;
                    *v92 = 0;
                    memset(&v92[8], 0, 32);
                    v93 = -1;
                    *&v90 = &unk_1F19EBEC8;
                    v94 = 0;
                    v95 = 1;
                    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v72 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v72 = v89.__r_.__value_.__l.__size_;
                    }

                    v73 = &__src;
                    std::string::basic_string[abi:ne200100](&__src, v72 + 20);
                    if (v145.i8[7] < 0)
                    {
                      v73 = __src.i64[0];
                    }

                    if (v72)
                    {
                      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v74 = &v89;
                      }

                      else
                      {
                        v74 = v89.__r_.__value_.__r.__words[0];
                      }

                      memmove(v73, v74, v72);
                    }

                    strcpy(&v73->i8[v72], "__@kernel_rasterizer");
                    if (*(v96[0] + 47) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v140, *(v96[0] + 24), *(v96[0] + 32));
                    }

                    else
                    {
                      v140 = *(v96[0] + 24);
                    }

                    memset(&v142, 0, sizeof(v142));
                    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v142, &v140, &v141, 1uLL);
                    v150 = 0;
                    operator new();
                  }
                }
              }
            }

            else
            {
              v66 = "Unsupported num_group for dynamic kernel";
            }
          }
        }

        ZinAssertImpl(v66);
      }

      ZinAssertImpl("Only conv2d is supported with dynamic kernel");
    }

    ToZinTensorDimensions(a3, &v90, &v78, &v87);
    goto LABEL_59;
  }

  v51 = *(a3 + 43);
  v52 = 1;
  if (SHIDWORD(v135) > 1)
  {
    v53 = MILTensorRank;
    if (!v51)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v53 = MILTensorRank;
    if (v136 <= 1)
    {
      v52 = SHIDWORD(v136) > 1;
    }

    if (!v51)
    {
LABEL_75:
      __src = v78;
      v145 = v79;
      v146 = v80;
      MILOpConverter::FillPadInfo(&v83, v40, v53, v81, &__src, &v132.i32[2], &v135 + 3, v47, v135, DWORD2(v135) | 0x100000000, v137.i64);
    }
  }

  if (SHIBYTE(v85) < 0)
  {
    if (v84 == 4 && *v83 == 1701667187)
    {
      if (!v52)
      {
        goto LABEL_75;
      }

      goto LABEL_134;
    }

    if (v84 != 10)
    {
      goto LABEL_75;
    }

    v54 = v83;
  }

  else
  {
    if (HIBYTE(v85) == 4)
    {
      v58 = v83 == 1701667187;
LABEL_71:
      v59 = v58;
      if ((v59 & v52 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_134:
      ZinAssertImpl("Dynamic shape does not support conv with same or same_lower padding when input stride is larger than 1");
    }

    if (HIBYTE(v85) != 10)
    {
      goto LABEL_75;
    }

    v54 = &v83;
  }

  v56 = *v54;
  v57 = v54[4];
  v58 = v56 == 0x776F6C5F656D6173 && v57 == 29285;
  goto LABEL_71;
}

void sub_1A746FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&STACK[0x450]);
  STACK[0x450] = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  ZinIrUnitInfo::~ZinIrUnitInfo(&a65);
  STACK[0x450] = &a66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&STACK[0x200]);
  v67 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v67;
    operator delete(v67);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  ZinIrConvUnitInfo::~ZinIrConvUnitInfo(&STACK[0x2B0]);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&a38, a39);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrConvUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v15 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v15)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v15 == 1)
  {
    v10[0] = &unk_1F1A2EAA0;
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7470650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrConvUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrKernelRasterizerUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A74709EC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrCrossCorrelationUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7470D94(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a31 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrKernelRasterizerUnitInfo::ZinIrKernelRasterizerUnitInfo(ZinIrKernelRasterizerUnitInfo *this, const ZinIrKernelRasterizerUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19EBEC8;
  *(this + 5) = *(a2 + 5);
}

void sub_1A7470F88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrKernelRasterizerUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrKernelRasterizerUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0>,void ()(std::optional<ZinIrKernelRasterizerUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C0B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0>,void ()(std::optional<ZinIrKernelRasterizerUnitInfo> &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  *(v3 + 32) = 14;
  *(v3 + 80) = 1;
  *(v3 + 72) = *v4;
  *(v3 + 88) = *(a1[3] + 248);
  return std::optional<ZinIrKernelRasterizerUnitInfo>::operator=[abi:ne200100]<ZinIrKernelRasterizerUnitInfo&,void>(a2, v3);
}

uint64_t std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_0>,void ()(std::optional<ZinIrKernelRasterizerUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrKernelRasterizerUnitInfo>::operator=[abi:ne200100]<ZinIrKernelRasterizerUnitInfo&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
    }

    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F19EBEC8;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A7471280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrKernelRasterizerUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinIrCrossCorrelationUnitInfo::ZinIrCrossCorrelationUnitInfo(ZinIrCrossCorrelationUnitInfo *this, const ZinIrCrossCorrelationUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19D2708;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 5) = v6;
  *(this + 6) = v7;
}

void sub_1A74713F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrCrossCorrelationUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrCrossCorrelationUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1>,void ()(std::optional<ZinIrCrossCorrelationUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C1A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1>,void ()(std::optional<ZinIrCrossCorrelationUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(v2 + 32) = 13;
  v4 = *v3;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(v5 + 248);
  *(v2 + 72) = v4;
  *(v2 + 80) = v7;
  *(v2 + 112) = *v6;
  *(v2 + 116) = **(a1 + 40);
  v8 = *(v5 + 304);
  *(v2 + 104) = *(v5 + 320);
  *(v2 + 88) = v8;
  return std::optional<ZinIrCrossCorrelationUnitInfo>::operator=[abi:ne200100]<ZinIrCrossCorrelationUnitInfo&,void>(a2, *(a1 + 8));
}

uint64_t std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_1>,void ()(std::optional<ZinIrCrossCorrelationUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrCrossCorrelationUnitInfo>::operator=[abi:ne200100]<ZinIrCrossCorrelationUnitInfo&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v4;
    *(a1 + 96) = v5;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v6;
    }

    v7 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v7;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F19D2708;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_1A747172C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrCrossCorrelationUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C238;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = **(result + 8);
  if (v2)
  {
    v3 = **(result + 24);
    *(*(result + 16) + 72) = v3;
    MILOpConverter::CreateBiasInfo(v2, *(result + 32), v3, a2);
  }
}

uint64_t std::__function::__func<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2,std::allocator<MILOpConverter::CrossCorrelation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &,std::string const&,MIL::IRDataType const&,int,ZinIrConvUnitInfo &,MIL::IRValue const*,int,int)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::vector<ZinMILUnitBuilder::Crop1DInfo>::__init_with_size[abi:ne200100]<ZinMILUnitBuilder::Crop1DInfo const*,ZinMILUnitBuilder::Crop1DInfo const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ZinMILUnitBuilder::Crop1DInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A747195C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ZinMILUnitBuilder::Crop1DInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo const*,ZinMILUnitBuilder::Crop1DInfo const*,ZinMILUnitBuilder::Crop1DInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      *&v4[1].__r_.__value_.__l.__data_ = *(v6 + 24);
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v13 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinMILUnitBuilder::Crop1DInfo>,ZinMILUnitBuilder::Crop1DInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__shared_ptr_pointer<ZinIrConvUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrConvUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConvUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C318;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

ZinIrConvUnitInfo *std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConvUnitInfo> &)>::operator()(uint64_t a1, ZinIrConvUnitInfo *this)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v3 + 32) = 1;
  *(v3 + 72) = *(v4 + 8);
  *(v3 + 248) = **(a1 + 24);
  return std::optional<ZinIrConvUnitInfo>::operator=[abi:ne200100]<ZinIrConvUnitInfo&,void>(this, v3);
}

uint64_t std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrConvUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrConvUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3C3A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  if (v3)
  {
    MILOpConverter::CreateBiasInfo(v3, *(a1 + 16), *(*(a1 + 24) + 72), a2);
  }
}

uint64_t std::__function::__func<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Conv(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::BatchToSpace(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v69 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&__p);
  if (SHIBYTE(__p.__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, __p.__begin_->__r_.__value_.__l.__data_, __p.__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = *&__p.__begin_->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = __p.__begin_->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v5;
  }

  *&v45[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  __p.__begin_ = 3;
  std::string::basic_string[abi:ne200100]<0>(&__p.__end_, "NCW");
  v55 = 5;
  std::string::basic_string[abi:ne200100]<0>(v56, "NCDHW");
  std::map<long,std::string>::map[abi:ne200100](v49, &__p, 2);
  for (i = 0; i != -8; i -= 4)
  {
    if (*(&v57 + i * 8) < 0)
    {
      operator delete(v56[i]);
    }
  }

  v46 = vdupq_n_s64(1uLL);
  v47 = v46;
  v48 = 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  v12 = (*(*v11 + 96))(v11);
  ToZinTensorDimensions(a3, v12, &v46, v49);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v13 = MIL::IROperation::GetParameterType();
  v14 = MIL::IRValueType::AsTensorType(v13);
  MILTensorRank = GetMILTensorRank(v14);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  memset(v45, 0, sizeof(v45));
  std::string::basic_string[abi:ne200100]<0>(&v68, "x");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v68, &v69, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v45, a1, &__p, a3, v44);
  v43.__begin_ = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (SHIBYTE(v68.__end_cap_.__value_) < 0)
  {
    operator delete(v68.__begin_);
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, size + 23);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    p_p = __p.__begin_;
  }

  if (size)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v50;
    }

    else
    {
      v18 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v18, size);
  }

  strcpy(p_p + size, "__@input_layout_convert");
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(&v68, a3, MILTensorRank, v44[0], v49, 4);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  memset(&v43, 0, sizeof(v43));
  std::string::basic_string[abi:ne200100]<0>(&__p, "block_shape");
  RetrieveRequiredValue<int>(a1, &__p, &v43, 0);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  memset(&v42, 0, sizeof(v42));
  std::string::basic_string[abi:ne200100]<0>(&__p, "crops");
  RetrieveRequiredValue<int>(a1, &__p, &v42, 0);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  v19.__i_ = v43.__begin_;
  if ((v43.__end_ - v43.__begin_) >> 1 != v42.__end_ - v42.__begin_)
  {
    ZinAssertImpl("Invalid block_shape/crops parameters.");
  }

  v20 = (v43.__end_ - v43.__begin_) >> 2;
  if (MILTensorRank - 2 != v20)
  {
    ZinAssertImpl("Size of spatial dimension(M) should be always be rank(input) - 2.");
  }

  v21 = 3 - v20;
  LODWORD(__p.__begin_) = 1;
  std::vector<int>::insert(&v43, v19, 3 - v20, &__p);
  v22.__i_ = v42.__begin_;
  LODWORD(__p.__begin_) = 0;
  std::vector<int>::insert(&v42, v22, 2 * v21, &__p);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v50.__r_.__value_.__l.__size_;
  }

  begin = &v41;
  std::string::basic_string[abi:ne200100](&v41, v23 + 17);
  if (SHIBYTE(v41.__end_cap_.__value_) < 0)
  {
    begin = v41.__begin_;
  }

  if (v23)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v50;
    }

    else
    {
      v25 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v25, v23);
  }

  strcpy(begin + v23, "__@batch_to_space");
  v67[0] = &unk_1F1A3C488;
  v67[1] = &v43;
  v67[3] = v67;
  ZinMILUnitBuilder::CreateUnit<ZinIrBatchToSpaceUnitInfo>(&v68, v67, &__p);
  std::vector<std::string>::__vdeallocate(&v68);
  v68 = __p;
  memset(&__p, 0, sizeof(__p));
  v40[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  std::__function::__value_func<void ()(std::optional<ZinIrBatchToSpaceUnitInfo> &)>::~__value_func[abi:ne200100](v67);
  if (SHIBYTE(v41.__end_cap_.__value_) < 0)
  {
    operator delete(v41.__begin_);
  }

  v26 = v68.__begin_;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v50.__r_.__value_.__l.__size_;
  }

  v28 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v27 + 9);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v28 = __p.__begin_;
  }

  if (v27)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v50;
    }

    else
    {
      v29 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(v28, v29, v27);
  }

  strcpy(v28 + v27, "__@view_z");
  v53 = *v42.__begin_;
  v54 = *v43.__begin_ * v48 - (v53 + v42.__begin_[1]);
  v55 = 0x100000001;
  v30 = v56;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v50.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](v56, v31 + 9);
  if (v57 < 0)
  {
    v30 = v56[0];
  }

  if (v31)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v50;
    }

    else
    {
      v32 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(v30, v32, v31);
  }

  strcpy(v30 + v31, "__@view_y");
  v58 = v42.__begin_[2];
  v59 = v43.__begin_[1] * v47.i32[0] - (v58 + v42.__begin_[3]);
  v60 = 0x300000001;
  v33 = v61;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v50.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](v61, v34 + 9);
  if (v62 < 0)
  {
    v33 = v61[0];
  }

  if (v34)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v50;
    }

    else
    {
      v35 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(v33, v35, v34);
  }

  strcpy(v33 + v34, "__@view_x");
  v63 = v42.__begin_[4];
  v64 = v43.__begin_[2] * v47.i32[2] - (v63 + v42.__begin_[5]);
  v65 = 0x400000001;
  memset(v40, 0, sizeof(v40));
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__init_with_size[abi:ne200100]<ZinMILUnitBuilder::Crop1DInfo const*,ZinMILUnitBuilder::Crop1DInfo const*>(v40, &__p, &v66, 3uLL);
  ZinMILUnitBuilder::InsertCropND(v26, v40, &v41);
  std::vector<std::string>::__vdeallocate(&v68);
  v68 = v41;
  memset(&v41, 0, sizeof(v41));
  v51 = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
  v51 = v40;
  std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](&v51);
  for (j = 0; j != -15; j -= 5)
  {
    if (*(&v62 + j * 8) < 0)
    {
      operator delete(v61[j]);
    }
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v50.__r_.__value_.__l.__size_;
  }

  v38 = &v41;
  std::string::basic_string[abi:ne200100](&v41, v37 + 24);
  if (SHIBYTE(v41.__end_cap_.__value_) < 0)
  {
    v38 = v41.__begin_;
  }

  if (v37)
  {
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v50;
    }

    else
    {
      v39 = v50.__r_.__value_.__r.__words[0];
    }

    memmove(v38, v39, v37);
  }

  strcpy(v38 + v37, "__@output_layout_convert");
  ZinMILUnitBuilder::ConvertToDefaultLayout(&__p, a3, MILTensorRank, v68.__begin_, v49, 4);
  std::vector<std::string>::__vdeallocate(&v68);
  v68 = __p;
  memset(&__p, 0, sizeof(__p));
  v40[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  if (SHIBYTE(v41.__end_cap_.__value_) < 0)
  {
    operator delete(v41.__begin_);
  }

  ZinMILUnitBuilder::Finalize(v45, a3, a1, &v50.__r_.__value_.__l.__data_, v8, 1, 1);
  if (v42.__begin_)
  {
    v42.__end_ = v42.__begin_;
    operator delete(v42.__begin_);
  }

  if (v43.__begin_)
  {
    v43.__end_ = v43.__begin_;
    operator delete(v43.__begin_);
  }

  __p.__begin_ = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__begin_ = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__begin_ = (&v45[1] + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__begin_ = v45;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v49, v49[1]);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_1A7472778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, void *a50, int a51, __int16 a52, char a53, char a54, int a55, __int16 a56, char a57, char a58)
{
  a28 = &a49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void sub_1A747299C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A747296CLL);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return __position.__i_;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v15 = end - __position.__i_;
    v16 = this->__end_;
    v17 = __n;
    if (__n <= end - __position.__i_)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &end[__n - (v15 >> 2)];
    v19 = *__x;
    v20 = (4 * __n - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = (end + 2);
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1A7598670)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1A7598660)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    this->__end_ = v16;
    if (end != __position.__i_)
    {
LABEL_21:
      v26 = &__position.__i_[__n];
      v27 = &v16[-__n];
      v28 = v16;
      if (v27 < end)
      {
        v28 = v16;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
        }

        while (v27 < end);
      }

      this->__end_ = v28;
      if (v16 != v26)
      {
        memmove(&__position.__i_[__n], __position.__i_, v16 - v26);
      }

      if (__position.__i_ <= v5)
      {
        if (this->__end_ <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = __n;
        }

        v5 += v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = (__position.__i_ + 2);
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_1A7598670)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_1A7598660)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __position.__i_;
  }

  begin = this->__begin_;
  v11 = __n + end - this->__begin_;
  if (v11 >> 62)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = __position.__i_ - begin;
  v13 = value - begin;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(this, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *__x;
  v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_1A7598670)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_1A7598660)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * __n), __position.__i_, this->__end_ - __position.__i_);
  v46 = this->__begin_;
  v47 = (v37 + 4 * __n + this->__end_ - __position.__i_);
  this->__end_ = __position.__i_;
  v48 = (__position.__i_ - v46);
  v49 = (v37 - (__position.__i_ - v46));
  memcpy(v49, v46, v48);
  v50 = this->__begin_;
  this->__begin_ = v49;
  this->__end_ = v47;
  this->__end_cap_.__value_ = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

void ZinMILUnitBuilder::CreateUnit<ZinIrBatchToSpaceUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v11 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v11)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v11 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7472FA4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a27 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrBatchToSpaceUnitInfo::ZinIrBatchToSpaceUnitInfo(ZinIrBatchToSpaceUnitInfo *this, const ZinIrBatchToSpaceUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33F28;
  v6 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v6;
}

void sub_1A74731A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrBatchToSpaceUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrBatchToSpaceUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBatchToSpaceUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3C488;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBatchToSpaceUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  v7 = 0;
  v6 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = -1;
  v5 = &unk_1F1A33F28;
  v12 = 0x100000001;
  v13 = 1;
  std::optional<ZinIrBatchToSpaceUnitInfo>::operator=[abi:ne200100]<ZinIrBatchToSpaceUnitInfo,void>(a2, &v5);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v5);
  a2[8] = 35;
  v4 = **(a1 + 8);
  a2[22] = *v4;
  a2[21] = v4[1];
  a2[20] = v4[2];
}

uint64_t std::__function::__func<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::BatchToSpace(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrBatchToSpaceUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrBatchToSpaceUnitInfo>::operator=[abi:ne200100]<ZinIrBatchToSpaceUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    v4 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v4;
  }

  else
  {
    *a1 = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v6;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    *a1 = &unk_1F1A33F28;
    v7 = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A7473530(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}