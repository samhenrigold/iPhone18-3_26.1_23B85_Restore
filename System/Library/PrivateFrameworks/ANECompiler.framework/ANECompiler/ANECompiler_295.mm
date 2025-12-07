__n128 std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrScaledEWUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3CC98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrScaledEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  std::optional<ZinIrScaledEWUnitInfo>::operator=[abi:ne200100]<ZinIrScaledEWUnitInfo&,void>(a2, **(a1 + 8) + 56);
  if (**(a1 + 16) != 1)
  {
    return result;
  }

  v18 = 0;
  v5 = *(a1 + 24);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (v5[1] != 1)
    {
      goto LABEL_14;
    }

    v5 = *v5;
  }

  else if (v6 != 1)
  {
LABEL_14:
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    v11 = RetrieveIRValue<int,int>(ParameterValue, &v18);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      goto LABEL_17;
    }

LABEL_11:
    v9 = *(a1 + 40);
    if (v9[23] < 0)
    {
      v9 = *v9;
    }

    ZinAssertImpl("Failed to extract constant value %s", v9);
  }

  if (*v5 != 120)
  {
    goto LABEL_14;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "y");
  v7 = MIL::IROperation::TryGetParameterValue();
  v8 = RetrieveIRValue<int,int>(v7, &v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_17:
  v12 = *(a1 + 40);
  v13 = v12[23];
  if (v13 < 0)
  {
    v12 = *v12;
    if (*(*(a1 + 40) + 8) != 3)
    {
      goto LABEL_33;
    }
  }

  else if (v13 != 3)
  {
    goto LABEL_33;
  }

  if (*v12 == 30061 && v12[2] == 108)
  {
    result = v18;
    *(a2 + 88) = v18;
  }

  else
  {
    if (*v12 != 25697 || v12[2] != 100)
    {
LABEL_33:
      ZinAssertImpl("Unsupported op for scaledEW %s", v12);
    }

    result = v18;
    *(a2 + 92) = v18;
  }

  return result;
}

void sub_1A7485F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrScaledEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrScaledEWUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrEWUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3CD28;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v4[0] = &unk_1F1A2EA10;
  v9 = 0;
  std::optional<ZinIrEWUnitInfo>::operator=[abi:ne200100]<ZinIrEWUnitInfo&,void>(a2, v4);
  ZinIrUnitInfo::~ZinIrUnitInfo(v4);
  *(a2 + 32) = 4;
  *(a2 + 80) = *(**(a1 + 8) + 56);
}

void sub_1A7486178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ElementwiseOpSimpleElementwise(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(MIL::IROperation const&,std::string const&,MILFunctionInfo &),std::allocator<void (*)(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>,void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3CDA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(MIL::IROperation const&,std::string const&,MILFunctionInfo &),std::allocator<void (*)(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>,void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::ConvertANENeuronClampedRelu(MILOpConverter *this, uint64_t **a2, float a3, float a4, MILFunctionInfo *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a3;
  (*(*this + 200))(v14);
  if (*(*&v14[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, **&v14[0], *(*&v14[0] + 8));
  }

  else
  {
    v7 = **&v14[0];
    v15.__r_.__value_.__r.__words[2] = *(*&v14[0] + 16);
    *&v15.__r_.__value_.__l.__data_ = v7;
  }

  v13[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  OutputType = MIL::IROperation::GetOutputType(this);
  v9 = MIL::IRValueType::AsTensorType(OutputType);
  v10 = (*(*v9 + 88))(v9);
  memset(v14, 0, sizeof(v14));
  std::string::basic_string[abi:ne200100]<0>(v20, "x");
  memset(v12, 0, sizeof(v12));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v12, v20, &v22, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v14, this, v12, a2, v13);
  v18 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v19[0] = &unk_1F1A3CE58;
  v19[1] = &v16;
  v19[2] = &v17;
  v19[3] = v19;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v13, v19, v11);
  v12[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v19);
  ZinMILUnitBuilder::Finalize(v14, a2, this, &v15.__r_.__value_.__l.__data_, v10, 1, 1);
  v12[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v12);
  v13[0] = &v14[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  v13[0] = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1A74864FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3CE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(&v11[1], 0, 24);
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = -1;
  v11[0] = &unk_1F19CEE38;
  v16 = 0;
  v17 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v18 = _D0;
  v19 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, v11);
  ZinIrUnitInfo::~ZinIrUnitInfo(v11);
  a2[8] = 6;
  a2[20] = 3;
  v9 = *(a1 + 16);
  a2[24] = **(a1 + 8);
  result = *v9;
  a2[23] = *v9;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertANENeuronClampedRelu(MIL::IROperation const&,float,float,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 6;
}

void sub_1A7486874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v8[1], 0, 24);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v8[0] = &unk_1F19CEE38;
  v13 = 0;
  v14 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v15 = _D0;
  v16 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, v8);
  ZinIrUnitInfo::~ZinIrUnitInfo(v8);
  *(a2 + 32) = 6;
  *(a2 + 80) = 27;
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v8[1], 0, 24);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v8[0] = &unk_1F19CEE38;
  v13 = 0;
  v14 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v15 = _D0;
  v16 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, v8);
  ZinIrUnitInfo::~ZinIrUnitInfo(v8);
  *(a2 + 32) = 6;
  *(a2 + 80) = 15;
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::ElementwiseOpCustomLowering(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::map<std::string const,ZinIrNeuronType>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,SpatialSplitMode>,std::__map_value_compare<std::string,std::__value_type<std::string,SpatialSplitMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SpatialSplitMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SpatialSplitMode> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D058;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v9[1], 0, 24);
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = -1;
  v9[0] = &unk_1F19CEE38;
  v14 = 0;
  v15 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v16 = _D0;
  v17 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, v9);
  ZinIrUnitInfo::~ZinIrUnitInfo(v9);
  *(a2 + 32) = 6;
  *(a2 + 80) = *(**(a1 + 8) + 56);
}

uint64_t std::__function::__func<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ElementwiseOpSimpleNeuron(MIL::IROperation const&,std::string const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::set<std::string>::set[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__function::__func<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D0D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t a1, ZinIrUnitInfo *a2)
{
  v3 = *(a1 + 8);
  v9 = &unk_1F1A2EA30;
  if (*(v3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(v3 + 8), *(v3 + 16));
  }

  else
  {
    v4 = *(v3 + 8);
    v10.__r_.__value_.__r.__words[2] = *(v3 + 24);
    *&v10.__r_.__value_.__l.__data_ = v4;
  }

  v11 = *(v3 + 32);
  memset(v12, 0, sizeof(v12));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v12, *(v3 + 40), *(v3 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 48) - *(v3 + 40)) >> 3));
  v5 = *(v3 + 80);
  v13 = *(v3 + 64);
  v14 = v5;
  v9 = &unk_1F19CA4D8;
  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 128);
  v18 = *(v3 + 144);
  v16 = v7;
  v17 = v8;
  v15 = v6;
  v19 = 1;
  std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrGOCUnitInfo,false>>(a2, &v9);
  if (v19 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&v9);
  }
}

void sub_1A74870D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a31 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToMutableGOCIfQualified(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrGOCUnitInfo,false>>(ZinIrUnitInfo *this, uint64_t a2)
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
      result = *(a2 + 80);
      *(this + 5) = result;
    }
  }

  else if (*(this + 152))
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this);
    *(this + 152) = 0;
  }

  else
  {
    *this = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((this + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v8 = *(a2 + 8);
      *(this + 3) = *(a2 + 24);
      *(this + 8) = v8;
    }

    v9 = *(a2 + 32);
    *(this + 5) = 0;
    *(this + 8) = v9;
    *(this + 6) = 0;
    *(this + 7) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(this + 4) = *(a2 + 64);
    *this = &unk_1F19CA4D8;
    *(this + 5) = *(a2 + 80);
    result = *(a2 + 96);
    v10 = *(a2 + 112);
    v11 = *(a2 + 128);
    *(this + 18) = *(a2 + 144);
    *(this + 7) = v10;
    *(this + 8) = v11;
    *(this + 6) = result;
    *(this + 152) = 1;
  }

  return result;
}

void sub_1A74872DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::map<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>::map[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
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
      std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>> const&>(a1, v4, a2, a2);
      a2 += 56;
      v6 -= 56;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::__construct_node<std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>> const&>();
  }

  return v4;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_1A7487530(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,0>(uint64_t a1)
{
  std::__function::__value_func<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<void ()(MIL::IROperation const&,std::string const&,MILFunctionInfo &)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void MILOpConverter::Transpose(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v12);
  if (*(*&v12[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, **&v12[0], *(*&v12[0] + 8));
  }

  else
  {
    v5 = **&v12[0];
    v13.__r_.__value_.__r.__words[2] = *(*&v12[0] + 16);
    *&v13.__r_.__value_.__l.__data_ = v5;
  }

  v11[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v12, 0, sizeof(v12));
  std::string::basic_string[abi:ne200100]<0>(&v15, "x");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v15, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, &__p, a3, v11);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(&v15, "perm");
  RetrieveRequiredValue<int>(a1, &v15, &__p, 0);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (!GenerateANECTransposeMapping(a3, &__p, &v15))
  {
    ZinAssertImpl("Failed to translate permutation to Zin DimensionMapping");
  }

  ZinMILUnitBuilder::InsertTranspose(v11[0], &v15, v8, v9);
  p_p = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  __p.__begin_ = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A7487918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::Gather(MIL::IROperation *a1, int *a2, uint64_t **a3)
{
  v5 = a1;
  v299[2] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(*__p + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, **__p, *(*__p + 8));
  }

  else
  {
    v6 = **__p;
    v195.__r_.__value_.__r.__words[2] = *(*__p + 16);
    *&v195.__r_.__value_.__l.__data_ = v6;
  }

  v247[0].__r_.__value_.__r.__words[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v247);
  OutputType = MIL::IROperation::GetOutputType(v5);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  v12 = (*(*v11 + 88))(v11);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v13 = MIL::IROperation::TryGetParameterType();
  v14 = MIL::IRValueType::AsTensorType(v13);
  MILTensorRank = GetMILTensorRank(v14);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  v16 = MIL::IROperation::TryGetParameterType();
  v17 = MIL::IRValueType::AsTensorType(v16);
  v18 = GetMILTensorRank(v17);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v19 = MIL::IROperation::GetOutputType(v5);
  v20 = MIL::IRValueType::AsTensorType(v19);
  v21 = MIL::IRValueType::AsTensorType(v20);
  v22 = GetMILTensorRank(v21);
  MILOpConverter::ZinMILGatherParameterCheck(v5, a2);
  v180 = v22;
  memset(&__str, 0, sizeof(__str));
  *&__p[16] = 0;
  *&__p[8] = 0;
  *__p = &__p[8];
  MILFunctionInfo::GetTensorLayout(a3, MILTensorRank, &__str, __p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, *&__p[8]);
  memset(v193, 0, sizeof(v193));
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  std::string::basic_string[abi:ne200100]<0>(&__p[24], "indices");
  memset(v247, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v247, __p, &__p[48], 2uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v193, v5, v247, a3, v192);
  v216.__r_.__value_.__r.__words[0] = v247;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v216);
  for (i = 0; i != -48; i -= 24)
  {
    if (__p[i + 47] < 0)
    {
      operator delete(*&__p[i + 24]);
    }
  }

  v24 = v9 == 10 || v9 == 15;
  if (v24)
  {
    v25 = 4;
  }

  else
  {
    v25 = v9;
  }

  v183 = v25;
  v181 = v5;
  v182 = a3;
  if (v12 == 10)
  {
    v26 = (v192[0] + 24);
    v27 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a3 + 6), (v192[0] + 24));
    v28 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a3 + 12), v26);
    v29 = MILFunctionInfo::ContainOp(a3, v26);
    v30 = (a3 + 7);
    if (v29)
    {
      if (a3 + 13 == v28)
      {
        if (v30 == v27)
        {
          std::string::basic_string[abi:ne200100]<0>(&v216, "indices");
          std::string::basic_string[abi:ne200100]<0>(&v202, "cast");
          std::string::basic_string[abi:ne200100]<0>(v297, "x");
          memset(&v233, 0, sizeof(v233));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v233, v297, v299, 1uLL);
          std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(__p, &v202, &v233);
          std::string::basic_string[abi:ne200100]<0>(&__src, "tensor_buffer_to_tensor");
          std::string::basic_string[abi:ne200100]<0>(&v267, "input");
          v237 = 0;
          p_src = 0;
          v238 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&p_src, &v267, &v270, 1uLL);
          std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(&__p[48], &__src, &p_src);
          std::map<std::string,std::vector<std::string>>::map[abi:ne200100](&__c, __p, 2);
          MILOpConverter::RetrieveProducers(v181, &v216, a3, &__c, 0, v247);
          std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&__c, __c.__r_.__value_.__l.__size_);
          for (j = 0; j != -12; j -= 6)
          {
            v240[0] = &v273.i64[j];
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v240);
            if (v272.i8[j * 8 + 15] < 0)
            {
              operator delete(*&__p[j * 8 + 48]);
            }
          }

          v240[0] = &p_src;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v240);
          if (v269 < 0)
          {
            operator delete(v267);
          }

          if (SHIBYTE(v242) < 0)
          {
            operator delete(__src);
          }

          *&__src = &v233;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
          if (v298 < 0)
          {
            operator delete(v297[0]);
          }

          if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v202.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v216.__r_.__value_.__l.__data_);
          }

          for (k = v247[0].__r_.__value_.__r.__words[0]; ; k += 72)
          {
            if (k == v247[0].__r_.__value_.__l.__size_)
            {
              *__p = v247;
              std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](__p);
              ZinAssertImpl("Unsupported gather index type");
            }

            if (!*(k + 40))
            {
              break;
            }
          }

          v216.__r_.__value_.__r.__words[0] = v26;
          v172 = std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v26, &std::piecewise_construct, &v216, &__c);
          v173 = *(v172 + 8);
          *__p = *(v172 + 7);
          memset(&__p[8], 0, 24);
          std::vector<MILToUnitConversion>::__init_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&__p[8], v173, *(v172 + 9), (*(v172 + 9) - v173) >> 4);
          if (*&__p[8] == *&__p[16])
          {
            ZinAssertImpl("ANEC internal error: No unit info found.");
          }

          *(*(*&__p[16] - 16) + 68) = 10;
          v216.__r_.__value_.__r.__words[0] = &__p[8];
          std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v216);
          *__p = v247;
          std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](__p);
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    else if (a3 + 13 == v28)
    {
      if (v30 == v27)
      {
        ZinAssertImpl("Source of input indices is not specified.");
      }

LABEL_45:
      *(v27 + 104) = 10;
      goto LABEL_46;
    }

    *(v28 + 26) = 10;
