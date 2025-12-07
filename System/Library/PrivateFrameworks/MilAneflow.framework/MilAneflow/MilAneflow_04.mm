uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB12D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a6;
  v9 = *a7;
  if (**(a1 + 8) == v8)
  {
    v10 = **(a1 + 16);
    if (v9 >= (*(*(a1 + 16) + 8) - v10) >> 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (v10 + 2 * v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v11 = (**(a1 + 24) + 2 * **v13 * *a2 + 2 * v9 + 2 * *v13[1] * *a3 + 2 * *v13[2] * *a4 + 2 * *v13[3] * *a5 + 2 * *v13[4] * v8);
  }

  return MIL::Fp16::GetFloat(v11);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2022::NeConv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259953554(_Unwind_Exception *a1)
{
  v4 = *(v2 - 208);
  *(v2 - 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x670], 0);
  _Unwind_Resume(a1);
}

void sub_259954664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25995474C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599547C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2599548AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[19],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[39],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954CCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[30],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954E2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[14],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2021::BaseActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259955490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Linear::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2021::Validators::ValidateLinear;
  v5[3] = v5;
  ANEMachineIR::H2021::BaseActivation::Make(a1, __p, v5);
}

void sub_259955694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NePiecewiseV2::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599569B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 72);
  *(v66 - 72) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Relu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2021::Validators::ValidateRelu;
  v5[3] = v5;
  ANEMachineIR::H2021::BaseActivation::Make(a1, __p, v5);
}

void sub_2599570D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::ScaledActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25995760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Lrelu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_259957D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v33 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a30, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Sigmoid::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2021::Validators::ValidateSigmoid;
  v5[3] = v5;
  ANEMachineIR::H2021::ScaledActivation::Make(a1, __p, v5);
}

void sub_259957FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Sqrt::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2021::Validators::ValidateSqrt;
  v5[3] = v5;
  ANEMachineIR::H2021::ScaledActivation::Make(a1, __p, v5);
}

void sub_259958094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Tanh::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2021::Validators::ValidateTanh;
  v5[3] = v5;
  ANEMachineIR::H2021::ScaledActivation::Make(a1, __p, v5);
}

void sub_259958174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BaseNePool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_259959848(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeAvgPool::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25995BAC0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x330], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x358], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMaxPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidateNeMaxPool;
  v3[3] = v3;
  ANEMachineIR::H2021::BaseNePool::Make();
}

void sub_25995C420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMinPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidateNeMinPool;
  v3[3] = v3;
  ANEMachineIR::H2021::BaseNePool::Make();
}

void sub_25995C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BasePePool::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_25995DAFC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAvgPool::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25995F9E4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x318], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMaxPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeMaxPool;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePePool::Make();
}

void sub_259960284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMinPool::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeMinPool;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePePool::Make();
}

void sub_259960364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::BaseActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599607EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Linear::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2022::Validators::ValidateLinear;
  v5[3] = v5;
  ANEMachineIR::H2022::BaseActivation::Make(a1, __p, v5);
}

void sub_2599609F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NePiecewiseV2::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259961D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 72);
  *(v66 - 72) = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68, a2, a3, a4, a5, a6, a7, a8);
  }

  v69 = *v65;
  *v65 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v66 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a65, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Relu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2022::Validators::ValidateRelu;
  v5[3] = v5;
  ANEMachineIR::H2022::BaseActivation::Make(a1, __p, v5);
}

void sub_259962434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::ScaledActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259962968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Lrelu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_2599630A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v33 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a30, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Sigmoid::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2022::Validators::ValidateSigmoid;
  v5[3] = v5;
  ANEMachineIR::H2022::ScaledActivation::Make(a1, __p, v5);
}

void sub_259963310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Sqrt::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2022::Validators::ValidateSqrt;
  v5[3] = v5;
  ANEMachineIR::H2022::ScaledActivation::Make(a1, __p, v5);
}

void sub_2599633F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Tanh::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2022::Validators::ValidateTanh;
  v5[3] = v5;
  ANEMachineIR::H2022::ScaledActivation::Make(a1, __p, v5);
}

void sub_2599634D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::FunctionInterpreter::Call(uint64_t a1@<X0>, MIL::IRObject *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  OpsetString = ANEMachineIR::GetOpsetString(a3);
  std::string::basic_string[abi:ne200100]<0>(v33, OpsetString);
  if (((*(*a2 + 200))(a2, v33) & 1) == 0)
  {
    *a5 = 3;
    std::string::basic_string[abi:ne200100]<0>((a5 + 8), "Function does not have requested opset");
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
LABEL_21:
    v27 = LocationPtr[1];
    *(a5 + 32) = *LocationPtr;
    *(a5 + 40) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_34;
  }

  v10 = (*(*a2 + 128))(a2);
  v11 = v10 + 1;
  v12 = *v10;
  if (*v10 != v10 + 1)
  {
    while (1)
    {
      Value = MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(a4, v12 + 4);
      if (!Value)
      {
        *a5 = 2;
        std::operator+<char>();
        LocationPtr = MIL::IRObject::GetLocationPtr(a2);
        goto LABEL_21;
      }

      if ((*(*Value + 4))(Value) != v12[7])
      {
        break;
      }

      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12[2];
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
      if (v15 == v11)
      {
        goto LABEL_11;
      }
    }

    *a5 = 3;
    std::operator+<char>();
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    goto LABEL_21;
  }

LABEL_11:
  v17 = (*(*a2 + 112))(a2);
  v18 = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(v17, v33);
  v19 = (*(**v18 + 64))(*v18);
  v20 = **v19;
  v21 = (*v19)[1];
  if (v20 == v21)
  {
LABEL_16:
    v23 = (*(**v18 + 88))();
    v24 = *v23;
    v25 = *(v23 + 8);
    while (1)
    {
      if (v24 == v25)
      {
        *a5 = 0;
        std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        goto LABEL_34;
      }

      if (!MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(a4, v24))
      {
        break;
      }

      v24 += 3;
    }

    *a5 = 4;
    std::operator+<char>();
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    goto LABEL_21;
  }

  while (1)
  {
    v22 = *v20;
    MIL::ANEMachineIR::Interpreter::DelegateByNameOp::Run(a1, *v20, a4, &v30);
    if (v30)
    {
      break;
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    v20 += 2;
    if (v20 == v21)
    {
      goto LABEL_16;
    }
  }

  *a5 = v30;
  if (SHIBYTE(v32) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 8), __p, *(&__p + 1));
  }

  else
  {
    *(a5 + 8) = __p;
    *(a5 + 24) = v32;
  }

  v28 = MIL::IRObject::GetLocationPtr(v22);
  v29 = v28[1];
  *(a5 + 32) = *v28;
  *(a5 + 40) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

LABEL_34:
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_259963884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void MilTranslator::OpTranslator::TranslateReduceMean(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v6 = (*(*a2 + 120))(a2, &__p, 0);
  v7 = v6;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v106.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v106.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v105, v11, v10);
  MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v106, v11, &v104);
  v12 = (*(*a2 + 176))(a2);
  v14 = **v12;
  v13 = (*v12)[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Type = MIL::IRNamedValueType::GetType(v14);
  v16 = MIL::IRValueType::AsTensorType(Type);
  std::string::basic_string[abi:ne200100]<0>(&__p, "keep_dims");
  MIL::IROperation::GetParameterValue();
  v17 = MIL::IRValue::GetScalar<BOOL>();
  v18 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v18)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(&v103, "mean");
      v19 = (*(*v11 + 96))(v11);
      v20 = v19[1] - *v19;
      if ((v20 >> 3) <= 2)
      {
        *a3 = 8;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "reduce_mean: input tensor rank must >= 3.");
LABEL_158:
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "axes");
      v100 = 0;
      v101 = 0;
      v102 = 0;
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      v70.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<int>();
      v70.__r_.__value_.__l.__size_ = v22;
      if (v22)
      {
        v23 = 0;
        v24 = v20 >> 3;
        do
        {
          if ((*MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v70, v23) & 0x80000000) != 0)
          {
            v25 = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v70, v23) + v24;
          }

          else
          {
            v25 = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v70, v23);
          }

          if (v25 == 1)
          {
            __s.__r_.__value_.__s.__data_[0] = v24 - 1;
            std::vector<signed char>::push_back[abi:ne200100](&v100, &__s);
          }

          else if (v25)
          {
            if (v25 >= 2)
            {
              __s.__r_.__value_.__s.__data_[0] = v25 - 1;
              std::vector<signed char>::push_back[abi:ne200100](&v100, &__s);
            }
          }

          else
          {
            __s.__r_.__value_.__s.__data_[0] = 0;
            std::vector<signed char>::push_back[abi:ne200100](&v100, &__s);
          }

          ++v23;
        }

        while (v23 < v70.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v97 = 0;
      v98 = 0;
      v99 = 0;
      ANEMachineIR::Utils::GetStaticTensorShape(&v95, v16, v22);
      v26 = (*(*v11 + 96))(v11);
      MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v106.__r_.__value_.__l.__data_, (v26[1] - *v26) >> 3, &__s);
      MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v96 - v95) >> 3, v91);
      if (MilTranslator::OpTranslator::IsTransposeRequired(v91))
      {
        MilTranslator::OpTranslator::InferTransposedShape(&v95, v91, &v89);
        (*(*v16 + 88))(v16);
        MIL::IRTensorValueType::Make();
        Name = MIL::IRNamedValueType::GetName(v14);
        v28 = Name;
        if (*(Name + 23) >= 0)
        {
          v29 = *(Name + 23);
        }

        else
        {
          v29 = *(Name + 8);
        }

        p_str = &__str;
        std::string::basic_string[abi:ne200100](&__str, v29 + 13);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (v29)
        {
          if (v28[23] >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = *v28;
          }

          memmove(p_str, v31, v29);
        }

        strcpy(p_str + v29, "_channel_last");
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v70, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v70 = __s;
        }

        v71 = v93;
        v72 = v94;
        std::string::operator=(&v70, &__str);
        v35 = MIL::IRNamedValueType::GetName(v14);
        std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v35, &v70);
        std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p, &__p);
        if (SHIBYTE(v76) < 0)
        {
          operator delete(v74);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v87 = __str;
        }

        MIL::IRNamedValueType::Make();
        __p.__r_.__value_.__r.__words[0] = v54.__r_.__value_.__r.__words[0];
        if (v54.__r_.__value_.__r.__words[0])
        {
          operator new();
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v54.__r_.__value_.__r.__words[0] = 0;
        std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v97, &__p);
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v54);
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v34 = v89;
        if (!v89)
        {
          goto LABEL_75;
        }

        v90 = v89;
      }

      else
      {
        v32 = MIL::IRNamedValueType::GetName(v14);
        if (*(v32 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *v32, *(v32 + 8));
        }

        else
        {
          v33 = *v32;
          v86.__r_.__value_.__r.__words[2] = *(v32 + 16);
          *&v86.__r_.__value_.__l.__data_ = v33;
        }

        MIL::IRNamedValueType::Make();
        __p.__r_.__value_.__r.__words[0] = v70.__r_.__value_.__r.__words[0];
        if (v70.__r_.__value_.__r.__words[0])
        {
          operator new();
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v70.__r_.__value_.__r.__words[0] = 0;
        std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v97, &__p);
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v70);
        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v34 = v86.__r_.__value_.__r.__words[0];
      }

      operator delete(v34);
