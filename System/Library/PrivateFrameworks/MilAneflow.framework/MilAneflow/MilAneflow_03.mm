void sub_259932C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 184);
  if (v22)
  {
    *(v20 - 176) = v22;
    operator delete(v22);
  }

  v23 = *(v20 - 160);
  if (v23)
  {
    *(v20 - 152) = v23;
    operator delete(v23);
  }

  v24 = *a20;
  if (*a20)
  {
    *(a20 + 8) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<MIL::Fp16>::__append(result, a2 - v2);
  }
}

char *std::vector<unsigned long long>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<unsigned long long>::emplace_back<unsigned long long>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_259932E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::GetIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

void std::vector<MIL::Fp16>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__split_buffer<unsigned long long>::emplace_back<unsigned long long>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
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
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
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

uint64_t std::function<MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2599336E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,MIL::Fp16>(MIL::Fp16 const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,unsigned char>(unsigned char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<MIL::Fp16,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<signed char ()(signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_259934318(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<unsigned char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValueAvgPool<signed char,signed char>(signed char const*,unsigned long long,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,std::vector<int> const&,std::vector<int> const&,std::array<std::pair<int,int>,3ul> const&,signed char,signed char,signed char,MIL::Fp16,MIL::Fp16,BOOL,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::GetIndex()
{
  __assert_rtn("GetIndex", "NePoolCpu.cpp", 38, "shape5d.size() == 5");
}

{
  __assert_rtn("GetIndex", "PeReduceCpu.cpp", 53, "shape5d.size() == 5");
}

{
  __assert_rtn("GetIndex", "PePoolCpu.cpp", 39, "shape5d.size() == 5");
}

void MilTranslator::OpTranslator::TranslateConv(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "groups");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v7 = MEMORY[0x259CA9420]()) != 0)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  MilTranslator::WeightTranslator::TargetProgramConstOpName(this + 144, a2, &__p, 0, v8, v33, &v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30)
  {
    *a3 = v30;
    *(a3 + 8) = v31;
    *(a3 + 24) = v32;
    v31 = 0uLL;
    v32 = 0;
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v9 = (*(*a2 + 120))(a2, &__p, 0);
  v10 = v9;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_25:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Conv does not handle immediate value inputs for x");
    goto LABEL_12;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_19:
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v12 = (*(*ParameterType + 24))(ParameterType);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_27:
    *a3 = 8;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Conv input not a tensor");
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_21:
  MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, v10, v13, &v29);
  (*(*a2 + 200))(&__p, a2);
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(__p.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *__p.__r_.__value_.__l.__data_, *(__p.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v14 = *__p.__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = *(__p.__r_.__value_.__r.__words[0] + 16);
    *&v28.__r_.__value_.__l.__data_ = v14;
  }

  v27.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  v15 = (*(*v13 + 96))(v13);
  v16 = (v15[1] - *v15) >> 3;
  MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v28.__r_.__value_.__l.__data_, v16, &v27);
  MilTranslator::OpTranslator::GetTransposeOpParamPerm(&v27, v16, v26);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v28;
  }

  if (MilTranslator::OpTranslator::IsTransposeRequired(v26))
  {
    (*(*a2 + 200))(v24, a2);
    v17 = v24[0];
    if (v24[1] == v24[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v24[0] + 23) >= 0)
    {
      v18 = *(v24[0] + 23);
    }

    else
    {
      v18 = *(v24[0] + 8);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v18 + 13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (v17[23] >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = *v17;
      }

      memmove(p_p, v20, v18);
    }

    strcpy(p_p + v18, "_channel_last");
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v35 = v24;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
    std::string::operator=(&v27, &__str);
    std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, &v28, &v27);
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p, &__p);
    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_12:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_259934C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (*(v43 - 81) < 0)
  {
    operator delete(*(v43 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ANEMachineIR::GetScalarValueOrDefault<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    if (!a4)
    {
      return a3;
    }

    v8 = 1;
    goto LABEL_11;
  }

  if (!(*(*ParameterValue + 40))(ParameterValue) || (v7 = MEMORY[0x259CA9420]()) == 0)
  {
    if (!a4)
    {
      return a3;
    }

    v8 = 2;
LABEL_11:
    *a4 = v8;
    return a3;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return *v7;
}

void MilTranslator::anonymous namespace::TranslateConvOp(MIL::IROperation *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  v156 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v147, "x");
  ParameterType = MIL::IROperation::TryGetParameterType();
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v147);
  }

  std::string::basic_string[abi:ne200100]<0>(&v147, "weight");
  v11 = MIL::IROperation::TryGetParameterType();
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v147);
  }

  OutputType = MIL::IROperation::GetOutputType(a2);
  v13 = (*(*ParameterType + 24))(ParameterType);
  v14 = (*(*v11 + 24))(v11);
  v15 = (*(*OutputType + 24))(OutputType);
  v16 = v15;
  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 == 0)
  {
    v106 = 11;
    std::string::basic_string[abi:ne200100]<0>(&__p, "Conv input, weights, and output must be tensors.");
    v19 = 0;
  }

  else
  {
    (*(*v13 + 88))(v13);
    v19 = (*(*v14 + 88))(v14);
    (*(*v16 + 88))(v16);
    v20 = 0;
    v147 = v13;
    v148 = v14;
    v149 = v16;
    while (1)
    {
      v21 = (*(**(&v147 + v20) + 88))(*(&v147 + v20));
      if (v21 != 4)
      {
        break;
      }

      v20 += 8;
      if (v20 == 24)
      {
        v106 = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p, &unk_259A4D977);
        goto LABEL_24;
      }
    }

    if (v21 == 9 || v21 == 14)
    {
      v23 = "ios opset does not yet have quantized conv.";
      v24 = 4;
    }

    else
    {
      v23 = "Conv input, weights, and output must be supported dtype.";
      v24 = 11;
    }

    v106 = v24;
    std::string::basic_string[abi:ne200100]<0>(&__p, v23);
  }

LABEL_24:
  if (v106)
  {
    *a8 = v106;
    *(a8 + 8) = __p;
    *(a8 + 24) = v108;
    __p = 0uLL;
    v108 = 0;
    goto LABEL_26;
  }

  std::string::basic_string[abi:ne200100]<0>(&v147, "weight");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v26 = ParameterValue;
  if ((SHIBYTE(v149) & 0x80000000) == 0)
  {
    if (ParameterValue)
    {
      goto LABEL_31;
    }

LABEL_52:
    *a8 = 4;
    std::string::basic_string[abi:ne200100]<0>((a8 + 8), "Dynamic weight translation not implemented for conv.");
    goto LABEL_26;
  }

  operator delete(v147);
  if (!v26)
  {
    goto LABEL_52;
  }

LABEL_31:
  memset(&v153, 0, sizeof(v153));
  v152 = 0u;
  v151 = 0u;
  v150 = 0u;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  __src = 0;
  v98 = 0;
  v99 = 0;
  memset(&v96, 0, sizeof(v96));
  MEMORY[0x259CA95C0](&v96, "zero");
  std::string::basic_string[abi:ne200100]<0>(&v90, "x");
  v27 = MIL::IROperation::TryGetParameterType();
  v28 = v27;
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v27)
    {
      goto LABEL_33;
    }

LABEL_54:
    v93 = 11;
    std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get value type for ");
    v36 = std::string::append(&v90, "x");
    goto LABEL_123;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
  if (!v28)
  {
    goto LABEL_54;
  }