LABEL_46:
    *__p = 0;
    v272.i8[0] = 0;
    v272.i8[8] = 0;
    v273.i8[0] = 0;
    BYTE4(v274) = 0;
    v275 = 0;
    v278 = 0;
    v276 = 0;
    v277 = 0;
    memset(&__p[8], 0, 43);
    v279 = 5;
    v280 = 0;
    v5 = v181;
    if (MILFunctionInfo::FindTensorInfo(a3, v26, __p))
    {
      *__p = 10;
      MILFunctionInfo::RecordTensorInfo(a3, v26, __p);
    }

    if (v276)
    {
      v277 = v276;
      operator delete(v276);
    }

    v12 = 15;
  }

  v191 = 0;
  RetrieveRequiredAxis(MILTensorRank, v5, &v191);
  v190 = 0;
  if (*a2 < 1)
  {
    v34 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    RetrieveIRValue<int,int>(ParameterValue, &v190);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v34 = v190;
  }

  memset(v189, 0, 7);
  memset(&v188, 0, sizeof(v188));
  v35 = v191;
  *&v247[0].__r_.__value_.__l.__data_ = xmmword_1A760D850;
  LODWORD(v247[0].__r_.__value_.__r.__words[2]) = 4;
  std::set<ZinIrDimension>::set[abi:ne200100](__p, v247, 5);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  for (; size; --size)
  {
    LODWORD(v247[0].__r_.__value_.__l.__data_) = 0;
    if ((ToZinIrDimension(p_str->__r_.__value_.__s.__data_[0], v247) & 1) == 0)
    {
      ZinAssertImpl("ANE internal error: Invalid dimension %c.", p_str->__r_.__value_.__s.__data_[0]);
    }

    std::__tree<ZinIrDimension>::__erase_unique<ZinIrDimension>(__p, v247);
    p_str = (p_str + 1);
  }

  v38 = v18 + ~v34;
  if (*&__p[16] < v38)
  {
    ZinAssertImpl("Out of available dimensions. Cannot be supported on ANE");
  }

  v39 = v38;
  memset(v247, 0, 24);
  if (v38)
  {
    v40 = 0;
    v41 = *__p;
    do
    {
      __c.__r_.__value_.__s.__data_[0] = 0;
      if ((ToCharDimension(*(v41 + 7), &__c) & 1) == 0)
      {
        ZinGetZinIrDimensionString(v41 + 7, &v216);
        if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v174 = &v216;
        }

        else
        {
          v174 = v216.__r_.__value_.__r.__words[0];
        }

        ZinAssertImpl("ANE internal error: Invalid dimension %s.", v174);
      }

      std::string::push_back(v247, __c.__r_.__value_.__s.__data_[0]);
      v42 = v41[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v24 = *v43 == v41;
          v41 = v43;
        }

        while (!v24);
      }

      ++v40;
      v41 = v43;
    }

    while (v40 != v39);
  }

  std::string::basic_string(&v216, &__str, 0, v34, &__c);
  std::string::basic_string(&__c, &__str, v35, 1uLL, &v202);
  v44 = v182;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v216.__r_.__value_.__l.__data_, &v247[0].__r_.__value_.__l.__data_, &v202);
  if ((__c.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_c = &__c;
  }

  else
  {
    p_c = __c.__r_.__value_.__r.__words[0];
  }

  if ((__c.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(__c.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = __c.__r_.__value_.__l.__size_;
  }

  v47 = std::string::append(&v202, p_c, v46);
  v48 = v47->__r_.__value_.__r.__words[0];
  v49 = v47->__r_.__value_.__l.__size_;
  v189[0] = v47->__r_.__value_.__r.__words[2];
  *(v189 + 3) = *(&v47->__r_.__value_.__r.__words[2] + 3);
  v50 = SHIBYTE(v47->__r_.__value_.__r.__words[2]);
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&v188, &__str);
  if ((v247[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = v247;
  }

  else
  {
    v51 = v247[0].__r_.__value_.__r.__words[0];
  }

  if ((v247[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v247[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v247[0].__r_.__value_.__l.__size_;
  }

  std::string::insert(&v188, v35, v51, v52);
  if (SHIBYTE(__c.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__c.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(__p, *&__p[8]);
  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v195.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](v247, v53 + 25);
  if ((v247[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = v247;
  }

  else
  {
    v54 = v247[0].__r_.__value_.__r.__words[0];
  }

  if (v53)
  {
    if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v195;
    }

    else
    {
      v55 = v195.__r_.__value_.__r.__words[0];
    }

    memmove(v54, v55, v53);
  }

  strcpy(v54 + v53, "__@indices_layout_convert");
  v56 = v192[0];
  *__p = v18;
  if (v50 < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], v48, v49);
  }

  else
  {
    *&__p[8] = v48;
    *&__p[16] = v49;
    *&__p[24] = v189[0];
    *&__p[27] = *(v189 + 3);
    __p[31] = v50;
  }

  std::map<long,std::string>::map[abi:ne200100](&v216, __p, 1);
  v57 = v181;
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v187, v182, v18, v56 + 24, &v216, v12);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v216, v216.__r_.__value_.__l.__size_);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

  memset(&v186, 0, sizeof(v186));
  v58 = v191;
  std::string::basic_string[abi:ne200100]<0>(v247, "x");
  MILOpConverter::RetrieveProducer(v181, v247, v182, 0, __p);
  if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

  if ((__p[39] & 0x80000000) != 0)
  {
    if (*&__p[24] == 22)
    {
      v59 = *&__p[16];
      goto LABEL_120;
    }

LABEL_139:
    v75 = 0;
    goto LABEL_140;
  }

  if (__p[39] != 22)
  {
    goto LABEL_139;
  }

  v59 = &__p[16];
LABEL_120:
  v60 = *v59;
  v61 = v59[1];
  v62 = *(v59 + 14);
  if (v60 != 0x70786574736E6F63 || v61 != 0x6F745F74756C5F72 || v62 != 0x65736E65645F6F74)
  {
    goto LABEL_139;
  }

  std::string::basic_string[abi:ne200100]<0>(v247, "indices");
  v65 = MIL::IROperation::GetParameterValue();
  if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v247, "lut");
  v66 = MIL::IROperation::GetParameterValue();
  if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

  v67 = (*(*v66 + 32))(v66);
  v68 = MIL::IRValueType::AsTensorType(v67);
  if ((*(*v68 + 88))(v68) != 4)
  {
    goto LABEL_139;
  }

  memset(v247, 0, 24);
  memset(&v216, 0, sizeof(v216));
  v69 = (*(*v65 + 32))(v65);
  v70 = MIL::IRValueType::AsTensorType(v69);
  v71 = (*(*v70 + 96))(v70);
  GetMILShapeAsVector(v71, &v216.__r_.__value_.__l.__data_);
  v72 = (*(*v66 + 32))(v66);
  v73 = MIL::IRValueType::AsTensorType(v72);
  v74 = (*(*v73 + 96))(v73);
  GetMILShapeAsVector(v74, &v247[0].__r_.__value_.__l.__data_);
  v75 = 0;
  if (!v58)
  {
    v76 = (v216.__r_.__value_.__l.__size_ - v216.__r_.__value_.__r.__words[0]) >> 2;
    if (v76 <= 2)
    {
      v75 = (v216.__r_.__value_.__l.__size_ == v216.__r_.__value_.__r.__words[0] || v76 < 2 || *(v247[0].__r_.__value_.__r.__words[0] + 4) <= 1) && *(v247[0].__r_.__value_.__l.__size_ - 4) < 2;
    }
  }

  if (v216.__r_.__value_.__r.__words[0])
  {
    v216.__r_.__value_.__l.__size_ = v216.__r_.__value_.__r.__words[0];
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  if (v247[0].__r_.__value_.__r.__words[0])
  {
    v247[0].__r_.__value_.__l.__size_ = v247[0].__r_.__value_.__r.__words[0];
    operator delete(v247[0].__r_.__value_.__l.__data_);
  }

LABEL_140:
  if (v272.i8[15] < 0)
  {
    operator delete(*&__p[48]);
  }

  if ((__p[39] & 0x80000000) != 0)
  {
    operator delete(*&__p[16]);
    if (v75)
    {
      goto LABEL_144;
    }
  }

  else if (v75)
  {
LABEL_144:
    v185 = 0;
    v77 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v77 = __str.__r_.__value_.__r.__words[0];
    }

    if ((ToZinIrDimension(v77->__r_.__value_.__s.__data_[v191], &v185) & 1) == 0)
    {
      ZinAssertImpl("Invalid Gather dimension");
    }

    v78 = v187[0];
    v222 = v12;
    v221 = v185;
    (*(*v181 + 200))(__p, v181);
    if (*(*__p + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v220, **__p, *(*__p + 8));
    }

    else
    {
      v79 = **__p;
      v220.__r_.__value_.__r.__words[2] = *(*__p + 16);
      *&v220.__r_.__value_.__l.__data_ = v79;
    }

    v247[0].__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v247);
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    MILOpConverter::RetrieveProducer(v181, __p, v182, 0, &v216);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "indices");
    v86 = MIL::IROperation::GetParameterValue();
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "lut");
    v87 = MIL::IROperation::GetParameterValue();
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v214 = 0;
    v213 = 0;
    v215 = 0;
    v211 = 0;
    v210 = 0;
    v212 = 0;
    v88 = (*(*v86 + 32))(v86);
    v89 = MIL::IRValueType::AsTensorType(v88);
    v90 = (*(*v89 + 96))(v89);
    GetMILShapeAsVector(v90, &v210);
    v91 = (*(*v87 + 32))(v87);
    v92 = MIL::IRValueType::AsTensorType(v91);
    v93 = (*(*v92 + 96))(v92);
    GetMILShapeAsVector(v93, &v213);
    v94 = (*(*v86 + 32))(v86);
    v95 = MIL::IRValueType::AsTensorType(v94);
    v209 = (*(*v95 + 88))(v95);
    *__p = xmmword_1A760C174;
    *&__p[16] = unk_1A760C184;
    *&__p[32] = xmmword_1A760C194;
    v96 = std::unordered_map<MIL::IRDataType,int>::unordered_map(v297, __p, 6);
    if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v96, &v209))
    {
      MIL::IRDataTypeToString();
      if (__p[23] >= 0)
      {
        v175 = __p;
      }

      else
      {
        v175 = *__p;
      }

      ZinAssertImpl("Error: invalid lut indices format %s.", v175);
    }

    v97 = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v297, &v209);
    if (!v97)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v98 = *(v97 + 5);
    v99 = v209;
    v100 = (*(*v86 + 32))(v86);
    v101 = (*(*v100 + 16))(v100);
    ExtractPackedSubByteDataFromIRValue(v86, v99, v101, v98, v208);
    v206 = 0;
    v205 = 0;
    v207 = 0;
    v179 = v87;
    RetrieveIRValue<half,MIL::Fp16>(v87, &v205);
    v102 = *v210;
    v103 = v102 / *v213;
    if (v102 % *v213)
    {
      ZinAssertImpl("Error: the number of cout (%d) must be divisible by the number of LUTs (%d)", v102, *v213);
    }

    if (*(v78 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v204, *v78, *(v78 + 8));
    }

    else
    {
      v104 = *v78;
      v204.__r_.__value_.__r.__words[2] = *(v78 + 16);
      *&v204.__r_.__value_.__l.__data_ = v104;
    }

    if (v103 >= 2)
    {
      memset(__p, 0, 52);
      v105.i64[0] = -1;
      v105.i64[1] = -1;
      v272 = v105;
      v273 = v105;
      v274 = -1;
      v275 = 0;
      v281 = 0;
      v284 = -1;
      v282 = v105;
      *v283 = v105;
      *&v283[12] = v105;
      v285 = 0;
      memset(v286, 0, sizeof(v286));
      v287 = 0;
      v288 = 5;
      v289 = -1;
      LOBYTE(v290) = 0;
      v296 = 0;
      v247[0].__r_.__value_.__r.__words[0] = 0xA00000004;
      LODWORD(v247[0].__r_.__value_.__r.__words[1]) = 15;
      v178 = v48;
      v177 = v50;
      std::unordered_set<MIL::IRDataType>::unordered_set(&v202, v247, 3);
      v176 = v78;
      if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(&v202, &v222))
      {
        __src = 0uLL;
        v242 = 0;
        std::vector<half>::reserve(&__src, v102);
        if (v102 >= 1)
        {
          v106 = 0;
          v107 = *(&__src + 1);
          do
          {
            v108 = v106 / v103;
            if (v107 >= v242)
            {
              v109 = __src;
              v110 = v107 - __src;
              v111 = (v107 - __src) >> 1;
              if (v111 <= -2)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              if (v242 - __src <= v111 + 1)
              {
                v112 = v111 + 1;
              }

              else
              {
                v112 = v242 - __src;
              }

              if (v242 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v113 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v112;
              }

              if (v113)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&__src, v113);
              }

              v114 = (v107 - __src) >> 1;
              v115 = (2 * v111);
              v116 = (2 * v111 - 2 * v114);
              *v115 = v108;
              v107 = v115 + 1;
              memcpy(v116, v109, v110);
              v117 = __src;
              *&__src = v116;
              *(&__src + 1) = v107;
              v242 = 0;
              if (v117)
              {
                operator delete(v117);
              }
            }

            else
            {
              *v107++ = v108;
            }

            *(&__src + 1) = v107;
            ++v106;
          }

          while (v102 != v106);
        }

        v267 = v179;
        v238 = 0;
        p_src = 0;
        v237 = 0;
        std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&p_src, &v267, &v268, 1uLL);
        v233.__r_.__value_.__r.__words[0] = &unk_1F1A3D1E8;
        v233.__r_.__value_.__l.__size_ = &__src;
        v234.__r_.__value_.__r.__words[0] = &v233;
        std::__function::__value_func<std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](&__c, &v233);
        v246 = 26;
        ToDisk<unsigned short,unsigned short>(&p_src, v182, &__c, 1, v247);
        std::__function::__value_func<std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&__c);
        std::__function::__value_func<std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&v233);
        v48 = v178;
        if (p_src)
        {
          v237 = p_src;
          operator delete(p_src);
        }

        v119 = v247[0].__r_.__value_.__l.__size_;
        data = v247[0].__r_.__value_.__l.__data_;
        if (v247[0].__r_.__value_.__r.__words[2])
        {
          v247[1].__r_.__value_.__r.__words[0] = v247[0].__r_.__value_.__r.__words[2];
          operator delete(v247[0].__r_.__value_.__r.__words[2]);
        }

        if (__src)
        {
          *(&__src + 1) = __src;
          operator delete(__src);
        }

        v120 = 10;
      }

      else
      {
        __src = 0uLL;
        v242 = 0;
        std::vector<unsigned char>::reserve(&__src, v102);
        if (v102 >= 1)
        {
          v121 = 0;
          v122 = *(&__src + 1);
          do
          {
            v123 = v121 / v103;
            if (v122 >= v242)
            {
              v124 = __src;
              v125 = &v122[-__src];
              v126 = &v122[-__src + 1];
              if (v126 < 0)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v127 = v242 - __src;
              if (2 * (v242 - __src) > v126)
              {
                v126 = 2 * v127;
              }

              if (v127 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v128 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v128 = v126;
              }

              if (v128)
              {
                operator new();
              }

              v129 = &v122[-__src];
              *v125 = v123;
              v122 = v125 + 1;
              memcpy(0, v124, v129);
              *&__src = 0;
              *(&__src + 1) = v125 + 1;
              v242 = 0;
              if (v124)
              {
                operator delete(v124);
              }
            }

            else
            {
              *v122++ = v123;
            }

            *(&__src + 1) = v122;
            ++v121;
          }

          while (v102 != v121);
        }

        v267 = v179;
        v238 = 0;
        p_src = 0;
        v237 = 0;
        std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&p_src, &v267, &v268, 1uLL);
        v233.__r_.__value_.__r.__words[0] = &unk_1F1A3D278;
        v233.__r_.__value_.__l.__size_ = &__src;
        v234.__r_.__value_.__r.__words[0] = &v233;
        std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](&__c, &v233);
        v246 = 26;
        ToDisk<unsigned char,unsigned char>(&p_src, v182, &__c, 1, v247);
        std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&__c);
        std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&v233);
        v48 = v178;
        v50 = v177;
        if (p_src)
        {
          v237 = p_src;
          operator delete(p_src);
        }

        v119 = v247[0].__r_.__value_.__l.__size_;
        data = v247[0].__r_.__value_.__l.__data_;
        if (v247[0].__r_.__value_.__r.__words[2])
        {
          v247[1].__r_.__value_.__r.__words[0] = v247[0].__r_.__value_.__r.__words[2];
          operator delete(v247[0].__r_.__value_.__r.__words[2]);
        }

        if (__src)
        {
          *(&__src + 1) = __src;
          operator delete(__src);
        }

        v120 = 2;
      }

      *&__p[48] = v120;
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v130 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v130 = v220.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](v247, v130 + 16);
      if ((v247[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = v247;
      }

      else
      {
        v132 = v247[0].__r_.__value_.__r.__words[0];
      }

      if (v130)
      {
        if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = &v220;
        }

        else
        {
          v133 = v220.__r_.__value_.__r.__words[0];
        }

        memmove(v132, v133, v130);
      }

      strcpy(v132 + v130, "_shifted_indices");
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      *__p = v247[0];
      v272 = vdupq_n_s64(1uLL);
      v273.i64[0] = 1;
      v273.i64[1] = v102;
      v274 = 1;
      *&v283[24] = data;
      v284 = v119;
      MILOpConverter::AddConstInfo(v182, __p, v131);
      v78 = v176;
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v220.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v233, v134 + 25);
      v57 = v181;
      if ((v233.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &v233;
      }

      else
      {
        v135 = v233.__r_.__value_.__r.__words[0];
      }

      if (v134)
      {
        if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v136 = &v220;
        }

        else
        {
          v136 = v220.__r_.__value_.__r.__words[0];
        }

        memmove(v135, v136, v134);
      }

      strcpy(v135 + v134, "_shifted_indices__@gather");
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v247, *__p, *&__p[8]);
      }

      else
      {
        v247[0] = *__p;
      }

      if (*(v176 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v247[1], *v176, *(v176 + 8));
      }

      else
      {
        v137 = *v176;
        v247[1].__r_.__value_.__r.__words[2] = *(v176 + 16);
        *&v247[1].__r_.__value_.__l.__data_ = v137;
      }

      __src = 0uLL;
      v242 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__src, v247, &v248, 2uLL);
      v267 = &unk_1F1A3D308;
      v270 = &v267;
      ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(&__src, &v267, &__c);
      std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](&v267);
      p_src = &__src;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_src);
      for (m = 0; m != -48; m -= 24)
      {
        if (SHIBYTE(v247[m / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v247[m / 0x18 + 1].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v233.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v204, __c.__r_.__value_.__l.__data_);
      v247[0].__r_.__value_.__r.__words[0] = &__c;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v247);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v202);
      if (v296 == 1)
      {
        if (v294)
        {
          v295 = v294;
          operator delete(v294);
        }

        if (v292)
        {
          v293 = v292;
          operator delete(v292);
        }

        if (v290)
        {
          v291 = v290;
          operator delete(v290);
        }
      }

      if (*&v286[1])
      {
        *&v286[3] = *&v286[1];
        operator delete(*&v286[1]);
      }

      if ((__p[47] & 0x80000000) != 0)
      {
        operator delete(*&__p[24]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    memset(__p, 0, 52);
    v139.i64[0] = -1;
    v139.i64[1] = -1;
    v272 = v139;
    v273 = v139;
    v274 = -1;
    v275 = 0;
    v281 = 0;
    v284 = -1;
    v282 = v139;
    *v283 = v139;
    *&v283[12] = v139;
    v285 = 0;
    memset(v286, 0, sizeof(v286));
    v287 = 0;
    v288 = 5;
    v289 = -1;
    LOBYTE(v290) = 0;
    v296 = 0;
    v248 = 0;
    memset(v247, 0, sizeof(v247));
    v249 = v139;
    v250 = v139;
    v251 = -1;
    v252 = 0;
    v253 = 0;
    v256 = -1;
    v254 = v139;
    *v255 = v139;
    *&v255[12] = v139;
    v257 = 0;
    memset(v258, 0, 28);
    v258[7] = 5;
    v259 = -1;
    LOBYTE(v260) = 0;
    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v140 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v140 = v220.__r_.__value_.__l.__size_;
    }

    v266 = 0;
    std::string::basic_string[abi:ne200100](&__c, v140 + 12);
    if ((__c.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = &__c;
    }

    else
    {
      v141 = __c.__r_.__value_.__r.__words[0];
    }

    v44 = v182;
    if (v140)
    {
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = &v220;
      }

      else
      {
        v142 = v220.__r_.__value_.__r.__words[0];
      }

      memmove(v141, v142, v140);
    }

    strcpy(v141 + v140, "_lut__@const");
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *__p = __c;
    v143 = *v213;
    v144 = *(v213 + 2);
    v272 = vdupq_n_s64(1uLL);
    v273.i64[0] = v143;
    v273.i64[1] = v144;
    v274 = 1;
    *&__p[48] = 3;
    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v145 = v220.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&__c, v145 + 16);
    if ((__c.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = &__c;
    }

    else
    {
      v146 = __c.__r_.__value_.__r.__words[0];
    }

    if (v145)
    {
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v147 = &v220;
      }

      else
      {
        v147 = v220.__r_.__value_.__r.__words[0];
      }

      memmove(v146, v147, v145);
    }

    strcpy(v146 + v145, "_indices__@const");
    if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247[0].__r_.__value_.__l.__data_);
    }

    v247[0] = __c;
    v249 = vdupq_n_s64(1uLL);
    v250 = v249;
    v251 = 1;
    *&__c.__r_.__value_.__r.__words[1] = 0uLL;
    __c.__r_.__value_.__r.__words[0] = &__c.__r_.__value_.__l.__size_;
    ToZinTensorDimensions(v182, &v210, &v249, &__c);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__c, __c.__r_.__value_.__l.__size_);
    v248 = 2;
    v233.__r_.__value_.__r.__words[0] = v179;
    memset(&v202, 0, sizeof(v202));
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v202, &v233, &v233.__r_.__value_.__l.__size_, 1uLL);
    v240[0] = &unk_1F1A3D428;
    v240[1] = &v205;
    v240[3] = v240;
    std::__function::__value_func<std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](&__src, v240);
    v243 = 25;
    ToDisk<half,half>(&v202, v182, &__src, 1, &__c);
    std::__function::__value_func<std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&__src);
    std::__function::__value_func<std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v240);
    if (v202.__r_.__value_.__r.__words[0])
    {
      v202.__r_.__value_.__l.__size_ = v202.__r_.__value_.__r.__words[0];
      operator delete(v202.__r_.__value_.__l.__data_);
    }

    v231 = v86;
    memset(&v233, 0, sizeof(v233));
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v233, &v231, v232, 1uLL);
    v235[0] = &unk_1F1A3D4B8;
    v235[1] = v208;
    v235[3] = v235;
    std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](&p_src, v235);
    v239 = 25;
    ToDisk<unsigned char,unsigned char>(&v233, v182, &p_src, 1, &v202);
    std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](&p_src);
    std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v235);
    if (v233.__r_.__value_.__r.__words[0])
    {
      v233.__r_.__value_.__l.__size_ = v233.__r_.__value_.__r.__words[0];
      operator delete(v233.__r_.__value_.__l.__data_);
    }

    *&v283[24] = __c.__r_.__value_.__l.__data_;
    v284 = __c.__r_.__value_.__l.__size_;
    *&v255[24] = v202.__r_.__value_.__l.__data_;
    v256 = v202.__r_.__value_.__l.__size_;
    MILOpConverter::AddConstInfo(v182, __p, v148);
    MILOpConverter::AddConstInfo(v182, v247, v149);
    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v150 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v150 = v220.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v228, v150 + 21);
    if (v229 >= 0)
    {
      v151 = v228;
    }

    else
    {
      v151 = v228[0];
    }

    if (v150)
    {
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v152 = &v220;
      }

      else
      {
        v152 = v220.__r_.__value_.__r.__words[0];
      }

      memmove(v151, v152, v150);
    }

    strcpy(v151 + v150, "_lut_indices__@gather");
    if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v233, v247[0].__r_.__value_.__l.__data_, v247[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v233 = v247[0];
    }

    if (*(v78 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v234, *v78, *(v78 + 8));
    }

    else
    {
      v153 = *v78;
      v234.__r_.__value_.__r.__words[2] = *(v78 + 16);
      *&v234.__r_.__value_.__l.__data_ = v153;
    }

    v225[1] = 0;
    v225[0] = 0;
    v226 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v225, &v233, v235, 2uLL);
    v231 = &unk_1F1A3D538;
    v232[0] = &v221;
    v232[2] = &v231;
    ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(v225, &v231, v201);
    std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](&v231);
    v200[0] = v225;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v200);
    for (n = 0; n != -6; n -= 3)
    {
      if (SHIBYTE(v234.__r_.__value_.__r.__words[n + 2]) < 0)
      {
        operator delete(*(&v233 + n * 8 + 24));
      }
    }

    if (v229 < 0)
    {
      operator delete(v228[0]);
    }

    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v155 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v155 = v220.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v225, v155 + 13);
    if (v226 >= 0)
    {
      v156 = v225;
    }

    else
    {
      v156 = v225[0];
    }

    if (v155)
    {
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v157 = &v220;
      }

      else
      {
        v157 = v220.__r_.__value_.__r.__words[0];
      }

      memmove(v156, v157, v155);
    }

    strcpy(v156 + v155, "_lut__@gather");
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v233, *__p, *&__p[8]);
    }

    else
    {
      v233 = *__p;
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v234, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
    }

    else
    {
      v234 = v204;
    }

    memset(v199, 0, sizeof(v199));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v199, &v233, v235, 2uLL);
    v228[0] = &unk_1F1A3D5B8;
    v228[1] = &v221;
    v230 = v228;
    v158 = (*(*v179 + 32))(v179);
    v159 = MIL::IRValueType::AsTensorType(v158);
    (*(*v159 + 88))(v159);
    ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(v199, v228, v200);
    std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](v228);
    v197[0] = v199;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v197);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v234.__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(*(&v233 + ii * 8 + 24));
      }
    }

    if (SHIBYTE(v226) < 0)
    {
      operator delete(v225[0]);
    }

    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v161 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v161 = v220.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v197, v161 + 9);
    if (v198 >= 0)
    {
      v162 = v197;
    }

    else
    {
      v162 = v197[0];
    }

    if (v161)
    {
      if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = &v220;
      }

      else
      {
        v163 = v220.__r_.__value_.__r.__words[0];
      }

      memmove(v162, v163, v161);
    }

    strcpy(v162 + v161, "__@gather");
    if (*(v200[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v233, *v200[0], v200[0][1]);
    }

    else
    {
      v164 = *v200[0];
      v233.__r_.__value_.__r.__words[2] = v200[0][2];
      *&v233.__r_.__value_.__l.__data_ = v164;
    }

    if (*(v201[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v234, *v201[0], *(v201[0] + 8));
    }

    else
    {
      v165 = *v201[0];
      v234.__r_.__value_.__r.__words[2] = *(v201[0] + 16);
      *&v234.__r_.__value_.__l.__data_ = v165;
    }

    memset(v196, 0, sizeof(v196));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v196, &v233, v235, 2uLL);
    v225[0] = &unk_1F1A3D638;
    v227 = v225;
    ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(v196, v225, v199);
    std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](v225);
    v223 = v196;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v223);
    for (jj = 0; jj != -6; jj -= 3)
    {
      if (SHIBYTE(v234.__r_.__value_.__r.__words[jj + 2]) < 0)
      {
        operator delete(*(&v233 + jj * 8 + 24));
      }
    }

    if (v198 < 0)
    {
      operator delete(v197[0]);
    }

    if (*(v199[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v233, *v199[0], *(v199[0] + 8));
    }

    else
    {
      v167 = *v199[0];
      v233.__r_.__value_.__r.__words[2] = *(v199[0] + 16);
      *&v233.__r_.__value_.__l.__data_ = v167;
    }

    memset(&v184, 0, sizeof(v184));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v184, &v233, &v234, 1uLL);
    if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v233.__r_.__value_.__l.__data_);
    }

    v233.__r_.__value_.__r.__words[0] = v199;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v233);
    v233.__r_.__value_.__r.__words[0] = v200;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v233);
    v233.__r_.__value_.__r.__words[0] = v201;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v233);
    if (v202.__r_.__value_.__r.__words[2])
    {
      v203 = v202.__r_.__value_.__r.__words[2];
      operator delete(v202.__r_.__value_.__r.__words[2]);
    }

    if (__c.__r_.__value_.__r.__words[2])
    {
      v245 = __c.__r_.__value_.__r.__words[2];
      operator delete(__c.__r_.__value_.__r.__words[2]);
    }

    if (v266 == 1)
    {
      if (v264)
      {
        v265 = v264;
        operator delete(v264);
      }

      if (v262)
      {
        v263 = v262;
        operator delete(v262);
      }

      if (v260)
      {
        v261 = v260;
        operator delete(v260);
      }
    }

    if (*&v258[1])
    {
      *&v258[3] = *&v258[1];
      operator delete(*&v258[1]);
    }

    if (SHIBYTE(v247[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v247[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247[0].__r_.__value_.__l.__data_);
    }

    if (v296 == 1)
    {
      if (v294)
      {
        v295 = v294;
        operator delete(v294);
      }

      if (v292)
      {
        v293 = v292;
        operator delete(v292);
      }

      if (v290)
      {
        v291 = v290;
        operator delete(v290);
      }
    }

    if (*&v286[1])
    {
      *&v286[3] = *&v286[1];
      operator delete(*&v286[1]);
    }

    if ((__p[47] & 0x80000000) != 0)
    {
      operator delete(*&__p[24]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    if (v205)
    {
      v206 = v205;
      operator delete(v205);
    }

    if (v208[0])
    {
      v208[1] = v208[0];
      operator delete(v208[0]);
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v297);
    if (v210)
    {
      v211 = v210;
      operator delete(v210);
    }

    if (v213)
    {
      v214 = v213;
      operator delete(v213);
    }

    if (v219 < 0)
    {
      operator delete(v218);
    }

    if (v217 < 0)
    {
      operator delete(v216.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    std::vector<std::string>::__vdeallocate(&v186);
    v186 = v184;
    memset(&v184, 0, sizeof(v184));
    *__p = &v184;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    goto LABEL_433;
  }

  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = v195.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v216, v80 + 9);
  if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &v216;
  }

  else
  {
    v81 = v216.__r_.__value_.__r.__words[0];
  }

  if (v80)
  {
    if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v195;
    }

    else
    {
      v82 = v195.__r_.__value_.__r.__words[0];
    }

    memmove(v81, v82, v80);
  }

  strcpy(v81 + v80, "__@gather");
  if (*(v192[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *v192[0], *(v192[0] + 8));
  }

  else
  {
    v83 = *v192[0];
    *&__p[16] = *(v192[0] + 16);
    *__p = v83;
  }

  if (*(v187[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[24], *v187[0], *(v187[0] + 8));
  }

  else
  {
    v84 = *v187[0];
    *&__p[40] = *(v187[0] + 16);
    *&__p[24] = v84;
  }

  memset(&__c, 0, sizeof(__c));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__c, __p, &__p[48], 2uLL);
  v224[0] = &unk_1F1A3D718;
  v224[1] = &__str;
  v224[2] = &v191;
  v224[3] = v224;
  ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(&__c, v224, v247);
  std::vector<std::string>::__vdeallocate(&v186);
  v186 = v247[0];
  memset(v247, 0, 24);
  v202.__r_.__value_.__r.__words[0] = v247;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v202);
  std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](v224);
  v202.__r_.__value_.__r.__words[0] = &__c;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v202);
  for (kk = 0; kk != -48; kk -= 24)
  {
    if (__p[kk + 47] < 0)
    {
      operator delete(*&__p[kk + 24]);
    }
  }

  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