LABEL_75:
      MilTranslator::OpTranslator::InferTransposedShape(v105, v91, &v89);
      (*(*v11 + 88))(v11);
      memset(&__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v89, v90, (v90 - v89) >> 3);
      v36 = MIL::IRTensorValueType::Make();
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__str, 0, sizeof(__str));
      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v103;
      }

      LOBYTE(v74) = 1;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v75, v100, v101, v101 - v100);
      v78 = 1;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      LOBYTE(v83) = 0;
      v85 = 0;
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      (*(*a2 + 56))(a2);
      if (v98 == v97)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v38 = MIL::IRNamedValueType::GetType(*v97);
      v39 = MIL::IRValueType::AsTensorType(v38);
      ANEMachineIR::Validators::ValidatePeReduce(LocationPtr, v36, v39, &__p, &v70);
      if (MIL::ValidationResult::IsGood(&v70))
      {
        std::string::basic_string[abi:ne200100]<0>(&v68, "pe_reduce");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v69 < 0)
        {
          operator delete(v68);
        }

        std::string::basic_string[abi:ne200100]<0>(&v65, "x");
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v64, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
        }

        else
        {
          v64 = v104;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        std::string::basic_string[abi:ne200100]<0>(&v61, "reduction");
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = v103;
        }

        MIL::Builder::OperationBuilder::AddInputString();
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v62 < 0)
        {
          operator delete(v61);
        }

        std::string::basic_string[abi:ne200100]<0>(&v57, "reduction_axes");
        MIL::Builder::OperationBuilder::AddInputInt8();
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (v58 < 0)
        {
          operator delete(v57);
        }

        if (v98 == v97)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v51 = MIL::IRNamedValueType::GetName(*v97);
        if (*(v51 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v55, *v51, *(v51 + 8));
        }

        else
        {
          v52 = *v51;
          v55.__r_.__value_.__r.__words[2] = *(v51 + 16);
          *&v55.__r_.__value_.__l.__data_ = v52;
        }

        if (v98 == v97)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v97);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v54.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&v70);
        std::operator+<char>();
        v40 = std::string::append(&v53, "; ");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v54;
        }

        else
        {
          v42 = v54.__r_.__value_.__r.__words[0];
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v54.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v42, size);
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v44 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v45 = std::string::append(&v53, "', violations: ");
        v46 = *&v45->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &__str;
        }

        else
        {
          v47 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = __str.__r_.__value_.__l.__size_;
        }

        v49 = std::string::append(&v54, v47, v48);
        v50 = *&v49->__r_.__value_.__l.__data_;
        *(v44 + 16) = *(&v49->__r_.__value_.__l + 2);
        *v44 = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&v70);
      if (v85 == 1 && v84 < 0)
      {
        operator delete(v83);
      }

      if (v78 == 1 && v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v74 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      if (v91[0])
      {
        v91[1] = v91[0];
        operator delete(v91[0]);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      __p.__r_.__value_.__r.__words[0] = &v97;
      std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      goto LABEL_158;
    }
  }

  else if (v17)
  {
    goto LABEL_14;
  }

  *a3 = 8;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), "reduce_mean: keep_dim must be true.");
LABEL_160:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (v105[0])
  {
    v105[1] = v105[0];
    operator delete(v105[0]);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }
}

void sub_259964778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  MEMORY[0x259CA8F00](&a50, a2, a3, a4, a5, a6, a7, a8);
  ANEMachineIR::Validators::PeReduceParamValues::~PeReduceParamValues(&a58);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  v61 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v61;
    operator delete(v61);
  }

  v62 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v62;
    operator delete(v62);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  v63 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v63;
    operator delete(v63);
  }

  a58 = v59 - 248;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a58);
  v64 = *(v59 - 224);
  if (v64)
  {
    *(v59 - 216) = v64;
    operator delete(v64);
  }

  if (*(v59 - 177) < 0)
  {
    operator delete(*(v59 - 200));
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  v65 = *(v59 - 152);
  if (v65)
  {
    *(v59 - 144) = v65;
    operator delete(v65);
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  _Unwind_Resume(a1);
}

void std::vector<signed char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t *std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259964C68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::PeReduceParamValues::~PeReduceParamValues(void **this)
{
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 56) == 1)
  {
    v2 = this[4];
    if (v2)
    {
      this[5] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ANEMachineIR::H2020::NeReduce::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599661B8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeReduce::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259967D24(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Const::Make(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6[0] = &unk_286AADC48;
  v6[1] = ANEMachineIR::H2022::Validators::ValidateConst;
  v6[3] = v6;
  v4 = HIBYTE(v2);
  v5[0] = &unk_286AB1438;
  v5[3] = v5;
  MIL::IROperator::Make();
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v6);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_259968588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v9 - 56);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  ANEMachineIR::H2022::Const::Make(va, va1);
  _Unwind_Resume(a1);
}

void sub_2599686A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANEMachineIR::H2022::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<ANEMachineIR::H2022::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2021::Const::Make(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6[0] = &unk_286AADC48;
  v6[1] = ANEMachineIR::H2021::Validators::ValidateConst;
  v6[3] = v6;
  v4 = HIBYTE(v2);
  v5[0] = &unk_286AB14C8;
  v5[3] = v5;
  MIL::IROperator::Make();
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v6);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_259968880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v9 - 56);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  ANEMachineIR::H2022::Const::Make(va, va1);
  _Unwind_Resume(a1);
}

void sub_259968998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANEMachineIR::H2021::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<ANEMachineIR::H2021::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::array<std::string,6ul>::~array(uint64_t a1)
{
  for (i = 0; i != -144; i -= 24)
  {
    if (*(a1 + i + 143) < 0)
    {
      operator delete(*(a1 + i + 120));
    }
  }

  return a1;
}

void MilTranslator::OpTranslator::~OpTranslator(MilTranslator::OpTranslator *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::~__hash_table(this + 296);
  MilTranslator::WeightTranslator::~WeightTranslator((this + 144));
  std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::~__hash_table(this + 104);
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void MilTranslator::OpTranslator::OpTranslator(uint64_t a1, void *a2, void *a3, __int128 *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = *a2;
  v9 = a2[1];
  *(a1 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *a3;
  v10 = a3[1];
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v11;
  }

  v12 = *(a1 + 16);
  v19 = *(a1 + 8);
  v20 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::ProgramBuilder::Make();
  v13 = v21;
  *(a1 + 64) = v21;
  if (v13)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  v21 = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  MIL::Builder::ProgramBuilder::AddFunction();
  OpsetString = ANEMachineIR::GetOpsetString(*a5);
  std::string::basic_string[abi:ne200100]<0>(&__p, OpsetString);
  MIL::Builder::FunctionBuilder::AddBlock();
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  *(a1 + 96) = a5;
  *&v15 = MilTranslator::OpTranslator::TranslateElementWiseBinary;
  *(&v15 + 1) = 0;
  v16 = a1;
  std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[4],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(&v21, "add", &v15);
}

void sub_259969064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  v64 = *(v62 + 32);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v62 + 16);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void MilTranslator::OpTranslator::Translate(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, _DWORD *a3@<X8>)
{
  ++*this;
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    __p.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(this + 13, &__p);
  if (v8)
  {
    v9 = v8[8];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, a2);
  }

  else
  {
    *a3 = 1;
    std::operator+<char>();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25996937C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::Translate(MilTranslator::OpTranslator *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 40))(a2);
  v7 = (*(*v6 + 56))(v6);
  v8 = **v7;
  v9 = (*v7)[1];
  while (v8 != v9)
  {
    MilTranslator::OpTranslator::Translate(a1, *v8, a3);
    if (*a3)
    {
      return;
    }

    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

    v8 += 2;
  }

  memset(v44, 0, sizeof(v44));
  v10 = (*(*v6 + 56))(v6);
  v11 = **v10;
  v12 = (*v10)[1];
  while (v11 != v12)
  {
    v13 = *v11;
    v14 = (*(**v11 + 56))(*v11);
    v15 = *(v14 + 23);
    if (v15 < 0)
    {
      if (*(v14 + 8) == 5)
      {
        v14 = *v14;
LABEL_13:
        if (*v14 == 1936617315 && *(v14 + 4) == 116)
        {
          (*(*v13 + 200))(&v41, v13);
          if (*(v41 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v41, *(v41 + 1));
          }

          else
          {
            v17 = *v41;
            __p.__r_.__value_.__r.__words[2] = *(v41 + 2);
            *&__p.__r_.__value_.__l.__data_ = v17;
          }

          v40[0] = &v41;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
          v18 = *(*(*v6 + 88))(v6);
          v19 = *((*(*v6 + 88))(v6) + 8);
          if (v18 != v19)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v22 = *(v18 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v18 + 8);
              }

              if (v22 == size)
              {
                v24 = v23 >= 0 ? v18 : *v18;
                if (!memcmp(v24, p_p, size))
                {
                  break;
                }
              }

              v18 += 24;
              if (v18 == v19)
              {
                v18 = v19;
                break;
              }
            }
          }

          if (v18 != *((*(*v6 + 88))(v6) + 8))
          {
            std::vector<std::string>::push_back[abi:ne200100](v44, &__p);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if (v15 == 5)
    {
      goto LABEL_13;
    }

    v11 += 2;
  }

  v25 = (*(*v6 + 88))(v6);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *v25, v25[1], 0xAAAAAAAAAAAAAAABLL * ((v25[1] - *v25) >> 3));
  (*(*a2 + 160))(v40, a2);
  v26 = v41;
  if (v42 != v41)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (v26 + v27);
      if (*(v29 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *v29, *(v29 + 1));
      }

      else
      {
        v30 = *v29;
        v39.__r_.__value_.__r.__words[2] = *(v29 + 2);
        *&v39.__r_.__value_.__l.__data_ = v30;
      }

      v31 = MIL::IRValueType::AsTensorType(*(v40[0] + v28));
      if (std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(a1 + 37, &v39))
      {
        v32 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(a1 + 37, &v39);
        v33 = v32;
        if (*(v32 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v32[5], v32[6]);
        }

        else
        {
          __p = *(v32 + 5);
        }

        v37 = *(v33 + 16);
        v38 = *(v33 + 68);
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = __p.__r_.__value_.__l.__size_;
        }

        if (v34)
        {
          MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(a1, &v39, v31);
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v35 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      ++v28;
      v26 = v41;
      v27 += 24;
    }

    while (v28 < 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
  }

  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  __p.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_259969898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  a9 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(uint64_t a1, uint64_t a2, ANEMachineIR::Utils *a3)
{
  v6 = (*(*a3 + 96))(a3);
  v7 = (v6[1] - *v6) >> 3;
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *v8, v8[1]);
  }

  else
  {
    v38 = *v8;
  }

  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *v9, v9[1]);
  }

  else
  {
    v37 = *v9;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  p_str = &__str;
  std::string::basic_string[abi:ne200100](&__str, v10 + 13);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(p_str, v12, v10);
  }

  strcpy(p_str + v10, "_channel_last");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = (*(*a3 + 96))(a3);
  v15 = *v13;
  v14 = v13[1];
  v16 = (v14 - *v13) >> 3;
  std::vector<int>::vector[abi:ne200100](&__str, v16);
  if (v14 != v15)
  {
    v17 = &v36;
    v18 = __str.__r_.__value_.__r.__words[0];
    do
    {
      v19 = *v17++;
      *v18++ = v19;
      --v16;
    }

    while (v16);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transpose");
  MilTranslator::OpTranslator::AddOperation(a1);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "x");
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v35;
  }

  MIL::Builder::OperationBuilder::AddInput();
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "perm");
  MIL::Builder::OperationBuilder::AddInputInt32();
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v23, a3, v20);
  (*(*a3 + 88))(a3);
  MIL::IRTensorValueType::Make();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  MIL::Builder::OperationBuilder::AddOutput();
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (__str.__r_.__value_.__r.__words[0])
  {
    __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_259969D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  v52 = *(v50 - 184);
  if (v52)
  {
    *(v50 - 176) = v52;
    operator delete(v52);
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::AddOperation(uint64_t a1)
{
  OpsetString = ANEMachineIR::GetOpsetString(**(a1 + 96));
  std::string::basic_string[abi:ne200100]<0>(__p, OpsetString);
  MIL::MILContext::GetOpset();
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  MIL::IROpset::TryGetOperatorSharedPtr();
  v4 = __p[0];
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v8, "'");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA9540](exception, __p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Builder::BlockBuilder::AddOperation();
}

void sub_259969FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t MilTranslator::OpTranslator::GetBlockBuilder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MilTranslator::OpTranslator::ConstructProgram(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  MIL::Builder::ProgramBuilder::GetFunction();
  v12 = *a3;
  v10 = a3 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      if (*(v11 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, v11[4], v11[5]);
      }

      else
      {
        v23 = *(v11 + 4);
      }

      MIL::Builder::FunctionBuilder::AddInput();
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != v10);
  }

  v17 = *a4;
  v16 = a4[1];
  while (v17 != v16)
  {
    MIL::Builder::BlockBuilder::AddOutput();
    v17 += 24;
  }

  MIL::Builder::ProgramBuilder::CreateProgram(&v21, *(a1 + 64));
  if (MIL::ValidationResult::IsGood(v22))
  {
    v18 = v21;
    v21 = 0;
    v19 = *a2;
    *a2 = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    *a5 = 0;
    std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
  }

  else
  {
    *a5 = 3;
    MIL::MILResult::GetMessageWithLocation((a5 + 8), v22);
  }

  MEMORY[0x259CA8F00](v22);
  v20 = v21;
  v21 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_25996A24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MilTranslator::OpTranslator::InferTransposedShape@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v6 = *a2;
  v5 = a2[1];
  if (v4 != v5 - *a2)
  {
    MilTranslator::OpTranslator::InferTransposedShape();
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a3, v4);
  if (v5 != v6)
  {
    v10 = *a2;
    v11 = *a1;
    v12 = *a3;
    if (v4 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4;
    }

    do
    {
      v15 = *v10++;
      v14 = v15;
      if ((v15 & 0x80000000) != 0 || v4 <= v14)
      {
        __assert_rtn("InferTransposedShape", "OpTranslator.cpp", 215, "positive_perm[i] >= 0 && positive_perm[i] < rank");
      }

      *v12++ = *(v11 + 8 * v14);
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_25996A358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::InferChannelLastTransposeInfo(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 21) = 0;
  *(a4 + 16) = 0;
  if (std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 296), a2))
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 296), a2);
    std::string::operator=(a4, (v8 + 5));
    v9 = *(v8 + 16);
    *(a4 + 28) = *(v8 + 68);
    *(a4 + 24) = v9;
  }

  else
  {
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *v10, v10[1]);
    }

    else
    {
      v22 = *v10;
    }

    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *v11, v11[1]);
    }

    else
    {
      v21 = *v11;
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v12 + 13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      memmove(p_p, v14, v12);
    }

    strcpy(p_p + v12, "_channel_last");
    v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *a4 = v17;
    *(a4 + 16) = v18;
    HIBYTE(v18) = 0;
    LOBYTE(v17) = 0;
    *(a4 + 24) = v19;
    *(a4 + 28) = v20;
    if (v15 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_25996A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *anonymous namespace::GetShapePermInfoFromAxisConvention@<X0>(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X2>, uint64_t a3@<X0>, uint64_t *a4@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 21) = 0;
  a1[2] = 0;
  result = std::string::operator=(a1, __str);
  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = *(a4 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a4[1];
  }

  if (v8 != v9)
  {
    __assert_rtn("GetShapePermInfoFromAxisConvention", "OpTranslator.cpp", 39, "source.size() == target.size()");
  }

  if (v8)
  {
    v10 = 0;
    v11 = a1 + 3;
    do
    {
      if (*(a4 + 23) >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      result = std::string::find(a3, *(v12 + v10), 0);
      *(v11 + v10++) = result;
    }

    while (v8 != v10);
  }

  return result;
}

void sub_25996A694(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MilTranslator::OpTranslator::IsTransposeRequired(void *a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v4 |= v3 != *(*a1 + 4 * v3);
      ++v3;
    }

    while (v5 != v3);
  }

  return v4 & 1;
}