LABEL_33:
  v29 = (*(*v28 + 24))(v28);
  if (v29)
  {
    std::string::basic_string[abi:ne200100]<0>(&v90, "strides");
    v30 = MIL::IROperation::TryGetParameterType();
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      v31 = (*(*v30 + 24))(v30);
      if (v31)
      {
        std::string::basic_string[abi:ne200100]<0>(&v90, "dilations");
        v32 = MIL::IROperation::TryGetParameterType();
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          v86 = (*(*v32 + 24))(v32);
          if (v86)
          {
            std::string::basic_string[abi:ne200100]<0>(&v90, "weight");
            v33 = MIL::IROperation::TryGetParameterType();
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            if (v33)
            {
              v85 = (*(*v33 + 24))(v33);
              if (v85)
              {
                std::string::basic_string[abi:ne200100]<0>(&v90, "bias");
                v34 = MIL::IROperation::TryGetParameterType();
                if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v90.__r_.__value_.__l.__data_);
                }

                if (v34)
                {
                  v35 = (*(*v34 + 24))(v34);
                  if (!v35)
                  {
                    v93 = 11;
                    std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
                    v36 = std::string::append(&v90, "bias");
                    goto LABEL_123;
                  }
                }

                else
                {
                  v35 = 0;
                }

                v83 = v35;
                std::string::basic_string[abi:ne200100]<0>(&v90, "pad");
                v37 = MIL::IROperation::TryGetParameterType();
                if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v90.__r_.__value_.__l.__data_);
                }

                if (v37)
                {
                  if ((*(*v37 + 24))(v37))
                  {
                    v154 = 0;
                    if (!v83)
                    {
                      goto LABEL_89;
                    }

                    v154 = (*(*v83 + 16))(v83);
                    std::string::basic_string[abi:ne200100]<0>(&v90, "bias");
                    v38 = MIL::IROperation::TryGetParameterValue();
                    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v90.__r_.__value_.__l.__data_);
                    }

                    if (v38)
                    {
                      MIL::IRValue::AsTensor(v38);
                      std::vector<MIL::Fp16>::reserve(&__src, v154);
                      v39 = (*(*v83 + 88))(v83);
                      if (v39 == 5)
                      {
                        v93 = 11;
                        v71 = "Fp32 precision (for bias) not supported by ANE.";
                      }

                      else
                      {
                        if (v39 == 4)
                        {
                          v90.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                          v90.__r_.__value_.__l.__size_ = v40;
                          if (v154)
                          {
                            v41 = 0;
                            v80 = v29;
                            v81 = v31;
                            do
                            {
                              v84 = v41;
                              v82 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v90, v41);
                              v42 = v98;
                              if (v98 >= v99)
                              {
                                v44 = __src;
                                v45 = v98 - __src;
                                v46 = (v98 - __src) >> 1;
                                if (v46 <= -2)
                                {
                                  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
                                }

                                if (v99 - __src <= v46 + 1)
                                {
                                  v47 = v46 + 1;
                                }

                                else
                                {
                                  v47 = v99 - __src;
                                }

                                v48 = 0x7FFFFFFFFFFFFFFFLL;
                                if (v99 - __src < 0x7FFFFFFFFFFFFFFELL)
                                {
                                  v48 = v47;
                                }

                                if (v48)
                                {
                                  std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(&__src, v48);
                                }

                                *(2 * v46) = *v82;
                                v43 = (2 * v46 + 2);
                                memcpy(0, v44, v45);
                                v49 = __src;
                                __src = 0;
                                v98 = v43;
                                v99 = 0;
                                if (v49)
                                {
                                  operator delete(v49);
                                }

                                v29 = v80;
                              }

                              else
                              {
                                *v98 = *v82;
                                v43 = v42 + 1;
                              }

                              v98 = v43;
                              v41 = v84 + 1;
                              v31 = v81;
                            }

                            while (v154 > v84 + 1);
                          }

LABEL_89:
                          v50 = (*(*v31 + 16))(v31);
                          std::vector<int>::reserve(&v150, v50);
                          std::string::basic_string[abi:ne200100]<0>(&v90, "strides");
                          v51 = MIL::IROperation::GetParameterValue();
                          MIL::IRValue::AsTensor(v51);
                          Data = MIL::IRTensorValue::GetDataView<int>();
                          v132 = v52;
                          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v90.__r_.__value_.__l.__data_);
                            v52 = v132;
                          }

                          if (v52)
                          {
                            v53 = 0;
                            do
                            {
                              v54 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&Data, v53);
                              std::vector<int>::push_back[abi:ne200100](&v150, v54);
                              ++v53;
                            }

                            while (v132 > v53);
                          }

                          v55 = (*(*v86 + 16))(v86);
                          std::vector<int>::reserve((&v151 + 8), v55);
                          std::string::basic_string[abi:ne200100]<0>(&v90, "dilations");
                          v56 = MIL::IROperation::GetParameterValue();
                          MIL::IRValue::AsTensor(v56);
                          v127 = MIL::IRTensorValue::GetDataView<int>();
                          v128 = v57;
                          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v90.__r_.__value_.__l.__data_);
                            v57 = v128;
                          }

                          if (v57)
                          {
                            v58 = 0;
                            do
                            {
                              v59 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v127, v58);
                              std::vector<int>::push_back[abi:ne200100](&v151 + 1, v59);
                              ++v58;
                            }

                            while (v128 > v58);
                          }

                          memset(&v90, 0, sizeof(v90));
                          if ((ANEMachineIR::Utils::TryGetStaticTensorShape(v85, &v90.__r_.__value_.__l.__data_) & 1) == 0)
                          {
                            v93 = 11;
                            std::string::basic_string[abi:ne200100]<0>(v94, "weights must have static shape.");
LABEL_257:
                            v67 = v90.__r_.__value_.__r.__words[0];
                            if (!v90.__r_.__value_.__r.__words[0])
                            {
                              goto LABEL_126;
                            }

                            v90.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
                            goto LABEL_125;
                          }

                          v144 = 0;
                          v145 = 0;
                          v146 = 0;
                          if ((ANEMachineIR::Utils::TryGetStaticTensorShape(v29, &v144) & 1) == 0)
                          {
                            v93 = 11;
                            std::string::basic_string[abi:ne200100]<0>(v94, "x must have static shape.");
LABEL_255:
                            if (v144)
                            {
                              v145 = v144;
                              operator delete(v144);
                            }

                            goto LABEL_257;
                          }

                          std::vector<unsigned long long>::reserve(&v100, ((v90.__r_.__value_.__l.__size_ - v90.__r_.__value_.__r.__words[0]) >> 3) + 1);
                          std::string::basic_string[abi:ne200100]<0>(&v139, "groups");
                          ScalarValueOr = MIL::ANEMachineIR::GetScalarValueOrDefault<int>(a2, &v139, 1, 0);
                          v61 = ScalarValueOr;
                          v148 = ScalarValueOr;
                          if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v139.__r_.__value_.__l.__data_);
                            v61 = v148;
                          }

                          v147 = ((v90.__r_.__value_.__l.__size_ - v90.__r_.__value_.__r.__words[0]) >> 3) - 2;
                          LOBYTE(v149) = 0;
                          v139.__r_.__value_.__r.__words[0] = v61;
                          std::vector<unsigned long long>::push_back[abi:ne200100](&v100, &v139);
                          if (v147)
                          {
                            v62 = 0;
                            v63 = 16;
                            do
                            {
                              if (v62 + 2 >= (v90.__r_.__value_.__l.__size_ - v90.__r_.__value_.__r.__words[0]) >> 3)
                              {
                                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                              }

                              std::vector<unsigned long long>::push_back[abi:ne200100](&v100, (v90.__r_.__value_.__r.__words[0] + v63));
                              ++v62;
                              v63 += 8;
                            }

                            while (v62 < v147);
                          }

                          if (v90.__r_.__value_.__l.__size_ - v90.__r_.__value_.__r.__words[0] <= 8)
                          {
                            goto LABEL_265;
                          }

                          std::vector<unsigned long long>::push_back[abi:ne200100](&v100, (v90.__r_.__value_.__r.__words[0] + 8));
                          if (v90.__r_.__value_.__l.__size_ == v90.__r_.__value_.__r.__words[0])
                          {
                            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                          }

                          v139.__r_.__value_.__r.__words[0] = *v90.__r_.__value_.__l.__data_ / v148;
                          std::vector<unsigned long long>::push_back[abi:ne200100](&v100, &v139);
                          v155 = 0;
                          std::vector<unsigned long long>::reserve(&v103, v145 - v144);
                          if (v145 == v144)
                          {
                            goto LABEL_265;
                          }

                          std::vector<unsigned long long>::push_back[abi:ne200100](&v103, v144);
                          if (v147)
                          {
                            v64 = 0;
                            v65 = 2;
                            do
                            {
                              if (v64 + 2 >= v145 - v144)
                              {
                                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                              }

                              std::vector<unsigned long long>::push_back[abi:ne200100](&v103, &v144[v65]);
                              ++v64;
                              ++v65;
                            }

                            while (v64 < v147);
                          }

                          if ((v145 - v144) <= 8)
                          {
LABEL_265:
                            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                          }

                          std::vector<unsigned long long>::push_back[abi:ne200100](&v103, v144 + 1);
                          *(&v149 + 1) = 0;
                          std::string::basic_string[abi:ne200100]<0>(__u, "pad_type");
                          std::string::basic_string[abi:ne200100]<0>(&v135, "custom");
                          MIL::ANEMachineIR::GetScalarValueOrDefault<std::string>(&v135, 0, &v139);
                          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v135.__r_.__value_.__l.__data_);
                          }

                          if (v137 < 0)
                          {
                            operator delete(*__u);
                          }

                          std::vector<int>::reserve(&v153, 2 * v147);
                          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v139, "valid"))
                          {
                            __u[0] = 0;
                            std::vector<int>::assign(&v153, 2 * v147, __u);
                          }

                          else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v139, "same"))
                          {
                            if ((v147 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v72 = 0;
                              do
                              {
                                v73 = v72 >> 1;
                                v74 = (v72 >> 1) + 1;
                                if (v74 >= (v101 - v100) >> 3)
                                {
                                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                                }

                                v75 = *(v100 + v74);
                                if (v72)
                                {
                                  if (v73 >= ((v152 - *(&v151 + 1)) >> 2))
                                  {
                                    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                                  }
                                }

                                else if (v73 >= ((v152 - *(&v151 + 1)) >> 2))
                                {
                                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                                }

                                __u[0] = ((v75 - 1) * *(*(&v151 + 1) + 4 * v73) + 1) >> 1;
                                std::vector<int>::push_back[abi:ne200100](&v153.__begin_, __u);
                                ++v72;
                              }

                              while (v72 < 2 * v147);
                            }
                          }

                          else
                          {
                            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v139, "custom"))
                            {
                              v93 = 11;
                              std::operator+<char>();
LABEL_253:
                              if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v139.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_255;
                            }

                            std::string::basic_string[abi:ne200100]<0>(__u, "pad");
                            v76 = MIL::IROperation::GetParameterValue();
                            MIL::IRValue::AsTensor(v76);
                            v124 = MIL::IRTensorValue::GetDataView<int>();
                            v125 = v77;
                            if (v137 < 0)
                            {
                              operator delete(*__u);
                            }

                            if ((v147 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v78 = 0;
                              do
                              {
                                v79 = MIL::Util::Span<int const,18446744073709551615ul>::At(&v124, v78);
                                std::vector<int>::push_back[abi:ne200100](&v153.__begin_, v79);
                                ++v78;
                              }

                              while (v78 < 2 * v147);
                            }
                          }

                          v93 = 0;
                          std::string::basic_string[abi:ne200100]<0>(v94, &unk_259A4D977);
                          goto LABEL_253;
                        }

                        v93 = 11;
                        v71 = "Unhandled dtype for conv bias.";
                      }
                    }

                    else
                    {
                      v93 = 4;
                      v71 = "Non constant bias vectors not yet implemented.";
                    }

                    std::string::basic_string[abi:ne200100]<0>(v94, v71);
                    goto LABEL_126;
                  }

                  v93 = 11;
                  std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
                  v36 = std::string::append(&v90, "pad");
                }

                else
                {
                  v93 = 11;
                  std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get value type for ");
                  v36 = std::string::append(&v90, "pad");
                }
              }

              else
              {
                v93 = 11;
                std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
                v36 = std::string::append(&v90, "kernel");
              }
            }

            else
            {
              v93 = 11;
              std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get value type for ");
              v36 = std::string::append(&v90, "kernel");
            }
          }

          else
          {
            v93 = 11;
            std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
            v36 = std::string::append(&v90, "dilations");
          }
        }

        else
        {
          v93 = 11;
          std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get value type for ");
          v36 = std::string::append(&v90, "dilations");
        }
      }

      else
      {
        v93 = 11;
        std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
        v36 = std::string::append(&v90, "strides");
      }
    }

    else
    {
      v93 = 11;
      std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get value type for ");
      v36 = std::string::append(&v90, "strides");
    }
  }

  else
  {
    v93 = 11;
    std::string::basic_string[abi:ne200100]<0>(&v90, "Cannot get type as tensor for ");
    v36 = std::string::append(&v90, "x");
  }