LABEL_433:
  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v168 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v168 = v195.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v216, v168 + 24);
  if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v169 = &v216;
  }

  else
  {
    v169 = v216.__r_.__value_.__r.__words[0];
  }

  if (v168)
  {
    if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v170 = &v195;
    }

    else
    {
      v170 = v195.__r_.__value_.__r.__words[0];
    }

    memmove(v169, v170, v168);
  }

  strcpy(v169 + v168, "__@output_layout_convert");
  begin = v186.__begin_;
  *__p = v180;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__p[8] = v188;
  }

  std::map<long,std::string>::map[abi:ne200100](&__c, __p, 1);
  ZinMILUnitBuilder::ConvertToDefaultLayout(v247, v44, v180, begin, &__c, v183);
  std::vector<std::string>::__vdeallocate(&v186);
  v186 = v247[0];
  memset(v247, 0, 24);
  v202.__r_.__value_.__r.__words[0] = v247;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v202);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__c, __c.__r_.__value_.__l.__size_);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  ZinMILUnitBuilder::Finalize(v193, v44, v57, &v195.__r_.__value_.__l.__data_, v183, 1, 1);
  *__p = &v186;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = v187;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_453;
    }
  }

  else if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_453;
  }

  operator delete(v48);
LABEL_453:
  *__p = v192;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = &v193[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = v193;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }
}

void sub_1A748A1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  STACK[0x278] = v55;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x278]);
  STACK[0x5D0] = &STACK[0x460];
  std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5D0]);
  STACK[0x260] = &a34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a37);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(a1);
}

void MILOpConverter::ZinMILGatherParameterCheck(uint64_t a1, int *a2)
{
  if (*a2 > 1)
  {
    v7 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "validate_indices");
    RetrieveRequiredValue<BOOL>(a1, __p, &v7, 0);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      ZinAssertImpl("Unsupported parameter validate_indices=True.");
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "indices");
    ParameterType = MIL::IROperation::TryGetParameterType();
    v4 = MIL::IRValueType::AsTensorType(ParameterType);
    v5 = (*(*v4 + 88))(v4);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 != 15)
    {
      MIL::IRDataTypeToString();
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      ZinAssertImpl("Unsupported parameter indices type %s.", v6);
    }
  }
}

void sub_1A748AE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v13 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v13)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v13 == 1)
  {
    v10[0] = &unk_1F1A34188;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v10);
  }
}

void sub_1A748B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrGatherUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::GatherAlongAxis(MIL::IROperation *a1, int *a2, uint64_t **a3)
{
  v50[1] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v6 = *__p[0];
    v45.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v45.__r_.__value_.__l.__data_ = v6;
  }

  v48.__begin_ = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  LODWORD(v9) = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::TryGetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v11);
  if (SBYTE7(v35[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  v13 = MIL::IROperation::TryGetParameterType();
  v14 = MIL::IRValueType::AsTensorType(v13);
  v15 = GetMILTensorRank(v14);
  if (SBYTE7(v35[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = MIL::IROperation::GetOutputType(a1);
  v17 = MIL::IRValueType::AsTensorType(v16);
  v18 = MIL::IRValueType::AsTensorType(v17);
  v19 = GetMILTensorRank(v18);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  MILOpConverter::ZinMILGatherParameterCheck(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  v20 = MIL::IROperation::TryGetParameterType();
  v21 = MIL::IRValueType::AsTensorType(v20);
  v22 = (*(*v21 + 96))(v21);
  GetMILShapeAsVector(v22, &v42);
  if (SBYTE7(v35[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  v23 = MIL::IROperation::TryGetParameterType();
  v24 = MIL::IRValueType::AsTensorType(v23);
  v25 = (*(*v24 + 96))(v24);
  GetMILShapeAsVector(v25, &v39);
  if (SBYTE7(v35[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = MIL::IROperation::GetOutputType(a1);
  v27 = MIL::IRValueType::AsTensorType(v26);
  v28 = (*(*v27 + 96))(v27);
  GetMILShapeAsVector(v28, &v36);
  if (MILTensorRank != v19 || v15 != v19)
  {
    ZinAssertImpl("Invalid rank. x and indices rank should match output tensor rank.");
  }

  memset(v35, 0, sizeof(v35));
  *__p = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v48, "x");
  std::string::basic_string[abi:ne200100]<0>(v49, "indices");
  memset(v32, 0, sizeof(v32));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v32, &v48, v50, 2uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(__p, a1, v32, a3, &v33);
  v46 = v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v49[i + 2]) < 0)
    {
      operator delete(v49[i]);
    }
  }

  if (v9 == 10 || v9 == 15)
  {
    v9 = 4;
  }

  else
  {
    v9 = v9;
  }

  LODWORD(v46) = 0;
  RetrieveRequiredAxis(MILTensorRank, a1, &v46);
  v31 = 0;
  v48.__end_ = 0;
  v48.__end_cap_.__value_ = 0;
  v48.__begin_ = &v48.__end_;
  ToZinIrDimension(a3, MILTensorRank, v46, &v31, &v48);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v48, v48.__end_);
  v47[0] = &unk_1F1A3D798;
  v47[1] = &v31;
  v47[3] = v47;
  ZinMILUnitBuilder::CreateUnit<ZinIrGatherUnitInfo>(&v33, v47, &v48);
  std::vector<std::string>::__vdeallocate(&v33);
  v33 = v48;
  memset(&v48, 0, sizeof(v48));
  v32[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
  std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](v47);
  ZinMILUnitBuilder::Finalize(__p, a3, a1, &v45.__r_.__value_.__l.__data_, v9, 1, 1);
  v48.__begin_ = &v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
  v48.__begin_ = (v35 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
  v48.__begin_ = __p;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_1A748B7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  *(v41 + 136) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v42 - 144));
  _Unwind_Resume(a1);
}

void MILOpConverter::GatherND(MIL::IROperation *a1, int *a2, uint64_t **a3)
{
  v112[1] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&__p);
  if (*(__p + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, *__p, *(__p + 8));
  }

  else
  {
    v6 = *__p;
    v103.__r_.__value_.__r.__words[2] = *(__p + 16);
    *&v103.__r_.__value_.__l.__data_ = v6;
  }

  __str.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  ParameterType = MIL::IROperation::GetParameterType();
  v10 = MIL::IRValueType::AsTensorType(ParameterType);
  v11 = (*(*v10 + 88))(v10);
  if (SBYTE7(v92) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v12 = MIL::IROperation::TryGetParameterType();
  v13 = MIL::IRValueType::AsTensorType(v12);
  MILTensorRank = GetMILTensorRank(v13);
  if (SBYTE7(v92) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  v15 = MIL::IROperation::TryGetParameterType();
  v16 = MIL::IRValueType::AsTensorType(v15);
  v17 = GetMILTensorRank(v16);
  if (SBYTE7(v92) < 0)
  {
    operator delete(__p);
  }

  v18 = MIL::IROperation::GetOutputType(a1);
  v19 = MIL::IRValueType::AsTensorType(v18);
  v20 = MIL::IRValueType::AsTensorType(v19);
  v21 = GetMILTensorRank(v20);
  memset(v102, 0, sizeof(v102));
  v99 = 0;
  v100 = 0;
  v101 = 0;
  memset(v98, 0, sizeof(v98));
  MILOpConverter::ZinMILGatherParameterCheck(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v22 = MIL::IROperation::TryGetParameterType();
  v23 = MIL::IRValueType::AsTensorType(v22);
  v24 = (*(*v23 + 96))(v23);
  GetMILShapeAsVector(v24, v102);
  if (SBYTE7(v92) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "indices");
  v25 = MIL::IROperation::TryGetParameterType();
  v26 = MIL::IRValueType::AsTensorType(v25);
  v27 = (*(*v26 + 96))(v26);
  GetMILShapeAsVector(v27, &v99);
  if (SBYTE7(v92) < 0)
  {
    operator delete(__p);
  }

  v28 = MIL::IROperation::GetOutputType(a1);
  v29 = MIL::IRValueType::AsTensorType(v28);
  v30 = (*(*v29 + 96))(v29);
  GetMILShapeAsVector(v30, v98);
  LODWORD(v31) = *(v99 + v17 - 1);
  v97 = v31;
  v96 = 0;
  if (*a2 >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "batch_dims");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    RetrieveIRValue<int,int>(ParameterValue, &v96);
    if (SBYTE7(v92) < 0)
    {
      operator delete(__p);
    }

    LODWORD(v31) = v97;
  }

  if (v31 >= 1)
  {
    v31 = v31;
    v33 = (v102[0] + 4 * v96);
    do
    {
      v34 = *v33++;
      if (v34 >= 2049)
      {
        ZinAssertImpl("Gathered dimensions of x exceeding %d are not supported yet.", 2048);
      }

      --v31;
    }

    while (v31);
  }

  memset(&v95, 0, sizeof(v95));
  memset(&v94, 0, sizeof(v94));
  *(&__p + 1) = 0;
  *&v92 = 0;
  *&__p = &__p + 8;
  MILFunctionInfo::GetTensorLayout(a3, MILTensorRank, &v95, &__p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, *(&__p + 1));
  *(&__p + 1) = 0;
  *&v92 = 0;
  *&__p = &__p + 8;
  MILFunctionInfo::GetTensorLayout(a3, v21, &v94, &__p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, *(&__p + 1));
  v92 = 0u;
  v93 = 0u;
  __p = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__str, "x");
  std::string::basic_string[abi:ne200100]<0>(&v111, "indices");
  v85[0] = 0;
  v85[1] = 0;
  *&v86 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v85, &__str, v112, 2uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(&__p, a1, v85, a3, v90);
  v35 = v17;
  v105.__r_.__value_.__r.__words[0] = v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v111.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&__str + i * 8 + 24));
    }
  }

  memset(&v89, 0, sizeof(v89));
  if (v11 == 10 || v11 == 15)
  {
    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v103.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](v85, size + 25);
    if ((SBYTE7(v86) & 0x80u) == 0)
    {
      v38 = v85;
    }

    else
    {
      v38 = v85[0];
    }

    if (size)
    {
      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v103;
      }

      else
      {
        v39 = v103.__r_.__value_.__r.__words[0];
      }

      memmove(v38, v39, size);
    }

    strcpy(v38 + size, "__@indices_format_convert");
    v40 = v90[0];
    LODWORD(v84.__r_.__value_.__l.__data_) = 1065353216;
    memset(&v105, 0, sizeof(v105));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v105, &v84, v84.__r_.__value_.__r.__words + 1, 1uLL);
    memset(&v104, 0, sizeof(v104));
    ZinMILUnitBuilder::InsertAxPlusB(v85, v40 + 24, &v105, &v104, a3, &__str);
    std::vector<std::string>::__vdeallocate(&v89);
    v89 = __str;
    memset(&__str, 0, sizeof(__str));
    v88.__r_.__value_.__r.__words[0] = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v88);
    if (v104.__r_.__value_.__r.__words[0])
    {
      v104.__r_.__value_.__l.__size_ = v104.__r_.__value_.__r.__words[0];
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (v105.__r_.__value_.__r.__words[0])
    {
      v105.__r_.__value_.__l.__size_ = v105.__r_.__value_.__r.__words[0];
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v86) < 0)
    {
      operator delete(v85[0]);
    }

    v11 = 4;
  }

  v79 = v17;
  memset(&v88, 0, sizeof(v88));
  v41 = 1;
  *v85 = vdupq_n_s64(1uLL);
  v86 = *v85;
  v87 = 1;
  v42 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
  if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = v94.__r_.__value_.__r.__words[1];
  }

  v43 = (((v100 - v99) << 30) - 0x100000000) >> 32;
  v44 = *(v99 + v43);
  v88.__r_.__value_.__s.__data_[0] = 0;
  *(&v88.__r_.__value_.__s + 23) = 0;
  if (v42 >= 1)
  {
    v45 = 0;
    v46 = v42 & 0x7FFFFFFF;
    do
    {
      if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v94;
      }

      else
      {
        v47 = v94.__r_.__value_.__r.__words[0];
      }

      v48 = v47->__r_.__value_.__s.__data_[v45];
      LODWORD(v105.__r_.__value_.__l.__data_) = 0;
      if ((ToZinIrDimension(v48, &v105) & 1) == 0)
      {
        ZinAssertImpl("ANE internal error: Invalid dimension %c.", v48);
      }

      if (v45 < v43)
      {
        std::string::push_back(&v88, v48);
        ZinTensorDimensions::SetDimension(v85, LODWORD(v105.__r_.__value_.__l.__data_), *(v99 + v45));
      }

      ++v45;
    }

    while (v46 != v45);
    v41 = v85[1];
  }

  v85[1] = (v41 * v44);
  memset(&__str, 0, sizeof(__str));
  *&v105.__r_.__value_.__r.__words[1] = 0uLL;
  v105.__r_.__value_.__r.__words[0] = &v105.__r_.__value_.__l.__size_;
  p_str = &__str;
  MILFunctionInfo::GetTensorLayout(a3, 5, &__str, &v105);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v105, v105.__r_.__value_.__l.__size_);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = __str.__r_.__value_.__l.__size_;
  }

  v51 = p_str + v50;
  if (v50 >= 1)
  {
    v52 = p_str;
    do
    {
      v53 = memchr(v52, 67, v50);
      if (!v53)
      {
        break;
      }

      if (*v53 == 67)
      {
        goto LABEL_69;
      }

      v52 = (v53 + 1);
      v50 = v51 - v52;
    }

    while (v51 - v52 > 0);
  }

  v53 = v51;
LABEL_69:
  if (v53 == v51)
  {
    v54 = -1;
  }

  else
  {
    v54 = v53 - p_str;
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v88;
  }

  else
  {
    v55 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = SHIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v88.__r_.__value_.__l.__size_;
  }

  if (v56 < 1)
  {
    goto LABEL_96;
  }

  v57 = v55 + v56;
  v58 = v55;
  while (1)
  {
    v59 = memchr(v58, 67, v56);
    if (!v59)
    {
      goto LABEL_96;
    }

    if (*v59 == 67)
    {
      break;
    }

    v58 = (v59 + 1);
    v56 = v57 - v58;
    if (v57 - v58 < 1)
    {
      goto LABEL_96;
    }
  }

  if (v59 == v57 || (v60 = v59 - v55, v60 == -1))
  {
LABEL_96:
    std::string::append(&v88, "C", 1uLL);
    v63 = 0;
  }

  else
  {
    if (v60 >= v54)
    {
      std::string::basic_string(&v105, &__str, 0, v54 + 1, &v104);
      std::string::basic_string(&v104, &__str, 5 - (v43 - (v60 + 1)), v43 - (v60 + 1), &v84);
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v104;
      }

      else
      {
        v75 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v104.__r_.__value_.__l.__size_;
      }

      std::string::append(&v105, v75, v76);
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      std::string::basic_string(&v104, &__str, v60 + 1, 1uLL, &v84);
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v104;
      }

      else
      {
        v77 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = v104.__r_.__value_.__l.__size_;
      }

      std::string::append(&v105, v77, v78);
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      std::string::operator=(&v88, &v105);
    }

    else
    {
      std::string::basic_string(&v105, &__str, 0, v60 + 1, &v104);
      std::string::basic_string(&v104, &v88, v60 + 1, 0xFFFFFFFFFFFFFFFFLL, &v84);
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v104;
      }

      else
      {
        v61 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = v104.__r_.__value_.__l.__size_;
      }

      std::string::append(&v105, v61, v62);
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      std::string::append(&v105, "C", 1uLL);
      std::string::operator=(&v88, &v105);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    v63 = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  begin = v89.__begin_;
  if (v89.__begin_ == v89.__end_)
  {
    begin = (v90[0] + 24);
  }

  if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, begin->__r_.__value_.__l.__data_, begin->__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = *&begin->__r_.__value_.__l.__data_;
    v105.__r_.__value_.__r.__words[2] = begin->__r_.__value_.__r.__words[2];
    *&v105.__r_.__value_.__l.__data_ = v65;
  }

  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = v103.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&v84, v66 + 25);
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v84;
  }

  else
  {
    v67 = v84.__r_.__value_.__r.__words[0];
  }

  if (v66)
  {
    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v103;
    }

    else
    {
      v68 = v103.__r_.__value_.__r.__words[0];
    }

    memmove(v67, v68, v66);
  }

  strcpy(v67 + v66, "__@indices_layout_convert");
  __str.__r_.__value_.__r.__words[0] = v35;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str.__r_.__value_.__r.__words[1], v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__str.__r_.__value_.__r.__words[1] = *&v88.__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[0] = v88.__r_.__value_.__r.__words[2];
  }

  std::map<long,std::string>::map[abi:ne200100](&v81, &__str, 1);
  ZinMILUnitBuilder::DeclareCustomOperationInputLayout(&v104, a3, v79, &v105, &v81, v11);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v81, v82);
  if (v111.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__str.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (*(v104.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, *v104.__r_.__value_.__l.__data_, *(v104.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v69 = *v104.__r_.__value_.__l.__data_;
    v84.__r_.__value_.__r.__words[2] = *(v104.__r_.__value_.__r.__words[0] + 16);
    *&v84.__r_.__value_.__l.__data_ = v69;
  }

  if (v63)
  {
    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v103.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&v81, v70 + 18);
    if (v83 >= 0)
    {
      v71 = &v81;
    }

    else
    {
      v71 = v81;
    }

    if (v70)
    {
      if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v103;
      }

      else
      {
        v72 = v103.__r_.__value_.__r.__words[0];
      }

      memmove(v71, v72, v70);
    }

    strcpy(v71 + v70, "__@indices_reshape");
    if (*(v104.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v108, *v104.__r_.__value_.__l.__data_, *(v104.__r_.__value_.__r.__words[0] + 8));
    }

    else
    {
      v73 = *v104.__r_.__value_.__l.__data_;
      v108.__r_.__value_.__r.__words[2] = *(v104.__r_.__value_.__r.__words[0] + 16);
      *&v108.__r_.__value_.__l.__data_ = v73;
    }

    memset(v80, 0, sizeof(v80));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v80, &v108, &v109, 1uLL);
    v107[0] = &unk_1F1A3D818;
    v107[1] = v85;
    v107[3] = v107;
    ZinMILUnitBuilder::CreateUnit<ZinIrReshapeUnitInfo>(v80, v107, &__str);
    std::__function::__value_func<void ()(std::optional<ZinIrReshapeUnitInfo> &)>::~__value_func[abi:ne200100](v107);
    v106[0] = v80;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v106);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v83) < 0)
    {
      operator delete(v81);
    }

    std::string::operator=(&v84, __str.__r_.__value_.__l.__data_);
    v81 = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
  }

  if (*(v90[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v90[0], *(v90[0] + 8));
  }

  else
  {
    v74 = *v90[0];
    __str.__r_.__value_.__r.__words[2] = *(v90[0] + 16);
    *&__str.__r_.__value_.__l.__data_ = v74;
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v84;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v81, &__str, v112, 2uLL);
  v106[4] = 0;
  operator new();
}