uint64_t *MilTranslator::OpTranslator::GetTransposeOpParamPerm@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v3 = a2;
  result = std::vector<int>::vector[abi:ne200100](a3, a2);
  if (v3)
  {
    v6 = (a1 + 24);
    v7 = *result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(uint64_t a1@<X0>, uint64_t a2@<X1>, ANEMachineIR::Utils *a3@<X2>, std::string *a4@<X8>)
{
  v8 = (*(*a3 + 96))(a3);
  v10 = *v8;
  v9 = v8[1];
  if (std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>((a1 + 296), a2))
  {
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>((a1 + 296), a2);
    v12 = v11;
    if (*(v11 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v11[5], v11[6]);
    }

    else
    {
      v38 = *(v11 + 5);
    }

    LODWORD(v39) = *(v12 + 16);
    BYTE4(v39) = *(v12 + 68);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v38.__r_.__value_.__l.__size_)
      {
        std::string::__init_copy_ctor_external(a4, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
        if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        v13 = v38.__r_.__value_.__r.__words[0];
        goto LABEL_70;
      }

      operator delete(v38.__r_.__value_.__l.__data_);
    }

    else if (*(&v38.__r_.__value_.__s + 23))
    {
      *a4 = v38;
      return;
    }
  }

  MilTranslator::OpTranslator::InferChannelLastTransposeInfo(a1, a2, (v9 - v10) >> 3, &v47);
  v14 = (*(*a3 + 96))(a3);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v15 - *v14) >> 3;
  std::vector<int>::vector[abi:ne200100](&v45, v17);
  if (v15 != v16)
  {
    v18 = &v48;
    v19 = v45;
    do
    {
      v20 = *v18++;
      *v19++ = v20;
      --v17;
    }

    while (v17);
  }

  if (v46 == v45)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
  v23 = v46 - v45;
  if (v23 <= 1)
  {
    v23 = 1;
  }

  do
  {
    v22 |= v21 != v45[v21];
    ++v21;
  }

  while (v23 != v21);
  if ((v22 & 1) == 0)
  {
LABEL_24:
    v41 = 0uLL;
    v42 = 0;
    v43 = 50462976;
    v44 = 4;
    std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v38, a2, &v41);
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>((a1 + 296), &v38, &v38);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *a2, *(a2 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a2;
      a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "transpose");
    MilTranslator::OpTranslator::AddOperation(a1);
    if (v36 < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, "x");
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
    }

    else
    {
      v31 = *a2;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    std::string::basic_string[abi:ne200100]<0>(&v28, "perm");
    memset(&v38, 0, sizeof(v38));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v38, v45, v46, v46 - v45);
    MIL::Builder::OperationBuilder::AddInputInt32();
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v38.__r_.__value_.__r.__words[0])
    {
      v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    ANEMachineIR::Utils::GetStaticTensorShape(&v41, a3, v24);
    MilTranslator::OpTranslator::InferTransposedShape(&v41, &v45, v27);
    (*(*a3 + 88))(a3);
    MIL::IRTensorValueType::Make();
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v47;
    }

    MIL::Builder::OperationBuilder::AddOutput();
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v38, a2, &v47);
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>((a1 + 296), &v38, &v38);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a4, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
    }

    else
    {
      *a4 = v47;
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (v41)
    {
      *(&v41 + 1) = v41;
      operator delete(v41);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = v47.__r_.__value_.__r.__words[0];
LABEL_70:
    operator delete(v13);
  }
}

void sub_25996AC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  v53 = *(v51 - 120);
  if (v53)
  {
    *(v51 - 112) = v53;
    operator delete(v53);
  }

  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_25996AE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_25996AFF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996B0A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996B14C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996B1F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996B2A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996B350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<std::function<std::string ()(std::string const&)>>::__shared_ptr_emplace[abi:ne200100]<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<std::function<std::string ()(std::string const&)>>,0>(void *a1, __n128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286AB1608;
  std::allocator<std::function<std::string ()(std::string const&)>>::construct[abi:ne200100]<std::function<std::string ()(std::string const&)>,ANEMachineIR::Utils::CheckedCounterNameGenerator>(&v2, (a1 + 3), a2);
}

void std::__shared_ptr_emplace<std::function<std::string ()(std::string const&)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286AB1608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

void std::allocator<std::function<std::string ()(std::string const&)>>::construct[abi:ne200100]<std::function<std::string ()(std::string const&)>,ANEMachineIR::Utils::CheckedCounterNameGenerator>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *(a3 + 8) = 0uLL;
  *(a2 + 24) = 0;
  operator new();
}

void sub_25996B5C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_286AB1658;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_286AB1658;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x259CA9760);
}

void *std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_286AB1658;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL ANEMachineIR::Utils::CheckedCounterNameGenerator::operator()@<W0>(MIL::Builder::BlockBuilder **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; ; ++i)
  {
    ANEMachineIR::Utils::CheckedCounterNameGenerator::Candidate(a2, i, a3);
    result = ANEMachineIR::Utils::CheckedCounterNameGenerator::NameExists(a1, a3);
    if (!result)
    {
      break;
    }

    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }
  }

  return result;
}

void sub_25996B85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Utils::CheckedCounterNameGenerator::Candidate(const void **a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a2)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = &v16;
    std::string::basic_string[abi:ne200100](&v16, v6 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v16.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a1 + 23) >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
    std::to_string(&__p, a2);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, p_p, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&a3->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    v13 = *a1;
    v14 = a1[1];

    std::string::__init_copy_ctor_external(a3, v13, v14);
  }

  else
  {
    *a3 = *a1;
  }
}

void sub_25996B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL ANEMachineIR::Utils::CheckedCounterNameGenerator::NameExists(MIL::Builder::BlockBuilder **a1, const void **a2)
{
  v4 = 1;
  if (!(*(**a1 + 24))(*a1, a2, 1))
  {
    MIL::Builder::BlockBuilder::GetOperations(&v17, a1[1]);
    v5 = v17;
    v6 = v18;
    if (v17 != v18)
    {
      while (1)
      {
        v7 = *v5;
        v8 = *(v5 + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        OutputName = MIL::Builder::OperationBuilder::GetOutputName(v7);
        v10 = *(OutputName + 23);
        if (v10 >= 0)
        {
          v11 = *(OutputName + 23);
        }

        else
        {
          v11 = OutputName[1];
        }

        v12 = *(a2 + 23);
        v13 = v12;
        if (v12 < 0)
        {
          v12 = a2[1];
        }

        if (v11 == v12)
        {
          break;
        }

        v4 = 0;
        if (v8)
        {
          goto LABEL_19;
        }

LABEL_20:
        v5 += 16;
        v15 = v5 == v6 || v4;
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v10 < 0)
      {
        OutputName = *OutputName;
      }

      if (v13 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v4 = memcmp(OutputName, v14, v11) == 0;
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_20;
    }

    v4 = 0;
LABEL_26:
    v19 = &v17;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v19);
  }

  return v4;
}

void sub_25996BB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a12 = &a9;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::pair<std::unique_ptr<MIL::IRProgram>,MIL::ValidationResult>::~pair(uint64_t *a1)
{
  MEMORY[0x259CA8F00](a1 + 1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>(uint64_t a1)
{
  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::unordered_map(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>(a1, a2, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__construct_node_hash<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25996C10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_25996C244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
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

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25996C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
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

uint64_t *std::vector<unsigned long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25996C9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_OpTranslator_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(v0 + 3, "C");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AEF0, "NC");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AF08, "NCW");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AF20, "NCHW");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AF38, "NCDHW");
  std::string::basic_string[abi:ne200100]<0>(v1 + 3, "C");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AE10, "NC");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AE28, "NWC");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AE40, "NHWC");
  std::string::basic_string[abi:ne200100]<0>(qword_28154AE58, "NDHWC");
}