LABEL_123:
  v66 = *&v36->__r_.__value_.__l.__data_;
  v95 = v36->__r_.__value_.__r.__words[2];
  *v94 = v66;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    v67 = v90.__r_.__value_.__r.__words[0];
LABEL_125:
    operator delete(v67);
  }

LABEL_126:
  if (v93)
  {
    *a8 = v93;
    *(a8 + 8) = *v94;
    *(a8 + 24) = v95;
  }

  else
  {
    ANEMachineIR::Validators::InferOutputShape(&v103, &v100, &v147, &v91);
    if (!v154)
    {
      goto LABEL_132;
    }

    std::string::basic_string[abi:ne200100]<0>(&v90, "bias");
    v68 = MIL::IROperation::GetParameterType();
    v69 = MIL::IRValueType::AsTensorType(v68);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if ((*(*v69 + 88))(v69) != 4)
    {
      *a8 = 4;
      std::string::basic_string[abi:ne200100]<0>((a8 + 8), "Biases not matching the input type (fp16) are not implemented or expected from the iOS opset.");
    }

    else
    {
LABEL_132:
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      ANEMachineIR::Validators::ValidateConvParameters(LocationPtr, &v103, &v100, v19, &v91, &v147, &v90);
      if (MIL::ValidationResult::IsGood(&v90))
      {
        MIL::IRObject::GetLocationPtr(a2);
        v144 = 0;
        v145 = 0;
        v146 = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v144, v91, v92, (v92 - v91) >> 3);
        MIL::IRTensorValueType::Make();
        if (v144)
        {
          v145 = v144;
          operator delete(v144);
        }

        std::string::basic_string[abi:ne200100]<0>(&v144, "ne_conv");
        v142 = 0;
        v141 = 0;
        MIL::Builder::BlockBuilder::AddOperation();
        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v142);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v144);
        }

        std::string::basic_string[abi:ne200100]<0>(&v144, "x");
        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v139, *a3, *(a3 + 8));
        }

        else
        {
          v139 = *a3;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v140)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }

        if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v139.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(v144);
        }

        std::string::basic_string[abi:ne200100]<0>(__u, "dense_kernel");
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v135, *a4, *(a4 + 8));
        }

        else
        {
          v135 = *a4;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v138)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v138);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (v137 < 0)
        {
          operator delete(*__u);
        }

        std::string::basic_string[abi:ne200100]<0>(&Data, "num_groups");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v134)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v134);
        }

        if (v133 < 0)
        {
          operator delete(Data);
        }

        std::string::basic_string[abi:ne200100]<0>(&v127, "strides");
        v125 = 0;
        v124 = 0;
        v126 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v124, v150, *(&v150 + 1), (*(&v150 + 1) - v150) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v130)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v130);
        }

        if (v124)
        {
          v125 = v124;
          operator delete(v124);
        }

        if (v129 < 0)
        {
          operator delete(v127);
        }

        std::string::basic_string[abi:ne200100]<0>(&v124, "dilations");
        v121 = 0;
        v120 = 0;
        v122 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v120, *(&v151 + 1), v152, (v152 - *(&v151 + 1)) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }

        if (v120)
        {
          v121 = v120;
          operator delete(v120);
        }

        if (SHIBYTE(v126) < 0)
        {
          operator delete(v124);
        }

        std::string::basic_string[abi:ne200100]<0>(&v120, "pad_mode");
        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v118, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
        }

        else
        {
          v118 = v96;
        }

        MIL::Builder::OperationBuilder::AddInputString();
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v119);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v122) < 0)
        {
          operator delete(v120);
        }

        std::string::basic_string[abi:ne200100]<0>(&v115, "pad");
        v112 = 0;
        v113 = 0;
        v114 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v112, v153.__begin_, v153.__end_, v153.__end_ - v153.__begin_);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v117)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v117);
        }

        if (v112)
        {
          v113 = v112;
          operator delete(v112);
        }

        if (v116 < 0)
        {
          operator delete(v115);
        }

        if (v154)
        {
          if (v154 == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v112, "bias");
            if (v98 == __src)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            MIL::Builder::OperationBuilder::AddInputFloat16();
            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v112, "bias");
            memset(&v110, 0, sizeof(v110));
            std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(&v110, __src, v98, (v98 - __src) >> 1);
            MIL::Builder::OperationBuilder::AddInputFloat16();
            if (v111)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v111);
            }

            if (v110.__r_.__value_.__r.__words[0])
            {
              v110.__r_.__value_.__l.__size_ = v110.__r_.__value_.__r.__words[0];
              operator delete(v110.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v114) < 0)
          {
            operator delete(v112);
          }
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v110, *a5, *(a5 + 8));
        }

        else
        {
          v110 = *a5;
        }

        MIL::Builder::OperationBuilder::AddOutput();
        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (v143)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v143);
        }

        *a8 = 0;
        std::string::basic_string[abi:ne200100]<0>((a8 + 8), &unk_259A4D977);
      }

      else
      {
        *a8 = 8;
        MIL::MILResult::GetMessage(&v90);
        std::operator+<char>();
      }

      MEMORY[0x259CA8F00](&v90);
    }

    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94[0]);
    }
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (__src)
  {
    v98 = __src;
    operator delete(__src);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v153.__begin_)
  {
    v153.__end_ = v153.__begin_;
    operator delete(v153.__begin_);
  }

  if (*(&v151 + 1))
  {
    *&v152 = *(&v151 + 1);
    operator delete(*(&v151 + 1));
  }

  if (v150)
  {
    *(&v150 + 1) = v150;
    operator delete(v150);
  }