void sub_1A748C800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  if (*(v71 - 137) < 0)
  {
    operator delete(*(v71 - 160));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  *(v71 - 160) = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v71 - 160));
  *(v71 - 160) = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v71 - 160));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a42);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  if (a64)
  {
    a65 = a64;
    operator delete(a64);
  }

  if (a66)
  {
    a67 = a66;
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::map<std::string,std::vector<std::string>>::map[abi:ne200100](uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(a1, v4, a2, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::pair<std::string const,std::vector<std::string>> const&>();
  }

  return v4;
}

void sub_1A748CDE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,MILOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILOpInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t RetrieveIRValue<half,MIL::Fp16>(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if ((*(*a1 + 40))(a1))
    {
      MEMORY[0x1AC559290](&v9);
      if (v9)
      {
        ToVector<MIL::Fp16,half>(&v10, &v6);
        v4 = *a2;
        if (*a2)
        {
          *(a2 + 8) = v4;
          operator delete(v4);
        }

        *a2 = v6;
        *(a2 + 16) = v7;
        return 1;
      }

      else
      {
        LOWORD(v6) = 0;
        v2 = RetrieveIRValue<half,MIL::Fp16>(v2, &v6);
        if (v2)
        {
          __src = v6;
          std::vector<half>::__assign_with_size[abi:ne200100]<half const*,half const*>(a2, &__src, &v9, 1uLL);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void ToDisk<half,half>(MIL::IRValue ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  if (v9 == v8)
  {
LABEL_5:
    *(a5 + 44) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 25) = 0u;
    return;
  }

  v12 = v9;
  while (!*v12)
  {
    if (++v12 == v8)
    {
      goto LABEL_5;
    }
  }

  if ((*(*(a2 + 800) + 664) & 1) == 0)
  {
    v41 = a2;
    if (std::__any_of[abi:ne200100]<std::__wrap_iter<MIL::IRValue const* const*>,std::__wrap_iter<MIL::IRValue const* const*>,std::__identity,MILWeightInfo<float> ToDisk<MIL::Fp16,float>(std::vector<MIL::IRValue const*> const&,MILFunctionInfo &,WeightTransform<float,float>,BOOL)::{lambda(std::__wrap_iter<MIL::IRValue const* const*> const*)#2}>(v9, v8, &v41))
    {
      ZinAssertImpl("ANE internal error: ANECompiler cannot handle mutable weights - requires transform infrastructure.");
    }
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(&v41);
  v14 = v41;
  v15 = v42;
  if (v42 - v41 == 2 && (a4 & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v14, v15, 1);
    *(a5 + 40) = 0;
    *(a5 + 44) = 0;
    goto LABEL_46;
  }

  v16 = *a1;
  v17 = a1[1];
  if (!*(a3 + 32) && v17 - v16 == 8)
  {
    v18 = MIL::IRValue::AsTensor(*v16);
    v19 = (*(*v18 + 96))(v18);
    if (v19)
    {
      (*(**(a2 + 520) + 40))(*(a2 + 520));
      MIL::Blob::TryGetDataOffsetAndByteLength();
      if ((v40.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        ZinAssertImpl("MILFramework error: Error: Cannot retrieve file blob properties.");
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "path");
      ZinOutputShapes::GetDimensions(v19, __p);
      MIL::IRValue::GetScalar<std::string>();
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      Index = MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), &v39);
      LODWORD(__p[0]) = 0;
      v21 = MIL::IRValue::AsTensor(**a1);
      v22 = (*(*v21 + 32))(v21);
      v23 = (*(*v22 + 88))(v22);
      ToZinKernelFormat(v23, __p);
      size = v40.__r_.__value_.__l.__size_;
      *a5 = Index;
      *(a5 + 8) = size;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      *(a5 + 16) = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v41, v42, (v42 - v41) >> 1);
      *(a5 + 40) = __p[0];
      *(a5 + 44) = 1;
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v25 = v39.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }

    v16 = *a1;
    v17 = a1[1];
  }

  memset(&v40, 0, sizeof(v40));
  for (; v16 != v17; ++v16)
  {
    if (*v16)
    {
      v26 = (*(**v16 + 24))(*v16);
      std::to_string(&v39, v26);
      v27 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v28 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
      std::string::append(&v40, v27, v28);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }
  }

  std::to_string(&v39, *(a3 + 32));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v39;
  }

  else
  {
    v29 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v39.__r_.__value_.__l.__size_;
  }

  std::string::append(&v40, v29, v30);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  __p[0] = std::__string_hash<char>::operator()[abi:ne200100](&v39, &v40);
  v31 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((*(a2 + 512) + 64), __p);
  if (v31)
  {
    *a5 = *(v31 + 3);
  }

  else
  {
    v32 = VectorToDisk<half>(&v41, a2);
    v34 = v33;
    v35 = *(a2 + 512);
    v39.__r_.__value_.__r.__words[0] = __p;
    v36 = std::__hash_table<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::__unordered_map_hasher<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>((v35 + 64), __p, &std::piecewise_construct, &v39);
    v36[3] = v32;
    v36[4] = v34;
    *a5 = v32;
    *(a5 + 8) = v34;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v41, v42, (v42 - v41) >> 1);
  *(a5 + 40) = 0;
  *(a5 + 44) = 0;
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v25 = v40.__r_.__value_.__r.__words[0];
LABEL_45:
  operator delete(v25);
LABEL_46:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_1A748D488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void ToDisk<unsigned char,unsigned char>(MIL::IRValue ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  if (v9 == v8)
  {
LABEL_5:
    *(a5 + 44) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 25) = 0u;
    return;
  }

  v12 = v9;
  while (!*v12)
  {
    if (++v12 == v8)
    {
      goto LABEL_5;
    }
  }

  if ((*(*(a2 + 800) + 664) & 1) == 0)
  {
    v41 = a2;
    if (std::__any_of[abi:ne200100]<std::__wrap_iter<MIL::IRValue const* const*>,std::__wrap_iter<MIL::IRValue const* const*>,std::__identity,MILWeightInfo<float> ToDisk<MIL::Fp16,float>(std::vector<MIL::IRValue const*> const&,MILFunctionInfo &,WeightTransform<float,float>,BOOL)::{lambda(std::__wrap_iter<MIL::IRValue const* const*> const*)#2}>(v9, v8, &v41))
    {
      ZinAssertImpl("ANE internal error: ANECompiler cannot handle mutable weights - requires transform infrastructure.");
    }
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(&v41);
  v14 = v41;
  v15 = v42;
  if (v42 - v41 == 1 && (a4 & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>((a5 + 16), v14, v15, 1);
    *(a5 + 40) = 0;
    *(a5 + 44) = 0;
    goto LABEL_46;
  }

  v16 = *a1;
  v17 = a1[1];
  if (!*(a3 + 32) && v17 - v16 == 8)
  {
    v18 = MIL::IRValue::AsTensor(*v16);
    v19 = (*(*v18 + 96))(v18);
    if (v19)
    {
      (*(**(a2 + 520) + 40))(*(a2 + 520));
      MIL::Blob::TryGetDataOffsetAndByteLength();
      if ((v40.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        ZinAssertImpl("MILFramework error: Error: Cannot retrieve file blob properties.");
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "path");
      ZinOutputShapes::GetDimensions(v19, __p);
      MIL::IRValue::GetScalar<std::string>();
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      Index = MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), &v39);
      LODWORD(__p[0]) = 0;
      v21 = MIL::IRValue::AsTensor(**a1);
      v22 = (*(*v21 + 32))(v21);
      v23 = (*(*v22 + 88))(v22);
      ToZinKernelFormat(v23, __p);
      size = v40.__r_.__value_.__l.__size_;
      *a5 = Index;
      *(a5 + 8) = size;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      *(a5 + 16) = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>((a5 + 16), v41, v42, v42 - v41);
      *(a5 + 40) = __p[0];
      *(a5 + 44) = 1;
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v25 = v39.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }

    v16 = *a1;
    v17 = a1[1];
  }

  memset(&v40, 0, sizeof(v40));
  for (; v16 != v17; ++v16)
  {
    if (*v16)
    {
      v26 = (*(**v16 + 24))(*v16);
      std::to_string(&v39, v26);
      v27 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v28 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
      std::string::append(&v40, v27, v28);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }
  }

  std::to_string(&v39, *(a3 + 32));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v39;
  }

  else
  {
    v29 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v39.__r_.__value_.__l.__size_;
  }

  std::string::append(&v40, v29, v30);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  __p[0] = std::__string_hash<char>::operator()[abi:ne200100](&v39, &v40);
  v31 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((*(a2 + 512) + 64), __p);
  if (v31)
  {
    *a5 = *(v31 + 3);
  }

  else
  {
    v32 = VectorToDisk<unsigned char>(&v41, a2);
    v34 = v33;
    v35 = *(a2 + 512);
    v39.__r_.__value_.__r.__words[0] = __p;
    v36 = std::__hash_table<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::__unordered_map_hasher<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>((v35 + 64), __p, &std::piecewise_construct, &v39);
    v36[3] = v32;
    v36[4] = v34;
    *a5 = v32;
    *(a5 + 8) = v34;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = 0;
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>((a5 + 16), v41, v42, v42 - v41);
  *(a5 + 40) = 0;
  *(a5 + 44) = 0;
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v25 = v40.__r_.__value_.__r.__words[0];
LABEL_45:
  operator delete(v25);
LABEL_46:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_1A748D960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::unordered_map<MIL::IRDataType,int>::unordered_map(unint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,mlir::anec::Family>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlir::anec::Family>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlir::anec::Family>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlir::anec::Family>>>::__emplace_unique_key_args<int,std::pair<int const,mlir::anec::Family> const&>(a1, a2, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

void **std::vector<half>::__assign_with_size[abi:ne200100]<half const*,half const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15++ = v16;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

unint64_t std::unordered_set<MIL::IRDataType>::unordered_set(unint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<Attribute,std::hash<Attribute>,std::equal_to<Attribute>,std::allocator<Attribute>>::__emplace_unique_key_args<Attribute,Attribute const&>(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void ToDisk<unsigned short,unsigned short>(MIL::IRValue ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v9 = *a1;
  if (v9 == v8)
  {
LABEL_5:
    *(a5 + 44) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 25) = 0u;
    return;
  }

  v12 = v9;
  while (!*v12)
  {
    if (++v12 == v8)
    {
      goto LABEL_5;
    }
  }

  if ((*(*(a2 + 800) + 664) & 1) == 0)
  {
    v41 = a2;
    if (std::__any_of[abi:ne200100]<std::__wrap_iter<MIL::IRValue const* const*>,std::__wrap_iter<MIL::IRValue const* const*>,std::__identity,MILWeightInfo<float> ToDisk<MIL::Fp16,float>(std::vector<MIL::IRValue const*> const&,MILFunctionInfo &,WeightTransform<float,float>,BOOL)::{lambda(std::__wrap_iter<MIL::IRValue const* const*> const*)#2}>(v9, v8, &v41))
    {
      ZinAssertImpl("ANE internal error: ANECompiler cannot handle mutable weights - requires transform infrastructure.");
    }
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(&v41);
  v14 = v41;
  v15 = v42;
  if (v42 - v41 == 2 && (a4 & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v14, v15, 1);
    *(a5 + 40) = 0;
    *(a5 + 44) = 0;
    goto LABEL_46;
  }

  v16 = *a1;
  v17 = a1[1];
  if (!*(a3 + 32) && v17 - v16 == 8)
  {
    v18 = MIL::IRValue::AsTensor(*v16);
    v19 = (*(*v18 + 96))(v18);
    if (v19)
    {
      (*(**(a2 + 520) + 40))(*(a2 + 520));
      MIL::Blob::TryGetDataOffsetAndByteLength();
      if ((v40.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        ZinAssertImpl("MILFramework error: Error: Cannot retrieve file blob properties.");
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "path");
      ZinOutputShapes::GetDimensions(v19, __p);
      MIL::IRValue::GetScalar<std::string>();
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      Index = MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), &v39);
      LODWORD(__p[0]) = 0;
      v21 = MIL::IRValue::AsTensor(**a1);
      v22 = (*(*v21 + 32))(v21);
      v23 = (*(*v22 + 88))(v22);
      ToZinKernelFormat(v23, __p);
      size = v40.__r_.__value_.__l.__size_;
      *a5 = Index;
      *(a5 + 8) = size;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      *(a5 + 16) = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v41, v42, (v42 - v41) >> 1);
      *(a5 + 40) = __p[0];
      *(a5 + 44) = 1;
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v25 = v39.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }

    v16 = *a1;
    v17 = a1[1];
  }

  memset(&v40, 0, sizeof(v40));
  for (; v16 != v17; ++v16)
  {
    if (*v16)
    {
      v26 = (*(**v16 + 24))(*v16);
      std::to_string(&v39, v26);
      v27 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v28 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
      std::string::append(&v40, v27, v28);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }
  }

  std::to_string(&v39, *(a3 + 32));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v39;
  }

  else
  {
    v29 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v39.__r_.__value_.__l.__size_;
  }

  std::string::append(&v40, v29, v30);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  __p[0] = std::__string_hash<char>::operator()[abi:ne200100](&v39, &v40);
  v31 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>((*(a2 + 512) + 64), __p);
  if (v31)
  {
    *a5 = *(v31 + 3);
  }

  else
  {
    v32 = VectorToDisk<unsigned short>(&v41, a2);
    v34 = v33;
    v35 = *(a2 + 512);
    v39.__r_.__value_.__r.__words[0] = __p;
    v36 = std::__hash_table<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::__unordered_map_hasher<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,ZinLiverangeOverlapAccumulator::Allocation>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>((v35 + 64), __p, &std::piecewise_construct, &v39);
    v36[3] = v32;
    v36[4] = v34;
    *a5 = v32;
    *(a5 + 8) = v34;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>((a5 + 16), v41, v42, (v42 - v41) >> 1);
  *(a5 + 40) = 0;
  *(a5 + 44) = 0;
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v25 = v40.__r_.__value_.__r.__words[0];
LABEL_45:
  operator delete(v25);
LABEL_46:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_1A748E060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VectorToDisk<unsigned short>(unsigned __int16 **a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F1A3D158;
  v4[3] = v4;
  v2 = ToDisk_Impl<unsigned short,unsigned short>(a1, a2, v4);
  std::__function::__value_func<unsigned short ()(unsigned short)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A748E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<unsigned short ()(unsigned short)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ToDisk_Impl<unsigned short,unsigned short>(unsigned __int16 **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 512);
  if (MEMORY[0x1AC55A4C0](*(v6 + 128)))
  {
    std::vector<signed char>::vector[abi:ne200100](__ptr, 1);
    fwrite(__ptr[0], 1uLL, 1uLL, *(v6 + 128));
    if (__ptr[0])
    {
      __ptr[1] = __ptr[0];
      operator delete(__ptr[0]);
    }
  }

  v8 = *a1;
  v7 = a1[1];
  while (v8 != v7)
  {
    v9 = *v8++;
    LOWORD(__ptr[0]) = std::function<unsigned short ()(unsigned short)>::operator()(a3, v9);
    fwrite(__ptr, 2uLL, 1uLL, *(v6 + 128));
  }

  return MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), v6 + 136);
}

void sub_1A748E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<unsigned short ()(unsigned short)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<MILFileInfo ToDisk_Impl<unsigned short,unsigned short>(std::vector<unsigned short> const&,MILFunctionInfo &,std::function<unsigned short ()(unsigned short)>)::$_0,std::allocator<MILFileInfo ToDisk_Impl<unsigned short,unsigned short>(std::vector<unsigned short> const&,MILFunctionInfo &,std::function<unsigned short ()(unsigned short)>)::$_0>,unsigned short ()(unsigned short)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned short ()(unsigned short)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D1E8;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a2, *v2, *(v2 + 8), (*(v2 + 8) - *v2) >> 1);
}

uint64_t std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned short,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<unsigned short> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D278;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a2, *v2, *(v2 + 8), *(v2 + 8) - *v2);
}

uint64_t std::__function::__func<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<MILFileInfo MILOpConverter::CreateLUTForShiftedIndicesAndWriteToDisk<unsigned char,true>(MIL::IRValue const*,int,int,MILFunctionInfo &)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(int a1, uint64_t a2)
{
  memset(&v3[1], 0, 24);
  v4 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = -1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v3[0] = &unk_1F1A34188;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v3);
  v3[0] = &unk_1F1A34188;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v3);
  *(a2 + 32) = 39;
  LODWORD(v3[0]) = 4;
  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), v3);
}

void sub_1A748E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(uint64_t a1, ZinIrTextureUnitInfo *a2)
{
  if (*(a1 + 184) == 1)
  {
    ZinIrGatherUnitInfo::operator=(a1, a2);
  }

  else
  {
    ZinIrTextureUnitInfo::ZinIrTextureUnitInfo(a1, a2);
    *a1 = &unk_1F1A34188;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 160) = *(a2 + 10);
    *(a1 + 176) = *(a2 + 22);
    *(a2 + 20) = 0;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a1 + 184) = 1;
  }

  return a1;
}

uint64_t ZinIrGatherUnitInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  if (a1 == a2)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    std::vector<ZinIrCoordinateInfo>::__assign_with_size[abi:ne200100]<ZinIrCoordinateInfo*,ZinIrCoordinateInfo*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  }

  *(a1 + 152) = *(a2 + 152);
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 160, (a2 + 160));
  return a1;
}

uint64_t VectorToDisk<half>(__int16 **a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F1A3D398;
  v4[3] = v4;
  v2 = ToDisk_Impl<half,half>(a1, a2, v4);
  std::__function::__value_func<half ()(half)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A748EB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<half ()(half)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ToDisk_Impl<half,half>(__int16 **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 512);
  if (MEMORY[0x1AC55A4C0](*(v6 + 128)))
  {
    std::vector<signed char>::vector[abi:ne200100](__ptr, 1);
    fwrite(__ptr[0], 1uLL, 1uLL, *(v6 + 128));
    if (__ptr[0])
    {
      __ptr[1] = __ptr[0];
      operator delete(__ptr[0]);
    }
  }

  v9 = *a1;
  v8 = a1[1];
  while (v9 != v8)
  {
    v10 = *v9++;
    v7.n128_u16[0] = v10;
    std::function<half ()(half)>::operator()(a3, v7);
    LOWORD(__ptr[0]) = v11;
    fwrite(__ptr, 2uLL, 1uLL, *(v6 + 128));
  }

  return MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), v6 + 136);
}