void _GLOBAL__sub_I_OpTranslator_cpp_cold_1(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }
}

void _GLOBAL__sub_I_OpTranslator_cpp_cold_2(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register(ANEMachineIR::H2021::Opsets::aneflowh2021Opset *this, MIL::MILContext *a2)
{
  v3 = 12;
  strcpy(__p, "aneflowh2021");
  operator new();
}

void sub_25996CE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register();
  }

  std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MIL::IROpset **std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x259CA9760]();
  }

  return a1;
}

void sub_25996CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps(uint64_t *__return_ptr a1@<X8>, ANEMachineIR::H2021::Opsets::aneflowh2021Opset *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v3, "base_ne_matmul");
  ANEMachineIR::H2021::BaseNeMatmul::Make(this, v3);
}

void sub_25996E380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::~aneflowh2021Opset(ANEMachineIR::H2021::Opsets::aneflowh2021Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x259CA9760);
}

void sub_25996EC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[15],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996ED34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<MIL::IROperator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25996EED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[6],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996EFC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[7],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[14],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[12],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F3E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[11],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F960(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[9],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FAC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[17],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FC20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FD80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IROperator>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FEE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::H2021::BasePeElementWiseBinary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_259971A8C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x310], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAdd::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeAdd;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeAddAbs;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeAddMul;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeAddSquare;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599726F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeEqual;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599727D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeGreater::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeGreater;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599728B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeGreaterEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeGreaterEqual;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeLess::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeLess;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeLessEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeLessEqual;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMaximum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeMaximum;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMinimum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeMinimum;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeMul;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeNotEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeNotEqual;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BasePeElementWiseUnary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_259974498(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeAbs;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseUnary::Make();
}

void sub_259974CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2021::Validators::ValidatePeSquare;
  v3[3] = v3;
  ANEMachineIR::H2021::BasePeElementWiseUnary::Make();
}

void sub_259974DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeActivation::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259975A90(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeAdd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25997737C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMaximum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259978A4C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMinimum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25997A02C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25997B8A0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeSquare::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25997CE04(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::Register(ANEMachineIR::H2020::Opsets::aneflowh2020Opset *this, MIL::MILContext *a2)
{
  v3 = 12;
  strcpy(__p, "aneflowh2020");
  operator new();
}

void sub_25997D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register();
  }

  std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25997D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::GetOps(uint64_t *__return_ptr a1@<X8>, ANEMachineIR::H2020::Opsets::aneflowh2020Opset *this@<X0>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(v3, "base_ne_matmul");
  ANEMachineIR::H2020::BaseNeMatmul::Make(this, v3);
}

void sub_25997E890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::~aneflowh2020Opset(ANEMachineIR::H2020::Opsets::aneflowh2020Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x259CA9760);
}

void ANEMachineIR::H2022::BasePeElementWiseBinary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_259980BE8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x310], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAdd::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeAdd;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_2599815AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeAddAbs;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998168C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeAddMul;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998176C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeAddSquare;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeEqual;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeGreater::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeGreater;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeGreaterEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeGreaterEqual;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeLess::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeLess;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeLessEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeLessEqual;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMaximum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeMaximum;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMinimum::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeMinimum;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMul::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeMul;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeNotEqual::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeNotEqual;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::BasePeElementWiseUnary::Make()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  operator new();
}

void sub_2599835F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAbs::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeAbs;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseUnary::Make();
}

void sub_259983E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeSquare::Make(MIL::IRUnknownDimension *a1, void *a2)
{
  v3[4] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v3[0] = &unk_286AADC48;
  v3[1] = ANEMachineIR::H2022::Validators::ValidatePeSquare;
  v3[3] = v3;
  ANEMachineIR::H2022::BasePeElementWiseUnary::Make();
}