LABEL_26:
  if (SHIBYTE(v108) < 0)
  {
    operator delete(__p);
  }
}

void sub_259936514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  v58 = *(v56 - 240);
  if (v58)
  {
    *(v56 - 232) = v58;
    operator delete(v58);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues((v56 - 216));
  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  v7 = *(a3 + 6);
  this[2].__r_.__value_.__s.__data_[4] = *(a3 + 28);
  LODWORD(this[2].__r_.__value_.__l.__data_) = v7;
  return this;
}

void sub_25993698C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, a2);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }
}

unint64_t MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + 2 * a2;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<unsigned long long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }
}

void MIL::ANEMachineIR::GetScalarValueOrDefault<std::string>(uint64_t a3@<X2>, int *a4@<X3>, std::string *a5@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    if (a4)
    {
      v11 = 1;
      goto LABEL_12;
    }

LABEL_13:
    *&a5->__r_.__value_.__l.__data_ = *a3;
    a5->__r_.__value_.__r.__words[2] = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    return;
  }

  if (!(*(*ParameterValue + 40))(ParameterValue) || (v9 = MEMORY[0x259CA93D0]()) == 0)
  {
    if (a4)
    {
      v11 = 2;
LABEL_12:
      *a4 = v11;
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (*(v9 + 23) < 0)
  {
    v12 = *v9;
    v13 = *(v9 + 8);

    std::string::__init_copy_ctor_external(a5, v12, v13);
  }

  else
  {
    v10 = *v9;
    a5->__r_.__value_.__r.__words[2] = *(v9 + 16);
    *&a5->__r_.__value_.__l.__data_ = v10;
  }
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<int>::__vallocate[abi:ne200100](this, v8);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_259A3BEB0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_259A3BEA0)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_259A3BEB0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_259A3BEA0)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

uint64_t *std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259937088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::anonymous namespace::TranslateConvOp(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

char *ANEMachineIR::GetOpsetString(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return (&off_2798E3520)[a1];
  }
}

uint64_t ANEMachineIR::LookupOpsetString(uint64_t *a1, int *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 == 12)
    {
      if (*a1 != 0x68776F6C66656E61 || *(a1 + 2) != 808595506)
      {
        if (*a1 != 0x68776F6C66656E61 || *(a1 + 2) != 825372722)
        {
          goto LABEL_25;
        }

LABEL_31:
        v9 = 1;
        goto LABEL_33;
      }

LABEL_30:
      v9 = 0;
      goto LABEL_33;
    }

    return 0;
  }

  if (a1[1] == 12 && **a1 == 0x68776F6C66656E61 && *(*a1 + 8) == 808595506)
  {
    goto LABEL_30;
  }

  if (a1[1] == 12 && **a1 == 0x68776F6C66656E61 && *(*a1 + 8) == 825372722)
  {
    goto LABEL_31;
  }

  if (a1[1] != 12)
  {
    return 0;
  }

  a1 = *a1;
LABEL_25:
  if (*a1 != 0x68776F6C66656E61 || *(a1 + 2) != 842149938)
  {
    return 0;
  }

  v9 = 2;
LABEL_33:
  *a2 = v9;
  return 1;
}

void ANEMachineIR::H2020::BaseActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259937678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
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

void ANEMachineIR::H2020::Linear::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2020::Validators::ValidateLinear;
  v5[3] = v5;
  ANEMachineIR::H2020::BaseActivation::Make(a1, __p, v5);
}

void sub_25993787C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::NePiecewiseV2::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_259938BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void ANEMachineIR::H2020::Relu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2020::Validators::ValidateRelu;
  v5[3] = v5;
  ANEMachineIR::H2020::BaseActivation::Make(a1, __p, v5);
}

void sub_2599392C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::ScaledActivation::Make(MIL::IRUnknownDimension *a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_2599397F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
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

void ANEMachineIR::H2020::Lrelu::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  operator new();
}

void sub_259939F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 a31, char a32, char a33)
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

void ANEMachineIR::H2020::Sigmoid::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2020::Validators::ValidateSigmoid;
  v5[3] = v5;
  ANEMachineIR::H2020::ScaledActivation::Make(a1, __p, v5);
}

void sub_25993A19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Sqrt::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2020::Validators::ValidateSqrt;
  v5[3] = v5;
  ANEMachineIR::H2020::ScaledActivation::Make(a1, __p, v5);
}

void sub_25993A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Tanh::Make(MIL::IRUnknownDimension *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = v2;
  v5[0] = &unk_286AADC48;
  v5[1] = ANEMachineIR::H2020::Validators::ValidateTanh;
  v5[3] = v5;
  ANEMachineIR::H2020::ScaledActivation::Make(a1, __p, v5);
}