void sub_1A748EBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<half ()(half)>::operator()(uint64_t a1, __n128 a2)
{
  v4 = a2.n128_u16[0];
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<MILFileInfo ToDisk_Impl<half,half>(std::vector<half> const&,MILFunctionInfo &,std::function<half ()(half)>)::$_0,std::allocator<MILFileInfo ToDisk_Impl<half,half>(std::vector<half> const&,MILFunctionInfo &,std::function<half ()(half)>)::$_0>,half ()(half)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<half ()(half)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1>,std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D428;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1>,std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a2, *v2, *(v2 + 8), (*(v2 + 8) - *v2) >> 1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_1>,std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<half> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D4B8;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a2, *v2, *(v2 + 8), *(v2 + 8) - *v2);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_2>,std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<unsigned char> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D538;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v4[0] = &unk_1F1A34188;
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v4);
  v4[0] = &unk_1F1A34188;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v4);
  *(a2 + 32) = 39;
  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), *(a1 + 8));
}

void sub_1A748F354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D5B8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v4[0] = &unk_1F1A34188;
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v4);
  v4[0] = &unk_1F1A34188;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v4);
  *(a2 + 32) = 39;
  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), *(a1 + 8));
}

void sub_1A748F51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_5,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_5>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(int a1, uint64_t a2)
{
  memset(&v3[1], 0, 24);
  v4 = 0;
  v5 = 0u;
  v6 = 0u;
  v7 = -1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v3[0] = &unk_1F1A34188;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v3);
  v3[0] = &unk_1F1A34188;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v3);
  *(a2 + 32) = 39;
  LODWORD(v3[0]) = 4;
  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), v3);
}

void sub_1A748F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_5,std::allocator<MILOpConverter::ConvertGatherWithPalettizedData(MIL::IROperation const&,std::string const&,MIL::IRDataType,MIL::IRDataType,ZinIrDimension,ZinMILUnitBuilder &,MILFunctionInfo &)::$_5>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ZinIrGatherUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrGatherUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ZinIrTextureUnitInfo *std::optional<ZinIrGatherUnitInfo>::~optional(ZinIrTextureUnitInfo *this)
{
  if (*(this + 184) == 1)
  {
    *this = &unk_1F1A34188;
    v2 = *(this + 20);
    if (v2)
    {
      *(this + 21) = v2;
      operator delete(v2);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrGatherUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3D718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[1], 0, 24);
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = -1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v5[0] = &unk_1F1A34188;
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v5);
  v5[0] = &unk_1F1A34188;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v5);
  *(a2 + 32) = 39;
  LODWORD(v5[0]) = 0;
  v4 = *(a1 + 8);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  if ((ToZinIrDimension(*(v4 + **(a1 + 16)), v5) & 1) == 0)
  {
    ZinAssertImpl("Invalid Gather dimension");
  }

  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), v5);
}

void sub_1A748FA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gather(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D798;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v4[0] = &unk_1F1A34188;
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v4);
  v4[0] = &unk_1F1A34188;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v4);
  *(a2 + 32) = 39;
  std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), *(a1 + 8));
}

void sub_1A748FBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherAlongAxis(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D818;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  ZinIrReshapeUnitInfo::ZinIrReshapeUnitInfo(v7);
  std::optional<ZinIrReshapeUnitInfo>::operator=[abi:ne200100]<ZinIrReshapeUnitInfo,void>(a2, v7);
  v7[0] = &unk_1F1A34058;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v7);
  *(a2 + 32) = 22;
  v4 = *(a1 + 8);
  result = *v4;
  v6 = *(v4 + 16);
  *(a2 + 112) = *(v4 + 32);
  *(a2 + 80) = result;
  *(a2 + 96) = v6;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3D898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v8[1], 0, 24);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v8[0] = &unk_1F1A34188;
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::optional<ZinIrGatherUnitInfo>::operator=[abi:ne200100]<ZinIrGatherUnitInfo,void>(a2, v8);
  v8[0] = &unk_1F1A34188;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v8);
  *(a2 + 32) = 39;
  v4 = **(a1 + 8);
  *(a2 + 72) = v4;
  LODWORD(v8[0]) = 0;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 16);
      if (*(v6 + 23) < 0)
      {
        v6 = *v6;
      }

      v7 = *(v6 + v5 + **(a1 + 24));
      if ((ToZinIrDimension(*(v6 + v5 + **(a1 + 24)), v8) & 1) == 0)
      {
        ZinAssertImpl("ANE internal error: Invalid dimension %c.", v7);
      }

      std::vector<unsigned int>::push_back[abi:ne200100]((a2 + 160), v8);
      ++v5;
    }

    while (v5 < **(a1 + 8));
  }
}

void sub_1A748FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrGatherUnitInfo::~ZinIrGatherUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::GatherND(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrGatherUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::SliceBySize(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v81 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(__p);
  if (*(__p[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *__p[0], *(__p[0] + 1));
  }

  else
  {
    v5 = *__p[0];
    v60.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
    *&v60.__r_.__value_.__l.__data_ = v5;
  }

  v54[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v54);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v59, 0, sizeof(v59));
  std::string::basic_string[abi:ne200100]<0>(__p, "begin");
  MILOpConverter::RetrieveProducer(a1, __p, a3, 0, v54);
  if ((v69[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  memset(&v53, 0, sizeof(v53));
  memset(&v52, 0, sizeof(v52));
  std::string::basic_string[abi:ne200100]<0>(__p, "begin");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v10 = RetrieveIRValue<int,int>(ParameterValue, &v53);
  if ((v69[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size");
  RetrieveRequiredValue<int>(a1, __p, &v52, 0);
  if ((v69[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v12 = MIL::IRValueType::AsTensorType(ParameterType);
  v13 = (*(*v12 + 96))(v12);
  GetMILShapeAsVector(v13, &v49);
  if ((v69[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  if ((v56 & 0x80000000) == 0)
  {
    if (v56 == 6)
    {
      v14 = v55;
      goto LABEL_17;
    }

LABEL_21:
    if ((v10 & 1) == 0)
    {
      v30 = v50 - v49;
      v63 = (v50 - v49) >> 2;
      std::string::basic_string[abi:ne200100]<0>(__p, "x");
      std::string::basic_string[abi:ne200100]<0>(&v69[8], "begin");
      memset(&v79, 0, sizeof(v79));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v79, __p, &v69[32], 2uLL);
      ZinMILUnitBuilder::DeclareOperationInputs(v59, a1, &v79, a3, v67);
      v66.__begin_ = &v79;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v66);
      v31 = 0;
      while (1)
      {
        if (v69[v31 + 31] < 0)
        {
          operator delete(*&v69[v31 + 8]);
        }

        v31 -= 24;
        if (v31 == -48)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v60.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](__p, size + 7);
          if (v69[7] >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          if (size)
          {
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = &v60;
            }

            else
            {
              v34 = v60.__r_.__value_.__r.__words[0];
            }

            memmove(v33, v34, size);
          }

          strcpy(v33 + size, "__@cast");
          v35 = v67[0];
          LODWORD(v61) = 1065353216;
          memset(&v79, 0, sizeof(v79));
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v79, &v61, &v61 + 1, 1uLL);
          memset(&v65, 0, sizeof(v65));
          ZinMILUnitBuilder::InsertAxPlusB(__p, v35 + 24, &v79, &v65, a3, &v66);
          if (v65.__r_.__value_.__r.__words[0])
          {
            v65.__r_.__value_.__l.__size_ = v65.__r_.__value_.__r.__words[0];
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          if (v79.__r_.__value_.__r.__words[0])
          {
            v79.__r_.__value_.__l.__size_ = v79.__r_.__value_.__r.__words[0];
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          if ((v69[7] & 0x80000000) != 0)
          {
            operator delete(__p[0]);
          }

          memset(&v65, 0, sizeof(v65));
          __p[1] = 0;
          *v69 = 0;
          __p[0] = &__p[1];
          MILFunctionInfo::GetTensorLayout(a3, (v30 >> 2), &v65, __p);
          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, __p[1]);
          if (*(v67[0] + 23) < 0)
          {
            std::string::__init_copy_ctor_external(__p, *v67[0], *(v67[0] + 8));
          }

          else
          {
            v36 = *v67[0];
            *v69 = *(v67[0] + 16);
            *__p = v36;
          }

          if (SHIBYTE(v66.__begin_->__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v69[8], v66.__begin_->__r_.__value_.__l.__data_, v66.__begin_->__r_.__value_.__l.__size_);
          }

          else
          {
            v47 = *&v66.__begin_->__r_.__value_.__l.__data_;
            *&v69[24] = *(&v66.__begin_->__r_.__value_.__l + 2);
            *&v69[8] = v47;
          }

          memset(&v77, 0, sizeof(v77));
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v77, __p, &v69[32], 2uLL);
          *&v80 = 0;
          operator new();
        }
      }
    }

    v19 = v49;
    v18 = v50;
    std::string::basic_string[abi:ne200100]<0>(&v79, "x");
    __p[0] = 0;
    __p[1] = 0;
    *v69 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v79, &v80, 1uLL);
    ZinMILUnitBuilder::DeclareOperationInputs(v59, a1, __p, a3, v67);
    v66.__begin_ = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v66);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    memset(&v66, 0, sizeof(v66));
    *__p = vdupq_n_s64(1uLL);
    *v69 = *__p;
    *&v69[16] = 1;
    *&v79.__r_.__value_.__r.__words[1] = 0uLL;
    v79.__r_.__value_.__r.__words[0] = &v79.__r_.__value_.__l.__size_;
    ToZinTensorDimensions(a3, &v49, __p, &v79);
    v20 = v18 - v19;
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v79, v79.__r_.__value_.__l.__size_);
    if ((v20 >> 2) >= 1)
    {
      v21 = 0;
      do
      {
        v22 = v53.__begin_[v21];
        if ((v22 & 0x80000000) != 0)
        {
          v22 += *(v49 + v21);
          v53.__begin_[v21] = v22;
        }

        v23 = v52.__begin_[v21];
        if (v23 == -1)
        {
          v23 = *(v49 + v21) - v22;
        }

        v52.__begin_[v21] = v23;
        LODWORD(v61) = 0;
        __c[0] = 0;
        *&v79.__r_.__value_.__r.__words[1] = 0uLL;
        v79.__r_.__value_.__r.__words[0] = &v79.__r_.__value_.__l.__size_;
        ToZinIrDimension(a3, v20 >> 2, v21, &v61, &v79);
        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v79, v79.__r_.__value_.__l.__size_);
        if ((ToCharDimension(v61, __c) & 1) == 0)
        {
          ZinGetZinIrDimensionString(&v61, &v79);
          if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v79;
          }

          else
          {
            v48 = v79.__r_.__value_.__r.__words[0];
          }

          ZinAssertImpl("ANE internal error: Invalid dimension %s.", v48);
        }

        Dimension = ZinTensorPosition::GetDimension(__p, v61);
        if (Dimension != v52.__begin_[v21])
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v60.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v65, v25 + 8);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v65;
          }

          else
          {
            v26 = v65.__r_.__value_.__r.__words[0];
          }

          if (v25)
          {
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v60;
            }

            else
            {
              v27 = v60.__r_.__value_.__r.__words[0];
            }

            memmove(v26, v27, v25);
          }

          strcpy(v26 + v25, "__@view_");
          std::string::push_back(&v65, __c[0]);
          v79 = v65;
          memset(&v65, 0, sizeof(v65));
          LODWORD(v80) = v53.__begin_[v21];
          DWORD1(v80) = v52.__begin_[v21];
          DWORD2(v80) = 1;
          HIDWORD(v80) = v61;
          end = v66.__end_;
          if (v66.__end_ >= v66.__end_cap_.__value_)
          {
            v66.__end_ = std::vector<ZinMILUnitBuilder::Crop1DInfo>::__emplace_back_slow_path<ZinMILUnitBuilder::Crop1DInfo>(&v66, &v79);
            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v79.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v29 = *&v79.__r_.__value_.__l.__data_;
            v66.__end_->__r_.__value_.__r.__words[2] = v79.__r_.__value_.__r.__words[2];
            *&end->__r_.__value_.__l.__data_ = v29;
            memset(&v79, 0, sizeof(v79));
            *&end[1].__r_.__value_.__l.__data_ = v80;
            v66.__end_ = (end + 40);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }
        }

        ++v21;
      }

      while (((v20 >> 2) & 0x7FFFFFFF) != v21);
    }

    v8 = v8;
    ZinMILUnitBuilder::InsertCropND(v67[0], &v66, &v79);
    v65.__r_.__value_.__r.__words[0] = &v79;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
    __p[0] = &v66;
    std::vector<ZinMILUnitBuilder::Crop1DInfo>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    goto LABEL_106;
  }

  if (v55[1] != 6)
  {
    goto LABEL_21;
  }

  v14 = v55[0];
LABEL_17:
  v15 = *v14;
  v16 = *(v14 + 2);
  if (v15 != 1668181859 || v16 != 29793)
  {
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(&v79, "x");
  __p[0] = 0;
  __p[1] = 0;
  *v69 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v79, &v80, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v59, a1, __p, a3, v67);
  v66.__begin_ = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v66);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  memset(&v66, 0, sizeof(v66));
  __p[1] = 0;
  *v69 = 0;
  __p[0] = &__p[1];
  MILFunctionInfo::GetTensorLayout(a3, (v50 - v49) >> 2, &v66, __p);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(__p, __p[1]);
  __p[1] = 0;
  *v69 = 0;
  memset(&v69[24], 0, 32);
  *&v69[8] = 0;
  v70 = -1;
  memset(v71, 0, sizeof(v71));
  memset(v73, 0, sizeof(v73));
  v72 = 1065353216;
  v74 = 1065353216;
  __p[0] = &unk_1F1A34298;
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  *&v69[16] = 62;
  MILOpConverter::FillRingBufferUnitOffset(v54[0], &v66, a3, __p);
  value_high = v66.__end_;
  if (SHIBYTE(v66.__end_cap_.__value_) >= 0)
  {
    value_high = SHIBYTE(v66.__end_cap_.__value_);
  }

  if (value_high)
  {
    v38 = 0;
    v39 = SHIBYTE(v66.__end_cap_.__value_) >> 63;
    while (1)
    {
      LODWORD(v65.__r_.__value_.__l.__data_) = 0;
      if (v39)
      {
        begin = v66.__begin_;
      }

      else
      {
        begin = &v66;
      }

      v41 = begin[v38];
      if ((ToZinIrDimension(begin[v38], &v65) & 1) == 0)
      {
        ZinAssertImpl("ANEC internal error: invalid dimension %c", v41);
      }

      if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v73, &v65))
      {
        break;
      }

      v79.__r_.__value_.__r.__words[0] = &v65;
      v42 = std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(v73, &v65, &std::piecewise_construct, &v79);
      v43 = v52.__begin_;
      if (v42[3] || v52.__begin_[v38] != *(v49 + v38))
      {
        goto LABEL_89;
      }

      std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__erase_unique<ZinIrDimension>(v73, &v65);
LABEL_90:
      ++v38;
      v45 = SHIBYTE(v66.__end_cap_.__value_);
      v39 = SHIBYTE(v66.__end_cap_.__value_) >> 63;
      if (SHIBYTE(v66.__end_cap_.__value_) < 0)
      {
        v45 = v66.__end_;
      }

      if (v38 >= v45)
      {
        goto LABEL_93;
      }
    }

    v43 = v52.__begin_;
LABEL_89:
    v44 = v43[v38];
    v79.__r_.__value_.__r.__words[0] = &v65;
    std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(v75, &v65, &std::piecewise_construct, &v79)[3] = v44;
    goto LABEL_90;
  }

LABEL_93:
  if (*(v67[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, *v67[0], *(v67[0] + 8));
  }

  else
  {
    v46 = *v67[0];
    v77.__r_.__value_.__r.__words[2] = *(v67[0] + 16);
    *&v77.__r_.__value_.__l.__data_ = v46;
  }

  v61 = 0uLL;
  v62 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v61, &v77, &v78, 1uLL);
  v79.__r_.__value_.__r.__words[0] = &unk_1F1A3D918;
  v79.__r_.__value_.__l.__size_ = __p;
  *&v80 = &v79;
  ZinMILUnitBuilder::CreateUnit<ZinIrRingBufferReaderUnitInfo>(&v61, &v79, &v65);
  *__c = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__c);
  std::__function::__value_func<void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::~__value_func[abi:ne200100](&v79);
  *__c = &v61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__c);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  __p[0] = &unk_1F1A34298;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v75);
  __p[0] = &unk_1F1A34278;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v73);
  std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(v71);
  ZinIrUnitInfo::~ZinIrUnitInfo(__p);
  if (SHIBYTE(v66.__end_cap_.__value_) < 0)
  {
    operator delete(v66.__begin_);
  }

  __p[0] = v67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_106:
  ZinMILUnitBuilder::Finalize(v59, a3, a1, &v60.__r_.__value_.__l.__data_, v8, 1, 1);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52.__begin_)
  {
    v52.__end_ = v52.__begin_;
    operator delete(v52.__begin_);
  }

  if (v53.__begin_)
  {
    v53.__end_ = v53.__begin_;
    operator delete(v53.__begin_);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  __p[0] = &v59[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v59;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }
}

void sub_1A7490D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, uint64_t a60, char *a61)
{
  ZinIrRingBufferReaderUnitInfo::~ZinIrRingBufferReaderUnitInfo(&a61);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  a61 = &a58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  MILOpConverter::MILProducerInfo::~MILProducerInfo(&a22);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a31);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3D918;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  ZinIrRingBufferReaderUnitInfo::ZinIrRingBufferReaderUnitInfo(v3, *(a1 + 8));
  v7 = 1;
  std::__optional_storage_base<ZinIrRingBufferReaderUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrRingBufferReaderUnitInfo,false>>(a2, v3);
  if (v7 == 1)
  {
    v3[0] = &unk_1F1A34298;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v6);
    v3[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v5);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v4);
    ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  }
}

uint64_t std::__function::__func<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToRingBufferReader(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,MILOpConverter::MILProducerInfo const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinMILUnitBuilder::CreateUnit<ZinIrDynamicSliceUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F19DC9B0;
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

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v10);
  }
}

void sub_1A749153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrDynamicSliceUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ZinIrDynamicSliceUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrDynamicSliceUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ZinIrTextureUnitInfo *std::optional<ZinIrDynamicSliceUnitInfo>::~optional(ZinIrTextureUnitInfo *this)
{
  if (*(this + 208) == 1)
  {
    *this = &unk_1F19DC9B0;
    v2 = *(this + 23);
    if (v2)
    {
      *(this + 24) = v2;
      operator delete(v2);
    }

    v3 = *(this + 20);
    if (v3)
    {
      *(this + 21) = v3;
      operator delete(v3);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
  }

  return this;
}

__n128 std::__function::__func<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrDynamicSliceUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3D9F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrDynamicSliceUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v61[1], 0, 24);
  v62 = 0;
  v63 = 0u;
  v64 = 0u;
  v65 = -1;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v61[0] = &unk_1F19DC9B0;
  *v70 = 0u;
  *__p = 0u;
  v72 = 0u;
  std::optional<ZinIrDynamicSliceUnitInfo>::operator=[abi:ne200100]<ZinIrDynamicSliceUnitInfo,void>(a2, v61);
  v61[0] = &unk_1F19DC9B0;
  if (__p[1])
  {
    *&v72 = __p[1];
    operator delete(__p[1]);
  }

  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v61);
  v5 = (a2 + 184);
  v4 = *(a2 + 184);
  v7 = (a2 + 160);
  v6 = *(a2 + 160);
  *(a2 + 32) = 47;
  *(a2 + 168) = v6;
  *(a2 + 192) = v4;
  if (**(a1 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      if (*(v9 + 23) < 0)
      {
        v9 = *v9;
      }

      v10 = *(v9 + v8);
      LODWORD(v61[0]) = 0;
      if ((ToZinIrDimension(v10, v61) & 1) == 0)
      {
        ZinAssertImpl("Invalid dimension %c", v10);
      }

      v11 = *(**(a1 + 24) + 4 * v8);
      v13 = *(a2 + 168);
      v12 = *(a2 + 176);
      if (v13 >= v12)
      {
        v15 = *v7;
        v16 = v13 - *v7;
        v17 = v16 >> 4;
        v18 = (v16 >> 4) + 1;
        if (v18 >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOFourccPlaneInfo>>(a2 + 160, v20);
        }

        v21 = 16 * v17;
        *v21 = v61[0];
        *(v21 + 8) = v11;
        v14 = 16 * v17 + 16;
        v22 = (v21 - 16 * (v16 >> 4));
        memcpy(v22, v15, v16);
        v23 = *(a2 + 160);
        *(a2 + 160) = v22;
        *(a2 + 168) = v14;
        *(a2 + 176) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = v61[0];
        *(v13 + 8) = v11;
        v14 = v13 + 16;
      }

      *(a2 + 168) = v14;
      v25 = *(a2 + 192);
      v24 = *(a2 + 200);
      if (v25 >= v24)
      {
        v27 = *v5;
        v28 = v25 - *v5;
        v29 = v28 >> 4;
        v30 = (v28 >> 4) + 1;
        if (v30 >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v31 = v24 - v27;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOFourccPlaneInfo>>(a2 + 184, v32);
        }

        v33 = 16 * v29;
        *v33 = v61[0];
        *(v33 + 8) = v8;
        v26 = 16 * v29 + 16;
        v34 = (v33 - 16 * (v28 >> 4));
        memcpy(v34, v27, v28);
        v35 = *(a2 + 184);
        *(a2 + 184) = v34;
        *(a2 + 192) = v26;
        *(a2 + 200) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v25 = v61[0];
        *(v25 + 8) = v8;
        v26 = v25 + 16;
      }

      *(a2 + 192) = v26;
      v36 = v61[0];
      v37 = *(a2 + 88);
      v38 = *(a2 + 96);
      if (v37 >= v38)
      {
        v40 = *(a2 + 80);
        v41 = v37 - v40;
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v40) >> 2);
        v43 = v42 + 1;
        if (v42 + 1 > 0x1555555555555555)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v40) >> 2);
        if (2 * v44 > v43)
        {
          v43 = 2 * v44;
        }

        if (v44 >= 0xAAAAAAAAAAAAAAALL)
        {
          v43 = 0x1555555555555555;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Layer>>(a2 + 80, v43);
        }

        v45 = 12 * v42;
        *(v45 + 4) = 0;
        *(v45 + 8) = 0;
        *v45 = v36;
        v39 = 12 * v42 + 12;
        v46 = v45 - v41;
        memcpy((v45 - v41), v40, v41);
        v47 = *(a2 + 80);
        *(a2 + 80) = v46;
        *(a2 + 88) = v39;
        *(a2 + 96) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *(v37 + 1) = 0;
        *(v37 + 2) = 0;
        v39 = (v37 + 12);
        *v37 = v36;
      }

      *(a2 + 88) = v39;
      v49 = *(a2 + 112);
      v48 = *(a2 + 120);
      if (v49 >= v48)
      {
        v51 = *(a2 + 104);
        v52 = (v49 - v51) >> 3;
        if ((v52 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v53 = v48 - v51;
        v54 = v53 >> 2;
        if (v53 >> 2 <= (v52 + 1))
        {
          v54 = v52 + 1;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v55 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v54;
        }

        if (v55)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2 + 104, v55);
        }

        v56 = (8 * v52);
        *v56 = LODWORD(v61[0]) | 0x700000000;
        v50 = 8 * v52 + 8;
        v57 = *(a2 + 104);
        v58 = *(a2 + 112) - v57;
        v59 = v56 - v58;
        memcpy(v56 - v58, v57, v58);
        v60 = *(a2 + 104);
        *(a2 + 104) = v59;
        *(a2 + 112) = v50;
        *(a2 + 120) = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v49 = LODWORD(v61[0]) | 0x700000000;
        v50 = (v49 + 1);
      }

      *(a2 + 112) = v50;
      *(a2 + 152) = 0;
      ++v8;
    }

    while (v8 < **(a1 + 8));
  }
}