void sub_259983F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeActivation::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259984BEC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeAdd::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599864D8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMaximum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259987BA8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMinimum::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259989188(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMul::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25998A9FC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeSquare::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25998BF60(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::TransposeCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v157[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 56))(a1);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    if (*(v4 + 8) != 9)
    {
      goto LABEL_10;
    }

    v4 = *v4;
  }

  else if (v5 != 9)
  {
    goto LABEL_10;
  }

  if (*v4 != 0x736F70736E617274 || *(v4 + 8) != 101)
  {
LABEL_10:
    *a3 = 1;
    v140 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v154, "transpose");
    v7 = std::string::insert(&v154, 0, "Expected '");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v155.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v155.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v155, "' op. Got ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&__src[16] = *(&v9->__r_.__value_.__l + 2);
    *__src = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = (*(*a1 + 56))(a1);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    v15 = std::string::append(__src, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *(v140 + 16) = *(&v15->__r_.__value_.__l + 2);
    *v140 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((__src[23] & 0x80000000) != 0)
    {
      operator delete(*__src);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v154.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v17);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(__src, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, __src);
  v19 = InterpretedTensorValue;
  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
    if (v19)
    {
LABEL_26:
      OutputType = MIL::IROperation::GetOutputType(a1);
      if (!(*(*OutputType + 24))(OutputType))
      {
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Output type is not a tensor.");
        return;
      }

      std::string::basic_string[abi:ne200100]<0>(__src, "perm");
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      Data = MIL::IRTensorValue::GetDataView<int>();
      v151 = v22;
      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
        v22 = v151;
      }

      std::vector<int>::vector[abi:ne200100](&v148, v22);
      if (v149 != v148)
      {
        v23 = 0;
        do
        {
          v24 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v23);
          v25 = v148;
          v148[v23++] = *v24;
        }

        while (v23 < (v149 - v25) >> 2);
      }

      v26 = (*(*v19 + 32))(v19);
      v27 = (*(*v26 + 88))(v26);
      v28 = MIL::IROperation::GetOutputType(a1);
      v29 = MIL::IRValueType::AsTensorType(v28);
      if (v27 != (*(*v29 + 88))(v29))
      {
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Expect same data type for input and output.");
        goto LABEL_164;
      }

      v30 = MIL::IROperation::GetOutputType(a1);
      v31 = MIL::IRValueType::AsTensorType(v30);
      v32 = (*(*v31 + 16))(v31);
      v33 = (*(*v19 + 32))(v19);
      ANEMachineIR::Utils::GetStaticTensorShape(&v146, v33, v34);
      v35 = MIL::IROperation::GetOutputType(a1);
      v36 = MIL::IRValueType::AsTensorType(v35);
      ANEMachineIR::Utils::GetStaticTensorShape(&v144, v36, v37);
      if (v27 == 4)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v56 = v147 - v146;
        if (v147 - v146 == v145 - v144)
        {
          v57 = v56 >> 3;
          if (v56 >> 3 == v149 - v148)
          {
            v58 = v55;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            std::vector<MIL::Fp16>::resize(&v141, v32);
            memset(&v155, 0, sizeof(v155));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v146, v147, (v147 - v146) >> 3);
            memset(&v154, 0, sizeof(v154));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v154, v144, v145, (v145 - v144) >> 3);
            if (v57 > 2)
            {
              if (v57 == 3)
              {
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
              }

              else if (v57 == 4)
              {
                *__src = 1;
                std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
                *__src = 1;
                std::vector<unsigned long long>::insert(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src);
              }
            }

            else if (v57 == 1)
            {
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
            }

            else if (v57 == 2)
            {
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
            }

            v137 = __p;
            if (*v155.__r_.__value_.__l.__data_)
            {
              v105 = *v155.__r_.__value_.__l.__data_;
              v106 = 0;
              v107 = 0;
              v108 = *(v154.__r_.__value_.__r.__words[0] + 32);
              v109 = *(v155.__r_.__value_.__r.__words[0] + 8);
              v110 = *(v155.__r_.__value_.__r.__words[0] + 16);
              v111 = *(v155.__r_.__value_.__r.__words[0] + 24);
              v112 = *(v155.__r_.__value_.__r.__words[0] + 32);
              v113 = v108 * *(v154.__r_.__value_.__r.__words[0] + 24);
              v114 = v113 * *(v154.__r_.__value_.__r.__words[0] + 16);
              v116 = *(__p + 3);
              v115 = *(__p + 4);
              v118 = *(__p + 1);
              v117 = *(__p + 2);
              v119 = *__p;
              v120 = *(v154.__r_.__value_.__r.__words[0] + 8) * v114;
              do
              {
                if (v109)
                {
                  for (i = 0; i != v109; ++i)
                  {
                    if (v110)
                    {
                      for (j = 0; j != v110; ++j)
                      {
                        if (v111)
                        {
                          v123 = 0;
                          v124 = v141;
                          do
                          {
                            if (v112)
                            {
                              for (k = 0; k != v112; ++k)
                              {
                                *__src = v106;
                                *&__src[8] = i;
                                *&__src[16] = j;
                                *&__src[24] = v123;
                                v157[0] = k;
                                v124[*&__src[8 * v115] + *&__src[8 * v118] * v114 + v113 * *&__src[8 * v117] + *&__src[8 * v116] * v108 + v120 * *&__src[8 * v119]] = *(v58 + 2 * v107 + 2 * k);
                              }

                              v107 += k;
                            }

                            ++v123;
                          }

                          while (v123 != v111);
                        }
                      }
                    }
                  }
                }

                ++v106;
              }

              while (v106 != v105);
            }

            v153 = v137;
            operator delete(v137);
            if (v154.__r_.__value_.__r.__words[0])
            {
              v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            if (v155.__r_.__value_.__r.__words[0])
            {
              v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
              operator delete(v155.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 200))(__src, a1);
            v126 = *__src;
            if (*&__src[8] == *__src)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v127 = MIL::IROperation::GetOutputType(a1);
            MIL::IRValueType::AsTensorType(v127);
            MIL::IRTensorValueType::MakeFloat16Value();
            MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v126, &v155.__r_.__value_.__l.__data_);
            v128 = v155.__r_.__value_.__r.__words[0];
            v155.__r_.__value_.__r.__words[0] = 0;
            if (v128)
            {
              (*(*v128 + 8))(v128);
            }

            goto LABEL_158;
          }

          v133 = "x_rank == perm.size()";
          v134 = 68;
        }

        else
        {
          v133 = "x_rank == o_shape.size()";
          v134 = 67;
        }

        __assert_rtn("ComputeValue", "TransposeCpu.cpp", v134, v133);
      }

      if (v27 != 9)
      {
        if (v27 != 14)
        {
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented input dtype");
LABEL_160:
          if (v144)
          {
            v145 = v144;
            operator delete(v144);
          }

          if (v146)
          {
            v147 = v146;
            operator delete(v146);
          }

LABEL_164:
          v17 = v148;
          if (v148)
          {
            v149 = v148;
            goto LABEL_22;
          }

          return;
        }

        v38 = MIL::IRTensorValue::GetDataView<unsigned char>();
        v39 = v146;
        v40 = v147;
        v41 = v147 - v146;
        if (v147 - v146 == v145 - v144)
        {
          v42 = v41 >> 3;
          if (v41 >> 3 == v149 - v148)
          {
            v43 = v38;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            if (v32)
            {
              std::vector<unsigned char>::__append(&v141, v32);
              v39 = v146;
              v40 = v147;
              v44 = (v147 - v146) >> 3;
            }

            else
            {
              v44 = v41 >> 3;
            }

            memset(&v155, 0, sizeof(v155));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v39, v40, v44);
            memset(&v154, 0, sizeof(v154));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v154, v144, v145, (v145 - v144) >> 3);
            if (v42 > 2)
            {
              if (v42 == 3)
              {
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
              }

              else if (v42 == 4)
              {
                *__src = 1;
                std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
                *__src = 1;
                std::vector<unsigned long long>::insert(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src);
              }
            }

            else if (v42 == 1)
            {
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
            }

            else if (v42 == 2)
            {
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
            }

            v82 = __p;
            v136 = *v155.__r_.__value_.__l.__data_;
            if (*v155.__r_.__value_.__l.__data_)
            {
              v83 = 0;
              v84 = 0;
              v85 = *(v154.__r_.__value_.__r.__words[0] + 32);
              v86 = *(v155.__r_.__value_.__r.__words[0] + 8);
              v87 = *(v155.__r_.__value_.__r.__words[0] + 16);
              v88 = *(v155.__r_.__value_.__r.__words[0] + 24);
              v89 = *(v155.__r_.__value_.__r.__words[0] + 32);
              v90 = v85 * *(v154.__r_.__value_.__r.__words[0] + 24);
              v91 = v90 * *(v154.__r_.__value_.__r.__words[0] + 16);
              v93 = *(__p + 3);
              v92 = *(__p + 4);
              v95 = *(__p + 1);
              v94 = *(__p + 2);
              v96 = *__p;
              v97 = *(v154.__r_.__value_.__r.__words[0] + 8) * v91;
              do
              {
                if (v86)
                {
                  for (m = 0; m != v86; ++m)
                  {
                    if (v87)
                    {
                      for (n = 0; n != v87; ++n)
                      {
                        if (v88)
                        {
                          for (ii = 0; ii != v88; ++ii)
                          {
                            if (v89)
                            {
                              for (jj = 0; jj != v89; ++jj)
                              {
                                *__src = v83;
                                *&__src[8] = m;
                                *&__src[16] = n;
                                *&__src[24] = ii;
                                v157[0] = jj;
                                *(v141 + *&__src[8 * v92] + *&__src[8 * v95] * v91 + v90 * *&__src[8 * v94] + *&__src[8 * v93] * v85 + v97 * *&__src[8 * v96]) = *(v43 + v84 + jj);
                              }

                              v84 += jj;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                ++v83;
              }

              while (v83 != v136);
              v82 = __p;
            }

            if (v82)
            {
              v153 = v82;
              operator delete(v82);
            }

            if (v154.__r_.__value_.__r.__words[0])
            {
              v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            if (v155.__r_.__value_.__r.__words[0])
            {
              v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
              operator delete(v155.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 200))(__src, a1);
            v102 = *__src;
            if (*&__src[8] == *__src)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v103 = MIL::IROperation::GetOutputType(a1);
            MIL::IRValueType::AsTensorType(v103);
            MIL::IRTensorValueType::MakeUInt8Value();
            MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v102, &v155.__r_.__value_.__l.__data_);
            v104 = v155.__r_.__value_.__r.__words[0];
            v155.__r_.__value_.__r.__words[0] = 0;
            if (v104)
            {
              (*(*v104 + 8))(v104);
            }

LABEL_158:
            v155.__r_.__value_.__r.__words[0] = __src;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v155);
            *a3 = 0;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
            if (v141)
            {
              v142 = v141;
              operator delete(v141);
            }

            goto LABEL_160;
          }

          v129 = "x_rank == perm.size()";
          v130 = 68;
        }

        else
        {
          v129 = "x_rank == o_shape.size()";
          v130 = 67;
        }

        __assert_rtn("ComputeValue", "TransposeCpu.cpp", v130, v129);
      }

      v48 = MIL::IRTensorValue::GetDataView<signed char>();
      v49 = v146;
      v50 = v147;
      v51 = v147 - v146;
      if (v147 - v146 == v145 - v144)
      {
        v52 = v51 >> 3;
        if (v51 >> 3 == v149 - v148)
        {
          v53 = v48;
          v141 = 0;
          v142 = 0;
          v143 = 0;
          if (v32)
          {
            std::vector<unsigned char>::__append(&v141, v32);
            v49 = v146;
            v50 = v147;
            v54 = (v147 - v146) >> 3;
          }

          else
          {
            v54 = v51 >> 3;
          }

          memset(&v155, 0, sizeof(v155));
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v49, v50, v54);
          memset(&v154, 0, sizeof(v154));
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v154, v144, v145, (v145 - v144) >> 3);
          if (v52 > 2)
          {
            if (v52 == 3)
            {
              *__src = vdupq_n_s64(1uLL);
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
              *__src = vdupq_n_s64(1uLL);
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
            }

            else if (v52 == 4)
            {
              *__src = 1;
              std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
              *__src = 1;
              std::vector<unsigned long long>::insert(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src);
            }
          }

          else if (v52 == 1)
          {
            *__src = xmmword_259A4A808;
            *&__src[16] = unk_259A4A818;
            std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
            *__src = xmmword_259A4A808;
            *&__src[16] = unk_259A4A818;
            std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, v157, 4);
          }

          else if (v52 == 2)
          {
            *__src = xmmword_259A4A7F0;
            *&__src[16] = 1;
            std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
            *__src = xmmword_259A4A7F0;
            *&__src[16] = 1;
            std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v154, (v154.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
          }

          v59 = __p;
          v135 = *v155.__r_.__value_.__l.__data_;
          if (*v155.__r_.__value_.__l.__data_)
          {
            v60 = 0;
            v61 = 0;
            v62 = *(v154.__r_.__value_.__r.__words[0] + 32);
            v63 = *(v155.__r_.__value_.__r.__words[0] + 8);
            v64 = *(v155.__r_.__value_.__r.__words[0] + 16);
            v65 = *(v155.__r_.__value_.__r.__words[0] + 24);
            v66 = *(v155.__r_.__value_.__r.__words[0] + 32);
            v67 = v62 * *(v154.__r_.__value_.__r.__words[0] + 24);
            v68 = v67 * *(v154.__r_.__value_.__r.__words[0] + 16);
            v70 = *(__p + 3);
            v69 = *(__p + 4);
            v72 = *(__p + 1);
            v71 = *(__p + 2);
            v73 = *__p;
            v74 = *(v154.__r_.__value_.__r.__words[0] + 8) * v68;
            do
            {
              if (v63)
              {
                for (kk = 0; kk != v63; ++kk)
                {
                  if (v64)
                  {
                    for (mm = 0; mm != v64; ++mm)
                    {
                      if (v65)
                      {
                        for (nn = 0; nn != v65; ++nn)
                        {
                          if (v66)
                          {
                            for (i1 = 0; i1 != v66; ++i1)
                            {
                              *__src = v60;
                              *&__src[8] = kk;
                              *&__src[16] = mm;
                              *&__src[24] = nn;
                              v157[0] = i1;
                              *(v141 + *&__src[8 * v69] + *&__src[8 * v72] * v68 + v67 * *&__src[8 * v71] + *&__src[8 * v70] * v62 + v74 * *&__src[8 * v73]) = *(v53 + v61 + i1);
                            }

                            v61 += i1;
                          }
                        }
                      }
                    }
                  }
                }
              }

              ++v60;
            }

            while (v60 != v135);
            v59 = __p;
          }

          if (v59)
          {
            v153 = v59;
            operator delete(v59);
          }

          if (v154.__r_.__value_.__r.__words[0])
          {
            v154.__r_.__value_.__l.__size_ = v154.__r_.__value_.__r.__words[0];
            operator delete(v154.__r_.__value_.__l.__data_);
          }

          if (v155.__r_.__value_.__r.__words[0])
          {
            v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
            operator delete(v155.__r_.__value_.__l.__data_);
          }

          (*(*a1 + 200))(__src, a1);
          v79 = *__src;
          if (*&__src[8] == *__src)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v80 = MIL::IROperation::GetOutputType(a1);
          MIL::IRValueType::AsTensorType(v80);
          MIL::IRTensorValueType::MakeInt8Value();
          MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v79, &v155.__r_.__value_.__l.__data_);
          v81 = v155.__r_.__value_.__r.__words[0];
          v155.__r_.__value_.__r.__words[0] = 0;
          if (v81)
          {
            (*(*v81 + 8))(v81);
          }

          goto LABEL_158;
        }

        v131 = "x_rank == perm.size()";
        v132 = 68;
      }

      else
      {
        v131 = "x_rank == o_shape.size()";
        v132 = 67;
      }

      __assert_rtn("ComputeValue", "TransposeCpu.cpp", v132, v131);
    }
  }

  else if (InterpretedTensorValue)
  {
    goto LABEL_26;
  }

  *a3 = 2;
  v45 = std::string::basic_string[abi:ne200100]<0>(__src, "x");
  v46 = std::string::insert(v45, 0, "No value for ");
  v47 = *&v46->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v46->__r_.__value_.__l + 2);
  *(a3 + 8) = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if ((__src[23] & 0x80000000) != 0)
  {
    v17 = *__src;
    goto LABEL_22;
  }
}

void sub_25998D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v41 = *(v39 - 176);
  if (v41)
  {
    *(v39 - 168) = v41;
    operator delete(v41);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ConvertPermToRank5(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = v6 >> 2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, v5, v4, v6 >> 2);
  for (i = *a1; i != a1[1]; ++i)
  {
    if ((*i & 0x80000000) != 0)
    {
      ANEMachineIR::Utils::InferPositiveAxes(a1, &v16);
      v9 = *a2;
      if (*a2)
      {
        a2[1] = v9;
        operator delete(v9);
      }

      *a2 = v16;
      a2[2] = v17[0];
      break;
    }
  }

  if (v4 != v5)
  {
    v10 = *a2;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6 >> 2;
    }

    do
    {
      if (*v10 >= 1)
      {
        *v10 = *v10 - (v6 >> 2) + 5;
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = *a2;
      *&v16 = 0x200000001;
      std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, (v15 + 4), &v16, &v16 + 8, 2);
    }

    else if (v7 == 4)
    {
      v13 = *a2;
      LODWORD(v16) = 1;
      std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, (v13 + 4), &v16, &v16 + 4, 1);
    }
  }

  else if (v7 == 1)
  {
    v14 = *a2;
    v16 = xmmword_259A4A790;
    std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, (v14 + 4), &v16, v17, 4);
  }

  else if (v7 == 2)
  {
    v12 = *a2;
    *&v16 = 0x200000001;
    DWORD2(v16) = 3;
    std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, (v12 + 4), &v16, &v16 + 12, 3);
  }
}