void sub_25993A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_25993A45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[12],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25993A544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25993A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[7],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25993A6A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25993A71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[9],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25993A804(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25993A87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[6],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25993A964(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::NeMatmulCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v7 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_5;
    }

LABEL_15:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!InterpretedTensorValue)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (!v7)
  {
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
    return;
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
  LOWORD(Data) = MIL::Fp16::FromFloat(v8, 1.0);
  v73 = 0uLL;
  v72 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v72, &Data, &Data + 1, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v72, &v81);
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "acc_left_shift");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v10 = MEMORY[0x259CA93E0]()) != 0)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "post_right_shift");
  v12 = MIL::IROperation::TryGetParameterValue();
  if (v12 && (*(*v12 + 40))(v12) && (v13 = MEMORY[0x259CA93E0]()) != 0)
  {
    v70 = *v13;
  }

  else
  {
    v70 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  v15 = (*(*v14 + 88))(v14);
  v16 = (*(*v7 + 32))(v7);
  v17 = (*(*v16 + 88))(v16);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v19 = MIL::IRValueType::AsTensorType(OutputType);
  v71 = (*(*v19 + 88))(v19);
  v20 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
  ANEMachineIR::Utils::GetStaticTensorShape(__dst, v20, v21);
  v22 = (*(*v7 + 32))(v7);
  ANEMachineIR::Utils::GetStaticTensorShape(&v78, v22, v23);
  ANEMachineIR::Utils::GetStaticTensorShape(v77, v19, v24);
  v69 = v11;
  if (v17 == 4)
  {
    v25 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    v26 = 0;
  }

  else
  {
    v27 = (*(*v7 + 32))(v7);
    ANEMachineIR::Utils::GetStaticTensorShape(&__p.__r_.__value_.__l.__data_, v27, v28);
    v29 = __p.__r_.__value_.__r.__words[0];
    v30 = 1;
    while (v29 != __p.__r_.__value_.__l.__size_)
    {
      v31 = *v29++;
      v30 *= v31;
    }

    v72 = 0;
    v73 = 0uLL;
    std::vector<MIL::Fp16>::reserve(&v72, v30);
    if (v17 == 9)
    {
      Data = MIL::IRTensorValue::GetDataView<signed char>();
      v101 = v36;
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          v38 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, i);
          LOWORD(v75) = MIL::Fp16::FromFloat(v38, *v38);
          std::vector<MIL::Fp16>::push_back[abi:ne200100](&v72, &v75);
        }
      }
    }

    else
    {
      if (v17 != 14)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Unexpected dtype copying to fp16.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned char>();
      v101 = v32;
      if (v30)
      {
        for (j = 0; j != v30; ++j)
        {
          v34 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](&Data, j);
          LOBYTE(v35) = *v34;
          LOWORD(v75) = MIL::Fp16::FromFloat(v34, v35);
          std::vector<MIL::Fp16>::push_back[abi:ne200100](&v72, &v75);
        }
      }
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 = v72;
    v25 = v72;
  }

  v39 = std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  LOWORD(Data) = MIL::Fp16::FromFloat(v39, 0.0);
  v73 = 0uLL;
  v72 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v72, &Data, &Data + 1, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v72, &v75);
  if (v72)
  {
    *&v73 = v72;
    operator delete(v72);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bias");
  v40 = MIL::IROperation::TryGetParameterValue();
  v41 = v40;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v42 = MIL::Fp16::FromFloat(v40, 1.0);
  if (!v41)
  {
    v46 = v42;
LABEL_68:
    v68 = v25;
    goto LABEL_69;
  }

  if (v17 == 4)
  {
    v50 = std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
    v46 = MIL::Fp16::FromFloat(v50, 1.0);
    v51 = MIL::IROperation::TryGetParameterValue();
    if (v51)
    {
      if ((*(*v51 + 40))(v51))
      {
        v52 = MEMORY[0x259CA93C0]();
        if (v52)
        {
          v46 = *v52;
        }
      }
    }
  }

  else
  {
    if (v17 == 9)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
      v43 = MIL::IROperation::TryGetParameterValue();
      v44 = 1.0;
      if (v43)
      {
        v43 = (*(*v43 + 40))(v43);
        if (v43)
        {
          v43 = MEMORY[0x259CA93E0]();
          if (v43)
          {
            v44 = *v43;
          }
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
      v43 = MIL::IROperation::TryGetParameterValue();
      v44 = 1.0;
      if (v43)
      {
        v43 = (*(*v43 + 40))(v43);
        if (v43)
        {
          v43 = MEMORY[0x259CA9410]();
          if (v43)
          {
            LOBYTE(v45) = *v43;
            v44 = v45;
          }
        }
      }
    }

    v46 = MIL::Fp16::FromFloat(v43, v44);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = v78;
  if (v79 == v78)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (*v78 == (v76 - v75) >> 1)
  {
    goto LABEL_68;
  }

  if (v76 - v75 == 2)
  {
    v68 = v25;
    v49 = -1;
    while (*v47 - 1 > ++v49)
    {
      std::vector<MIL::Fp16>::push_back[abi:ne200100](&v75, v76 - 1);
      v47 = v78;
      if (v79 == v78)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }
    }

LABEL_69:
    v73 = 0uLL;
    v74 = 0;
    MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v72, &Data);
    if (v72)
    {
      *a3 = v72;
      *(a3 + 8) = v73;
      *(a3 + 24) = v74;
      v73 = 0uLL;
      v74 = 0;
      goto LABEL_112;
    }

    __p.__r_.__value_.__r.__words[0] = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__dst, __dst[0], &__p, &__p.__r_.__value_.__s.__data_[8], 1);
    *&__p.__r_.__value_.__l.__data_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v78, v78, &__p, &__p.__r_.__value_.__s.__data_[16], 2);
    __p.__r_.__value_.__r.__words[0] = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(v77, v77[0], &__p, &__p.__r_.__value_.__s.__data_[8], 1);
    memset(v99, 0, 24);
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    *&__p.__r_.__value_.__l.__data_ = xmmword_259A3BF40;
    LOWORD(__p.__r_.__value_.__r.__words[2]) = 0;
    __p.__r_.__value_.__s.__data_[18] = 0;
    __src = 0x100000001;
    std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(&v96, &__src, &v93, 2uLL);
    __src = 0x100000001;
    std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(&v97 + 1, &__src, &v93, 2uLL);
    v93 = 0;
    __src = 0;
    std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v99, &__src, v94, 4uLL);
    v99[3] = ((v76 - v75) >> 1);
    v99[4] = ((v82 - v81) >> 1);
    switch(v15)
    {
      case 4:
        switch(v71)
        {
          case 14:
            v63 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v90, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(v63, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v90);
          case 9:
            v61 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v89, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(v61, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v89);
          case 4:
            v57 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v91, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(v57, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v91);
        }

        break;
      case 9:
        switch(v71)
        {
          case 14:
            v60 = MIL::IRTensorValue::GetDataView<signed char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v84, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(v60, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v84);
          case 9:
            v59 = MIL::IRTensorValue::GetDataView<signed char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v83, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(v59, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v83);
          case 4:
            v56 = MIL::IRTensorValue::GetDataView<signed char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v85, &Data);
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(v56, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, 0, 0, v85);
        }

        break;
      case 14:
        switch(v71)
        {
          case 14:
            v64 = MIL::IRTensorValue::GetDataView<unsigned char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v87, &Data);
            LOBYTE(v67) = 0;
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(v64, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, v67, v87);
          case 9:
            v62 = MIL::IRTensorValue::GetDataView<unsigned char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v86, &Data);
            LOBYTE(v67) = 0;
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(v62, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, v67, v86);
          case 4:
            v48 = MIL::IRTensorValue::GetDataView<unsigned char>();
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v88, &Data);
            LOBYTE(v67) = 0;
            MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(v48, __dst, v68, v17, &v78, v77, &__p, 0, v69, 0, v70, &v75, &v81, v41 != 0, v66, v46, v67, v88);
        }

        break;
      default:
        v58 = "Unimplemented input dtype";
        goto LABEL_99;
    }

    v58 = "Unimplemented output dtype";