void sub_1A7491C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrDynamicSliceUnitInfo::~ZinIrDynamicSliceUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ConvertToDynamicSlice(MIL::IROperation const&,MILOperationInfo const&,std::vector<int> const&,std::string const&,MIL::IRDataType const&,std::vector<int>&,ZinMILUnitBuilder &,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrDynamicSliceUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrDynamicSliceUnitInfo>::operator=[abi:ne200100]<ZinIrDynamicSliceUnitInfo,void>(uint64_t a1, ZinIrTextureUnitInfo *a2)
{
  if (*(a1 + 208) == 1)
  {
    ZinIrDynamicSliceUnitInfo::operator=(a1, a2);
  }

  else
  {
    ZinIrTextureUnitInfo::ZinIrTextureUnitInfo(a1, a2);
    *a1 = &unk_1F19DC9B0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 160) = *(a2 + 10);
    *(a1 + 176) = *(a2 + 22);
    *(a2 + 20) = 0;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 25);
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a1 + 208) = 1;
  }

  return a1;
}

uint64_t ZinIrDynamicSliceUnitInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  if (a1 == a2)
  {
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    *(a1 + 64) = *(a2 + 64);
    std::vector<ZinIrCoordinateInfo>::__assign_with_size[abi:ne200100]<ZinIrCoordinateInfo*,ZinIrCoordinateInfo*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  }

  *(a1 + 152) = *(a2 + 152);
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 160, (a2 + 160));
  std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 184, (a2 + 184));
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrDynamicSliceUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::NEPool(MILOpConverter *a1, uint64_t a2, const MIL::IROperation *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x210uLL);
  v7[8] = -1;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = &unk_1F19D5990;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = -1;
  v11 = &unk_1F19CEE70;
  v19 = 1;
  v20 = 1;
  v21 = vdupq_n_s64(1uLL);
  v22 = 0x100000001;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v28 = 0x3F80000000000001;
  v15 = 2;
  MILOpConverter::FillNEPoolUnitInfo(a1, a3, &v6, v5);
}

void sub_1A74922EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  *(v28 - 136) = v28 - 96;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 136));
  __p = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a22);
  ZinIrNEPoolUnitInfo::~ZinIrNEPoolUnitInfo(&a28);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrNEPoolUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v16 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v16)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v16 == 1)
  {
    v10[0] = &unk_1F19D5990;
    ZinIrUnitInfo::~ZinIrUnitInfo(&v15);
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

void sub_1A749269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrNEPoolUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ZinIrNEPoolUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrNEPoolUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrNEPoolUnitInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 536) == 1)
  {
    *a1 = &unk_1F19D5990;
    ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 368));
    *a1 = &unk_1F19D1078;
    if (*(a1 + 352) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 240));
    }

    if (*(a1 + 232) == 1)
    {
      ZinIrUnitInfo::~ZinIrUnitInfo((a1 + 80));
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  return a1;
}

uint64_t std::__function::__func<MILOpConverter::NEPool(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEPool(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEPoolUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3DAE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::NEPool(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::NEPool(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNEPoolUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

ZinIrNEPoolUnitInfo *std::optional<ZinIrNEPoolUnitInfo>::operator=[abi:ne200100]<ZinIrNEPoolUnitInfo&,void>(ZinIrNEPoolUnitInfo *this, ZinIrNEPoolUnitInfo *a2)
{
  if (*(this + 536) == 1)
  {
    std::string::operator=((this + 8), (a2 + 8));
    *(this + 8) = *(a2 + 8);
    if (this != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
    }

    *(this + 4) = *(a2 + 4);
    std::__optional_storage_base<ZinIrGOCUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrGOCUnitInfo,false> const&>((this + 80), a2 + 80);
    std::__optional_storage_base<ZinIrNeuronUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrNeuronUnitInfo,false> const&>((this + 240), a2 + 240);
    v4 = *(a2 + 90);
    *(this + 364) = *(a2 + 364);
    *(this + 90) = v4;
    std::string::operator=((this + 376), (a2 + 376));
    *(this + 100) = *(a2 + 100);
    if (this != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 17, *(a2 + 51), *(a2 + 52), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 52) - *(a2 + 51)) >> 3));
    }

    *(this + 27) = *(a2 + 27);
    v6 = *(a2 + 31);
    v5 = *(a2 + 32);
    v7 = *(a2 + 30);
    *(this + 132) = *(a2 + 132);
    *(this + 31) = v6;
    *(this + 32) = v5;
    *(this + 30) = v7;
    v8 = *(a2 + 29);
    *(this + 28) = *(a2 + 28);
    *(this + 29) = v8;
  }

  else
  {
    ZinIrNEPoolUnitInfo::ZinIrNEPoolUnitInfo(this, a2);
    *(this + 536) = 1;
  }

  return this;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrNEPoolUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::CostVolume(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v20 = *MEMORY[0x1E69E9840];
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

  v17[0] = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v13, 0, sizeof(v13));
  std::string::basic_string[abi:ne200100]<0>(v17, "ref");
  std::string::basic_string[abi:ne200100]<0>(v19, "aux");
  memset(v11, 0, sizeof(v11));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v11, v17, &v20, 2uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v13, a1, v11, a3, v12);
  v15 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v19[i + 2]) < 0)
    {
      operator delete(v19[i]);
    }
  }

  LODWORD(v11[0]) = 0;
  LODWORD(v15) = 0;
  std::string::basic_string[abi:ne200100]<0>(v17, "direction");
  RetrieveRequiredValue<int>(a1, v17, v11, 0);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "range");
  RetrieveRequiredValue<int>(a1, v17, &v15, 0);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v16[0] = &unk_1F1A3DBD8;
  v16[1] = v11;
  v16[2] = &v15;
  v16[3] = v16;
  ZinMILUnitBuilder::CreateUnit<ZinIrCostVolumeUnitInfo>(v12, v16, v10);
  v17[0] = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  std::__function::__value_func<void ()(std::optional<ZinIrCostVolumeUnitInfo> &)>::~__value_func[abi:ne200100](v16);
  ZinMILUnitBuilder::Finalize(v13, a3, a1, &v14.__r_.__value_.__l.__data_, v8, 1, 1);
  v17[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0] = &v13[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0] = v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v17);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A7492E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  *(v30 - 104) = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v30 - 104));
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrCostVolumeUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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

void sub_1A74931AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
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

void ZinIrCostVolumeUnitInfo::ZinIrCostVolumeUnitInfo(ZinIrCostVolumeUnitInfo *this, const ZinIrCostVolumeUnitInfo *a2)
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
  *this = &unk_1F19D2398;
  *(this + 5) = *(a2 + 5);
}

void sub_1A74933A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrCostVolumeUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrCostVolumeUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrCostVolumeUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3DBD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrCostVolumeUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  memset(&v10[1], 0, 24);
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = -1;
  v10[0] = &unk_1F19D2398;
  __asm { FMOV            V0.2S, #1.0 }

  v15 = _D0;
  std::optional<ZinIrCostVolumeUnitInfo>::operator=[abi:ne200100]<ZinIrCostVolumeUnitInfo,void>(a2, v10);
  ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  a2[8] = 30;
  v9 = *(a1 + 16);
  a2[20] = **(a1 + 8);
  a2[21] = *v9;
}

uint64_t std::__function::__func<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::CostVolume(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrCostVolumeUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrCostVolumeUnitInfo>::operator=[abi:ne200100]<ZinIrCostVolumeUnitInfo,void>(uint64_t a1, uint64_t a2)
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
    *a1 = &unk_1F19D2398;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1A749370C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrCostVolumeUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ValidateOpList(const MIL::IROperation ****a1, MILFunctionInfo **a2, uint64_t a3)
{
  v190 = *MEMORY[0x1E69E9840];
  GetMILConversionMaps(a1, a2, a3);
  v110 = a1;
  v5 = **a1;
  v113 = (*a1)[1];
  if (v5 == v113)
  {
    goto LABEL_300;
  }

  v112 = (a3 + 8);
  do
  {
    v114 = v5;
    v6 = *v5;
    v121 = 0;
    v7 = v6;
    if ((RetrieveOpIdentifier(v6, &v121) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        (*(*v6 + 16))(&v174, v6);
        ValidateOpList();
      }

LABEL_318:
      v108 = 0;
      goto LABEL_319;
    }

    std::string::basic_string[abi:ne200100]<0>(&v174, "constantFolded");
    Attribute = MIL::IRObject::TryGetAttribute();
    v9 = Attribute;
    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
      if (v9)
      {
LABEL_6:
        std::string::basic_string[abi:ne200100]<0>(&v174, "");
        (*(*v6 + 16))(__p, v6);
        SetValidationStatus(a3, &v121, 1, &v174, __p, 0);
        if (v169 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        goto LABEL_271;
      }
    }

    else if (Attribute)
    {
      goto LABEL_6;
    }

    if (MILFunctionInfo::IsRootFunction(a2))
    {
      v174.__r_.__value_.__r.__words[0] = &v121;
      v10 = std::__tree<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a2 + 3), &v121, &std::piecewise_construct, &v174);
      std::vector<MILOpInfo const*>::__assign_with_size[abi:ne200100]<MILOpInfo const* const*,MILOpInfo const* const*>(v10 + 5, 0, 0, 0);
    }

    v11 = *v112;
    if (*v112)
    {
      v12 = (a3 + 8);
      do
      {
        v13 = v11[4];
        v14 = v13 >= v121;
        v15 = v13 < v121;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 != v112 && v121 >= v12[4])
      {
        v124 = &v121;
        if ((std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a3, &v121, &std::piecewise_construct, &v124)[5] & 1) == 0)
        {
          ZinAssertImpl("Operation already marked invalid");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v174, "");
    (*(*v6 + 16))(__p, v6);
    SetValidationStatus(a3, &v121, 1, &v174, __p, 0);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v174.__r_.__value_.__l.__data_);
    }

    GetMILOperationInfo(&v119, v6);
    v16 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v122, &v120);
    if (&v123 == v16)
    {
      (*(*v6 + 16))(&v174, v6);
      if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v174;
      }

      else
      {
        v97 = v174.__r_.__value_.__r.__words[0];
      }

      ZinAssertImpl("Unsupported op: %s", v97);
    }

    std::string::basic_string[abi:ne200100]<0>(&v172, "gather");
    std::string::basic_string[abi:ne200100]<0>(__p, "x");
    std::string::basic_string[abi:ne200100]<0>(v170, "indices");
    std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(&v174, &v172, __p);
    std::string::basic_string[abi:ne200100]<0>(&v138, "gather_nd");
    std::string::basic_string[abi:ne200100]<0>(v134, "x");
    std::string::basic_string[abi:ne200100]<0>(&v136, "indices");
    std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(&v178, &v138, v134);
    std::string::basic_string[abi:ne200100]<0>(&v133, "gather_along_axis");
    std::string::basic_string[abi:ne200100]<0>(&v129, "x");
    std::string::basic_string[abi:ne200100]<0>(&v131, "indices");
    std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(&v184, &v133, &v129);
    std::string::basic_string[abi:ne200100]<0>(v127, "crop_resize");
    std::string::basic_string[abi:ne200100]<0>(&v164, "x");
    std::string::basic_string[abi:ne200100]<0>(v166, "box_indices");
    std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(&v187, v127, &v164);
    std::string::basic_string[abi:ne200100]<0>(v125, "resample");
    std::string::basic_string[abi:ne200100]<0>(&v160, "x");
    std::string::basic_string[abi:ne200100]<0>(v162, "coordinates");
    std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(v189, v125, &v160);
    exception_object = v16;
    v17 = 0;
    v18 = 0;
    v140[0] = 0;
    v140[1] = 0;
    v139 = v140;
    while (1)
    {
      if (v139 == v140)
      {
        v20 = v140;
        if (!v17)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = v140;
        if (v17)
        {
          do
          {
            v20 = v17;
            v17 = v17[1];
          }

          while (v17);
        }

        else
        {
          do
          {
            v20 = v19[2];
            v74 = *v20 == v19;
            v19 = v20;
          }

          while (v74);
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20 + 4, &v174 + v18) & 0x80) == 0)
        {
          v21 = std::__tree<std::string>::__find_equal<std::string>(&v139, &v141, (&v174 + v18));
          goto LABEL_37;
        }

        if (!v140[0])
        {
LABEL_40:
          v141 = v140;
LABEL_41:
          operator new();
        }
      }

      v141 = v20;
      v21 = (v20 + 1);
LABEL_37:
      if (!*v21)
      {
        goto LABEL_41;
      }

      v18 += 72;
      if (v18 == 360)
      {
        break;
      }

      v17 = v140[0];
    }

    v22 = 360;
    do
    {
      v23 = (&v174.__r_.__value_.__l.__data_ + v22);
      if (v174.__r_.__value_.__s.__data_[v22 - 1] < 0)
      {
        operator delete(*(v23 - 3));
      }

      if (*(v23 - 25) < 0)
      {
        operator delete(*(v23 - 6));
      }

      if (SHIBYTE(v170[v22 / 8]) < 0)
      {
        operator delete(*(v23 - 9));
      }

      v22 -= 72;
    }

    while (v22);
    if (v163 < 0)
    {
      operator delete(v162[0]);
    }

    if (SHIBYTE(v161) < 0)
    {
      operator delete(v160);
    }

    if (v126 < 0)
    {
      operator delete(v125[0]);
    }

    if (v167 < 0)
    {
      operator delete(v166[0]);
    }

    if (SHIBYTE(v165) < 0)
    {
      operator delete(v164);
    }

    if (v128 < 0)
    {
      operator delete(v127[0]);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (SHIBYTE(v130) < 0)
    {
      operator delete(v129);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (v137 < 0)
    {
      operator delete(v136);
    }

    if (v135 < 0)
    {
      operator delete(v134[0]);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    if (v171 < 0)
    {
      operator delete(v170[0]);
    }

    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v173) < 0)
    {
      operator delete(v172);
    }

    v24 = v140[0];
    if (v140[0])
    {
      v25 = v140;
      do
      {
        v26 = v25;
        v27 = v24 + 4;
        v28 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24 + 4, &v120);
        if ((v28 & 0x80u) == 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = v26;
        }

        v24 = *(v24 + ((v28 >> 4) & 8));
      }

      while (v24);
      if (v25 != v140)
      {
        v29 = ((v28 & 0x80u) == 0 ? v27 : v26 + 4);
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v120, v29) & 0x80) == 0)
        {
          v30 = std::map<std::string,std::string>::at(&v139, &v120);
          std::map<std::string,std::string>::at(&v139, &v120);
          std::string::basic_string[abi:ne200100]<0>(&v129, "cast");
          std::string::basic_string[abi:ne200100]<0>(&v160, "x");
          v164 = 0uLL;
          v165 = 0;
          std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v164, &v160, v162, 1uLL);
          std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(&v174, &v129, &v164);
          std::map<std::string,std::vector<std::string>>::map[abi:ne200100](__p, &v174, 1);
          MILOpConverter::RetrieveProducers(v7, v30 + 24, a2, __p, 0, v134);
          std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(__p, __p[1]);
          *&v172 = &v175;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v172);
          if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v174.__r_.__value_.__l.__data_);
          }

          *&v172 = &v164;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v172);
          if (SHIBYTE(v161) < 0)
          {
            operator delete(v160);
          }

          if (SHIBYTE(v130) < 0)
          {
            operator delete(v129);
          }

          if (v134[0] != v134[1])
          {
            v31 = v134[0] + 16;
            v32 = *(v134[0] + 39);
            if (v32 < 0)
            {
              if (*(v134[0] + 3) != 4)
              {
                goto LABEL_142;
              }

              v31 = *v31;
            }

            else if (v32 != 4)
            {
              goto LABEL_142;
            }

            if (*v31 == 1953718627)
            {
              v129 = 0uLL;
              v130 = 0;
              ParameterType = MIL::IROperation::GetParameterType();
              v34 = MIL::IRValueType::AsTensorType(ParameterType);
              v35 = (*(*v34 + 96))(v34);
              GetMILShapeAsVector(v35, &v129);
              std::string::basic_string[abi:ne200100]<0>(&v174, "gather");
              v175 = &unk_1F1A3DC68;
              v176[2].__locale_ = &v175;
              std::string::basic_string[abi:ne200100]<0>(&v177, "gather_nd");
              v178.__r_.__value_.__l.__size_ = &unk_1F1A3DCF8;
              v178.__r_.__value_.__r.__words[2] = v30 + 24;
              v179 = &v119;
              p_size = &v178.__r_.__value_.__l.__size_;
              std::string::basic_string[abi:ne200100]<0>(&v181, "gather_along_axis");
              v183 = &unk_1F1A3DC68;
              v184.__r_.__value_.__r.__words[2] = &v183;
              std::string::basic_string[abi:ne200100]<0>(v185, "crop_resize");
              v186 = &unk_1F1A3DD78;
              v187.__r_.__value_.__r.__words[0] = &v186;
              std::string::basic_string[abi:ne200100]<0>(&v187.__r_.__value_.__l.__size_, "resample");
              v188[0] = &unk_1F1A3DDF8;
              v188[3] = v188;
              std::map<std::string,std::function<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>>::map[abi:ne200100](&v164, &v174, 5);
              v36 = 280;
              do
              {
                std::__function::__value_func<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::~__value_func[abi:ne200100](&v172 + v36);
                if (*(&v171 + v36) < 0)
                {
                  operator delete(v170[v36 / 8]);
                }

                v36 -= 56;
              }

              while (v36);
              if ((&v164 + 8) == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v164, &v120))
              {
                ZinAssertImpl("Failed to revalidate indices producer");
              }

              v37 = *(std::map<std::string,std::string>::at(&v164, &v120) + 24);
              if (!v37)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v37 + 48))(&v160);
              v38 = v160;
              if (v160 != *(&v160 + 1))
              {
                v39 = v160;
                while (*(v129 + 4 * *v39) < 2049)
                {
                  if (++v39 == *(&v160 + 1))
                  {
                    goto LABEL_138;
                  }
                }

                v40 = *v134[0];
                if (!*v134[0])
                {
                  v99 = v134[0] + 48;
                  if (*(v134[0] + 71) < 0)
                  {
                    v99 = *v99;
                  }

                  ZinAssertImpl("ANECompiler internal error: operation %s cannot be retrieved", v99);
                }

                std::string::basic_string[abi:ne200100]<0>(&v174, "x");
                v41 = MIL::IROperation::GetParameterType();
                v42 = MIL::IRValueType::AsTensorType(v41);
                v43 = (*(*v42 + 88))(v42);
                if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v174.__r_.__value_.__l.__data_);
                }

                LODWORD(v125[0]) = v43;
                OutputType = MIL::IROperation::GetOutputType(v40);
                v45 = MIL::IRValueType::AsTensorType(OutputType);
                LODWORD(v141) = (*(*v45 + 88))(v45);
                *__p = xmmword_1A75B1270;
                std::unordered_set<MIL::IRDataType>::unordered_set(&v174, __p, 4);
                *&v172 = 0xF0000000ALL;
                std::unordered_set<MIL::IRDataType>::unordered_set(__p, &v172, 2);
                if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(&v174, v125) && std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(__p, &v141))
                {
                  v127[0] = 0;
                  if ((RetrieveOpIdentifier(v40, v127) & 1) == 0)
                  {
                    (*(*v40 + 16))(&v172, v40);
                    v101 = &v172;
                    if (v173 < 0)
                    {
                      v101 = v172;
                    }

                    ZinAssertImpl("MILFramework Error: Could not retrieve operation identifier for operation %s.", v101);
                  }

                  std::operator+<char>();
                  v46 = std::string::append(&v133, " as ", 4uLL);
                  v47 = *&v46->__r_.__value_.__l.__data_;
                  v138.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
                  *&v138.__r_.__value_.__l.__data_ = v47;
                  v46->__r_.__value_.__l.__size_ = 0;
                  v46->__r_.__value_.__r.__words[2] = 0;
                  v46->__r_.__value_.__r.__words[0] = 0;
                  v48 = *(v30 + 47);
                  if (v48 >= 0)
                  {
                    v49 = (v30 + 24);
                  }

                  else
                  {
                    v49 = *(v30 + 24);
                  }

                  if (v48 >= 0)
                  {
                    v50 = *(v30 + 47);
                  }

                  else
                  {
                    v50 = *(v30 + 32);
                  }

                  v51 = std::string::append(&v138, v49, v50);
                  v52 = *&v51->__r_.__value_.__l.__data_;
                  v173 = v51->__r_.__value_.__r.__words[2];
                  v172 = v52;
                  v51->__r_.__value_.__l.__size_ = 0;
                  v51->__r_.__value_.__r.__words[2] = 0;
                  v51->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v138.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v133.__r_.__value_.__l.__data_);
                  }

                  (*(*v40 + 16))(&v138, v40);
                  SetValidationStatus(a3, v127, 0, &v172, &v138, 0);
                  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v138.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v173) < 0)
                  {
                    operator delete(v172);
                  }
                }

                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(__p);
                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v174);
                v38 = v160;
              }