void sub_25998DA58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7;
      v7 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void ANEMachineIR::H2022::Reshape::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25998E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  v63 = *(v61 - 80);
  *(v61 - 80) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63, a2, a3, a4, a5, a6, a7, a8);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64, a2, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 192), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Transpose::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25998F940(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(MIL::IRObject *a1@<X0>, uint64_t a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v43 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v40, "acc_left_shift");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v43, &v43 + 1, a3);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (!MIL::ValidationResult::IsGood(a3))
  {
    return;
  }

  MEMORY[0x259CA8F00](a3);
  *a2 = HIBYTE(v43) | 0x100;
  v39 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v40, "post_right_shift");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v39, &v39 + 1, a3);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (!MIL::ValidationResult::IsGood(a3))
  {
    return;
  }

  MEMORY[0x259CA8F00](a3);
  *(a2 + 2) = HIBYTE(v39) | 0x100;
  std::string::basic_string[abi:ne200100]<0>(&v40, "post_scale");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v7 = ParameterValue;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
    if (!v7)
    {
      goto LABEL_34;
    }
  }

  else if (!ParameterValue)
  {
LABEL_34:
    LOWORD(v36) = MIL::Fp16::FromFloat(ParameterValue, 1.0);
    __p.__r_.__value_.__s.__data_[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v40, "post_scale");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &__p, &v36, a3);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    if (MIL::ValidationResult::IsGood(a3))
    {
      MEMORY[0x259CA8F00](a3);
      v22 = v36;
      if ((*(a2 + 6) & 1) == 0)
      {
        *(a2 + 6) = 1;
      }

      *(a2 + 4) = v22;
      if (*(a2 + 32) == 1)
      {
        v23 = *(a2 + 8);
        if (v23)
        {
          *(a2 + 16) = v23;
          operator delete(v23);
        }

        *(a2 + 32) = 0;
      }

LABEL_56:
      MIL::ValidationResult::ValidationResult(a3);
      return;
    }

    return;
  }

  ParameterValue = (*(*v7 + 40))(v7);
  if (!ParameterValue)
  {
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "post_scale");
  ParameterType = MIL::IROperation::GetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  v10 = (*(*v9 + 96))(v9);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v11 = MIL::IROperation::GetParameterType();
  v12 = MIL::IRValueType::AsTensorType(v11);
  v13 = (*(*v12 + 96))(v12);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v36, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v41 - v40 == 8)
  {
    if ((v37 - v36) <= 8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*v40 == v36[1])
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
      v24 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v24);
      v25 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
      v27 = v26;
      v30.__r_.__value_.__r.__words[0] = v25;
      v30.__r_.__value_.__l.__size_ = v26;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a2 + 8, &__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::vector<MIL::Fp16>::reserve((a2 + 8), v27);
      if (v27)
      {
        v28 = 0;
        do
        {
          v29 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v30, v28);
          std::vector<MIL::Fp16>::push_back[abi:ne200100]((a2 + 8), v29);
          ++v28;
        }

        while (v28 < v30.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 6) == 1)
      {
        *(a2 + 6) = 0;
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      goto LABEL_56;
    }
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v15 = LocationPtr[1];
  v33 = *LocationPtr;
  v34 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v37 - v36) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = MIL::IRDimension::AsConstant(v36[1]);
  v17 = (*(*v16 + 48))(v16);
  std::to_string(&v30, v17);
  v18 = std::string::insert(&v30, 0, "Post scale tensor must be of shape (");
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&__p, ",)");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32 = v20->__r_.__value_.__r.__words[2];
  *v31 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a3, &v33, 319, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_259990374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 64);
  if (v33)
  {
    *(v30 - 56) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<MIL::Fp16>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(MIL::Fp16 *a1@<X0>, _BYTE *a3@<X2>, _WORD *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  MIL::Fp16::FromFloat(a1, 0.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a3 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v10 = MEMORY[0x259CA93C0]();
    if (v10)
    {
      *a4 = *v10;
      *a3 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a5);
      return;
    }
  }

  *a3 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v12 = LocationPtr[1];
  v28 = *LocationPtr;
  v29 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v13 = std::string::append(&v23, " in operation ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = (*(*a1 + 56))(a1);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  v19 = std::string::append(&v24, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v25, ".");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v27 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a5, &v28, 304, __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_259990720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ParseNeMatmulParamValues(ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v43 = 0;
  LOBYTE(v44[0]) = 0;
  v45 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  *v42 = 0;
  v42[4] = 0;
  ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(this, v42, a3);
  if (!MIL::ValidationResult::IsGood(a3))
  {
    goto LABEL_52;
  }

  MEMORY[0x259CA8F00](a3);
  *a2 = *v42;
  *(a2 + 2) = *&v42[2];
  *(a2 + 6) = v43;
  std::__optional_storage_base<std::vector<MIL::Fp16>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<MIL::Fp16>,false> const&>(a2 + 8, v44);
  *(a2 + 10) = v46;
  *(a2 + 44) = v47;
  std::string::basic_string[abi:ne200100]<0>(&v39, "bias");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v7 = ParameterValue;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  else if (!ParameterValue)
  {
LABEL_29:
    LOWORD(__p) = MIL::Fp16::FromFloat(ParameterValue, 0.0);
    v35.__r_.__value_.__s.__data_[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v39, "bias");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(this, &v35, &__p, a3);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    if (MIL::ValidationResult::IsGood(a3))
    {
      MEMORY[0x259CA8F00](a3);
      v22 = __p;
      if ((*(a2 + 50) & 1) == 0)
      {
        *(a2 + 50) = 1;
      }

      *(a2 + 24) = v22;
      if (*(a2 + 80) == 1)
      {
        v23 = *(a2 + 7);
        if (v23)
        {
          *(a2 + 8) = v23;
          operator delete(v23);
        }

        *(a2 + 80) = 0;
      }

LABEL_51:
      MIL::ValidationResult::ValidationResult(a3);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  ParameterValue = (*(*v7 + 40))(v7);
  if (!ParameterValue)
  {
    goto LABEL_29;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  ParameterType = MIL::IROperation::GetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  v10 = (*(*v9 + 96))(v9);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v39, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 3);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v35, "y");
  v11 = MIL::IROperation::GetParameterType();
  v12 = MIL::IRValueType::AsTensorType(v11);
  v13 = (*(*v12 + 96))(v12);
  __p = 0;
  v37 = 0;
  v38 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 3);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v40 - v39 == 8)
  {
    if ((v37 - __p) <= 8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*v39 == *(__p + 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v35, "bias");
      v24 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v24);
      v25 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
      v27 = v26;
      v30.__r_.__value_.__r.__words[0] = v25;
      v30.__r_.__value_.__l.__size_ = v26;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      memset(&v35, 0, sizeof(v35));
      std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a2 + 56, &v35);
      if (v35.__r_.__value_.__r.__words[0])
      {
        v35.__r_.__value_.__l.__size_ = v35.__r_.__value_.__r.__words[0];
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      std::vector<MIL::Fp16>::reserve(a2 + 7, v27);
      if (v27)
      {
        v28 = 0;
        do
        {
          v29 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v30, v28);
          std::vector<MIL::Fp16>::push_back[abi:ne200100](a2 + 7, v29);
          ++v28;
        }

        while (v28 < v30.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 50) == 1)
      {
        *(a2 + 50) = 0;
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      goto LABEL_51;
    }
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v15 = LocationPtr[1];
  v33 = *LocationPtr;
  v34 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v37 - __p) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = MIL::IRDimension::AsConstant(*(__p + 1));
  v17 = (*(*v16 + 48))(v16);
  std::to_string(&v30, v17);
  v18 = std::string::insert(&v30, 0, "Bias tensor must be of shape (");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v35, ",)");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32 = v20->__r_.__value_.__r.__words[2];
  *v31 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a3, &v33, 319, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

LABEL_52:
  if (v45 == 1)
  {
    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }
  }
}