LABEL_99:
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), v58);
    if (v99[0])
    {
      v99[1] = v99[0];
      operator delete(v99[0]);
    }

    if (*(&v97 + 1))
    {
      *&v98 = *(&v97 + 1);
      operator delete(*(&v97 + 1));
    }

    if (v96)
    {
      *(&v96 + 1) = v96;
      operator delete(v96);
    }

LABEL_112:
    std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&Data);
    if (SHIBYTE(v74) < 0)
    {
      v55 = v73;
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  *a3 = 3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "matrix_vector_bias");
  v53 = std::string::insert(&__p, 0, "Vector size wrong for ");
  v54 = *&v53->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v53->__r_.__value_.__l + 2);
  *(a3 + 8) = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v55 = __p.__r_.__value_.__r.__words[0];
LABEL_114:
    operator delete(v55);
  }

LABEL_115:
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }
}

void sub_25993C018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43)
{
  v45 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v45;
    operator delete(v45);
  }

  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(&STACK[0x250]);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v43 - 152);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(MIL::Fp16 *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  MIL::Fp16::FromFloat(a1, 0.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue) && (v7 = MEMORY[0x259CA93C0]()) != 0)
    {
      LOWORD(v19) = *v7;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(a4, &v19, &v19 + 1, 1);
    }

    else
    {
      v8 = MIL::IROperation::GetParameterValue();
      v9 = MIL::IRValue::AsTensor(v8);
      v10 = (*(*v9 + 32))(v9);
      ANEMachineIR::Utils::GetStaticTensorShape(&v19, v10, v11);
      if (v20 == v19)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *v19;
      v20 = v19;
      operator delete(v19);
      v19 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
      v20 = v13;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      std::vector<MIL::Fp16>::reserve(a4, v12);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v15 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::operator[](&v19, i);
          std::vector<MIL::Fp16>::push_back[abi:ne200100](a4, v15);
        }
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v16 = *a3;
    v17 = *(a3 + 8);
    v18 = (v17 - *a3) >> 1;

    std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(a4, v16, v17, v18);
  }
}

void sub_25993C600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::push_back[abi:ne200100](const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_13;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        Float = MIL::Fp16::GetFloat(&v39);
        v29 = MIL::Fp16::FromFloat(Float, v28);
        v48 = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_13:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_13;
}

void sub_25993D348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  v52 = *a37;
  if (*a37)
  {
    *(a37 + 8) = v52;
    operator delete(v52);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<MIL::Fp16 const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_13;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        Float = MIL::Fp16::GetFloat(&v39);
        v29 = MIL::Fp16::FromFloat(Float, v28);
        v47[3] = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_13:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_13;
}

void sub_25993E0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<MIL::Fp16 const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_13;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        Float = MIL::Fp16::GetFloat(&v39);
        v29 = MIL::Fp16::FromFloat(Float, v28);
        v47[3] = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_13:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_13;
}

void sub_25993EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<MIL::Fp16 ()(MIL::Fp16)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<MIL::Fp16 const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, uint64_t a18, uint64_t a19)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = a17;
  v44[1] = a3;
  v45 = a1;
  v20 = *a7;
  if (*a7 == 3)
  {
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v22 <= 8)
    {
      goto LABEL_20;
    }

    v23 = *(v21 + 8);
    v44[0] = v23;
  }

  else
  {
    v23 = 1;
    v44[0] = 1;
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v20 < 2)
    {
      v24 = 1;
      v43 = 1;
      v23 = 1;
      if (v22 > 8)
      {
LABEL_8:
        v25 = v21 + v22;
        v42 = *(v25 - 16);
        v40 = *(v25 - 8);
        v41 = v40;
        v38 = v40 * v42 * v24;
        v39 = v40 * v42;
        v37 = v38 * v23;
        MIL::Fp16::GetFloat(&v46);
        if (v26 == INFINITY)
        {
          LOBYTE(v27) = -1;
        }

        else if (v26 == -INFINITY)
        {
          LOBYTE(v27) = 0;
        }

        else
        {
          v28 = llroundf(v26);
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v27 = v28 & ~(v28 >> 31);
        }

        v36 = v27;
        v48 = 0;
        if (a15)
        {
          *&v29 = &v41;
          *(&v29 + 1) = &v36;
          v30 = &v45;
          v31 = &v37;
          v32 = &v38;
          v33 = &v39;
          v34 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v29);
        }

        if (a8)
        {
          *&v29 = v44;
          *(&v29 + 1) = &v43;
          v30 = &v42;
          v31 = &v45;
          v32 = &v37;
          v33 = &v38;
          v34 = &v39;
          v35 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v29);
        }

        *&v29 = v44;
        *(&v29 + 1) = &v43;
        v30 = &v42;
        v31 = &v45;
        v32 = &v37;
        v33 = &v38;
        v34 = &v39;
        v35 = &v40;
        std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v29);
      }

LABEL_20:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v22 > 0x10)
  {
    v24 = *(v21 + v22 - 24);
    v43 = v24;
    goto LABEL_8;
  }

  goto LABEL_20;
}

void sub_25993FB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::~__value_func[abi:ne200100](v50 - 256);
  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  v52 = *a37;
  if (*a37)
  {
    *(a37 + 8) = v52;
    operator delete(v52);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](v50 - 224);
  std::__function::__value_func<unsigned char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, uint64_t a18, uint64_t a19)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v46 = a17;
  v44[1] = a3;
  v45 = a1;
  v20 = *a7;
  if (*a7 == 3)
  {
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v22 <= 8)
    {
      goto LABEL_20;
    }

    v23 = *(v21 + 8);
    v44[0] = v23;
  }

  else
  {
    v23 = 1;
    v44[0] = 1;
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v20 < 2)
    {
      v24 = 1;
      v43 = 1;
      v23 = 1;
      if (v22 > 8)
      {
LABEL_8:
        v25 = v21 + v22;
        v42 = *(v25 - 16);
        v40 = *(v25 - 8);
        v41 = v40;
        v38 = v40 * v42 * v24;
        v39 = v40 * v42;
        v37 = v38 * v23;
        MIL::Fp16::GetFloat(&v46);
        if (v26 == INFINITY)
        {
          LOBYTE(v27) = -1;
        }

        else if (v26 == -INFINITY)
        {
          LOBYTE(v27) = 0;
        }

        else
        {
          v28 = llroundf(v26);
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v27 = v28 & ~(v28 >> 31);
        }

        v36 = v27;
        v47[3] = 0;
        if (a15)
        {
          *&v29 = &v41;
          *(&v29 + 1) = &v36;
          v30 = &v45;
          v31 = &v37;
          v32 = &v38;
          v33 = &v39;
          v34 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v29);
        }

        if (a8)
        {
          *&v29 = v44;
          *(&v29 + 1) = &v43;
          v30 = &v42;
          v31 = &v45;
          v32 = &v37;
          v33 = &v38;
          v34 = &v39;
          v35 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v29);
        }

        *&v29 = v44;
        *(&v29 + 1) = &v43;
        v30 = &v42;
        v31 = &v45;
        v32 = &v37;
        v33 = &v38;
        v34 = &v39;
        v35 = &v40;
        std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v29);
      }

LABEL_20:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v22 > 0x10)
  {
    v24 = *(v21 + v22 - 24);
    v43 = v24;
    goto LABEL_8;
  }

  goto LABEL_20;
}