LABEL_138:
              if (v38)
              {
                *(&v160 + 1) = v38;
                operator delete(v38);
              }

              std::__tree<std::__value_type<std::string,std::function<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>>>>::destroy(&v164, *(&v164 + 1));
              if (v129)
              {
                *(&v129 + 1) = v129;
                operator delete(v129);
              }
            }
          }

LABEL_142:
          v174.__r_.__value_.__r.__words[0] = v134;
          std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](&v174);
        }
      }
    }

    std::__tree<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>>>::destroy(v140[0]);
    v117 = v119;
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v118, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
    }

    else
    {
      v118 = v120;
    }

    private_1 = exception_object[2].private_1;
    if (!private_1)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*private_1 + 48))(private_1, v7, &v117, a2);
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 200))(v142, v7);
    if (*(v142[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v143, *v142[0], v142[0][1]);
    }

    else
    {
      v54 = *v142[0];
      v143.__r_.__value_.__r.__words[2] = v142[0][2];
      *&v143.__r_.__value_.__l.__data_ = v54;
    }

    v174.__r_.__value_.__r.__words[0] = v142;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v174);
    v160 = 0uLL;
    v161 = 0;
    if (MILFunctionInfo::ContainOp(a2, &v143))
    {
      v55 = MILFunctionInfo::AtOp(a2, &v143.__r_.__value_.__l.__data_);
      if (&v160 != (v55 + 8))
      {
        std::vector<MILToUnitConversion>::__assign_with_size[abi:ne200100]<MILToUnitConversion*,MILToUnitConversion*>(&v160, *(v55 + 8), *(v55 + 16), (*(v55 + 16) - *(v55 + 8)) >> 4);
      }
    }

    v56 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v120.__r_.__value_.__l.__size_;
      if (v120.__r_.__value_.__l.__size_ == 4)
      {
        v57 = v120.__r_.__value_.__r.__words[0];
        goto LABEL_160;
      }

      goto LABEL_187;
    }

    v57 = &v120;
    if (HIBYTE(v120.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_162;
    }

LABEL_160:
    if (LODWORD(v57->__r_.__value_.__l.__data_) == 1953718627)
    {
      std::string::basic_string[abi:ne200100]<0>(&v150, "x");
      v60 = MIL::IROperation::GetParameterType();
      v61 = MIL::IRValueType::AsTensorType(v60);
      v62 = (*(*v61 + 88))(v61);
      if (v151 < 0)
      {
        operator delete(v150);
      }

      v63 = MIL::IROperation::GetOutputType(v7);
      v64 = MIL::IRValueType::AsTensorType(v63);
      v65 = (*(*v64 + 88))(v64);
      v149 = 0;
      ToZinTensorFormat(v62, &v149 + 1);
      ToZinTensorFormat(v65, &v149);
      if (IsFormatDMAConvertibleToFP16(HIDWORD(v149)) && IsPrimaryFormat(v149))
      {
        std::string::basic_string[abi:ne200100]<0>(&v147, "x");
        ArgumentName = MIL::IROperation::GetArgumentName();
        if (v148 < 0)
        {
          operator delete(v147);
        }

        if (MILFunctionInfo::ContainOp(a2, ArgumentName))
        {
          v67 = MILFunctionInfo::AtOp(a2, ArgumentName);
          v68 = *v67;
          v69 = IsMemoryLayoutLiveInOp<MIL::IRTensorBufferValueType>(*v67);
          if ((v69 | IsMemoryLayoutLiveInOp<MIL::IRCircularBufferValueType>(v68)))
          {
            std::string::basic_string[abi:ne200100]<0>(&v144, "input");
            v70 = MIL::IROperation::GetArgumentName();
            if (*(v70 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v146, *v70, *(v70 + 8));
            }

            else
            {
              v71 = *v70;
              v146.__r_.__value_.__r.__words[2] = *(v70 + 16);
              *&v146.__r_.__value_.__l.__data_ = v71;
            }

            if (v145 < 0)
            {
              operator delete(v144);
            }

            if (a2 + 7 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a2 + 6), &v146))
            {
              v134[0] = 0;
              if ((RetrieveOpIdentifier(v68, v134) & 1) == 0)
              {
                (*(*v68 + 16))(&v174, v68);
                if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v100 = &v174;
                }

                else
                {
                  v100 = v174.__r_.__value_.__r.__words[0];
                }

                ZinAssertImpl("MILFramework error: Could not retrieve operation identifier for operation %s.", v100);
              }

              std::string::basic_string[abi:ne200100]<0>(&v174, "");
              (*(**v67 + 16))(__p);
              SetValidationStatus(a3, v134, 1, &v174, __p, 1);
              if (v169 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v174.__r_.__value_.__l.__data_);
              }
            }

            if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v146.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v56 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
      if ((*(&v120.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_186;
      }

LABEL_162:
      v59 = &v120;
      if (v56 != 6)
      {
        goto LABEL_218;
      }

LABEL_189:
      data = v59->__r_.__value_.__l.__data_;
      v73 = WORD2(v59->__r_.__value_.__r.__words[0]);
      v74 = data == 1769170290 && v73 == 25978;
      if (!v74)
      {
        goto LABEL_218;
      }

      std::string::basic_string[abi:ne200100]<0>(&v174, "shape");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      v76 = ParameterValue;
      if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v174.__r_.__value_.__l.__data_);
        if (v76)
        {
          goto LABEL_218;
        }
      }

      else if (ParameterValue)
      {
        goto LABEL_218;
      }

      std::string::basic_string[abi:ne200100]<0>(&v155, "shape");
      v77 = MIL::IROperation::GetArgumentName();
      if (v156 < 0)
      {
        operator delete(v155);
      }

      if (!MILFunctionInfo::ContainOp(a2, v77))
      {
        ZinAssertImpl("Missing dynamic shape resize shape input");
      }

      v78 = MILFunctionInfo::AtOp(a2, v77);
      v79 = *v78;
      GetMILOperationInfo(&v152, *v78);
      if (v154 < 0)
      {
        if (v153[1] != 5)
        {
          goto LABEL_282;
        }

        v80 = v153[0];
      }

      else
      {
        v80 = v153;
        if (v154 != 5)
        {
          goto LABEL_282;
        }
      }

      v81 = *v80;
      v82 = *(v80 + 4);
      if (v81 == 1885431923 && v82 == 101)
      {
        v134[0] = 0;
        if ((RetrieveOpIdentifier(v79, v134) & 1) == 0)
        {
          (*(*v79 + 16))(&v174, v79);
          if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v98 = &v174;
          }

          else
          {
            v98 = v174.__r_.__value_.__r.__words[0];
          }

          ZinAssertImpl("MILFramework error: Could not retrieve operation identifier for operation %s.", v98);
        }

        std::string::basic_string[abi:ne200100]<0>(&v174, "");
        (*(**v78 + 16))(__p);
        SetValidationStatus(a3, v134, 1, &v174, __p, 1);
        if (v169 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        if (v154 < 0)
        {
          operator delete(v153[0]);
        }

        goto LABEL_218;
      }

LABEL_282:
      ZinAssertImpl("Dynamic shape resize must have shape op input");
    }

    if ((*(&v120.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_162;
    }

LABEL_186:
    size = v120.__r_.__value_.__l.__size_;
LABEL_187:
    if (size == 6)
    {
      v59 = v120.__r_.__value_.__r.__words[0];
      goto LABEL_189;
    }

LABEL_218:
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v84 = &v120;
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) != 10)
      {
        goto LABEL_239;
      }

LABEL_223:
      v85 = v84->__r_.__value_.__r.__words[0];
      v86 = LOWORD(v84->__r_.__value_.__r.__words[1]);
      if (v85 == 0x6174735F64616572 && v86 == 25972)
      {
        std::string::basic_string[abi:ne200100]<0>(&v157, "input");
        v88 = MIL::IROperation::GetArgumentName();
        if (*(v88 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v159, *v88, *(v88 + 8));
        }

        else
        {
          v89 = *v88;
          v159.__r_.__value_.__r.__words[2] = *(v88 + 16);
          *&v159.__r_.__value_.__l.__data_ = v89;
        }

        if (v158 < 0)
        {
          operator delete(v157);
        }

        MILFunctionInfo::GetTensorName(a2, &v159.__r_.__value_.__l.__data_, 0, &v174);
        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v159.__r_.__value_.__l.__data_);
        }

        v159 = v174;
        if (a2 + 35 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a2 + 34), &v159))
        {
          v90 = std::map<std::string,std::string>::at((a2 + 34), &v159);
          RevalidateReadStateProducerOpsFromWriteStateOps((v90 + 32), a2, a3);
        }

        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v159.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_239;
    }

    if (v120.__r_.__value_.__l.__size_ == 10)
    {
      v84 = v120.__r_.__value_.__r.__words[0];
      goto LABEL_223;
    }

LABEL_239:
    for (i = v160; i != *(&v160 + 1); i += 16)
    {
      if (*(*i + 32) == 62)
      {
        std::string::basic_string[abi:ne200100]<0>(v134, "concat");
        std::string::basic_string[abi:ne200100]<0>(&v164, "values");
        v129 = 0uLL;
        v130 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v129, &v164, v166, 1uLL);
        std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(&v174, v134, &v129);
        std::map<std::string,std::vector<std::string>>::map[abi:ne200100](__p, &v174, 1);
        v142[0] = &v175;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v142);
        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        v142[0] = &v129;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v142);
        if (SHIBYTE(v165) < 0)
        {
          operator delete(v164);
        }

        if (v135 < 0)
        {
          operator delete(v134[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v134, "begin");
        MILOpConverter::RetrieveProducers(v7, v134, a2, __p, 0, &v174);
        if (v135 < 0)
        {
          operator delete(v134[0]);
        }

        *&v164 = 0;
        v93 = v174.__r_.__value_.__l.__size_;
        for (j = v174.__r_.__value_.__r.__words[0]; j != v93; j += 72)
        {
          if (*j)
          {
            if ((RetrieveOpIdentifier(*j, &v164) & 1) == 0)
            {
              v96 = (j + 16);
              if (*(j + 39) < 0)
              {
                v96 = *v96;
              }

              ZinAssertImpl("MILFramework error: Could not retrieve operation identifier for operation %s.", v96);
            }

            std::string::basic_string[abi:ne200100]<0>(v134, "");
            (*(**j + 16))(&v129);
            SetValidationStatus(a3, &v164, 1, v134, &v129, 1);
            if (SHIBYTE(v130) < 0)
            {
              operator delete(v129);
            }

            if (v135 < 0)
            {
              operator delete(v134[0]);
            }
          }
        }

        v134[0] = &v174;
        std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](v134);
        std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(__p, __p[1]);
        break;
      }
    }

    v174.__r_.__value_.__r.__words[0] = &v160;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v174);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 200))(__p, v7);
    v94 = __p[0];
    v95 = __p[1];
    while (v94 != v95)
    {
      if (!MILFunctionInfo::ContainOp(a2, v94))
      {
        v174.__r_.__value_.__r.__words[0] = v7;
        v175 = 0;
        *&v174.__r_.__value_.__r.__words[1] = 0uLL;
        MILFunctionInfo::InsertOp(a2, v94, &v174);
        v134[0] = &v174.__r_.__value_.__r.__words[1];
        std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v134);
      }

      v94 += 3;
    }

    v174.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v174);
LABEL_271:
    v5 = v114 + 2;
  }

  while (v114 + 2 != v113);
LABEL_300:
  v102 = a2[34];
  if (v102 != (a2 + 35))
  {
    v115 = *MEMORY[0x1E69E54D8];
    v103 = *(MEMORY[0x1E69E54D8] + 64);
    v104 = *(MEMORY[0x1E69E54D8] + 72);
    do
    {
      if ((*(v102 + 80) & 1) == 0)
      {
        v105 = *(*(v102 + 12) - 8);
        *&v129 = 0;
        if ((RetrieveOpIdentifier(v105, &v129) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            (*(*v105 + 16))(&v174, v105);
            ValidateOpList();
          }

          goto LABEL_318;
        }

        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v174);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v174.__r_.__value_.__r.__words[2], "Error in materializing terminal RingBufferWriter: ", 50);
        MILOpConverter::ReadStateTerminalRBW(a2, v102 + 56);
        RevalidateReadStateProducerOpsFromWriteStateOps(v102 + 11, a2, a3);
        v174.__r_.__value_.__r.__words[0] = v115;
        *(v174.__r_.__value_.__r.__words + *(v115 - 24)) = v103;
        v174.__r_.__value_.__r.__words[2] = v104;
        v175 = (MEMORY[0x1E69E5548] + 16);
        if (SHIBYTE(p_size) < 0)
        {
          operator delete(v178.__r_.__value_.__r.__words[2]);
        }

        v175 = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(v176);
        std::iostream::~basic_iostream();
        MEMORY[0x1AC559F60](&v182);
      }

      v106 = *(v102 + 1);
      if (v106)
      {
        do
        {
          v107 = v106;
          v106 = *v106;
        }

        while (v106);
      }

      else
      {
        do
        {
          v107 = *(v102 + 2);
          v74 = *v107 == v102;
          v102 = v107;
        }

        while (!v74);
      }

      v102 = v107;
    }

    while (v107 != (a2 + 35));
  }

  RemoveConstantFoldedOps(v110, a2);
  v108 = 1;
LABEL_319:
  std::__tree<std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>>>::destroy(v122, v123);
  return v108;
}

void sub_1A749637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x410]);
  std::__tree<std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(MIL::IROperation const&,MILOperationInfo,MILFunctionInfo &)>>>>::destroy(&a47, a48);
  _Unwind_Resume(v48);
}

void TryBasicTensorInfoRecord(const MIL::IROperation *a1, MILFunctionInfo *a2)
{
  v3 = (*(*a1 + 176))(a1);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    v14 = vdupq_n_s64(1uLL);
    do
    {
      v34 = v14;
      v35 = v14;
      v36 = 1;
      v33 = 0;
      Type = MIL::IRNamedValueType::GetType(*v4);
      v7 = (*(*Type + 24))(Type);
      if (!v7)
      {
        ZinAssertImpl("Error: Cannot retrieve operation output information.");
      }

      v8 = (*(*v7 + 96))(v7);
      v22[0] = 0uLL;
      v21 = v22;
      ToZinTensorDimensions(a2, v8, &v34, &v21);
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v21, *&v22[0]);
      v9 = MIL::IRNamedValueType::GetType(*v4);
      v10 = MIL::IRValueType::AsTensorType(v9);
      v11 = (*(*v10 + 88))(v10);
      ToZinTensorFormat(v11, &v33);
      Name = MIL::IRNamedValueType::GetName(*v4);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, *Name, *(Name + 8));
      }

      else
      {
        v13 = *Name;
        v32.__r_.__value_.__r.__words[2] = *(Name + 16);
        *&v32.__r_.__value_.__l.__data_ = v13;
      }

      v15[0] = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v19 = 5;
      v20 = 0;
      LODWORD(v21) = v33;
      v22[0] = v34;
      v22[1] = v35;
      v23 = v36;
      v24 = 0;
      v25 = 0;
      v26 = vdupq_n_s64(1uLL);
      v27 = 0;
      v28 = 0;
      ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v29, v15);
      MILFunctionInfo::RecordTensorInfo(a2, &v32, &v21);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_1A7496868(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A7496838);
}

void RevalidateReadStateProducerOpsFromWriteStateOps(const MIL::IROperation ***a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v32, "concat");
  std::string::basic_string[abi:ne200100]<0>(v48, "values");
  memset(v31, 0, sizeof(v31));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v31, v48, &v50, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(&v50, v32, v31);
  std::string::basic_string[abi:ne200100]<0>(v29, "gather");
  std::string::basic_string[abi:ne200100]<0>(v45, "indices");
  std::string::basic_string[abi:ne200100]<0>(v47, "x");
  memset(v28, 0, sizeof(v28));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v28, v45, v48, 2uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(v51, v29, v28);
  std::string::basic_string[abi:ne200100]<0>(v26, "slice_by_index");
  std::string::basic_string[abi:ne200100]<0>(v43, "x");
  memset(v25, 0, sizeof(v25));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v25, v43, v45, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(v52, v26, v25);
  std::string::basic_string[abi:ne200100]<0>(v23, "add");
  std::string::basic_string[abi:ne200100]<0>(v40, "x");
  std::string::basic_string[abi:ne200100]<0>(v42, "y");
  memset(v22, 0, sizeof(v22));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v22, v40, v43, 2uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(v53, v23, v22);
  std::string::basic_string[abi:ne200100]<0>(v20, "slice_update");
  std::string::basic_string[abi:ne200100]<0>(v38, "begin");
  std::string::basic_string[abi:ne200100]<0>(v39, "end");
  memset(v19, 0, sizeof(v19));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v19, v38, v40, 2uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(v54, v20, v19);
  std::string::basic_string[abi:ne200100]<0>(v17, "tensor_to_tensor_buffer");
  std::string::basic_string[abi:ne200100]<0>(__p, "input");
  memset(v16, 0, sizeof(v16));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v16, __p, v38, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(v55, v17, v16);
  std::map<std::string,std::vector<std::string>>::map[abi:ne200100](v34, &v50, 6);
  v6 = 36;
  do
  {
    v35 = &v48[v6];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
    if (SHIBYTE(v47[v6 + 2]) < 0)
    {
      operator delete(v47[v6]);
    }

    v6 -= 6;
  }

  while (v6 * 8);
  v35 = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v17[0] = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v39[i + 2]) < 0)
    {
      operator delete(v38[i + 3]);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v38[0] = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v42[j + 2]) < 0)
    {
      operator delete(v42[j]);
    }
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v40[0] = v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v40[0] = v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  for (k = 0; k != -6; k -= 3)
  {
    if (SHIBYTE(v47[k + 2]) < 0)
    {
      operator delete(v47[k]);
    }
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v45[0] = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v45);
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    do
    {
      v12 = *v10;
      v38[0] = 0;
      if ((RetrieveOpIdentifier(v12, v38) & 1) == 0)
      {
        ZinAssertImpl("MILFramework error: Could not retrieve operation identifier for write_state operation.");
      }

      std::string::basic_string[abi:ne200100]<0>(&v50, "");
      (*(*v12 + 16))(v45, v12);
      SetValidationStatus(a3, v38, 1, &v50, v45, 1);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(v45, "data");
      MILOpConverter::RetrieveProducers(v12, v45, a2, v34, 0, &v50);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      size = v50.__r_.__value_.__l.__size_;
      for (m = v50.__r_.__value_.__r.__words[0]; m != size; m += 72)
      {
        if (*m)
        {
          if ((RetrieveOpIdentifier(*m, v38) & 1) == 0)
          {
            v15 = (m + 16);
            if (*(m + 39) < 0)
            {
              v15 = *v15;
            }

            ZinAssertImpl("MILFramework error: Could not retrieve operation identifier for operation %s.", v15);
          }

          std::string::basic_string[abi:ne200100]<0>(v45, "");
          (*(**m + 16))(v40);
          SetValidationStatus(a3, v38, 1, v45, v40, 1);
          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          if (v46 < 0)
          {
            operator delete(v45[0]);
          }
        }
      }

      v45[0] = &v50;
      std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](v45);
      ++v10;
    }

    while (v10 != v11);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(v34, v34[1]);
}