void sub_259990C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 120);
  if (v39)
  {
    *(v37 - 112) = v39;
    operator delete(v39);
  }

  if (*(v37 - 64) == 1)
  {
    v40 = *(v37 - 88);
    if (v40)
    {
      *(v37 - 80) = v40;
      operator delete(v40);
    }
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNeBatchMatmul(std::string::size_type *a1@<X0>, uint64_t **a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t **a5@<X4>, ANEMachineIR::Utils *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  if (a7[1])
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  if (a7[3])
  {
    v14 = a7[2];
  }

  else
  {
    v14 = 0;
  }

  if (!MIL::ValidationResult::IsGood(a8))
  {
    return;
  }

  MEMORY[0x259CA8F00](a8);
  ANEMachineIR::Utils::GetStaticTensorShape(&v101, a3, v15);
  ANEMachineIR::Utils::GetStaticTensorShape(&v99, a4, v16);
  ANEMachineIR::Utils::GetStaticTensorShape(&v97, a6, v17);
  v18 = v102;
  v19 = v101;
  if (v102 == v101)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v100 - v99) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(v102 - 1);
  v21 = *(v100 - 2);
  if (v20 == v21 || v20 == v21 + 1)
  {
    memset(&v92, 0, sizeof(v92));
    v24 = *a1;
    v23 = a1[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = v102;
    }

    v92.__r_.__value_.__l.__size_ = 0;
    memset(&v108, 0, sizeof(v108));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v108, v19, v18 - 2, v18 - 2 - v19);
    memset(&v107, 0, sizeof(v107));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(&v107, v99, v100 - 2, v100 - 2 - v99);
    v91.__r_.__value_.__r.__words[0] = v24;
    v91.__r_.__value_.__l.__size_ = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ANEMachineIR::Utils::BroadcastShapes(&v91, &v108, &v107, &v92, &v103);
    if (v91.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v91.__r_.__value_.__l.__size_);
    }

    if ((MIL::ValidationResult::IsGood(&v103) & 1) == 0)
    {
      *(a8 + 8) = *&v103.__r_.__value_.__r.__words[1];
      *&v103.__r_.__value_.__r.__words[1] = 0uLL;
      *(a8 + 24) = v104;
      *(a8 + 40) = v105;
      v104 = 0uLL;
      v105 = 0;
      *a8 = MEMORY[0x277D24E58] + 16;
      *(a8 + 48) = v106;
LABEL_78:
      MEMORY[0x259CA8F00](&v103);
      if (v107.__r_.__value_.__r.__words[0])
      {
        v107.__r_.__value_.__l.__size_ = v107.__r_.__value_.__r.__words[0];
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if (v108.__r_.__value_.__r.__words[0])
      {
        v108.__r_.__value_.__l.__size_ = v108.__r_.__value_.__r.__words[0];
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (MIL::ValidationResult::IsGood(a8))
      {
        MEMORY[0x259CA8F00](a8);
        v59 = v97;
        v60 = v98 - v97;
        if (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0] == v98 - v97)
        {
          if (!memcmp(v92.__r_.__value_.__l.__data_, v97, v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]))
          {
            MIL::ValidationResult::ValidationResult(a8);
          }

          else
          {
            ANEMachineIR::Utils::ShapeString(&v97);
            ANEMachineIR::Utils::ShapeString(&v92);
            v61 = a1[1];
            v83 = *a1;
            v84 = v61;
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::operator+<char>();
            v62 = std::string::append(&v90, " does not match inferred shape ");
            v63 = *&v62->__r_.__value_.__l.__data_;
            v91.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
            *&v91.__r_.__value_.__l.__data_ = v63;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v64 = &v108;
            }

            else
            {
              v64 = v108.__r_.__value_.__r.__words[0];
            }

            if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v108.__r_.__value_.__l.__size_;
            }

            v66 = std::string::append(&v91, v64, size);
            v67 = *&v66->__r_.__value_.__l.__data_;
            v107.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
            *&v107.__r_.__value_.__l.__data_ = v67;
            v66->__r_.__value_.__l.__size_ = 0;
            v66->__r_.__value_.__r.__words[2] = 0;
            v66->__r_.__value_.__r.__words[0] = 0;
            v68 = std::string::append(&v107, ".");
            v69 = *&v68->__r_.__value_.__l.__data_;
            v82 = v68->__r_.__value_.__r.__words[2];
            *v81 = v69;
            v68->__r_.__value_.__l.__size_ = 0;
            v68->__r_.__value_.__r.__words[2] = 0;
            v68->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a8, &v83, 313, v81);
            if (SHIBYTE(v82) < 0)
            {
              operator delete(v81[0]);
            }

            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v107.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            if (v84)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }

            if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v108.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v103.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          v70 = a1[1];
          v87 = *a1;
          v88 = v70;
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            v60 = v98 - v59;
          }

          std::to_string(&v91, v60 >> 3);
          v71 = std::string::insert(&v91, 0, "Output rank ");
          v72 = *&v71->__r_.__value_.__l.__data_;
          v107.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
          *&v107.__r_.__value_.__l.__data_ = v72;
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          v73 = std::string::append(&v107, " does not match rank of inferred shape ");
          v74 = *&v73->__r_.__value_.__l.__data_;
          v108.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
          *&v108.__r_.__value_.__l.__data_ = v74;
          v73->__r_.__value_.__l.__size_ = 0;
          v73->__r_.__value_.__r.__words[2] = 0;
          v73->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v90, (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = &v90;
          }

          else
          {
            v75 = v90.__r_.__value_.__r.__words[0];
          }

          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v76 = v90.__r_.__value_.__l.__size_;
          }

          v77 = std::string::append(&v108, v75, v76);
          v78 = *&v77->__r_.__value_.__l.__data_;
          v103.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
          *&v103.__r_.__value_.__l.__data_ = v78;
          v77->__r_.__value_.__l.__size_ = 0;
          v77->__r_.__value_.__r.__words[2] = 0;
          v77->__r_.__value_.__r.__words[0] = 0;
          v79 = std::string::append(&v103, ".");
          v80 = *&v79->__r_.__value_.__l.__data_;
          v86 = v79->__r_.__value_.__r.__words[2];
          *v85 = v80;
          v79->__r_.__value_.__l.__size_ = 0;
          v79->__r_.__value_.__r.__words[2] = 0;
          v79->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a8, &v87, 313, v85);
          if (SHIBYTE(v86) < 0)
          {
            operator delete(v85[0]);
          }

          if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v103.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
          }
        }
      }

      if (v92.__r_.__value_.__r.__words[0])
      {
        v92.__r_.__value_.__l.__size_ = v92.__r_.__value_.__r.__words[0];
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      goto LABEL_134;
    }

    v26 = v92.__r_.__value_.__r.__words[2];
    v25 = v92.__r_.__value_.__l.__size_;
    if (v92.__r_.__value_.__l.__size_ >= v92.__r_.__value_.__r.__words[2])
    {
      v43 = v92.__r_.__value_.__r.__words[0];
      v44 = v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0];
      v45 = (v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3;
      v46 = v45 + 1;
      if ((v45 + 1) >> 61)
      {
        goto LABEL_143;
      }

      if ((v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0]) >> 2 > v46)
      {
        v46 = (v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0]) >> 2;
      }

      if (v92.__r_.__value_.__r.__words[2] - v92.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&v92, v46);
      }

      v47 = (8 * v45);
      v26 = 0;
      v48 = &v47[-((v92.__r_.__value_.__l.__size_ - v92.__r_.__value_.__r.__words[0]) >> 3)];
      *v47 = *(v102 - 2);
      v27 = v47 + 1;
      memcpy(v48, v43, v44);
      v49 = v92.__r_.__value_.__r.__words[0];
      v92.__r_.__value_.__r.__words[0] = v48;
      *&v92.__r_.__value_.__r.__words[1] = v27;
      if (v49)
      {
        operator delete(v49);
        v26 = v92.__r_.__value_.__r.__words[2];
      }
    }

    else
    {
      *v92.__r_.__value_.__l.__size_ = *(v102 - 2);
      v27 = (v25 + 8);
    }

    v92.__r_.__value_.__l.__size_ = v27;
    if (v27 < v26)
    {
      *v27 = *(v100 - 1);
      v50 = (v27 + 1);
LABEL_77:
      v92.__r_.__value_.__l.__size_ = v50;
      MIL::ValidationResult::ValidationResult(a8);
      goto LABEL_78;
    }

    v51 = v92.__r_.__value_.__r.__words[0];
    v52 = v27 - v92.__r_.__value_.__r.__words[0];
    v53 = (v27 - v92.__r_.__value_.__r.__words[0]) >> 3;
    v54 = v53 + 1;
    if (!((v53 + 1) >> 61))
    {
      if ((v26 - v92.__r_.__value_.__r.__words[0]) >> 2 > v54)
      {
        v54 = (v26 - v92.__r_.__value_.__r.__words[0]) >> 2;
      }

      if (v26 - v92.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&v92, v54);
      }

      v55 = v53;
      v56 = (8 * v53);
      v57 = &v56[-v55];
      *v56 = *(v100 - 1);
      v50 = (v56 + 1);
      memcpy(v57, v51, v52);
      v58 = v92.__r_.__value_.__r.__words[0];
      v92.__r_.__value_.__r.__words[0] = v57;
      *&v92.__r_.__value_.__r.__words[1] = v50;
      if (v58)
      {
        operator delete(v58);
      }

      goto LABEL_77;
    }

LABEL_143:
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v28 = a1[1];
  v95 = *a1;
  v96 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::to_string(&v91, v20);
  v29 = std::string::insert(&v91, 0, "Matrix inner dimension mismatch, tensor y must have inner dimension ");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v92, " or ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v90, v20 - 1);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v90;
  }

  else
  {
    v33 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v90.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v107, v33, v34);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v108, ", got ");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v89, v21);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v89;
  }

  else
  {
    v39 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v89.__r_.__value_.__l.__size_;
  }

  v41 = std::string::append(&v103, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v94 = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a8, &v95, 319, __p);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

LABEL_134:
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }
}

void sub_2599916BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  v45 = *(v43 - 248);
  if (v45)
  {
    *(v43 - 240) = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 224);
  if (v46)
  {
    *(v43 - 216) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::ValidateCommon(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, MIL::ValidationResult *a9@<X8>, uint64_t a10)
{
  v19 = a1[1];
  v56 = *a1;
  v57 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v53, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v56, a3, &v53, a2, a9);
  if (v55 < 0)
  {
    operator delete(v53);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (MIL::ValidationResult::IsGood(a9))
  {
    MEMORY[0x259CA8F00](a9);
    v20 = a1[1];
    v51 = *a1;
    v52 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&v53, "y");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v51, a4, &v53, a2, a9);
    if (v55 < 0)
    {
      operator delete(v53);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    if (MIL::ValidationResult::IsGood(a9))
    {
      MEMORY[0x259CA8F00](a9);
      v21 = a1[1];
      v49 = *a1;
      v50 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ANEMachineIR::Validators::ValidatePostRightShiftRange(a9);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (MIL::ValidationResult::IsGood(a9))
      {
        MEMORY[0x259CA8F00](a9);
        if (*(a10 + 24) != 1)
        {
          goto LABEL_36;
        }

        ANEMachineIR::Utils::GetStaticTensorShape(&v53, a4, v22);
        v23 = v53;
        if ((v54 - v53) <= 8)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v24 = v53[1];
        v36 = (*(a10 + 8) - *a10) >> 1;
        if (v36 != v24)
        {
          v25 = a1[1];
          v47 = *a1;
          v48 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            if ((v54 - v23) <= 8)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }
          }

          std::to_string(&v43, v23[1]);
          v26 = std::string::insert(&v43, 0, "Post scale tensor must be of shape (");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v44.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&v44.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          v28 = std::string::append(&v44, ",)");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v46 = v28->__r_.__value_.__r.__words[2];
          *__p = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA8EE0](a9, &v47, 319, __p);
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v36 == v24)
        {
LABEL_36:
          v30 = (*(*a4 + 88))(a4) == 4;
          v31 = (*(*a3 + 88))(a3) == 4;
          v32 = ANEMachineIR::Validators::BinaryPointFormatOffsets(v30, v31);
          if (ANEMachineIR::Validators::NeuralEngineComputedBinaryPointAndShiftLegal(a7, a8, v32))
          {
            v33 = a1[1];
            v37 = *a1;
            v38 = v33;
            if (v33)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ANEMachineIR::Validators::ValidateLiveTensorSize(&v37, a6, a5, a2, a9);
            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }

            if (MIL::ValidationResult::IsGood(a9))
            {
              v34 = MEMORY[0x259CA8F00](a9);
              MIL::ValidationResult::ValidationResult(v34);
            }
          }

          else
          {
            v35 = a1[1];
            v41 = *a1;
            v42 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v39, "Computed binary point plus post-right shift bounded by accumulator dest size. See op definition.");
            MEMORY[0x259CA8EE0](a9, &v41, 309, v39);
            if (v40 < 0)
            {
              operator delete(v39[0]);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }
          }
        }
      }
    }
  }
}

void sub_259991DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  v44 = *(v42 - 128);
  if (v44)
  {
    *(v42 - 120) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateNeMatmul@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, MIL::ValidationResult *a8@<X8>)
{
  if (a7[1])
  {
    v9 = *a7;
  }

  else
  {
    v9 = 0;
  }

  if (a7[3])
  {
    v10 = a7[2];
  }

  else
  {
    v10 = 0;
  }

  result = MIL::ValidationResult::IsGood(a8);
  if (result)
  {
    v12 = MEMORY[0x259CA8F00](a8);

    return MIL::ValidationResult::ValidationResult(v12);
  }

  return result;
}