void sub_259940914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::~__value_func[abi:ne200100](v50 - 256);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](v50 - 224);
  std::__function::__value_func<unsigned char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, uint64_t a18, uint64_t a19)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v46 = a17;
  v44[1] = a3;
  v45 = a1;
  v20 = *a7;
  if (*a7 == 3)
  {
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v22 <= 8)
    {
      goto LABEL_20;
    }

    v23 = *(v21 + 8);
    v44[0] = v23;
  }

  else
  {
    v23 = 1;
    v44[0] = 1;
    v21 = *a2;
    v22 = a2[1] - *a2;
    if (v20 < 2)
    {
      v24 = 1;
      v43 = 1;
      v23 = 1;
      if (v22 > 8)
      {
LABEL_8:
        v25 = v21 + v22;
        v42 = *(v25 - 16);
        v40 = *(v25 - 8);
        v41 = v40;
        v38 = v40 * v42 * v24;
        v39 = v40 * v42;
        v37 = v38 * v23;
        MIL::Fp16::GetFloat(&v46);
        if (v26 == INFINITY)
        {
          LOBYTE(v27) = -1;
        }

        else if (v26 == -INFINITY)
        {
          LOBYTE(v27) = 0;
        }

        else
        {
          v28 = llroundf(v26);
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v27 = v28 & ~(v28 >> 31);
        }

        v36 = v27;
        v47[3] = 0;
        if (a15)
        {
          *&v29 = &v41;
          *(&v29 + 1) = &v36;
          v30 = &v45;
          v31 = &v37;
          v32 = &v38;
          v33 = &v39;
          v34 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v29);
        }

        if (a8)
        {
          *&v29 = v44;
          *(&v29 + 1) = &v43;
          v30 = &v42;
          v31 = &v45;
          v32 = &v37;
          v33 = &v38;
          v34 = &v39;
          v35 = &v40;
          std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v29);
        }

        *&v29 = v44;
        *(&v29 + 1) = &v43;
        v30 = &v42;
        v31 = &v45;
        v32 = &v37;
        v33 = &v38;
        v34 = &v39;
        v35 = &v40;
        std::function<unsigned char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v29);
      }

LABEL_20:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v22 > 0x10)
  {
    v24 = *(v21 + v22 - 24);
    v43 = v24;
    goto LABEL_8;
  }

  goto LABEL_20;
}

void sub_25994169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::~__value_func[abi:ne200100](v50 - 256);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<unsigned char ()(unsigned char)>::~__value_func[abi:ne200100](v50 - 224);
  std::__function::__value_func<unsigned char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_21;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        MIL::Fp16::GetFloat(&v39);
        if (v27 == INFINITY)
        {
          LOBYTE(v28) = 127;
        }

        else if (v27 == -INFINITY)
        {
          LOBYTE(v28) = 0x80;
        }

        else
        {
          v28 = llroundf(v27);
          if (v28 >= 127)
          {
            v28 = 127;
          }

          if (v28 <= -128)
          {
            LOBYTE(v28) = 0x80;
          }
        }

        v29 = v28;
        v48 = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_21:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_21;
}

void sub_259942420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  v52 = *a37;
  if (*a37)
  {
    *(a37 + 8) = v52;
    operator delete(v52);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_21;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        MIL::Fp16::GetFloat(&v39);
        if (v27 == INFINITY)
        {
          LOBYTE(v28) = 127;
        }

        else if (v27 == -INFINITY)
        {
          LOBYTE(v28) = 0x80;
        }

        else
        {
          v28 = llroundf(v27);
          if (v28 >= 127)
          {
            v28 = 127;
          }

          if (v28 <= -128)
          {
            LOBYTE(v28) = 0x80;
          }
        }

        v29 = v28;
        v47[3] = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_21:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_21;
}

void sub_2599431E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t *a7, int a8, char a10, char a11, char a12, uint64_t a13, MIL::Fp16 **a14, char a15, int a16, __int16 a17, int a18, char a19, uint64_t a20)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v39 = a17;
  v37[1] = a3;
  v38 = a1;
  v21 = *a7;
  if (*a7 == 3)
  {
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v23 <= 8)
    {
      goto LABEL_21;
    }

    v24 = *(v22 + 8);
    v37[0] = v24;
  }

  else
  {
    v24 = 1;
    v37[0] = 1;
    v22 = *a2;
    v23 = a2[1] - *a2;
    if (v21 < 2)
    {
      v25 = 1;
      v36 = 1;
      v24 = 1;
      if (v23 > 8)
      {
LABEL_8:
        v26 = v22 + v23;
        v35 = *(v26 - 16);
        v33 = *(v26 - 8);
        v34 = v33;
        v32 = v33 * v35;
        v31 = v33 * v35 * v25;
        v30 = v31 * v24;
        MIL::Fp16::GetFloat(&v39);
        if (v27 == INFINITY)
        {
          LOBYTE(v28) = 127;
        }

        else if (v27 == -INFINITY)
        {
          LOBYTE(v28) = 0x80;
        }

        else
        {
          v28 = llroundf(v27);
          if (v28 >= 127)
          {
            v28 = 127;
          }

          if (v28 <= -128)
          {
            LOBYTE(v28) = 0x80;
          }
        }

        v29 = v28;
        v47[3] = 0;
        if (a15)
        {
          *&v40 = &v34;
          *(&v40 + 1) = &v29;
          v41 = &v38;
          v42 = &v30;
          v43 = &v31;
          v44 = &v32;
          v45 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(v47, &v40);
        }

        if (a8)
        {
          *&v40 = v37;
          *(&v40 + 1) = &v36;
          v41 = &v35;
          v42 = &v38;
          v43 = &v30;
          v44 = &v31;
          v45 = &v32;
          v46 = &v33;
          std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(v47, &v40);
        }

        *&v40 = v37;
        *(&v40 + 1) = &v36;
        v41 = &v35;
        v42 = &v38;
        v43 = &v30;
        v44 = &v31;
        v45 = &v32;
        v46 = &v33;
        std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(v47, &v40);
      }

LABEL_21:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v23 > 0x10)
  {
    v25 = *(v22 + v23 - 24);
    v36 = v25;
    goto LABEL_8;
  }

  goto LABEL_21;
}

void sub_259943FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50)
{
  std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::~__value_func[abi:ne200100](&STACK[0x210]);
  if (__p)
  {
    operator delete(__p);
  }

  v52 = a37;
  if (a50)
  {
    operator delete(a50);
    v52 = a37;
  }

  v53 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v53;
    operator delete(v53);
  }

  std::__function::__value_func<signed char ()(signed char)>::~__value_func[abi:ne200100](&STACK[0x230]);
  std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](v50 - 192);
  _Unwind_Resume(a1);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

unint64_t MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

unint64_t MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::operator[](void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + 2 * a2;
}

uint64_t *std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599442A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

_WORD *std::vector<MIL::Fp16>::assign(uint64_t *a1, unint64_t a2, __int16 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v5 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v5;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<MIL::Fp16>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 1;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_259A3BEB0)));
      if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
      {
        *(v16 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
      {
        *(v16 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_259A3BEA0)))), *&v14).i8[2])
      {
        *(v16 - 2) = v13;
        *(v16 - 1) = v13;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_259A3BF60)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
      {
        *v16 = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
      {
        v16[1] = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_259A3BF50))))).i8[6])
      {
        v16[2] = v13;
        v16[3] = v13;
      }

      v12 += 8;
      v16 += 8;
    }

    while (v15 != v12);
  }

  v20 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = &result[a2];
  }

  else
  {
    v21 = 0;
    v22 = v9 + 2 * v20;
    v23 = *a3;
    v24 = (2 * a2 - (v9 - result) - 2) >> 1;
    v25 = vdupq_n_s64(v24);
    v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
    v27 = (v9 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_259A3BEB0)));
      if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
      {
        *(v27 - 4) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
      {
        *(v27 - 3) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_259A3BEA0)))), *&v25).i8[2])
      {
        *(v27 - 2) = v23;
        *(v27 - 1) = v23;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_259A3BF60)));
      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
      {
        *v27 = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
      {
        v27[1] = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_259A3BF50))))).i8[6])
      {
        v27[2] = v23;
        v27[3] = v23;
      }

      v21 += 8;
      v27 += 8;
    }

    while (v26 != v21);
    a1[1] = v22;
  }

  return result;
}