void sub_1A7496F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  v76 = -288;
  v77 = v74;
  do
  {
    v77 = std::pair<std::string const,std::vector<std::string>>::~pair(v77) - 48;
    v76 += 48;
  }

  while (v76);
  a65 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a65);
  if (a67 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  a14 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  v78 = &a69;
  v79 = -48;
  v80 = &a69;
  while (1)
  {
    v81 = *v80;
    v80 -= 24;
    if (v81 < 0)
    {
      operator delete(*(v78 - 23));
    }

    v78 = v80;
    v79 += 24;
    if (!v79)
    {
      if (a28 < 0)
      {
        operator delete(a23);
      }

      a68 = &a29;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a68);
      v82 = &a71;
      v83 = -48;
      v84 = &a71;
      while (1)
      {
        v85 = *v84;
        v84 -= 24;
        if (v85 < 0)
        {
          operator delete(*(v82 - 23));
        }

        v82 = v84;
        v83 += 24;
        if (!v83)
        {
          if (a37 < 0)
          {
            operator delete(a32);
          }

          a70 = &a38;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a70);
          if (a73 < 0)
          {
            operator delete(a72);
          }

          if (a46 < 0)
          {
            operator delete(a41);
          }

          a70 = &a47;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a70);
          v86 = &STACK[0x20F];
          v87 = -48;
          v88 = &STACK[0x20F];
          while (1)
          {
            v89 = *v88;
            v88 -= 3;
            if (v89 < 0)
            {
              operator delete(*(v86 - 23));
            }

            v86 = v88;
            v87 += 24;
            if (!v87)
            {
              if (a55 < 0)
              {
                operator delete(a50);
              }

              a74 = &a56;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a74);
              if (SLOBYTE(STACK[0x227]) < 0)
              {
                operator delete(STACK[0x210]);
              }

              if (a64 < 0)
              {
                operator delete(a59);
              }

              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void ValidateMILConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, MILFunctionInfo **a7)
{
  ConvertLiveInputs(a4, a7);
  v11 = (*(*a5 + 56))(a5);
  if ((ValidateOpList(v11, a7, a6) & 1) == 0)
  {
    ZinAssertImpl("ANE internal validation error: Cannot convert the MIL operation list.");
  }

  ConvertLiveOutputs(a4, a5, a7, a6);
}

void sub_1A7497380(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1A74973A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A7497318);
}

uint64_t ValidateMILProgram(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, ZinIrCompilerParameters *a5, uint64_t a6)
{
  v110 = *MEMORY[0x1E69E9840];
  ZinIrHalCreator::CreateHalFromString(a5 + 9, &v82);
  if (v82)
  {
    v80 = a6;
    v12 = (*(*v82 + 16))(v82);
    std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(a4, *(a4 + 8));
    *a4 = a4 + 8;
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    {
      ValidateMILProgram(MIL::IRProgram const*,std::string const&,std::string const&,std::map<unsigned long long,ValidateEntry> &,ZinIrCompilerParameters &,std::string const&)::backing = &unk_1F19EEAA0;
      *algn_1EB291178 = 0;
      dword_1EB291180 = -1;
      std::string::basic_string[abi:ne200100]<0>(&algn_1EB291184[4], "");
      ValidateMILProgram(MIL::IRProgram const*,std::string const&,std::string const&,std::map<unsigned long long,ValidateEntry> &,ZinIrCompilerParameters &,std::string const&)::backing = &unk_1F19E2DF8;
      __cxa_atexit(ZinIrFileBacking::~ZinIrFileBacking, &ValidateMILProgram(MIL::IRProgram const*,std::string const&,std::string const&,std::map<unsigned long long,ValidateEntry> &,ZinIrCompilerParameters &,std::string const&)::backing, &dword_1A617D000);
    }

    ZinIrPlistCompilationStatus::ZinIrPlistCompilationStatus(v81);
    if (*(a3 + 23) >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = a3[1];
    }

    v14 = __p;
    std::string::basic_string[abi:ne200100](__p, v13 + 14);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a3 + 23) >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, "mil_validation");
    v16 = ANECCreateFileBacking(__p, &ValidateMILProgram(MIL::IRProgram const*,std::string const&,std::string const&,std::map<unsigned long long,ValidateEntry> &,ZinIrCompilerParameters &,std::string const&)::backing, v81);
    v17 = v16;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v17)
      {
LABEL_15:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ValidateMILProgram();
        }

LABEL_17:
        v18 = 0;
LABEL_18:
        ZinIrPlistCompilationStatus::~ZinIrPlistCompilationStatus(v81);
        goto LABEL_21;
      }
    }

    else if (v16)
    {
      goto LABEL_15;
    }

    if (!a1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ValidateMILProgram();
      }

      goto LABEL_17;
    }

    if ((ANECSupportsMIL(a5 + 9) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ValidateMILProgram();
      }

      goto LABEL_17;
    }

    std::__tree<std::__value_type<unsigned long long,ValidateEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ValidateEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ValidateEntry>>>::destroy(a4, *(a4 + 8));
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = a4 + 8;
    v20 = (*(*a1 + 40))(a1);
    v105 = 0;
    v106 = 0;
    if ((RetrieveFunctionAndBlock(v20, a1, a2, &v106, &v105) & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v74 = a2;
      }

      else
      {
        v74 = *a2;
      }

      ZinAssertImpl("ANE internal validation error: Cannot retrieve MILFramework function and block from function name %s", v74);
    }

    MIL::Attributes::FlexibleShapeInfo::Make();
    EnumeratedShapes = MIL::Attributes::FlexibleShapeInfo::GetEnumeratedShapes(v104);
    MIL::Attributes::FlexibleShapeInfo::TryGetRangeShapes(&v102, v104);
    std::string::basic_string[abi:ne200100]<0>(__p, "FlexibleShapeInformation");
    MIL::IRObject::TryGetAttributeSharedPtr();
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (!v102 && v100 && !EnumeratedShapes[3])
    {
      v26 = (*(*v105 + 56))(v105);
      std::string::basic_string[abi:ne200100]<0>(__p, "MIL Syntax Error: Program has FlexibleShapeInformation but doesn't have RangeDims is invalid");
      MarkAllOpsAsInvalid(v26, a4, __p);
      goto LABEL_51;
    }

    if (!*((*(*v106 + 128))(v106) + 16))
    {
      v27 = (*(*v105 + 56))(v105);
      std::string::basic_string[abi:ne200100]<0>(__p, "ANE cannot support MIL program with no live-in");
      MarkAllOpsAsInvalid(v27, a4, __p);
LABEL_51:
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v28 = __p[0].__r_.__value_.__r.__words[0];
LABEL_153:
        operator delete(v28);
        goto LABEL_154;
      }

      goto LABEL_154;
    }

    if (v102)
    {
      ZinIrCompilerParameters::setEnableDynamicShapes(a5, 1);
    }

    v95[0] = v12;
    v95[1] = a5;
    v99 = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    if (EnumeratedShapes[3])
    {
      for (i = EnumeratedShapes[2]; i; i = *i)
      {
        MEMORY[0x1AC5590F0](&v91, a1);
        v23 = (i + 2);
        if (!std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(EnumeratedShapes, i + 2))
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        MIL::Passes::PropagateInputTensorShapes();
        if ((MIL::Passes::TypeInferenceResult::IsGood(__p) & 1) == 0)
        {
          if (*(i + 39) < 0)
          {
            v23 = *v23;
          }

          MIL::MILResult::GetMessageWithLocation(&v107, __p);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &v107;
          }

          else
          {
            v73 = v107.__r_.__value_.__r.__words[0];
          }

          ZinAssertImpl("MILFramework error: Could not propagate input tensor shapes %s: %s.", v23, v73);
        }

        MIL::Transform::ProgramTransformer::GetProgram(&v107, &v91);
        ValidateDerivedMILProgram(v107.__r_.__value_.__l.__data_, v95, a2, (i + 2), a3, a4, v80, 0, 0);
        v24 = v107.__r_.__value_.__r.__words[0];
        v107.__r_.__value_.__r.__words[0] = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        MEMORY[0x1AC5590A0](__p);
        MEMORY[0x1AC559100](&v91);
      }

      goto LABEL_151;
    }

    if (!v102)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      ValidateDerivedMILProgram(a1, v95, a2, __p, a3, a4, v80, 0, 0);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

LABEL_151:
      if (SHIBYTE(v98) < 0)
      {
        v28 = v96;
        goto LABEL_153;
      }

LABEL_154:
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v101);
      }

      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }

      std::unique_ptr<MIL::Attributes::FlexibleShapeInfo>::~unique_ptr[abi:ne200100](&v104);
      v18 = 1;
      goto LABEL_18;
    }

    v75 = a1;
    v91 = 0u;
    v92 = 0u;
    v93 = 1065353216;
    v88 = 0u;
    v89 = 0u;
    v90 = 1065353216;
    v29 = *(v102 + 16);
    if (!v29)
    {
      goto LABEL_174;
    }

    v30 = 1;
    v31 = &std::piecewise_construct;
    do
    {
      v32 = a2;
      memset(__p, 0, 24);
      memset(&v107, 0, sizeof(v107));
      std::vector<ZinANELayer const*>::reserve(__p, (v29[6] - v29[5]) >> 3);
      std::vector<ZinANELayer const*>::reserve(&v107, (v29[6] - v29[5]) >> 3);
      v33 = v31;
      v35 = v29[5];
      v34 = v29[6];
      while (v35 != v34)
      {
        v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make();
        std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](__p, &v87);
        v87.__r_.__value_.__r.__words[0] = MIL::IRConstantDimension::Make();
        std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](&v107, &v87);
        v36 = *v35;
        v37 = v35[1];
        v35 += 2;
        v30 &= v36 == v37;
      }

      v87.__r_.__value_.__r.__words[0] = (v29 + 2);
      v31 = v33;
      v38 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v88, v29 + 2, v33, &v87, &v86) + 5);
      if (v38 != &v107)
      {
        std::vector<ZinANELayer const*>::__assign_with_size[abi:ne200100]<ZinANELayer const**,ZinANELayer const**>(v38, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_, (v107.__r_.__value_.__l.__size_ - v107.__r_.__value_.__r.__words[0]) >> 3);
      }

      v87.__r_.__value_.__r.__words[0] = (v29 + 2);
      v39 = (std::__hash_table<std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<ZinBasicBlockInLayer *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v91, v29 + 2, v33, &v87, &v86) + 5);
      if (v39 != __p)
      {
        std::vector<ZinANELayer const*>::__assign_with_size[abi:ne200100]<ZinANELayer const**,ZinANELayer const**>(v39, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_, (__p[0].__r_.__value_.__l.__size_ - __p[0].__r_.__value_.__r.__words[0]) >> 3);
      }

      if (v107.__r_.__value_.__r.__words[0])
      {
        v107.__r_.__value_.__l.__size_ = v107.__r_.__value_.__r.__words[0];
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      a2 = v32;
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v29 = *v29;
    }

    while (v29);
    if (!*(&v92 + 1) || !*(&v89 + 1))
    {
LABEL_174:
      ZinAssertImpl("MILFramework Error: failed to get live in shapes from RangeDims");
    }

    memset(&v87, 0, sizeof(v87));
    v40 = (*(*v106 + 128))(v106);
    v41 = *v40;
    v76 = v40 + 1;
    if (*v40 != v40 + 1)
    {
      do
      {
        v42 = (*(*v41[7] + 24))(v41[7]);
        if (!v42)
        {
          break;
        }

        v43 = (*(*v42 + 96))(v42);
        if (std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(&v88, v41 + 4) && std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(&v91, v41 + 4))
        {
          v78 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(&v88, v41 + 4);
          if (!v78 || (v44 = std::__hash_table<std::__hash_value_type<std::string,PerfTracerCategory>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PerfTracerCategory>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PerfTracerCategory>>>::find<std::string>(&v91, v41 + 4)) == 0)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v45 = v43[1];
          v46 = v45 - *v43;
          if (v46 != v78[6] - v78[5] || v46 != v44[6] - v44[5])
          {
            goto LABEL_98;
          }

          v77 = v44;
          if (v45 != *v43)
          {
            v47 = 0;
            v48 = v46 >> 3;
            if (v48 <= 1)
            {
              v48 = 1;
            }

            v79 = v48;
            while (1)
            {
              v49 = (*(**(*v43 + 8 * v47) + 16))(*(*v43 + 8 * v47));
              if (v49)
              {
                v50 = (*(*v49 + 48))(v49);
                v51 = MIL::IRDimension::AsConstant(*(v78[5] + v47));
                v52 = (*(*v51 + 48))(v51);
                v53 = MIL::IRDimension::AsConstant(*(v77[5] + v47));
                v54 = (*(*v53 + 48))(v53);
                v55 = v50 == v52 && v50 == v54;
                if (!v55)
                {
                  break;
                }
              }

              if (v79 == ++v47)
              {
                goto LABEL_89;
              }
            }

LABEL_98:
            std::operator+<char>();
            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }

            v87 = __p[0];
            v58 = (*(*v105 + 56))(v105);
            std::operator+<char>();
            MarkAllOpsAsInvalid(v58, a4, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            break;
          }
        }

LABEL_89:
        v56 = v41[1];
        if (v56)
        {
          do
          {
            v57 = v56;
            v56 = *v56;
          }

          while (v56);
        }

        else
        {
          do
          {
            v57 = v41[2];
            v55 = *v57 == v41;
            v41 = v57;
          }

          while (!v55);
        }

        v41 = v57;
      }

      while (v57 != v76);
    }

    if (v30)
    {
      ZinIrCompilerParameters::setEnableDynamicShapes(a5, 0);
      MEMORY[0x1AC5590F0](&v84, v75);
      MIL::Passes::PropagateInputTensorShapes();
      if (MIL::Passes::TypeInferenceResult::IsGood(__p))
      {
        memset(&v107, 0, sizeof(v107));
        MilTransformerGetProgramWithExceptionHandling(&v84, &v85);
        v59 = v85;
        if (v85)
        {
          std::string::basic_string[abi:ne200100]<0>(&v86, "");
          ValidateDerivedMILProgram(v59, v95, a2, &v86, a3, a4, v80, 0, 0);
        }

        else
        {
          v67 = (*(*v105 + 56))(v105);
          std::operator+<char>();
          MarkAllOpsAsInvalid(v67, a4, &v86);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        v68 = v85;
        v85 = 0;
        if (v68)
        {
          (*(*v68 + 8))(v68);
        }

        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }

        v63 = v107.__r_.__value_.__r.__words[0];
      }

      else
      {
        v62 = (*(*v105 + 56))(v105);
        MIL::MILResult::GetMessageWithLocation(&v86, __p);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("MILFramework Error: Could not propagate AOT MIL liveins with same MIN and MAX shapes: ", &v86, &v107);
        MarkAllOpsAsInvalid(v62, a4, &v107);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }

        v63 = v86.__r_.__value_.__r.__words[0];
      }

      operator delete(v63);
LABEL_133:
      MEMORY[0x1AC5590A0](__p);
      MEMORY[0x1AC559100](&v84);
LABEL_148:
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::~__hash_table(&v88);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::~__hash_table(&v91);
      goto LABEL_151;
    }

    *&v107.__r_.__value_.__r.__words[1] = 0u;
    v108 = 0u;
    LODWORD(v107.__r_.__value_.__l.__data_) = 0;
    v109 = 1065353216;
    MEMORY[0x1AC5590F0](&v85, v75);
    MIL::Passes::PropagateInputTensorShapes();
    if (MIL::Passes::TypeInferenceResult::IsGood(__p))
    {
      memset(&v86, 0, sizeof(v86));
      MilTransformerGetProgramWithExceptionHandling(&v85, &v83);
      v60 = v83;
      if (v83)
      {
        std::string::basic_string[abi:ne200100]<0>(&v84, "");
        ValidateDerivedMILProgram(v60, v95, a2, &v84, a3, a4, v80, v102, &v107);
      }

      else
      {
        v64 = (*(*v105 + 56))(v105);
        std::operator+<char>();
        MarkAllOpsAsInvalid(v64, a4, &v84);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v65 = v83;
      v83 = 0;
      if (v65)
      {
        (*(*v65 + 8))(v65);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      MEMORY[0x1AC5590A0](__p);
      MEMORY[0x1AC559100](&v85);
      if (!v60)
      {
        goto LABEL_147;
      }

      MEMORY[0x1AC5590F0](&v85, v75);
      MIL::Passes::PropagateInputTensorShapes();
      if (MIL::Passes::TypeInferenceResult::IsGood(__p))
      {
        memset(&v86, 0, sizeof(v86));
        MilTransformerGetProgramWithExceptionHandling(&v85, &v83);
        v66 = v83;
        if (v83)
        {
          std::string::basic_string[abi:ne200100]<0>(&v84, "");
          ValidateDerivedMILProgram(v66, v95, a2, &v84, a3, a4, v80, v102, &v107);
        }

        else
        {
          v71 = (*(*v105 + 56))(v105);
          std::operator+<char>();
          MarkAllOpsAsInvalid(v71, a4, &v84);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        v72 = v83;
        v83 = 0;
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

        v70 = v86.__r_.__value_.__r.__words[0];
LABEL_139:
        operator delete(v70);
LABEL_146:
        MEMORY[0x1AC5590A0](__p);
        MEMORY[0x1AC559100](&v85);
LABEL_147:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v107.__r_.__value_.__l.__size_);
        goto LABEL_148;
      }

      v69 = (*(*v105 + 56))(v105);
      MIL::MILResult::GetMessageWithLocation(&v84, __p);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("MILFramework Error: Could not propagate AOT MIL MAX shapes: ", &v84, &v86);
      MarkAllOpsAsInvalid(v69, a4, &v86);
    }

    else
    {
      v61 = (*(*v105 + 56))(v105);
      MIL::MILResult::GetMessageWithLocation(&v84, __p);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("MILFramework Error: Could not propagate AOT MIL MIN shapes: ", &v84, &v86);
      MarkAllOpsAsInvalid(v61, a4, &v86);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

    v70 = v84.__r_.__value_.__r.__words[0];
    goto LABEL_139;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

  ValidateMILProgram();
  v18 = 0;
LABEL_21:
  v19 = v82;
  v82 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return v18;
}

void sub_1A74984A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t RegisterMILANECustomOpsets(uint64_t a1)
{
  if (a1)
  {
    MIL::Opsets::Custom::ane::RegisteraneOpsets(a1);
  }

  return 1;
}

void **std::vector<MILOpInfo const*>::__assign_with_size[abi:ne200100]<MILOpInfo const* const*,MILOpInfo const* const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<__CFNumber const*>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

std::string *std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  return this;
}

void sub_1A7498DF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::function<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::MILIndexOpInfo>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *std::__function::__func<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_0,std::allocator<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_0>,std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::operator()@<X0>(const MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = 0;
  RetrieveRequiredAxis((a2[1] - *a2) >> 2, a1, &v6);
  v5 = v6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(a3, &v5, &v6, 1uLL);
}

uint64_t std::__function::__func<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_0,std::allocator<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_0>,std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_1,std::allocator<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_1>,std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3DCF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_1,std::allocator<RevalidateOpIndicesProducer(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo const&,std::map<unsigned long long,ValidateEntry> &)::$_1>,std::vector<int> ()(MIL::IROperation const&,std::vector<int> const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  ParameterType = MIL::IROperation::GetParameterType();
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  v8 = (*(*v7 + 96))(v7);
  GetMILShapeAsVector(v8, &v23);
  v22 = 0;
  if (**(a1 + 16) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "batch_dims");
    RetrieveOptionalValue<int>(a2, __p, &v22);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(v24 - 1) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v10 + v22;
      v12 = a3[2];
      if (v9 >= v12)
      {
        v13 = *a3;
        v14 = v9 - *a3;
        v15 = v14 >> 2;
        v16 = (v14 >> 2) + 1;
        if (v16 >> 62)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v12 - v13;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a3, v18);
        }

        *(4 * v15) = v11;
        v9 = (4 * v15 + 4);
        memcpy(0, v13, v14);
        v19 = *a3;
        *a3 = 0;
        a3[1] = v9;
        a3[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v9 = v11;
        v9 += 4;
      }

      a3[1] = v9;
      ++v10;
    }

    while (v10 < *(v24 - 1));
  }

  v24 = v23;
  operator delete(v23);
}