void ANEMachineIR::Validators::ValidateNeBatchMatmul(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = 0;
  v20 = 0;
  ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(a1, &v19, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v5 = (*(*a1 + 56))(a1);
    std::string::basic_string[abi:ne200100]<0>(&v17, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    std::string::basic_string[abi:ne200100]<0>(&__p, "y");
    v8 = MIL::IROperation::GetParameterType();
    v9 = MIL::IRValueType::AsTensorType(v8);
    (*(*a1 + 200))(v14, a1);
    v10 = v14[0];
    if (v14[1] == v14[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (*(*a1 + 176))(a1);
    if (*(v11 + 8) == *v11)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v11);
    v13 = MIL::IRValueType::AsTensorType(Type);
    ANEMachineIR::Validators::ValidateNeBatchMatmul(LocationPtr, v5, v7, v9, v10, v13, &v19, a2);
    v27 = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  if (v24 == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_25999219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a28 == 1)
  {
    if (a25)
    {
      operator delete(a25);
    }
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNeMatmul(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  v21 = 0;
  LOBYTE(v22) = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v19 = 0;
  v20 = 0;
  v27 = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v31 = 0;
  ANEMachineIR::Validators::ParseNeMatmulParamValues(a1, &v19, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v5 = (*(*a1 + 56))(a1);
    std::string::basic_string[abi:ne200100]<0>(&v17, "x");
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    std::string::basic_string[abi:ne200100]<0>(&__p, "y");
    v8 = MIL::IROperation::GetParameterType();
    v9 = MIL::IRValueType::AsTensorType(v8);
    (*(*a1 + 200))(v14, a1);
    v10 = v14[0];
    if (v14[1] == v14[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (*(*a1 + 176))(a1);
    if (*(v11 + 8) == *v11)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v11);
    v13 = MIL::IRValueType::AsTensorType(Type);
    ANEMachineIR::Validators::ValidateNeMatmul(LocationPtr, v5, v7, v9, v10, v13, &v19, a2);
    v32 = v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  if (v31 == 1 && v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v24 == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_259992450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(&a25);
  _Unwind_Resume(a1);
}

void std::__optional_storage_base<std::vector<MIL::Fp16>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<MIL::Fp16>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 1;
      v5 = *a2;

      std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = 1;
  }
}

uint64_t *std::vector<MIL::Fp16>::__assign_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<MIL::Fp16>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599926F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(ANEMachineIR::Validators::NeMatmulParamValues *this)
{
  if (*(this + 80) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 8) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      *(this + 2) = v3;
      operator delete(v3);
    }
  }
}

uint64_t *std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599927CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<MIL::Fp16>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void ANEMachineIR::H2021::NeConv::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259995D58(_Unwind_Exception *a1)
{
  v4 = *(v2 - 208);
  *(v2 - 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x670], 0);
  _Unwind_Resume(a1);
}

BOOL ANEMachineIR::Utils::IsBlockOutput(MIL::Builder::BlockBuilder **a1, unsigned __int8 *a2)
{
  MIL::Builder::BlockBuilder::GetOutputNames(&v11, *a1);
  v3 = v11;
  v4 = v12;
  if (v11 != v12)
  {
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = a2[23];
    }

    else
    {
      v6 = *(a2 + 1);
    }

    if (v5 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v3 + 8);
      }

      if (v7 == v6)
      {
        v9 = v8 >= 0 ? v3 : *v3;
        if (!memcmp(v9, a2, v6))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v13 = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v3 != v4;
}

void ANEMachineIR::Utils::TryCopyOpInput(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ArgumentForParameter = ANEMachineIR::Utils::TryGetArgumentForParameter(v8, a1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (ArgumentForParameter)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_259996FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Utils::TryGetArgumentForParameter(void *a1)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  MEMORY[0x259CA9550](v3, exception_ptr);
  __cxa_begin_catch(a1);
  MEMORY[0x259CA9570](v3);
  __cxa_end_catch();
}

void MIL::ANEMachineIR::Interpreter::NeAddCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 6)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 6)
  {
    goto LABEL_10;
  }

  if (*v6 != 1633641838 || *(v6 + 4) != 25700)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v106, "ne_add");
    v10 = std::string::insert(&v106, 0, "Expected ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v117.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v117.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v117, " op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v104.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v104.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*a1 + 56))(a1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::string::append(&v104, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v106.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(size);
      return;
    }

    return;
  }

  v21 = std::string::basic_string[abi:ne200100]<0>(&v104, "x_scale");
  v22 = MIL::Fp16::FromFloat(v21, 1.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue))
    {
      v24 = MEMORY[0x259CA93C0]();
      if (v24)
      {
        v22 = *v24;
      }
    }
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v25 = std::string::basic_string[abi:ne200100]<0>(&v104, "y_scale");
  v101 = MIL::Fp16::FromFloat(v25, 1.0);
  v26 = MIL::IROperation::TryGetParameterValue();
  if (v26)
  {
    if ((*(*v26 + 40))(v26))
    {
      v27 = MEMORY[0x259CA93C0]();
      if (v27)
      {
        v101 = *v27;
      }
    }
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v28 = std::string::basic_string[abi:ne200100]<0>(&v104, "bias");
  v100 = MIL::Fp16::FromFloat(v28, 0.0);
  v29 = MIL::IROperation::TryGetParameterValue();
  if (v29)
  {
    if ((*(*v29 + 40))(v29))
    {
      v30 = MEMORY[0x259CA93C0]();
      if (v30)
      {
        v100 = *v30;
      }
    }
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v31 = std::string::basic_string[abi:ne200100]<0>(&v104, "post_scale");
  v32 = MIL::Fp16::FromFloat(v31, 1.0);
  v33 = MIL::IROperation::TryGetParameterValue();
  if (v33)
  {
    if ((*(*v33 + 40))(v33))
    {
      v34 = MEMORY[0x259CA93C0]();
      if (v34)
      {
        v32 = *v34;
      }
    }
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v104, "acc_bias_shift");
  v35 = MIL::IROperation::TryGetParameterValue();
  if (v35 && (*(*v35 + 40))(v35) && (v36 = MEMORY[0x259CA93E0]()) != 0)
  {
    v99 = *v36;
  }

  else
  {
    v99 = 0;
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v104, "acc_left_shift");
  v37 = MIL::IROperation::TryGetParameterValue();
  if (v37 && (*(*v37 + 40))(v37) && (v38 = MEMORY[0x259CA93E0]()) != 0)
  {
    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v104, "post_right_shift");
  v40 = MIL::IROperation::TryGetParameterValue();
  if (v40 && (*(*v40 + 40))(v40) && (v41 = MEMORY[0x259CA93E0]()) != 0)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v104, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v104);
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v104, "y");
  v44 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v104);
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_73;
    }

LABEL_77:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  operator delete(v104.__r_.__value_.__l.__data_);
  if (!InterpretedTensorValue)
  {
    goto LABEL_77;
  }

LABEL_73:
  if (!v44)
  {
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
    return;
  }

  v98 = v22;
  *&v104.__r_.__value_.__r.__words[1] = 0uLL;
  v105 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v104, &v117);
  if (LODWORD(v104.__r_.__value_.__l.__data_))
  {
    *a3 = v104.__r_.__value_.__l.__data_;
    *(a3 + 8) = *&v104.__r_.__value_.__r.__words[1];
    *(a3 + 24) = v105;
    *&v104.__r_.__value_.__r.__words[1] = 0uLL;
    v105 = 0;
    goto LABEL_131;
  }

  v45 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  v46 = (*(*v45 + 88))(v45);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v48 = MIL::IRValueType::AsTensorType(OutputType);
  v49 = (*(*v48 + 88))(v48);
  v50 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  v97 = (*(*v50 + 16))(v50);
  if (v46 == 4)
  {
    switch(v49)
    {
      case 14:
        v87 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v88 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v115, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v115);
        (*(*a1 + 200))(&v102, a1);
        v89 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v90 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v90);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v89, &v107);
        v91 = v107;
        v107 = 0;
        if (v91)
        {
          (*(*v91 + 1))(v91);
        }

        goto LABEL_129;
      case 9:
        v77 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v78 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v114, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v114);
        (*(*a1 + 200))(&v102, a1);
        v79 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v80 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v80);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v79, &v107);
        v81 = v107;
        v107 = 0;
        if (v81)
        {
          (*(*v81 + 1))(v81);
        }

        goto LABEL_129;
      case 4:
        v61 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v62 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v116, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v116);
        (*(*a1 + 200))(&v102, a1);
        v63 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v64 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v64);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v63, &v107);
        v65 = v107;
        v107 = 0;
        if (v65)
        {
          (*(*v65 + 1))(v65);
        }

        goto LABEL_129;
    }

    goto LABEL_104;
  }

  if (v46 == 9)
  {
    switch(v49)
    {
      case 14:
        Data = MIL::IRTensorValue::GetDataView<signed char>();
        v73 = MIL::IRTensorValue::GetDataView<signed char>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v109, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v109);
        (*(*a1 + 200))(&v102, a1);
        v74 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v75 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v75);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v74, &v107);
        v76 = v107;
        v107 = 0;
        if (v76)
        {
          (*(*v76 + 1))(v76);
        }

        goto LABEL_129;
      case 9:
        v67 = MIL::IRTensorValue::GetDataView<signed char>();
        v68 = MIL::IRTensorValue::GetDataView<signed char>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v108, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v108);
        (*(*a1 + 200))(&v102, a1);
        v69 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v70 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v70);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v69, &v107);
        v71 = v107;
        v107 = 0;
        if (v71)
        {
          (*(*v71 + 1))(v71);
        }

        goto LABEL_129;
      case 4:
        v56 = MIL::IRTensorValue::GetDataView<signed char>();
        v57 = MIL::IRTensorValue::GetDataView<signed char>();
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v110, &v117);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v110);
        (*(*a1 + 200))(&v102, a1);
        v58 = v102;
        if (v103 == v102)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v59 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v59);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v58, &v107);
        v60 = v107;
        v107 = 0;
        if (v60)
        {
          (*(*v60 + 1))(v60);
        }

        goto LABEL_129;
    }

    goto LABEL_104;
  }

  if (v46 != 14)
  {
    v66 = "Unimplemented input dtype";
LABEL_105:
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), v66);
    goto LABEL_131;
  }

  if (v49 == 14)
  {
    v92 = MIL::IRTensorValue::GetDataView<unsigned char>();
    v93 = MIL::IRTensorValue::GetDataView<unsigned char>();
    std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v112, &v117);
    std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v112);
    (*(*a1 + 200))(&v102, a1);
    v94 = v102;
    if (v103 == v102)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v95 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v95);
    MIL::IRTensorValueType::MakeUInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v94, &v107);
    v96 = v107;
    v107 = 0;
    if (v96)
    {
      (*(*v96 + 1))(v96);
    }

    goto LABEL_129;
  }

  if (v49 == 9)
  {
    v82 = MIL::IRTensorValue::GetDataView<unsigned char>();
    v83 = MIL::IRTensorValue::GetDataView<unsigned char>();
    std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, &v117);
    std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
    (*(*a1 + 200))(&v102, a1);
    v84 = v102;
    if (v103 == v102)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v85 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v85);
    MIL::IRTensorValueType::MakeInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v84, &v107);
    v86 = v107;
    v107 = 0;
    if (v86)
    {
      (*(*v86 + 1))(v86);
    }

    goto LABEL_129;
  }

  if (v49 != 4)
  {
LABEL_104:
    v66 = "Unimplemented output dtype";
    goto LABEL_105;
  }

  v51 = MIL::IRTensorValue::GetDataView<unsigned char>();
  v52 = MIL::IRTensorValue::GetDataView<unsigned char>();
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v113, &v117);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v113);
  (*(*a1 + 200))(&v102, a1);
  v53 = v102;
  if (v103 == v102)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v54 = MIL::IROperation::GetOutputType(a1);
  MIL::IRValueType::AsTensorType(v54);
  MIL::IRTensorValueType::MakeFloat16Value();
  MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v53, &v107);
  v55 = v107;
  v107 = 0;
  if (v55)
  {
    (*(*v55 + 1))(v55);
  }

LABEL_129:
  v107 = &v102;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v107);
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
  if (v106.__r_.__value_.__r.__words[0])
  {
    v106.__r_.__value_.__l.__size_ = v106.__r_.__value_.__r.__words[0];
    operator delete(v106.__r_.__value_.__l.__data_);
  }

LABEL_131:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v117);
  if (SHIBYTE(v105) < 0)
  {
    size = v104.__r_.__value_.__l.__size_;
    goto LABEL_22;
  }
}