_DWORD *std::vector<float>::assign(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<int>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_259A3BEB0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_259A3BEA0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_259A3BEB0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_259A3BEA0)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t std::function<MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t std::function<float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t std::function<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, uint64_t a2, int a3, __int16 a4, char a5, float a6, float a7)
{
  v13 = a4;
  v12 = a3;
  v11 = a6;
  v10 = a7;
  v9 = a5;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2, &v12, &v13, &v11, &v10, &v9);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAE7E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<MIL::Fp16 const,false>::__call[abi:ne200100]<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1} &,int,int,int,int,int,int>(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a6;
  if (**a1 == v6)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = (**(a1 + 16) + 2 * **(a1 + 24) * *a2 + 2 * **(a1 + 32) * *a3 + 2 * **(a1 + 40) * *a4 + 2 * **(a1 + 48) * *a5 + 2 * v6);
  }

  return *v7;
}

void *std::__function::__value_func<MIL::Fp16 const ()(int,int,int,int,int,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_259945420(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAE878;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(MIL::Fp16 *a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 1) <= v6)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v7 = *a4;
  if ((v7 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 2) <= v7)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v8 = *a5;
  if ((v8 & 0x80000000) != 0 || **(a1 + 3) <= v8)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  else
  {
    return *(**(a1 + 4) + 2 * **(a1 + 5) * *a2 + 2 * **(a1 + 6) * v6 + 2 * **(a1 + 7) * v7 + 2 * **(a1 + 8) * v8 + 2 * *a6);
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAE8F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + 2 * **(a1 + 40) * *a2 + 2 * **(a1 + 48) * v6 + 2 * **(a1 + 56) * v8 + 2 * **(a1 + 64) * v9 + 2 * *a6);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v9;
    v30 = v7;
    v31 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v25 = *a4;
    MIL::Fp16::GetFloat(&v25);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    v22 = ilogbf(v15);
    if (v22 <= -14)
    {
      v23 = -14;
    }

    else
    {
      v23 = v22;
    }

    if (v21 + v17 + v23 >= -20)
    {
      v24 = *a2 + llroundf(v16 * (v15 * v19));
      if (v24 < 0x80000000)
      {
        if (v24 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v24;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_259945DBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAEC08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<float const ()(int,int,int,int,int,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_25994655C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAEC98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<MIL::Fp16 const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<unsigned char>::assign(uint64_t *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = v15 + v14;
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAED18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAED98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(MIL::Fp16 *a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 1) <= v6)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v7 = *a4;
  if ((v7 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 2) <= v7)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v8 = *a5;
  if ((v8 & 0x80000000) != 0 || **(a1 + 3) <= v8)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  else
  {
    return *(**(a1 + 4) + 2 * **(a1 + 5) * *a2 + 2 * **(a1 + 6) * v6 + 2 * **(a1 + 7) * v7 + 2 * **(a1 + 8) * v8 + 2 * *a6);
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAEE18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + 2 * **(a1 + 40) * *a2 + 2 * **(a1 + 48) * v6 + 2 * **(a1 + 56) * v8 + 2 * **(a1 + 64) * v9 + 2 * *a6);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v9;
    v30 = v7;
    v31 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v25 = *a4;
    MIL::Fp16::GetFloat(&v25);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    v22 = ilogbf(v15);
    if (v22 <= -14)
    {
      v23 = -14;
    }

    else
    {
      v23 = v22;
    }

    if (v21 + v17 + v23 >= -20)
    {
      v24 = *a2 + llroundf(v16 * (v15 * v19));
      if (v24 < 0x80000000)
      {
        if (v24 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v24;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(MIL::Fp16 *a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 1) <= v6)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v7 = *a4;
  if ((v7 & 0x80000000) != 0)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  if (**(a1 + 2) <= v7)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  v8 = *a5;
  if ((v8 & 0x80000000) != 0 || **(a1 + 3) <= v8)
  {
    return MIL::Fp16::FromFloat(a1, 0.0);
  }

  else
  {
    return *(**(a1 + 4) + 2 * **(a1 + 5) * *a2 + 2 * **(a1 + 6) * v6 + 2 * **(a1 + 7) * v7 + 2 * **(a1 + 8) * v8 + 2 * *a6);
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + 2 * **(a1 + 40) * *a2 + 2 * **(a1 + 48) * v6 + 2 * **(a1 + 56) * v8 + 2 * **(a1 + 64) * v9 + 2 * *a6);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,MIL::Fp16 const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v5 = *a2;
  Float = MIL::Fp16::GetFloat(&v5);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  return MIL::Fp16::FromFloat(Float, v3);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v9;
    v30 = v7;
    v31 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v25 = *a4;
    MIL::Fp16::GetFloat(&v25);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    v22 = ilogbf(v15);
    if (v22 <= -14)
    {
      v23 = -14;
    }

    else
    {
      v23 = v22;
    }

    if (v21 + v17 + v23 >= -20)
    {
      v24 = *a2 + llroundf(v16 * (v15 * v19));
      if (v24 < 0x80000000)
      {
        if (v24 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v24;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, __int16 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v24 = v12;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v15 = *a5;
    v16 = *a6;
    v17 = *a7;
    v23 = *a4;
    MIL::Fp16::GetFloat(&v23);
    v19 = v18;
    v20 = ilogbf(v18);
    if (v20 <= -14)
    {
      v21 = -14;
    }

    else
    {
      v21 = v20;
    }

    if (v21 + v17 >= -20)
    {
      v22 = *a2 + llroundf(v16 * (v19 * v15));
      if (v22 < 0x80000000)
      {
        if (v22 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v22;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,MIL::Fp16,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF698;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(MIL::Fp16 const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<unsigned char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t std::function<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, uint64_t a2, int a3, char a4, char a5, float a6, float a7)
{
  v13 = a3;
  v12 = a4;
  v11 = a6;
  v10 = a7;
  v9 = a5;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2, &v13, &v12, &v11, &v10, &v9);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<unsigned char const,false>::__call[abi:ne200100]<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1} &,int,int,int,int,int,int>(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a6;
  if (**a1 == v6)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = (**(a1 + 16) + **(a1 + 24) * *a2 + **(a1 + 32) * *a3 + **(a1 + 40) * *a4 + **(a1 + 48) * *a5 + v6);
  }

  return *v7;
}

void *std::__function::__value_func<unsigned char const ()(int,int,int,int,int,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_259949640(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF7A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAF828;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_259949E8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFAB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<unsigned char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFBB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFC38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFCB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFF38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AAFFB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0038;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB00B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0138;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,unsigned char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(unsigned char)#1}>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB03B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t std::function<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, uint64_t a2, int a3, char a4, char a5, float a6, float a7)
{
  v13 = a3;
  v12 = a4;
  v11 = a6;
  v10 = a7;
  v9 = a5;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2, &v13, &v12, &v11, &v10, &v9);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB04B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<signed char const,false>::__call[abi:ne200100]<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1} &,int,int,int,int,int,int>(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a6;
  if (**a1 == v6)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = (**(a1 + 16) + **(a1 + 24) * *a2 + **(a1 + 32) * *a3 + **(a1 + 40) * *a4 + **(a1 + 48) * *a5 + v6);
  }

  return *v7;
}

void *std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_25994CDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0548;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB05C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_25994D70C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB08D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB09D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0A58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0AD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0DD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
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

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0E58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0ED8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0F58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0FD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}