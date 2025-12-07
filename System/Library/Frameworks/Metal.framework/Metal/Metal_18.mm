const char *MTLDataTypeGetShaderTypeName(uint64_t a1, int a2)
{
  result = "";
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 > 44)
      {
        if (a1 > 80)
        {
          switch(a1)
          {
            case 'Q':
              return "long3";
            case 'U':
              return "ulong3";
            case 'y':
              return "bfloat3";
          }
        }

        else
        {
          switch(a1)
          {
            case '-':
              return "char3";
            case '1':
              return "uchar3";
            case '5':
              return "BOOL3";
          }
        }
      }

      else if (a1 > 32)
      {
        switch(a1)
        {
          case '!':
            return "uint3";
          case '%':
            return "short3";
          case ')':
            return "ushort3";
        }
      }

      else
      {
        switch(a1)
        {
          case 3:
            return "float3";
          case 16:
            return "half3";
          case 29:
            return "int3";
        }
      }
    }

    else if (a2 == 4)
    {
      if (a1 > 44)
      {
        if (a1 > 80)
        {
          switch(a1)
          {
            case 'Q':
              return "long4";
            case 'U':
              return "ulong4";
            case 'y':
              return "bfloat4";
          }
        }

        else
        {
          switch(a1)
          {
            case '-':
              return "char4";
            case '1':
              return "uchar4";
            case '5':
              return "BOOL4";
          }
        }
      }

      else if (a1 > 32)
      {
        switch(a1)
        {
          case '!':
            return "uint4";
          case '%':
            return "short4";
          case ')':
            return "ushort4";
        }
      }

      else
      {
        switch(a1)
        {
          case 3:
            return "float4";
          case 16:
            return "half4";
          case 29:
            return "int4";
        }
      }
    }
  }

  else if (a2 == 1)
  {
    if (a1 > 44)
    {
      if (a1 > 80)
      {
        switch(a1)
        {
          case 'Q':
            return "long";
          case 'U':
            return "ulong";
          case 'y':
            return "bfloat";
        }
      }

      else
      {
        switch(a1)
        {
          case '-':
            return "char";
          case '1':
            return "uchar";
          case '5':
            return "BOOL";
        }
      }
    }

    else if (a1 > 32)
    {
      switch(a1)
      {
        case '!':
          return "uint";
        case '%':
          return "short";
        case ')':
          return "ushort";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          return "float";
        case 16:
          return "half";
        case 29:
          return "int";
      }
    }
  }

  else if (a2 == 2)
  {
    if (a1 > 44)
    {
      if (a1 > 80)
      {
        switch(a1)
        {
          case 'Q':
            return "long2";
          case 'U':
            return "ulong2";
          case 'y':
            return "bfloat2";
        }
      }

      else
      {
        switch(a1)
        {
          case '-':
            return "char2";
          case '1':
            return "uchar2";
          case '5':
            return "BOOL2";
        }
      }
    }

    else if (a1 > 32)
    {
      switch(a1)
      {
        case '!':
          return "uint2";
        case '%':
          return "short2";
        case ')':
          return "ushort2";
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          return "float2";
        case 16:
          return "half2";
        case 29:
          return "int2";
      }
    }
  }

  return result;
}

uint64_t MTLDataTypeGetAlignment(uint64_t a1)
{
  if ((a1 - 3) > 0x88)
  {
    return 0;
  }

  else
  {
    return qword_185DE3CC0[a1 - 3];
  }
}

void validateMTLDataType(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 0x3D && (a1 - 78 > 0x3D || ((1 << (a1 - 78)) & 0x23FE79E0000007FFLL) == 0))
  {
    MTLReportFailure(0, "validateMTLDataType", 357, @"type (%lu) is not a valid MTLDataType.", a5, a6, a7, a8, a1);
  }
}

void validateMTLDataTypeConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 3) >= 0x36 && ((a1 - 81) > 0x36 || ((1 << (a1 - 81)) & 0x7FCF00000000FFLL) == 0))
  {
    if (a1)
    {
      MTLReportFailure(0, "validateMTLDataTypeConstant", 381, @"type (%lu) is not a const-like MTLDataType.", a5, a6, a7, a8, a1);
    }
  }
}

void MTLPipelineCollection::MTLPipelineCollection(MTLPipelineCollection *this, uint64_t a2)
{
  *(this + 2) = 0;
  *(this + 40) = 0u;
  *this = 0u;
  *(this + 4) = this + 40;
  *(this + 4) = 0u;
  *(this + 7) = this + 64;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 26) = 0;
  *(this + 232) = 0u;
  *(this + 28) = this + 232;
  *(this + 248) = 0u;
  *(this + 54) = 1065353216;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 82) = 1065353216;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 114) = 1065353216;
  *(this + 64) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 130) = 1065353216;
  *(this + 68) = 0;
  *(this + 33) = 0u;
  *(this + 36) = dispatch_queue_create("pipelineCollection", 0);
  *(this + 3) = a2;
}

void MTLPipelineCollection::~MTLPipelineCollection(MTLPipelineCollection *this)
{
  for (i = *(this + 12); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, i[2], i[3]);
    }

    else
    {
      v20 = *(i + 2);
    }

    v3 = i[5];
    v21 = v3;
    if (v3)
    {
      MTLPipelineLibrarySerializer::FunctionDescriptor::~FunctionDescriptor(v3);
      MEMORY[0x1865FF210]();
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(this + 25); j; j = *j)
  {
    std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::pair[abi:ne200100](&v20, j + 1);
    for (k = v22; k; k = *k)
    {
      if (*(k + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, k[2], k[3]);
      }

      else
      {
        __p = *(k + 2);
      }

      v6 = k[5];
      v19 = v6;
      if (v6)
      {
        MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::~MTLSpecializedFunctionDescriptor(v6);
        MEMORY[0x1865FF210]();
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v21);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(this + 4);
  if (v7 != (this + 40))
  {
    do
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        MTLPipelineLibrarySerializer::LibraryDescriptor::~LibraryDescriptor(v8);
        MEMORY[0x1865FF210]();
      }

      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != (this + 40));
  }

  v12 = *(this + 7);
  if (v12 != (this + 64))
  {
    do
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        MTLPipelineLibrarySerializer::StitchedLibraryDescriptor::~StitchedLibraryDescriptor(v13);
        MEMORY[0x1865FF210]();
      }

      v14 = *(v12 + 1);
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
          v15 = *(v12 + 2);
          v11 = *v15 == v12;
          v12 = v15;
        }

        while (!v11);
      }

      v12 = v15;
    }

    while (v15 != (this + 64));
  }

  v16 = *(this + 36);
  if (v16)
  {
    dispatch_release(v16);
  }

  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 488));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 424));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 360));
  MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash((this + 296));
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 31);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 224, *(this + 29));
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::~__hash_table(this + 184);
  v17 = *(this + 20);
  if (v17)
  {
    *(this + 21) = v17;
    operator delete(v17);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 15);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(this + 10);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 56, *(this + 8));
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(this + 32, *(this + 5));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineCollection::addLibraryData(MTLPipelineCollection *this, char a2, char a3, MTLLibraryData *a4)
{
  v4 = *(this + 36);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  block[4] = this;
  block[5] = a4;
  v6 = a2;
  v7 = a3;
  dispatch_sync(v4, block);
}

void ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = (*(**(a1 + 40) + 344))();
  v5 = v4[1];
  v11[0] = *v4;
  v11[1] = v5;
  if ((v2 + 40) == std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((v2 + 2), v11))
  {
    if (*(a1 + 48) == 1)
    {
      v6 = (*(**(a1 + 40) + 32))(*(a1 + 40));
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      v7 = (*(**(a1 + 40) + 352))(*(a1 + 40));
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(**(a1 + 40) + 344))(*(a1 + 40));
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v9 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    libraryDescriptorFromLibraryData(v7, v8, v6, &__p);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_185D3ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void libraryDescriptorFromLibraryData(void *a1, _OWORD *a2, void *a3, uint64_t **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [a1 lastPathComponent];
  }

  else
  {
    v6 = a2[1];
    v11[0] = *a2;
    v11[1] = v6;
    HashToString(v11, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.metallib", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = [v5 stringByDeletingPathExtension];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(a4 + 23) < 0)
  {
    a4 = *a4;
  }

  [v9 initWithFormat:@"%s%@", a4, v8];
  operator new();
}

void sub_185D3AE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineCollection::addLibraryDescriptor(uint64_t **a1, id *a2, _OWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2 + 1;
  std::string::basic_string[abi:ne200100]<0>(__p, [a2[1] UTF8String]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 31, __p, __p);
  v8 = v7;
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_16;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a3[1];
  *__p = *a3;
  v29 = v10;
  HashToString(__p, &v27);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v27;
  }

  else
  {
    v11 = v27.__r_.__value_.__r.__words[0];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.metallib", v11];
  v13 = [v12 stringByDeletingPathExtension];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = a1;
  if (*(a1 + 23) < 0)
  {
    v15 = *a1;
  }

  v16 = [v14 initWithFormat:@"%s%@", v15, v13];

  *a2 = [v16 copy];
  *v6 = [v12 copy];

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v9);
  std::string::basic_string[abi:ne200100]<0>(__p, [*v6 UTF8String]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1 + 31, __p, __p);
  v24 = v17;
  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 1) == 0)
  {
    MTLPipelineCollection::addLibraryDescriptor(v6, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_16:
  NSLog(&cfstr_AddingLibraryW.isa, [*a2 UTF8String], objc_msgSend(a2[1], "UTF8String"));
  v25 = a3[1];
  *__p = *a3;
  v29 = v25;
  v27.__r_.__value_.__r.__words[0] = __p;
  result = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier&&>,std::tuple<>>(a1 + 4, __p, &std::piecewise_construct, &v27);
  *(result + 64) = a2;
  return result;
}

void sub_185D3B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addDynamicLibraryData(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke;
  block[3] = &unk_1E6EED250;
  block[4] = a4;
  block[5] = a1;
  v6 = a2;
  v7 = a3;
  dispatch_sync(v4, block);
}

void ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) libraryUUID];
  v5 = v4[1];
  v12[0] = *v4;
  v12[1] = v5;
  if ((v2 + 40) == std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((v2 + 2), v12))
  {
    if (*(a1 + 48) == 1 && (v6 = [*(a1 + 32) airData], (v7 = v6) != 0))
    {
      v8 = _MTLDispatchDataToNSData(v6, 0);
      dispatch_release(v7);
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      v9 = [*(a1 + 32) libraryPath];
    }

    else
    {
      v9 = 0;
    }

    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
    }

    else
    {
      v10 = *v2;
      __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    libraryDescriptorFromLibraryData(v9, v4, v8, &__p);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_185D3B2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3B370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addLibrary(uint64_t a1, void *a2)
{
  v4 = [a2 libraryData];
  *[a2 cacheEntry] = a1;
  v5 = *([a2 device] + 472) != 0;
  v6 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection14addLibraryDataEbbP14MTLLibraryData_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  block[4] = a1;
  block[5] = v4;
  v8 = v5;
  v9 = 1;
  dispatch_sync(v6, block);
}

void MTLPipelineCollection::addDynamicLibrary(uint64_t a1, void *a2)
{
  v4 = *([a2 device] + 472) != 0;
  v5 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection21addDynamicLibraryDataEbbPU28objcproto17MTLDynamicLibrary11objc_object_block_invoke;
  block[3] = &unk_1E6EED250;
  block[4] = a2;
  block[5] = a1;
  v7 = v4;
  v8 = 1;
  dispatch_sync(v5, block);
}

void MTLPipelineCollection::addFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 288);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN21MTLPipelineCollection11addFunctionEPU22objcproto11MTLFunction11objc_objectP14MTLLibraryDatam_block_invoke;
  v5[3] = &unk_1E6EED278;
  v5[4] = a2;
  v5[5] = a1;
  v5[6] = a3;
  v5[7] = a4;
  dispatch_sync(v4, v5);
}

void ___ZN21MTLPipelineCollection11addFunctionEPU22objcproto11MTLFunction11objc_objectP14MTLLibraryDatam_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) bitCodeHash];
  v9[0] = *v4;
  v9[1] = v4[1];
  HashToString(v9, &__p);
  v5 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((v2 + 80), &__p.__r_.__value_.__l.__data_);
  if (!v5)
  {
    if ([*(a1 + 32) stitchingAirScript])
    {
      std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((v2 + 120), &__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  if (*(a1 + 56))
  {
    v6 = v5[5];
    v7 = v6[2];
    if ((v7 & 1) == 0)
    {
      v6[2] = v7 | 1;
      std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](v2 + 160, v5 + 5);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_185D3B728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addStitchedLibrary(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [a2 libraryData];
  v6 = (*(*v5 + 344))(v5);
  v7 = v6[1];
  v24 = *v6;
  v25 = v7;
  if ((a1 + 64) == std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 56, &v24))
  {
    if (!*[a2 cacheEntry])
    {
      *[a2 cacheEntry] = a1;
    }

    v8 = [a2 functionHashes];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * v11) getValue:&v24];
          *v21 = v24;
          v22 = v25;
          HashToString(v21, &__p);
          if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 120), &__p.__r_.__value_.__l.__data_))
          {
            v21[0] = &__p;
            std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 120), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v21, &v20)[5] = v5;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v9);
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = (*(*v5 + 344))(v5);
    v24 = *v13;
    v25 = v13[1];
    HashToString(&v24, v21);
    if ((SBYTE7(v22) & 0x80u) == 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = v21[0];
    }

    [v12 initWithFormat:@"StitchedLib_%s", v14];
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    operator new();
  }
}

void sub_185D3BA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addSpecializedFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 288);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN21MTLPipelineCollection22addSpecializedFunctionEPU22objcproto11MTLFunction11objc_objectS1_PU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke;
  block[3] = &unk_1E6EED2A0;
  block[7] = a5;
  block[8] = a1;
  block[4] = a3;
  block[5] = a2;
  block[6] = a4;
  dispatch_sync(v5, block);
}

void ___ZN21MTLPipelineCollection22addSpecializedFunctionEPU22objcproto11MTLFunction11objc_objectS1_PU21objcproto10MTLLibrary11objc_objectP21MTLFunctionDescriptor_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v4 bitCodeHash];
  v23[0] = *v5;
  v23[1] = v5[1];
  HashToString(v23, &v22);
  *&v23[0] = &v22;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v2 + 184), &v22.__r_.__value_.__l.__data_, &std::piecewise_construct, v23, &__p);
  v7 = [v4 functionConstantSpecializationHash];
  v23[0] = *v7;
  v23[1] = v7[1];
  HashToString(v23, &__p);
  v8 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(v6 + 5, &__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    if ([*(a1 + 40) stitchingAirScript])
    {
      v11 = [*(a1 + 48) libraryData];
      v12 = (*(*v11 + 344))(v11);
      v13 = v12[1];
      v23[0] = *v12;
      v23[1] = v13;
      v14 = *(std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(v2 + 56, v23)[8] + 8);
    }

    else
    {
      v15 = [*(a1 + 48) libraryData];
      v16 = (*(*v15 + 344))(v15);
      v17 = v16[1];
      v23[0] = *v16;
      v23[1] = v17;
      v14 = *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(v2 + 32, v23)[8];
    }

    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [v4 name];
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    [v18 initWithFormat:@"%@_%@_%s", v14, v19, p_p];
    [*(a1 + 40) name];
    [v4 name];
    operator new();
  }

  v9 = v8[5];
  v10 = v9[2];
  if (v10 != [*(a1 + 56) options])
  {
    v9[2] |= [*(a1 + 56) options];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_185D3BE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLPipelineCollection::functionWasCollected(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v3 = [a2 bitCodeHash];
  v4 = v3[1];
  v8[0] = *v3;
  v8[1] = v4;
  HashToString(v8, &__p);
  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), &__p.__r_.__value_.__l.__data_))
  {
    v5 = 1;
  }

  else
  {
    v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 184), &__p.__r_.__value_.__l.__data_) != 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void MTLPipelineDescriptorHash::~MTLPipelineDescriptorHash(MTLPipelineDescriptorHash *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    do
    {
    }

    while (v2 != v3);
    v2 = *(this + 5);
  }

  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::~__hash_table(this);
}

uint64_t MTLPipelineDescriptorHash::addPipelineDescriptor(MTLPipelineDescriptorHash *this, NSObject *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v12 = [a2 hash];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(this, &v12);
  if (v4)
  {
    v6 = v4[3];
    v7 = v4[4];
    v5 = (v4 + 3);
    while (v6 != v7)
    {
      result = [*v6 isEqual:v13];
      if (result)
      {
        return result;
      }

      ++v6;
    }

    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](v5, &v13);
  }

  else
  {
    v14 = a2;
    v10 = 0;
    v11 = 0;
    __p = 0;
    std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject * const*,NSObject * const*>(&__p, &v14, &v15, 1uLL);
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::vector<NSObject *>>(this, &v12, &v12, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](this + 40, &v13);
  return v13;
}

void sub_185D3C184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineCollection::addRenderPipeline(MTLPipelineCollection *this, MTLRenderPipelineDescriptor *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [(MTLRenderPipelineDescriptor *)a2 vertexPreloadedLibraries];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v20 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = [(MTLRenderPipelineDescriptor *)a2 fragmentPreloadedLibraries];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v16 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = *(this + 36);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN21MTLPipelineCollection17addRenderPipelineEP27MTLRenderPipelineDescriptor_block_invoke;
  v15[3] = &unk_1E6EEB298;
  v15[4] = a2;
  v15[5] = this;
  dispatch_sync(v14, v15);
}

void ___ZN21MTLPipelineCollection17addRenderPipelineEP27MTLRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 vertexFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 fragmentFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 296), v2);
  }
}

void MTLPipelineCollection::addComputePipeline(MTLPipelineCollection *this, MTLComputePipelineDescriptor *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(MTLComputePipelineDescriptor *)a2 preloadedLibraries];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v11 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *(this + 36);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN21MTLPipelineCollection18addComputePipelineEP28MTLComputePipelineDescriptor_block_invoke;
  v10[3] = &unk_1E6EEB298;
  v10[4] = a2;
  v10[5] = this;
  dispatch_sync(v9, v10);
}

void ___ZN21MTLPipelineCollection18addComputePipelineEP28MTLComputePipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 computeFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 360), v2);
  }
}

void MTLPipelineCollection::addTileRenderPipeline(MTLPipelineCollection *this, MTLTileRenderPipelineDescriptor *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(MTLTileRenderPipelineDescriptor *)a2 preloadedLibraries];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v11 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *(this + 36);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN21MTLPipelineCollection21addTileRenderPipelineEP31MTLTileRenderPipelineDescriptor_block_invoke;
  v10[3] = &unk_1E6EEB298;
  v10[4] = a2;
  v10[5] = this;
  dispatch_sync(v9, v10);
}

void ___ZN21MTLPipelineCollection21addTileRenderPipelineEP31MTLTileRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 tileFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 424), v2);
  }
}

void MTLPipelineCollection::addMeshRenderPipeline(MTLPipelineCollection *this, MTLMeshRenderPipelineDescriptor *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(MTLMeshRenderPipelineDescriptor *)a2 objectPreloadedLibraries];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v29 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v9 = [(MTLMeshRenderPipelineDescriptor *)a2 meshPreloadedLibraries];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v25 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  v14 = [(MTLMeshRenderPipelineDescriptor *)a2 fragmentPreloadedLibraries];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        MTLPipelineCollection::addDynamicLibrary(this, *(*(&v21 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v16);
  }

  v19 = *(this + 36);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN21MTLPipelineCollection21addMeshRenderPipelineEP31MTLMeshRenderPipelineDescriptor_block_invoke;
  v20[3] = &unk_1E6EEB298;
  v20[4] = a2;
  v20[5] = this;
  dispatch_sync(v19, v20);
}

void ___ZN21MTLPipelineCollection21addMeshRenderPipelineEP31MTLMeshRenderPipelineDescriptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  [v2 setBinaryArchives:0];
  if (MTLPipelineCollection::functionWasCollected(v1, [v2 objectFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 meshFunction]) && MTLPipelineCollection::functionWasCollected(v1, [v2 fragmentFunction]))
  {
    MTLPipelineDescriptorHash::addPipelineDescriptor((v1 + 488), v2);
  }
}

__n128 MTLPipelineCollection::getFunctionData(uint64_t a1, __n128 *a2, __n128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2->n128_u64[0] + 344))(a2->n128_u64[0]);
  v7 = v6[1];
  v17[0] = *v6;
  v17[1] = v7;
  v15 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 224, v17);
  if ((a1 + 232) == v15)
  {
    MTLPipelineCollection::getFunctionData(a2, v8, v9, v10, v11, v12, v13, v14);
  }

  a3->n128_u32[0] = v15[8];
  a3->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  a3[1] = result;
  return result;
}

void MTLPipelineCollection::getFunctionData(void *a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [a2 bitCodeHash];
  v28 = *v6;
  v29 = v6[1];
  HashToString(&v28, &v26);
  v7 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 10, &v26.__r_.__value_.__l.__data_);
  if (v7)
  {
    v8 = (*(**v7[5] + 344))(*v7[5]);
    v9 = v8[1];
    v28 = *v8;
    v29 = v9;
    v10 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>((a1 + 28), &v28);
    if (a1 + 29 == v10)
    {
      v20 = [a2 name];
      MTLReportFailure(0, "getFunctionData", 567, @"library was not collected for function %@", v21, v22, v23, v24, v20);
    }

    *a3 = v10[8];
    *(a3 + 8) = [a2 name];
    *(a3 + 16) = [a2 options];
  }

  else
  {
    *&v27[0] = &v26;
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 23, &v26.__r_.__value_.__l.__data_, &std::piecewise_construct, v27, &__p);
    std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(&v28, (v11 + 5));
    v12 = [a2 functionConstantSpecializationHash];
    v27[0] = *v12;
    v27[1] = v12[1];
    HashToString(v27, &__p);
    v13 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(&v28, &__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      v14 = v13[5];
      *a3 = -1;
      *(a3 + 8) = v14[5];
    }

    else
    {
      v15 = [a2 name];
      MTLReportFailure(0, "getFunctionData", 592, @"function %@ was not collected but it is referenced in the descriptor", v16, v17, v18, v19, v15);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_185D3CD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((v22 - 80));
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void MTLPipelineCollection::dumpLibraries(MTLPipelineCollection *this, NSString *a2)
{
  v2 = *(this + 36);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *(v2 + 32);
  if (v5 != (v2 + 40))
  {
    v6 = v4;
    do
    {
      v7 = v5[8];
      v8 = *(v7 + 8);
      v9 = [*(a1 + 32) stringByAppendingPathComponent:v8];
      if (([v6 fileExistsAtPath:v9] & 1) == 0)
      {
        v17 = *(v7 + 24);
        if (!v17)
        {
          ___ZN21MTLPipelineCollection13dumpLibrariesEP8NSString_block_invoke_cold_1(v8, v10, v11, v12, v13, v14, v15, v16);
        }

        v25 = 0;
        if (([v17 writeToFile:v9 options:0 error:&v25] & 1) == 0)
        {
          MTLReportFailure(0, "dumpLibraries_block_invoke", 671, @"unable to write library data to %@: %@", v18, v19, v20, v21, v9);
        }
      }

      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != (v2 + 40));
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t MTLPipelineCollection::JSONData(MTLPipelineCollection *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v1 = *(this + 36);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN21MTLPipelineCollection8JSONDataEv_block_invoke;
  v4[3] = &unk_1E6EEB2C0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void MTLPipelineCollection::JSONDataNoSync(MTLPipelineCollection *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if ((v1 & 0x18) != 0)
  {
    v2[0] = &unk_1EF4778E0;
    v2[1] = this;
    v2[3] = v2;
    MTLPipelineLibrarySerializer::PipelineLibrarySerializerInterface::createMetalScriptSerializer((v1 >> 4) & 1, v2);
  }

  operator new();
}

void MTLPipelineCollection::writeJSONToFile(MTLPipelineCollection *this, NSString *a2)
{
  v2 = *(this + 36);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN21MTLPipelineCollection15writeJSONToFileEP8NSString_block_invoke;
  v3[3] = &unk_1E6EEB298;
  v3[4] = a2;
  v3[5] = this;
  dispatch_sync(v2, v3);
}

void ___ZN21MTLPipelineCollection15writeJSONToFileEP8NSString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = objc_autoreleasePoolPush();
  MTLPipelineCollection::JSONDataNoSync(v1);
}

std::string *std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(&this[1], a2 + 24);
  return this;
}

void sub_185D3E5C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::~MTLSpecializedFunctionDescriptor(id *this)
{

  MTLPipelineLibrarySerializer::FunctionDescriptor::~FunctionDescriptor(this);
}

uint64_t std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor::MTLSpecializedFunctionDescriptor(MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *this, MTLLibraryData *a2, NSString *a3, MTLFunctionConstantValues *a4, NSString *a5, NSString *a6, MTLFunctionType a7, uint64_t a8)
{
  v12 = MTLPipelineLibrarySerializer::FunctionDescriptor::FunctionDescriptor(this, a2, a3, a7, a8);
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = [(MTLFunctionConstantValues *)a4 copy];
  *(this + 5) = [(NSString *)a5 copy];
  *(this + 6) = [(NSString *)a6 copy];
  return this;
}

void MTLPipelineLibrarySerializer::ComputePipelineDescriptor::~ComputePipelineDescriptor(MTLPipelineLibrarySerializer::ComputePipelineDescriptor *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineLibrarySerializer::RenderPipelineDescriptor::~RenderPipelineDescriptor(MTLPipelineLibrarySerializer::RenderPipelineDescriptor *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor::~MeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::MeshRenderPipelineDescriptor *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>(void *a1, const void **a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__construct_node_hash<std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *> const&>();
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

void sub_185D3ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3EDA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::FunctionDescriptor *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185D3F018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3F0E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLLibraryData *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLLibraryData *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLLibraryData *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185D3F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3F418(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_185D3F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>(void *a1, const void **a2, uint64_t a3)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>>::__construct_node_hash<std::pair<std::string const,MTLPipelineLibrarySerializer::MTLSpecializedFunctionDescriptor *>>();
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

void sub_185D3F9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D3FAB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject * const*,NSObject * const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185D3FB2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<NSObject *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<NSObject *>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::vector<NSObject *>>(void *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<NSObject *>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF4778E0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::operator()(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  MTLPipelineCollection::getFunctionData(v4, v3, a3);
}

uint64_t std::__function::__func<MTLPipelineCollection::JSONDataNoSync(void)::$_0,std::allocator<MTLPipelineCollection::JSONDataNoSync(void)::$_0>,MTLPipelineLibrarySerializer::FunctionReference ()(_MTLFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<MTLLibraryIdentifier,unsigned long>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,unsigned long>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,unsigned long>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier const&>,std::tuple<>>(uint64_t **a1, unsigned int *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__find_equal<MTLLibraryIdentifier>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::vector<NSObject *>::__init_with_size[abi:ne200100]<NSObject **,NSObject **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185D40014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFString *MTLCompareFunctionString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED2C8[a1];
  }
}

__CFString *MTLStencilOperationString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E6EED308[a1];
  }
}

void MTLSchedulerRequest::MTLSchedulerRequest(MTLSchedulerRequest *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1EF477990;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
}

void MTLSchedulerRequest::generateXPCBlock(MTLSchedulerRequest *this, qos_class_t a2, int a3)
{
  std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(&v11, this + 1);
  v7 = v11;
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke;
  v8[3] = &__block_descriptor_60_e8_40c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE_e5_v8__0l;
  v8[4] = this;
  v8[5] = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3;
  *(this + 9) = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, -1, v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke(uint64_t a1)
{
  buf[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = v2;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v3;
  v6 = _os_activity_create(&dword_185B8E000, "Metal Compiling Shader", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  v4 = v2[6];
  if (v4)
  {
    MTLCompileToken::setStatus(v4, 2);
  }

  v8 = 0;
  if ((*(*v2 + 64))(v2, *(a1 + 56), &v8))
  {
    buf[0] = xpc_dictionary_create_empty();
    std::allocate_shared[abi:ne200100]<MTLCompilerServiceRequestHandler,std::allocator<MTLCompilerServiceRequestHandler>,NSObject  {objcproto13OS_xpc_object}*,0>();
  }

  v5 = v2[11];
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, 0, v8);
  }

  free(v8);
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  os_activity_scope_leave(&state);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_185D44C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, os_activity_scope_state_s state)
{
  if (*(v21 - 105) < 0)
  {
    operator delete(*(v21 - 128));
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  os_activity_scope_leave(&state);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void MTLSchedulerRequest::newLogReplayRequest(MTLCompilerRequest **a2@<X1>, const char *a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  if (_MTLIsInternalBuild())
  {
    objc_autoreleasePoolPush();
    v10 = MTLAtomicIncrement(&MTLSchedulerRequest::newLogReplayRequest(std::shared_ptr<MTLCompilerRequest> const&,char const*,NSObject  {objcproto16OS_dispatch_data}*,int)::gDiagnosticLogIndex);
    v11 = v10;
    v13 = MTLGetProcessName(v10, v12);
    std::string::basic_string[abi:ne200100]<0>(&v36, v13);
    v14 = std::string::append(&v36, "_data_");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v35, v11);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v35;
    }

    else
    {
      v16 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, v16, size);
    v38 = *v18;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    v31 = SHIBYTE(v38.__r_.__value_.__r.__words[2]);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v38.__r_.__value_.__l.__size_;
    }

    v36.__r_.__value_.__r.__words[0] = 0;
    v20 = (*(**a2 + 64))(*a2, a5, &v36);
    size_ptr = 0;
    v35.__r_.__value_.__r.__words[0] = 0;
    if (a4)
    {
      dispatch_data_create_map(a4, &v35.__r_.__value_.__l.__data_, &size_ptr);
      v21 = size_ptr;
    }

    else
    {
      v21 = 0;
    }

    v32 = 0;
    buffer_ptr = 0;
    dispatch_data_create_map(v20, &buffer_ptr, &v32);
    v22 = v32;
    if (a3)
    {
      v23 = strlen(a3) + 1;
    }

    else
    {
      v23 = 0;
    }

    RequestType = MTLCompilerRequest::getRequestType(*a2);
    v25 = v21 + v22 + v23 + 28;
    v26 = malloc_type_malloc(v25 + v19 + 17, 0x100004077774924uLL);
    *v26 = v19 + 1;
    if (v31 >= 0)
    {
      v27 = &v38;
    }

    else
    {
      v27 = v38.__r_.__value_.__r.__words[0];
    }

    memcpy(v26 + 1, v27, v19 + 1);
    *(v26 + v19 + 9) = v25;
    *(v26 + v19 + 17) = v23;
    v28 = v26 + v19 + 25;
    memcpy(v28, a3, v23);
    v29 = &v28[v23];
    *v29++ = v21;
    memcpy(v29, v35.__r_.__value_.__l.__data_, v21);
    v30 = v29 + v21;
    *v30 = RequestType;
    *(v30 + 4) = v22;
    memcpy(v29 + v21 + 12, buffer_ptr, v22);
    _ZNSt3__115allocate_sharedB8ne200100I18MTLCompilerRequestNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }
}

void sub_185D450E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

dispatch_block_t MTLSchedulerRequest::generateMonolithicBlock(MTLSchedulerRequest *this, qos_class_t a2, int a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  v5[4] = this;
  v6 = a3;
  result = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, -1, v5);
  *(this + 9) = result;
  return result;
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _os_activity_create(&dword_185B8E000, "Compiling Shader", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  std::shared_ptr<MTLCompilerConnection>::shared_ptr[abi:ne200100]<MTLCompilerConnection,0>(&v26, (v2 + 8));
  v5 = v26;
  v4 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  v6 = *(v5 + 6);
  if (v6)
  {
    MTLCompileToken::setStatus(v6, 2);
  }

  v26 = 0;
  v7 = (*(*v5 + 64))(v5, *(a1 + 40), &v26);
  if (v7)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v8 = *(v2 + 96);
    v9 = dispatch_data_create_map(v7, &buffer_ptr, &size_ptr);
    if (*(v2 + 144))
    {
      v22 = 0;
      v23 = 0;
      v10 = dispatch_data_create_map(*(v2 + 152), &v23, &v22);
      v11 = (*(*(v8 + 128) + 32))(*(v8 + 136), *(v2 + 144), v23, v22);
      dispatch_release(v10);
      if (v11 == -1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_cold_1((v2 + 144));
        }

        v12 = *(v5 + 11);
        if (v12)
        {
          (*(v12 + 16))(v12, 2, 0, 0, v26);
        }

        free(v26);
        if (MTLTraceEnabled())
        {
          kdebug_trace();
        }

        goto LABEL_28;
      }
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    RequestType = MTLCompilerRequest::getRequestType(v5);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_10;
    v18[3] = &unk_1EF4779F8;
    v21 = RequestType != 8;
    v18[6] = v2;
    v18[7] = v5;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *(a1 + 40);
    v18[4] = v9;
    v18[5] = v3;
    v15 = *(v8 + 136);
    v16 = *(*(v8 + 128) + 24);
    v17 = MTLCompilerRequest::getRequestType(v5);
    v16(v15, v11, v17, buffer_ptr, size_ptr, v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v13 = *(v5 + 11);
    if (v13)
    {
      (*(v13 + 16))(v13, 2, 0, 0, v26);
    }

    free(v26);
    if (MTLTraceEnabled())
    {
      kdebug_trace();
    }
  }

LABEL_28:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  os_activity_scope_leave(&state);
}

void sub_185D45510(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  os_activity_scope_leave((v2 - 96));
  _Unwind_Resume(a1);
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_10(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  if (*(a1 + 76) != 1 || !MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(0, 0))
  {
    v8 = *(*(a1 + 56) + 88);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v7 = *(v8 + 16);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v7 = *(v8 + 16);
    }

    goto LABEL_12;
  }

  MTLSchedulerRequest::newLogReplayRequest((a1 + 56), *(v4 + 144), *(v4 + 152), *(a1 + 72), &v10);
  v5 = *(v4 + 40);
  *(v4 + 32) = v10;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(*(a1 + 56) + 88);
  if (v6)
  {
    v7 = *(v6 + 16);
LABEL_12:
    v7();
  }

LABEL_13:
  dispatch_release(*(a1 + 32));
  if (MTLTraceEnabled())
  {
    kdebug_trace();
  }

  v9 = *(a1 + 40);
}

uint64_t __copy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c46_ZTSNSt3__110shared_ptrI18MTLCompilerRequestEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN19MTLSchedulerRequest19newLogReplayRequestERKNSt3__110shared_ptrI18MTLCompilerRequestEEPKcPU27objcproto16OS_dispatch_data8NSObjecti_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke_cold_1(v2);
    }
  }
}

void MTLSchedulerRequest::releaseBooster(MTLSchedulerRequest *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    _Block_release(v2);
    *(this + 10) = 0;
  }
}

void std::__shared_ptr_emplace<MTLCompilerServiceRequestHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void *_ZNSt3__120__shared_ptr_emplaceI18MTLCompilerRequestNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF477AE0;
  MTLCompilerRequest::MTLCompilerRequest((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<MTLCompilerRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF477AE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

uint64_t ___ZL30shouldOutputNodePropertyRetainv_block_invoke()
{
  result = dyld_program_sdk_at_least();
  shouldOutputNodePropertyRetain(void)::result = result;
  return result;
}

__CFString *MTLCommandEncoderErrorStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E6EED450 + a1);
  }
}

void _doMTLSyncDispatch(uint64_t a1, void **a2, void *a3, _DWORD *a4)
{
  v4 = *a2;
  if (*a2)
  {
    v8 = 0;
    do
    {
      v9 = *v4;
      if (((*(v4[1] + 16))() & 1) != 0 || (*a4 & 0xFFFFFFFE) == 2)
      {
        _Block_release(v4[1]);
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = a2;
        }

        *v10 = v9;
        if (!v9)
        {
          *a3 = v8;
        }

        free(v4);
      }

      else
      {
        v8 = v4;
      }

      v4 = v9;
    }

    while (v9);
  }
}

void validateMTLAttributeFormat(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 >= 0x38)
  {
    _MTLMessageContextPush_(a2, 4, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t MTLAttributeFormatAlignment(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE43B0[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatAlignment", 156, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t MTLAttributeFormatComponentCount(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE4570[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatComponentCount", 173, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t MTLAttributeFormatSize(MTLAttributeFormat a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAttributeFormatCharNormalized|MTLAttributeFormatUChar3Normalized))
  {
    return qword_185DE4730[a1];
  }

  MTLReportFailure(0, "MTLAttributeFormatSize", 202, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a5, a6, a7, a8, v8);
  return 0;
}

__CFString *MTLAttributeFormatString(MTLAttributeFormat a1)
{
  if (a1 > MTLAttributeFormatFloatRGB9E5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E6EED478 + a1);
  }
}

uint64_t isVertexFormatInteger(uint64_t a1, int *a2, BOOL *a3)
{
  v3 = 1;
  if (a1 > 31)
  {
    if (a1 > 44)
    {
      if (a1 <= 48)
      {
        if (a1 != 45)
        {
          v4 = 1;
          v5 = 1;
          if (a1 != 46)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        goto LABEL_18;
      }

      if (a1 == 49)
      {
        goto LABEL_23;
      }

      if (a1 == 50)
      {
LABEL_21:
        v4 = 1;
        v3 = 2;
        goto LABEL_22;
      }
    }

    else
    {
      if ((a1 - 32) < 4)
      {
        v4 = 1;
        v3 = 4;
LABEL_22:
        v5 = 1;
        goto LABEL_24;
      }

      if ((a1 - 36) < 4)
      {
        v4 = 0;
        v5 = 1;
        v3 = 4;
        goto LABEL_24;
      }
    }

LABEL_25:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_24;
  }

  if (a1 > 12)
  {
    if ((a1 - 13) >= 3)
    {
      if ((a1 - 16) >= 3)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

LABEL_23:
    v4 = 0;
    v5 = 1;
    v3 = 2;
    goto LABEL_24;
  }

  if ((a1 - 1) < 3)
  {
LABEL_18:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = 1;
  v5 = 1;
  if ((a1 - 4) >= 3)
  {
    goto LABEL_25;
  }

LABEL_24:
  *a2 = v3;
  *a3 = v4;
  return v5;
}

void *MTLVertexDescriptorDescription(void *result, uint64_t a2)
{
  v36[31] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v28 = [@"\n" stringByPaddingToLength:a2 + 4 withString:@" " startingAtIndex:0];
    v4 = [@"\n" stringByPaddingToLength:a2 + 8 withString:@" " startingAtIndex:0];
    v5 = [@"\n" stringByPaddingToLength:a2 + 12 withString:@" " startingAtIndex:0];
    memset(v36, 0, 248);
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:31];
    v27 = v6;
    for (i = 0; i != 31; ++i)
    {
      v15 = *(v3[2] + 8 + 8 * i);
      if (v15 && *(v15 + 8))
      {
        v16 = *(v15 + 24);
        if (v16 >= 0x1F)
        {
          MTLVertexDescriptorDescription_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
        }

        v17 = v36[v16];
        if (!v17)
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
          v36[v16] = v17;
          v35[0] = v28;
          v35[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Buffer %lu:", v16];
          [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 2)}];
          v18 = *(v3[1] + 8 + 8 * v16);
          if (v18)
          {
            v34[0] = v4;
            v34[1] = @"stepFunction =";
            v19 = v18[2];
            v20 = @"Unknown";
            if (v19 <= 4)
            {
              v20 = *(&off_1E6EED638 + v19);
            }

            v34[2] = v20;
            [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 3)}];
            if (v18[2] == 2)
            {
              v33[0] = v4;
              v33[1] = @"stepRate =";
              v33[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18[3]];
              [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 3)}];
            }

            if ([v18 isStrideDynamic])
            {
              v32[0] = v4;
              v32[1] = @"stride = dynamic";
              v21 = MEMORY[0x1E695DEC8];
              v22 = v32;
              v23 = 2;
            }

            else
            {
              v31[0] = v4;
              v31[1] = @"stride =";
              v31[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18[1]];
              v21 = MEMORY[0x1E695DEC8];
              v22 = v31;
              v23 = 3;
            }

            v24 = [v21 arrayWithObjects:v22 count:v23];
          }

          else
          {
            v30[0] = v4;
            v30[1] = @"stepFunction =";
            v30[2] = @"MTLVertexStepFunctionPerVertex";
            v30[3] = v4;
            v30[4] = @"stride =";
            v30[5] = &unk_1EF4CFDC8;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];
          }

          [v17 addObjectsFromArray:v24];
        }

        v29[0] = v4;
        v29[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attribute %u:", i];
        v29[2] = v5;
        v29[3] = @"offset =";
        v29[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v15 + 16)];
        v29[5] = v5;
        v29[6] = @"format =";
        v29[7] = MTLAttributeFormatString(*(v15 + 8));
        v6 = [v17 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 8)}];
      }
    }

    for (j = 0; j != 31; ++j)
    {
      v26 = v36[j];
      if (v26)
      {
        [v27 addObject:{objc_msgSend(v26, "componentsJoinedByString:", @" "}];
      }
    }

    return [v27 componentsJoinedByString:@" "];
  }

  return result;
}

BOOL MTLVertexDescriptorEquivalent(MTLVertexDescriptorInternal *a1, MTLVertexDescriptorInternal *a2)
{
  if (a1 == a2 || _isDefaultVertexDescriptor(a1) && (_isDefaultVertexDescriptor(a2) & 1) != 0)
  {
    return 1;
  }

  return [(MTLVertexDescriptorInternal *)a1 isEqual:a2];
}

uint64_t _isDefaultVertexDescriptor(MTLVertexDescriptorInternal *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = 0;
  while (1)
  {
    v2 = a1->_vertexBufferArray->_descriptors[v1];
    if (v2)
    {
      if (v2->_stride || v2->_stepFunction != 1 || v2->_instanceStepRate != 1)
      {
        break;
      }
    }

    if (++v1 == 31)
    {
      descriptors = a1->_attributeArray->_descriptors;
      v4 = -1;
      while (1)
      {
        v5 = *descriptors;
        if (*descriptors)
        {
          if (v5->_vertexFormat || v5->_bufferIndex || v5->_offset)
          {
            break;
          }
        }

        ++v4;
        ++descriptors;
        if (v4 == 30)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

void sub_185D4D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _submitAvailableCommandBuffers(void *a1)
{
  [a1 _submitAvailableCommandBuffers];
}

void sub_185D53C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185D54264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<long,MTLTensorExtents *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::pair<long const,MTLTensorExtents *> const&>(a1, i + 2, i + 1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::pair<long const,MTLTensorExtents *> const&>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<long,MTLTensorExtents *>,std::__unordered_map_hasher<long,std::__hash_value_type<long,MTLTensorExtents *>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,MTLTensorExtents *>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,MTLTensorExtents *>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

char *mdb_strerror(int a1)
{
  if (!a1)
  {
    return "Successful return: 0";
  }

  if ((a1 + 30799) > 0x14)
  {
    return strerror(a1);
  }

  return mdb_errstr[a1 + 30799];
}

uint64_t mdb_dcmp(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *(*(a1 + 80) + 48 * a2 + 24);
  if (v4 == mdb_cmp_int)
  {
    if (*a3 == 8)
    {
      return mdb_cmp_cint(a3, a4);
    }

    v4 = mdb_cmp_int;
  }

  return v4(a3, a4);
}

uint64_t mdb_cmp_int(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_cmp_cint(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *a1 - 2;
  v4 = (v2 + v3);
  v5 = (*(a2 + 8) + v3);
  v6 = v4;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = *v5--;
    result = (v7 - v9);
    v11 = v7 == v9 && v4 > v2;
    v4 = v6;
  }

  while (v11);
  return result;
}

uint64_t mdb_env_sync0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if ((v3 & 0x20000) != 0)
  {
    return 13;
  }

  if (!a2 && (v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v3 & 0x80000) == 0)
  {
    result = fsync(*a1);
    if (!result)
    {
      return result;
    }

    return *__error();
  }

  if (((a2 == 0) & ((v3 & 0x100000u) >> 20)) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 16;
  }

  result = msync(*(a1 + 56), *(a1 + 16) * a3, v5);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t mdb_txn_renew(uint64_t a1)
{
  if (!a1 || (~*(a1 + 124) & 0x20001) != 0)
  {
    return 22;
  }

  else
  {
    return mdb_txn_renew0(a1);
  }
}

uint64_t mdb_txn_renew0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(a1 + 124);
  if ((v4 & 0x20000) != 0)
  {
    if (!v3)
    {
      v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
      *(a1 + 24) = *(v7 + 128);
      *(a1 + 72) = 0;
      goto LABEL_14;
    }

    if ((*(v2 + 14) & 0x20) != 0)
    {
      v8 = *(a1 + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = pthread_getspecific(*(v2 + 160));
      if (v8)
      {
LABEL_8:
        if (*(v8 + 2) != *(v2 + 40) || *v8 != -1)
        {
          return 4294936513;
        }

        goto LABEL_48;
      }
    }

    v22 = *(v2 + 40);
    v23 = pthread_self();
    v24 = *(v2 + 64);
    if (!*(v2 + 224))
    {
      v5 = mdb_reader_pid(v2, 8, v22);
      if (v5)
      {
        return v5;
      }

      *(v2 + 224) = 1;
    }

    v5 = pthread_mutex_lock((v24 + 24));
    if (v5)
    {
      return v5;
    }

    v25 = *(v3 + 16);
    v8 = (v3 + 192);
    if (v25)
    {
      v26 = 0;
      v27 = (v3 + 200);
      while (1)
      {
        v28 = *v27;
        v27 += 16;
        if (!v28)
        {
          break;
        }

        if (v25 == ++v26)
        {
          v26 = *(v3 + 16);
          break;
        }
      }

      if (v26 != *(v2 + 24))
      {
        v8 += 64 * v26;
        *(v8 + 2) = 0;
        v29 = (v8 + 8);
        *v8 = -1;
        *(v8 + 2) = v23;
        if (v26 != v25)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (*(v2 + 24))
    {
      *(v3 + 200) = 0;
      v29 = (v3 + 200);
      *(v3 + 192) = -1;
      *(v3 + 208) = v23;
LABEL_44:
      *(v3 + 16) = ++v25;
LABEL_45:
      *(v2 + 28) = v25;
      *v29 = v22;
      pthread_mutex_unlock((v24 + 24));
      v31 = *(v2 + 12);
      if ((v31 & 0x200000) != 0)
      {
        v33 = v31 & 0x200000;
        goto LABEL_49;
      }

      v32 = pthread_setspecific(*(v2 + 160), v8);
      if (v32)
      {
        v9 = v32;
        *v29 = 0;
        return v9;
      }

LABEL_48:
      v33 = 0;
      do
      {
LABEL_49:
        *v8 = *(v3 + 8);
      }

      while (*v8 != *(v3 + 8));
      v34 = *v8;
      *(a1 + 24) = *v8;
      *(a1 + 72) = v8;
      v7 = *(v2 + 8 * (v34 & 1) + 72);
      v12 = v33 | 5;
      goto LABEL_15;
    }

    pthread_mutex_unlock((v24 + 24));
    return 4294936506;
  }

  if (!v3)
  {
    v7 = *(v2 + 72 + 8 * ((*(v2 + 12) >> 25) & 1 ^ (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128))));
    v6 = *(v7 + 128);
    goto LABEL_12;
  }

  v5 = pthread_mutex_lock((v3 + 128));
  if (v5)
  {
    return v5;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8 * (v6 & 1) + 72);
LABEL_12:
  *(a1 + 24) = v6 + 1;
  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0x1FFFF;
  v10 = *(v2 + 208);
  *(a1 + 72) = v10;
  *v10 = 0;
  v11 = *(v2 + 200);
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *v11 = 0;
  *(a1 + 64) = 0;
  *(v2 + 96) = a1;
  memcpy(*(a1 + 96), *(v2 + 152), 4 * *(v2 + 36));
LABEL_14:
  v12 = 5;
LABEL_15:
  v13 = *(a1 + 88);
  v14 = *(v7 + 40);
  *v13 = *(v7 + 24);
  v13[1] = v14;
  v15 = *(v7 + 56);
  v16 = *(v7 + 72);
  v17 = *(v7 + 104);
  v13[4] = *(v7 + 88);
  v13[5] = v17;
  v13[2] = v15;
  v13[3] = v16;
  *(a1 + 16) = *(v7 + 120) + 1;
  LODWORD(v13) = *(v2 + 32);
  *(a1 + 120) = v13;
  *(a1 + 124) = v4 & 0x20000;
  if (v13 >= 3)
  {
    v18 = 2;
    v19 = 100;
    do
    {
      v20 = *(*(v2 + 144) + 2 * v18);
      *(*(a1 + 88) + v19) = *(*(v2 + 144) + 2 * v18) & 0x7FFF;
      if (v20 < 0)
      {
        v21 = 26;
      }

      else
      {
        v21 = 0;
      }

      *(*(a1 + 112) + v18++) = v21;
      v19 += 48;
    }

    while (v18 < *(a1 + 120));
  }

  *(*(a1 + 112) + 1) = 24;
  **(a1 + 112) = 8;
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    v9 = 4294936501;
  }

  else
  {
    if (*(v2 + 128) >= *(a1 + 16))
    {
      return 0;
    }

    v9 = 4294936511;
  }

  mdb_txn_end(a1, v12);
  return v9;
}

uint64_t mdb_txn_begin(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *(a1 + 12);
  if ((v4 & ~a3 & 0x20000) != 0)
  {
    return 13;
  }

  v10 = v4 & 0x80000 | a3 & 0x70000;
  if (a2)
  {
    v11 = *(a2 + 124);
    v10 |= v11;
    if ((v10 & 0xA0013) != 0)
    {
      if ((v11 & 0x20000) != 0)
      {
        return 22;
      }

      else
      {
        return 4294936514;
      }
    }

    v13 = 152;
    v14 = 57;
    v15 = 19;
  }

  else
  {
    if ((a3 & 0x20000) == 0)
    {
      v12 = *(a1 + 104);
      goto LABEL_28;
    }

    v15 = 17;
    v14 = 49;
    v13 = 136;
  }

  v16 = v13 + *(a1 + 36) * v14;
  v17 = malloc_type_calloc(1uLL, v16, 0xF0727416uLL);
  if (!v17)
  {
    return 12;
  }

  v12 = v17;
  v17[10] = *(a1 + 136);
  v17[11] = &v17[v15];
  v18 = *(a1 + 36);
  v17[14] = v17 + v16 - v18;
  *(v17 + 31) = v10;
  v17[4] = a1;
  if (a2)
  {
    v17[12] = *(a2 + 96);
    v17[13] = &v17[6 * v18 + v15];
    v19 = malloc_type_malloc(0x200000uLL, 0x108004057E67DB5uLL);
    *(v12 + 72) = v19;
    if (v19)
    {
      v20 = mdb_midl_alloc(0x1FFFF);
      *(v12 + 40) = v20;
      v19 = *(v12 + 72);
      if (v20)
      {
        *(v12 + 128) = *(a2 + 128);
        *v19 = 0;
        *(v12 + 64) = 0;
        v21 = *(a2 + 24);
        *(v12 + 16) = *(a2 + 16);
        *(v12 + 24) = v21;
        v22 = *(a2 + 120);
        *(a2 + 124) |= 0x10u;
        *(a2 + 8) = v12;
        *v12 = a2;
        *(v12 + 120) = v22;
        memcpy(*(v12 + 88), *(a2 + 88), 48 * v22);
        if (*(v12 + 120))
        {
          v23 = 0;
          do
          {
            *(*(v12 + 112) + v23) = *(*(a2 + 112) + v23) & 0xFB;
            ++v23;
          }

          while (v23 < *(v12 + 120));
        }

        *(v12 + 136) = *(a1 + 176);
        v24 = *(a1 + 176);
        if (v24)
        {
          v25 = *v24;
          v26 = mdb_midl_alloc(*v24);
          *(a1 + 176) = v26;
          if (!v26)
          {
            v5 = 12;
LABEL_31:
            mdb_txn_end(v12, 6);
            goto LABEL_32;
          }

          memcpy(v26, *(v12 + 136), 8 * v25 + 8);
        }

        v5 = mdb_cursor_shadow(a2, v12);
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }

    free(v19);
    free(v12);
    return 12;
  }

  v17[12] = *(a1 + 152);
LABEL_28:
  v5 = mdb_txn_renew0(v12);
  if (!v5)
  {
LABEL_29:
    v5 = 0;
    *(v12 + 124) |= v10;
    *a4 = v12;
    return v5;
  }

LABEL_32:
  if (v12 != *(a1 + 104))
  {
    free(v12);
  }

  return v5;
}

uint64_t mdb_cursor_shadow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 120);
  if (v2 < 1)
  {
    return 0;
  }

  while (1)
  {
    v5 = v2 - 1;
    v6 = *(*(a1 + 104) + 8 * (v2 - 1));
    if (v6)
    {
      break;
    }

LABEL_10:
    if (v2-- <= 1)
    {
      return 0;
    }
  }

  if (v6[2])
  {
    v7 = 888;
  }

  else
  {
    v7 = 392;
  }

  while (1)
  {
    v8 = malloc_type_malloc(v7, 0xE979B0FDuLL);
    if (!v8)
    {
      return 12;
    }

    v9 = v8;
    memcpy(v8, v6, 0x188uLL);
    v6[1] = v9;
    v6[5] = a2[11] + 48 * v5;
    v6[3] = a2;
    v6[7] = a2[14] + v5;
    v10 = v6[2];
    if (v10)
    {
      memcpy(v9 + 49, v6[2], 0x1F0uLL);
      *(v10 + 24) = a2;
    }

    v11 = a2[13];
    *v6 = *(v11 + 8 * v5);
    *(v11 + 8 * v5) = v6;
    v6 = *v9;
    if (!*v9)
    {
      goto LABEL_10;
    }
  }
}

void mdb_txn_end(unsigned int *a1, int a2)
{
  v4 = *(a1 + 4);
  v5 = a1[30];
  if (v5 >= 3)
  {
    v6 = 48 * v5;
    v7 = *(a1 + 14) - 1;
    v8 = a1[30];
    do
    {
      if ((*(v7 + v8) & 4) != 0)
      {
        if ((a2 & 0x10) != 0)
        {
          *(*(v4 + 144) + 2 * v8 - 2) = *(*(a1 + 11) + v6 - 44) | 0x8000;
        }

        else
        {
          v9 = *(v4 + 136) + v6;
          v10 = *(v9 - 40);
          if (v10)
          {
            *(v9 - 48) = 0;
            *(v9 - 40) = 0;
            v11 = *(v4 + 152);
            *(*(v4 + 144) + 2 * v8 - 2) = 0;
            ++*(v11 + 4 * v8 - 4);
            free(v10);
          }
        }
      }

      --v8;
      v6 -= 48;
    }

    while ((v8 + 1) > 3);
  }

  if ((a2 & 0x10) != 0 && *(v4 + 32) < v5)
  {
    *(v4 + 32) = v5;
  }

  v12 = a1[31];
  if ((v12 & 0x20000) != 0)
  {
    v21 = *(a1 + 9);
    if (v21)
    {
      *v21 = -1;
      if ((*(v4 + 14) & 0x20) == 0)
      {
LABEL_31:
        *(a1 + 9) = 0;
        goto LABEL_32;
      }

      if ((a2 & 0x200000) != 0)
      {
        *(*(a1 + 9) + 8) = 0;
        goto LABEL_31;
      }
    }

LABEL_32:
    v22 = a1[31] | 1;
    a1[30] = 0;
    a1[31] = v22;
LABEL_33:
    if ((a2 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_33;
  }

  v14 = (v4 + 176);
  v13 = *(v4 + 176);
  if ((a2 & 0x10) == 0)
  {
    mdb_cursors_close(a1, 0);
  }

  if ((*(v4 + 14) & 8) == 0)
  {
    v15 = *(a1 + 9);
    v16 = *v15;
    if (*v15)
    {
      v17 = *(a1 + 4);
      v18 = 1;
      do
      {
        v19 = *&v15[4 * v18 + 2];
        if ((*(v19 + 5) & 4) != 0 && *(v19 + 3) != 1)
        {
          free(v19);
        }

        else
        {
          *v19 = *(v17 + 192);
          *(v17 + 192) = v19;
        }

        ++v18;
      }

      while (v18 <= v16);
    }

    *v15 = 0;
  }

  *(a1 + 15) = 0x100000000;
  v20 = *a1;
  if (*a1)
  {
    *(v20 + 8) = 0;
    *(v20 + 124) &= ~0x10u;
    *v14 = *(a1 + 34);
    mdb_midl_free(*(a1 + 5));
    free(*(a1 + 9));
  }

  else
  {
    mdb_midl_shrink(a1 + 5);
    *(v4 + 200) = *(a1 + 5);
    *(v4 + 96) = 0;
    *v14 = 0;
    *(v4 + 184) = 0;
    v23 = *(v4 + 64);
    if (v23)
    {
      pthread_mutex_unlock(v23 + 2);
    }

    LOBYTE(a2) = 0;
  }

  mdb_midl_free(*(a1 + 8));
  mdb_midl_free(v13);
  if ((a2 & 0x20) != 0)
  {
LABEL_39:

    free(a1);
  }
}

uint64_t mdb_txn_env(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t mdb_txn_id(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void mdb_txn_reset(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 126) & 2) != 0)
    {
      mdb_txn_end(a1, 3);
    }
  }
}

void mdb_txn_abort(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      mdb_txn_abort(v2);
    }

    mdb_txn_end(a1, 2097186);
  }
}

uint64_t mdb_txn_commit(uint64_t *a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = a1[1];
  if (v2)
  {
    appended = mdb_txn_commit(v2);
    if (appended)
    {
      goto LABEL_4;
    }
  }

  v5 = 2097201;
  v6 = *(a1 + 31);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

  v7 = *a1;
  if ((v6 & 3) == 0)
  {
    if (v7)
    {
      appended = mdb_midl_append_list((v7 + 40), a1[5]);
      if (!appended)
      {
        mdb_midl_free(a1[5]);
        *(v7 + 16) = a1[2];
        *(v7 + 124) = *(a1 + 31);
        mdb_cursors_close(a1, 1);
        memcpy(*(v7 + 88), a1[11], 48 * *(a1 + 30));
        *(v7 + 120) = *(a1 + 30);
        **(v7 + 112) = *a1[14];
        *(*(v7 + 112) + 1) = *(a1[14] + 1);
        if (*(a1 + 30) >= 3u)
        {
          v8 = 2;
          do
          {
            *(*(v7 + 112) + v8) = *(a1[14] + v8) | *(*(v7 + 112) + v8) & 4;
            ++v8;
          }

          while (v8 < *(a1 + 30));
        }

        v9 = *(v7 + 64);
        v11 = *(v7 + 72);
        v10 = (v7 + 64);
        v12 = a1[9];
        if (v9)
        {
          v13 = *v9;
          if (*v9)
          {
            *v9 = -1;
            v14 = *v12;
            if (*v12)
            {
              if (v14 + 1 > 2)
              {
                v15 = v14 + 1;
              }

              else
              {
                v15 = 2;
              }

              v16 = 1;
              v17 = v13;
              v18 = v13;
              do
              {
                v19 = 2 * *&v12[4 * v16];
                do
                {
                  v20 = v18;
                  v21 = *&v9[2 * v18--];
                }

                while (v19 > v21);
                if (v19 == v21)
                {
                  *&v9[2 * v20] = 1;
                  v17 = v18;
                }

                else
                {
                  ++v18;
                }

                ++v16;
              }

              while (v16 != v15);
            }

            else
            {
              v17 = v13;
            }

            for (i = v17 + 1; i <= v13; ++i)
            {
              v30 = *&v9[2 * i];
              if ((v30 & 1) == 0)
              {
                *&v9[2 * ++v17] = v30;
              }
            }

            *v9 = v17;
          }
        }

        v31 = a1[8];
        if (v31 && *v31)
        {
          v32 = 1;
          do
          {
            v33 = v31[v32];
            if ((v33 & 1) == 0)
            {
              v34 = v33 >> 1;
              v35 = mdb_mid2l_search(v11, v33 >> 1);
              if (*v11 >= v35)
              {
                v36 = v35;
                v37 = &v11[4 * v35];
                if (*v37 == v34)
                {
                  free(*(v37 + 1));
                  v38 = *v11;
                  if (*v11 > v36)
                  {
                    v39 = v36 + 1;
                    do
                    {
                      *&v11[4 * v36] = *&v11[4 * v39];
                      v36 = v39;
                      v38 = *v11;
                    }

                    while (*v11 > v39++);
                  }

                  *v11 = v38 - 1;
                }
              }
            }

            v32 = (v32 + 1);
            v31 = a1[8];
          }

          while (*v31 >= v32);
        }

        v41 = *v11;
        *v11 = 0;
        if (*v7)
        {
          v42 = *v12 + v41;
          v43 = mdb_mid2l_search(v12, *&v11[4 * v41] + 1);
          v44 = v43 - 1;
          if (v43 != 1 && v41 != 0)
          {
            v46 = v41;
            do
            {
              v47 = *&v12[4 * v44];
              v48 = v46 + 1;
              do
              {
                v49 = *&v11[4 * --v48];
              }

              while (v47 < v49);
              v50 = v47 == v49;
              v42 -= v50;
              if (!--v44)
              {
                break;
              }

              v46 = v48 - v50;
            }

            while (v46);
          }
        }

        else
        {
          v42 = 0x1FFFF - *(a1 + 32);
        }

        v51 = *v12;
        if (*v12)
        {
          v52 = v42;
          do
          {
            v53 = &v12[4 * v51];
            v54 = *v53;
            v55 = &v11[4 * v41];
            v56 = *v55;
            if (*v53 >= *v55)
            {
              v57 = v41;
            }

            else
            {
              do
              {
                *&v11[4 * v52--] = *v55;
                v41 = (v41 - 1);
                v55 = &v11[4 * v41];
                v56 = *v55;
              }

              while (v54 < *v55);
              v57 = v41;
            }

            if (v54 == v56)
            {
              LODWORD(v41) = v41 - 1;
              free(*&v11[4 * v57 + 2]);
            }

            *&v11[4 * v52--] = *v53;
            --v51;
          }

          while (v51);
        }

        *v11 = v42;
        free(a1[9]);
        *(v7 + 128) = *(a1 + 32);
        v58 = a1[8];
        if (v58)
        {
          if (*v10)
          {
            v4 = mdb_midl_append_list((v7 + 64), v58);
            if (v4)
            {
              *(v7 + 124) |= 2u;
            }

            mdb_midl_free(a1[8]);
            mdb_midl_sort(*v10);
          }

          else
          {
            v4 = 0;
            *v10 = v58;
          }
        }

        else
        {
          v4 = 0;
        }

        v59 = v7;
        do
        {
          v60 = v59;
          v59 = *(v59 + 48);
        }

        while (v59);
        *(v60 + 48) = a1[6];
        *(v7 + 56) += *(a1 + 14);
        *(v7 + 8) = 0;
        mdb_midl_free(a1[17]);
        free(a1);
        return v4;
      }

LABEL_4:
      v4 = appended;
      goto LABEL_10;
    }

    v22 = a1[4];
    if (*(v22 + 96) != a1)
    {
      v4 = 22;
      goto LABEL_10;
    }

    mdb_cursors_close(a1, 0);
    if (*a1[9] || (*(a1 + 124) & 0xC) != 0)
    {
      if (*(a1 + 30) >= 3u)
      {
        v63 = 0;
        memset(v62, 0, sizeof(v62));
        v61 = xmmword_185DE4900;
        mdb_cursor_init(v62, a1, 1u, 0);
        v23 = *(a1 + 30);
        if (v23 >= 3)
        {
          v24 = 2;
          v25 = 96;
          do
          {
            if (*(a1[14] + v24))
            {
              if (*(a1[12] + 4 * v24) != *(*(a1[4] + 152) + 4 * v24))
              {
                v4 = 4294936516;
                goto LABEL_10;
              }

              v26 = a1[10];
              *(&v61 + 1) = a1[11] + v25;
              mdb_cursor_put(v62, (v26 + v25), &v61, 2);
              if (appended)
              {
                goto LABEL_4;
              }

              v23 = *(a1 + 30);
            }

            ++v24;
            v25 += 48;
          }

          while (v24 < v23);
        }
      }

      mdb_freelist_save(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      mdb_midl_free(*(v22 + 176));
      *(v22 + 176) = 0;
      mdb_midl_shrink(a1 + 5);
      appended = mdb_page_flush(a1, 0);
      if (appended)
      {
        goto LABEL_4;
      }

      if ((*(a1 + 126) & 1) == 0)
      {
        appended = mdb_env_sync0(v22, 0, a1[2]);
        if (appended)
        {
          goto LABEL_4;
        }
      }

      appended = mdb_env_write_meta(a1);
      if (appended)
      {
        goto LABEL_4;
      }

      v27 = *(v22 + 12);
      if ((v27 & 0x2000000) != 0)
      {
        if ((v27 & 0x400000) == 0)
        {
          appended = mdb_env_share_locks(v22, v62);
          if (appended)
          {
            goto LABEL_4;
          }

          v27 = *(v22 + 12);
        }

        *(v22 + 12) = v27 ^ 0x2000000;
      }

      v5 = 16;
    }

LABEL_54:
    mdb_txn_end(a1, v5);
    return 0;
  }

  if (v7)
  {
    *(v7 + 124) |= 2u;
  }

  v4 = 4294936514;
LABEL_10:
  mdb_txn_abort(a1);
  return v4;
}

void mdb_cursors_close(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (v2 >= 1)
  {
    v4 = *(a1 + 104);
    do
    {
      v5 = *(v4 + 8 * (v2 - 1));
      while (v5)
      {
        v6 = v5;
        v5 = *v5;
        v7 = v6[1];
        if (v7)
        {
          if (a2)
          {
            *v6 = *v7;
            v8 = v7[3];
            v6[3] = v8;
            v6[5] = v7[5];
            v6[7] = v7[7];
            v9 = v6[2];
            if (v9)
            {
              *(v9 + 24) = v8;
            }
          }

          else
          {
            memcpy(v6, v6[1], 0x188uLL);
            v10 = v6[2];
            if (v10)
            {
              memcpy(v10, v7 + 49, 0x1F0uLL);
            }
          }
        }

        else
        {
          v7 = v6;
        }

        free(v7);
      }

      *(v4 + 8 * (v2 - 1)) = 0;
    }

    while (v2-- > 1);
  }
}

uint64_t mdb_cursor_init(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 32) = a3;
  *(result + 24) = a2;
  v4 = *(a2 + 80) + 48 * a3;
  *(result + 40) = *(a2 + 88) + 48 * a3;
  *(result + 48) = v4;
  v5 = (*(a2 + 112) + a3);
  *(result + 56) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 328) = 0;
  v6 = *(a2 + 124) & 0xA0000;
  *(result + 68) = v6;
  if ((*(*(a2 + 88) + 48 * a3 + 4) & 4) != 0)
  {
    *(result + 16) = a4;
    *(a4 + 16) = 0;
    *(a4 + 24) = a2;
    *(a4 + 40) = a4 + 392;
    *(a4 + 48) = a4 + 440;
    *(a4 + 32) = a3;
    *(a4 + 56) = a4 + 488;
    *(a4 + 64) = 0;
    *(a4 + 68) = v6 | 4;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    v7 = *(result + 48);
    v5 = *(result + 56);
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    *(a4 + 456) = v9;
    *(a4 + 464) = 0;
    *(a4 + 472) = v8;
  }

  else
  {
    *(result + 16) = 0;
  }

  if ((*v5 & 2) != 0)
  {
    return mdb_page_search(result, 0, 2);
  }

  return result;
}

void mdb_cursor_put(uint64_t a1, size_t *a2, uint64_t a3, int a4)
{
  v129 = 0;
  if (a1 && a2)
  {
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0u;
    memset(v121, 0, sizeof(v121));
    v8 = *(a1 + 24);
    v9 = *(v8 + 32);
    if ((a4 & 0x80000) != 0)
    {
      v10 = *(a3 + 16);
      *(a3 + 16) = 0;
      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        return;
      }
    }

    else
    {
      v10 = 0;
    }

    if ((*(v8 + 124) & 0x20013) == 0 && *a2 - 512 >= 0xFFFFFFFFFFFFFE01)
    {
      v11 = *(a1 + 40);
      v12 = 511;
      if ((*(v11 + 4) & 4) == 0)
      {
        v12 = 0xFFFFFFFFLL;
      }

      if (*a3 <= v12)
      {
        v125 = 0;
        if ((a4 & 0x40) != 0)
        {
          v15 = *(a1 + 68);
          if ((v15 & 1) == 0)
          {
            return;
          }

          v14 = 0;
        }

        else if (*(v11 + 40) == -1)
        {
          v15 = *(a1 + 68) & 0xFFFFFFFE;
          *(a1 + 64) = 0;
          *(a1 + 68) = v15;
          v14 = -30769;
        }

        else
        {
          v120 = 0;
          v119 = 0uLL;
          if ((a4 & 0x20000) != 0)
          {
            v118[0] = 0;
            v118[1] = 0;
            mdb_cursor_last(a1, v118, &v119);
            v14 = v16;
            if (!v16)
            {
              if ((*(*(a1 + 48) + 16))(a2, v118) < 1)
              {
                v14 = -30799;
              }

              else
              {
                v17 = a1 + 2 * *(a1 + 66);
                ++*(v17 + 328);
                v14 = -30798;
              }
            }
          }

          else
          {
            mdb_cursor_set(a1, a2, &v119, 15, &v120);
            v14 = v13;
            if ((a4 & 0x10) != 0 && !v13)
            {
              *a3 = v119;
              return;
            }
          }

          if (v14 != -30798 && v14)
          {
            return;
          }

          v15 = *(a1 + 68);
        }

        if ((v15 & 8) != 0)
        {
          *(a1 + 68) = v15 & 0xFFFFFFF7;
        }

        if ((a4 & 0x8000) == 0)
        {
          v18 = a3;
          if ((a4 & 0x80000) != 0)
          {
            v127 = *a3 * v10;
            v18 = &v127;
          }

          if (mdb_page_spill(a1, a2, v18))
          {
            return;
          }
        }

        v19 = a4 & 0xFFFF7FFF;
        if (v14 == -30769)
        {
          *&v119 = 0;
          mdb_page_new(a1, 2, 1, &v119);
          if (v20)
          {
            return;
          }

          v21 = v119;
          v22 = *(a1 + 64);
          if (v22 < 0x20)
          {
            *(a1 + 64) = v22 + 1;
            *(a1 + 66) = v22;
            *(a1 + 8 * v22 + 72) = v21;
            *(a1 + 2 * v22 + 328) = 0;
          }

          else
          {
            *(*(a1 + 24) + 124) |= 2u;
          }

          v25 = *(a1 + 40);
          *(v25 + 40) = *v21;
          ++*(v25 + 6);
          **(a1 + 56) |= 1u;
          v24 = *(*(a1 + 40) + 4);
          if ((v24 & 0x14) == 0x10)
          {
            *(v21 + 10) |= 0x20u;
          }

          *(a1 + 68) |= 1u;
LABEL_47:
          if ((v24 & 4) != 0 && *a2 + *a3 + 8 > *(v9 + 220))
          {
            v113 = 0;
            v26 = *(v9 + 88);
            *(v26 + 4) = *a3;
            *(v26 + 3) = 1048592;
            v123 = 16;
            v27 = 18;
            goto LABEL_108;
          }

          v112 = 0;
          v113 = 0;
          v28 = 0;
          goto LABEL_100;
        }

        mdb_cursor_touch(a1);
        if (v23)
        {
          return;
        }

        if (v14)
        {
          v24 = *(*(a1 + 40) + 4);
          goto LABEL_47;
        }

        v29 = *(a1 + 66);
        v30 = *(a1 + 8 * v29 + 72);
        v31 = *(a1 + 40);
        if ((*(v30 + 10) & 0x20) != 0)
        {
          v32 = *v31;
          v33 = *a2;
          if (*a2 == v32)
          {
            v34 = a2[1];
            v35 = (v30 + v32 * *(a1 + 2 * v29 + 328) + 16);
            goto LABEL_55;
          }

          return;
        }

        v116 = a4 & 0xFFFF7FFF;
        v112 = 0;
        v113 = 0;
        v28 = 0;
        while (1)
        {
          v40 = *(a1 + 8 * v29 + 72);
          v41 = (v40 + *(v40 + *(a1 + 2 * v29 + 328) + 8));
          v123 = *v41;
          v124 = (v41 + *(v41 + 3) + 8);
          if ((v31[1] & 4) == 0)
          {
            goto LABEL_85;
          }

          v42 = *(v9 + 88);
          v128 = v42;
          v129 = v42;
          *v42 = *v40;
          v43 = *(v41 + 2);
          if ((v43 & 4) != 0)
          {
            v110 = v28;
            if ((v43 & 2) != 0)
            {
              v111 = 0;
              v19 = v116 | 6;
              goto LABEL_158;
            }

            v26 = v124;
            if (v116 == 64)
            {
LABEL_80:
              v111 = 0;
              *(v124 + 5) |= 0x10u;
              *v26 = *v42;
              *(v26 + 1) = *(v42 + 1);
              *(v26 + 2) = *(v42 + 2);
              *(v26 + 3) = *(v42 + 3);
              *(*(a1 + 16) + 72) = v26;
              v19 = v116 | 4;
              goto LABEL_158;
            }

            if ((*(*(a1 + 40) + 4) & 0x10) != 0)
            {
              v64 = *(v124 + 4);
              if (v64 <= (*(v124 + 7) - *(v124 + 6)))
              {
                goto LABEL_80;
              }

              v50 = 4 * v64;
            }

            else
            {
              v50 = (*a3 + 11) & 0xFFFFFFFE;
            }

            v62 = v123;
            v63 = v123 + v50;
            v127 = v63;
            v27 = *(v124 + 5);
          }

          else
          {
            if (v116 == 64)
            {
              goto LABEL_85;
            }

            v44 = *(*(a1 + 48) + 24);
            if (v123 == 8 && v44 == mdb_cmp_int)
            {
              v44 = mdb_cmp_cint;
            }

            if (!v44(a3, &v123))
            {
              if ((v116 & 0x40020) != 0)
              {
                return;
              }

LABEL_85:
              v51 = *(v41 + 2);
              v19 = v116;
              if (((v116 ^ v51) & 2) != 0)
              {
                return;
              }

              if (v51)
              {
                v55 = v28;
                v118[0] = 0;
                v120 = 0;
                v56 = *a3;
                v57 = *(v9 + 16);
                v114 = *v124;
                if (mdb_page_get(a1, *v124, v118, &v120))
                {
                  return;
                }

                v58 = (v56 + 15) / v57 + 1;
                v59 = v118[0];
                v60 = *(v118[0] + 3);
                if (v60 >= v58)
                {
                  if ((*(v118[0] + 5) & 0x10) != 0)
                  {
                    goto LABEL_200;
                  }

                  if (v120 || (*(v9 + 14) & 8) != 0)
                  {
                    if (mdb_page_unspill(*(a1 + 24), v118[0], v118))
                    {
                      return;
                    }

                    v120 = 0;
                    v59 = v118[0];
                    if ((*(v118[0] + 5) & 0x10) != 0)
                    {
LABEL_200:
                      if (v120 <= 1)
                      {
                        v107 = v116 & 0x10000;
                        v105 = v59;
                      }

                      else
                      {
                        v103 = *(v9 + 16);
                        v104 = mdb_page_malloc(*(a1 + 24), v60);
                        if (!v104)
                        {
                          return;
                        }

                        v105 = v104;
                        v106 = v103 * v60;
                        *&v119 = v114;
                        *(&v119 + 1) = v104;
                        mdb_mid2l_insert(*(*(a1 + 24) + 72), &v119);
                        v107 = v116 & 0x10000;
                        if ((v116 & 0x10000) == 0)
                        {
                          memcpy(&v105[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], &v59[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], v106 - ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16));
                          v106 = 16;
                        }

                        memcpy(v105, v59, v106);
                      }

                      v52 = *a3;
                      *v41 = *a3;
                      v108 = (v105 + 16);
                      if (v107)
                      {
                        goto LABEL_208;
                      }

                      v54 = *(a3 + 8);
                      v53 = (v105 + 16);
                      goto LABEL_210;
                    }
                  }
                }

                v28 = v55;
                if (mdb_ovpage_free(a1, v59))
                {
                  return;
                }
              }

              else
              {
                v52 = *a3;
                if (*a3 == v123)
                {
                  if ((v116 & 0x10000) != 0)
                  {
                    v108 = v124;
LABEL_208:
                    *(a3 + 8) = v108;
                    return;
                  }

                  if ((*(a1 + 68) & 4) == 0)
                  {
                    v53 = v124;
                    v54 = *(a3 + 8);
LABEL_210:
                    memcpy(v53, v54, v52);
                    return;
                  }

                  v33 = *a2;
                  v34 = a2[1];
                  v35 = v41 + 2;
LABEL_55:
                  memcpy(v35, v34, v33);
                  v36 = *(a1 + 66);
                  if (*(a1 + 66))
                  {
                    v37 = a1 + 328;
                    if (!*(a1 + 328 + 2 * v36))
                    {
                      v38 = v36 - 1;
                      *(a1 + 66) = v36 - 1;
                      if (v36 == 1)
                      {
                        v38 = 0;
                        LOWORD(v36) = 1;
                      }

                      else
                      {
                        v39 = 1;
                        while (!*(v37 + 2 * v38))
                        {
                          *(a1 + 66) = --v38;
                          ++v39;
                          if (!v38)
                          {
                            v38 = 0;
                            goto LABEL_64;
                          }
                        }

                        LOWORD(v36) = v39;
                      }

LABEL_64:
                      if (*(v37 + 2 * v38))
                      {
                        mdb_update_key(a1, a2);
                        *(a1 + 66) += v36;
                      }

                      else
                      {
                        *(a1 + 66) = v38 + v36;
                      }
                    }
                  }

                  return;
                }
              }

              mdb_node_del(a1, 0);
              v14 = 0;
LABEL_100:
              v61 = a3;
              goto LABEL_125;
            }

            v46 = v123;
            v125 = v123;
            memcpy(v42 + 3, v124, v123);
            v126 = v42 + 3;
            *(v42 + 5) = 82;
            *(v42 + 6) = 16;
            v47 = *a3;
            v48 = v46 + *a3 + 16;
            if ((*(*(a1 + 40) + 4) & 0x10) != 0)
            {
              v27 = 114;
              *(v42 + 5) = 114;
              *(v42 + 4) = v47;
              v49 = 2 * v47;
            }

            else
            {
              v49 = ((*a3 & 1) + (v46 & 1)) | 0x14;
              v27 = 82;
            }

            LOWORD(v50) = 0;
            v62 = v49 + v48;
            v127 = v62;
            *(v42 + 7) = v62;
            v123 = v62;
            v63 = v62;
            v26 = v42;
          }

          if (*(v41 + 3) + v63 + 8 <= *(v9 + 220))
          {
            v14 = 0;
          }

          else
          {
            v14 = 0;
            v27 &= ~0x40u;
            v19 = v116;
LABEL_108:
            v65 = *(a1 + 40);
            if ((*(v65 + 4) & 0x10) != 0)
            {
              v27 |= 0x20u;
              LODWORD(v121[0]) = *(v26 + 4);
              WORD2(v121[0]) = 16;
              if ((*(v65 + 4) & 0x20) != 0)
              {
                v66 = 24;
              }

              else
              {
                v66 = 16;
              }

              WORD2(v121[0]) = v66;
            }

            else
            {
              LODWORD(v121[0]) = 0;
              WORD2(v121[0]) = 0;
            }

            WORD3(v121[0]) = 1;
            *(v121 + 8) = xmmword_185DB7AF0;
            *(&v121[1] + 1) = 0;
            *&v122 = (*(v26 + 6) - 16) >> 1;
            v127 = 48;
            v128 = v121;
            mdb_page_alloc(a1, 1, &v129);
            if (v67)
            {
              return;
            }

            v62 = v123;
            v50 = *(v9 + 16) - v123;
            v116 = v19 | 6;
            v42 = v129;
            *(&v122 + 1) = *v129;
            v112 = v129;
          }

          if (v42 != v26)
          {
            *(v42 + 5) = v27 | 0x10;
            *(v42 + 4) = *(v26 + 4);
            *(v42 + 6) = *(v26 + 6);
            v68 = *(v26 + 7) + v50;
            *(v42 + 7) = v68;
            if ((v27 & 0x20) != 0)
            {
              memcpy(v42 + 2, v26 + 2, ((*(v26 + 6) - 16) >> 1) * *(v26 + 4));
            }

            else
            {
              memcpy(v42 + v68, v26 + *(v26 + 7), v62 - *(v26 + 7));
              memcpy(v42 + 2, v26 + 2, (*(v26 + 6) - 16) & 0xFFFFFFFE);
              if ((*(v26 + 6) & 0xFFFE) != 0x10)
              {
                v69 = 0;
                do
                {
                  *(v42 + v69++ + 8) += v50;
                }

                while (v69 < (*(v26 + 6) - 16) >> 1);
              }
            }
          }

          v19 = v116 | 4;
          v61 = &v127;
          v28 = 1;
          if (!v14)
          {
            mdb_node_del(a1, 0);
            v61 = &v127;
          }

LABEL_125:
          v70 = *(a1 + 66);
          v71 = *(a1 + 72 + 8 * v70);
          v72 = *a2;
          if ((v71[5] & 0x20) == 0)
          {
            v73 = v72 + *v61 + 8;
            v74 = v72 + 16;
            if (v73 <= *(v9 + 220))
            {
              v74 = v73;
            }

            v72 = (v74 + 3) & 0xFFFFFFFFFFFFFFFELL;
          }

          if (v72 <= (v71[7] - v71[6]))
          {
            mdb_node_add(a1, *(a1 + 328 + 2 * v70), a2, v61, 0, v19 & 0x30006);
            if (v78)
            {
              goto LABEL_199;
            }

            v79 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
            if (v79)
            {
              v80 = *(a1 + 66);
              v81 = *(a1 + 72 + 8 * v80);
              v82 = *(a1 + 68);
              do
              {
                v83 = v79;
                if ((v82 & 4) != 0)
                {
                  v83 = v79[2];
                }

                if (v83 != a1 && *(v83 + 32) >= *(a1 + 64) && v83[v80 + 9] == v81)
                {
                  v84 = *(v83 + v80 + 164);
                  if (v14 && v84 >= *(a1 + 328 + 2 * v80))
                  {
                    LOWORD(v84) = v84 + 1;
                    *(v83 + v80 + 164) = v84;
                  }

                  v85 = v83[2];
                  if (v85)
                  {
                    if ((*(v85 + 68) & 1) != 0 && (*(v81 + 12) - 16) >> 1 > v84)
                    {
                      v86 = v81 + *(v81 + 16 + 2 * v84);
                      if ((*(v86 + 4) & 6) == 4)
                      {
                        *(v85 + 72) = v86 + *(v86 + 6) + 8;
                      }
                    }
                  }
                }

                v79 = *v79;
              }

              while (v79);
            }
          }

          else
          {
            if ((v19 & 6) == 4)
            {
              v75 = v19 & 0x10004;
            }

            else
            {
              v75 = v19 & 0x30006;
            }

            if (v14)
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 | 0x40000;
            }

            mdb_page_split(a1, a2, v61, 0xFFFFFFFFFFFFFFFFLL, v76);
            if (v77)
            {
LABEL_199:
              *(*(a1 + 24) + 124) |= 2u;
              return;
            }
          }

          if (!v28)
          {
            v97 = 0;
            v101 = v14;
            goto LABEL_189;
          }

          v110 = 1;
          v111 = v14;
LABEL_158:
          v127 = 0;
          v128 = "";
          v115 = *(a1 + 72 + 8 * *(a1 + 66)) + *(*(a1 + 72 + 8 * *(a1 + 66)) + 2 * *(a1 + 328 + 2 * *(a1 + 66)) + 16);
          v87 = 32832;
          if ((v19 & 0x40040) != 0x40)
          {
            mdb_xcursor_init1(a1, v115);
            if ((v19 & 0x20) != 0)
            {
              v87 = 32784;
            }

            else
            {
              v87 = 0x8000;
            }
          }

          v117 = v19;
          if (v112)
          {
            *(*(a1 + 16) + 72) = v112;
          }

          v109 = v125;
          if (v125)
          {
            if (mdb_cursor_put(*(a1 + 16), &v125, &v127, v87))
            {
              goto LABEL_199;
            }

            v125 = 0;
          }

          if (v112 || (*(v115 + 4) & 2) == 0)
          {
            v88 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
            if (v88)
            {
              v89 = *(a1 + 16);
              v90 = *(a1 + 66);
              v91 = *(a1 + 72 + 8 * v90);
              do
              {
                if (v88 != a1 && *(v88 + 64) >= *(a1 + 64) && (*(v88 + 68) & 1) != 0 && *(v88 + 8 * v90 + 72) == v91)
                {
                  v92 = *(v88 + 2 * v90 + 328);
                  if (v92 == *(a1 + 328 + 2 * v90))
                  {
                    mdb_xcursor_init2(v88, v89, v109);
                  }

                  else if (!v111)
                  {
                    v93 = *(v88 + 16);
                    if (v93)
                    {
                      if ((*(v93 + 68) & 1) != 0 && v92 < (*(v91 + 12) - 16) >> 1)
                      {
                        v94 = v91 + *(v91 + 16 + 2 * *(v88 + 2 * v90 + 328));
                        if ((*(v94 + 4) & 6) == 4)
                        {
                          *(v93 + 72) = v94 + *(v94 + 6) + 8;
                        }
                      }
                    }
                  }
                }

                v88 = *v88;
              }

              while (v88);
            }
          }

          v95 = *(a1 + 16);
          v96 = *(v95 + 424);
          v19 = v117;
          v97 = mdb_cursor_put(v95, a3, &v127, v87 | (v117 >> 1) & 0x20000);
          if ((v117 & 2) != 0)
          {
            v98 = v115 + *(v115 + 6);
            v100 = *(*(a1 + 16) + 408);
            v99 = *(*(a1 + 16) + 424);
            *(v98 + 8) = *(*(a1 + 16) + 392);
            *(v98 + 24) = v100;
            *(v98 + 40) = v99;
          }

          v101 = *(*(a1 + 16) + 424) - v96;
          v28 = v110;
          v14 = v111;
LABEL_189:
          if (v101)
          {
            ++*(*(a1 + 40) + 32);
          }

          if (v14)
          {
            if (v97)
            {
              goto LABEL_199;
            }

            *(a1 + 68) |= 1u;
          }

          if ((v19 & 0x80000) == 0)
          {
            return;
          }

          if (v97)
          {
            return;
          }

          v102 = (v113 + 1);
          *(a3 + 16) = v102;
          if (v102 >= v10)
          {
            return;
          }

          ++v113;
          v116 = v19;
          *(a3 + 8) += *a3;
          v29 = *(a1 + 66);
          v31 = *(a1 + 40);
        }
      }
    }
  }
}

void mdb_freelist_save(uint64_t a1)
{
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  v61 = 0;
  mdb_cursor_init(v62, a1, 0, 0);
  v4 = (v2 + 176);
  if (!*(v2 + 176))
  {
    goto LABEL_93;
  }

  mdb_page_search(v62, 0, 5);
  if (v5 && v5 != -30798)
  {
    return;
  }

  if (!*v4)
  {
LABEL_93:
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(a1 + 72);
      if (mdb_midl_need((a1 + 40), *(a1 + 56)))
      {
        return;
      }

      do
      {
        v8 = *(a1 + 40);
        v9 = *v8 + 1;
        *v8 = v9;
        v10 = *v6;
        v8[v9] = *v6;
        if ((*(a1 + 126) & 8) != 0)
        {
          if (*v7)
          {
            v11 = 1;
            do
            {
              if (*(v7 + 16 * v11) == v10)
              {
                break;
              }

              v11 = (v11 + 1);
            }

            while (*v7 >= v11);
          }

          else
          {
            LODWORD(v11) = 1;
          }
        }

        else
        {
          LODWORD(v11) = mdb_mid2l_search(v7, v10);
          if ((*(v6 + 5) & 4) != 0 && *(v6 + 3) != 1)
          {
            free(v6);
          }

          else
          {
            *v6 = *(v2 + 192);
            *(v2 + 192) = v6;
          }
        }

        *(v7 + 16 * v11 + 8) = 0;
        v6 = v6[6];
      }

      while (v6);
      v12 = *v7;
      if (*(v7 + 24))
      {
        v13 = 1;
        while (v12 >= v13)
        {
          v13 = (v13 + 1);
          v14 = v13;
          if (!*(v7 + 16 * v13 + 8))
          {
            goto LABEL_27;
          }
        }

        v14 = v13;
      }

      else
      {
        v14 = 1;
        v13 = 1;
      }

LABEL_27:
      if (v12 >= v13)
      {
        LODWORD(v16) = v14;
        while (1)
        {
          do
          {
            v16 = (v16 + 1);
            v17 = v7 + 16 * v16;
            if (*(v17 + 8))
            {
              v18 = 0;
            }

            else
            {
              v18 = v12 >= v16;
            }
          }

          while (v18);
          if (v12 < v16)
          {
            break;
          }

          *(v7 + 16 * v14++) = *v17;
          v12 = *v7;
        }

        v15 = v14 - 1;
      }

      else
      {
        v15 = 0;
      }

      *v7 = v15;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = *(v2 + 12) & 0x1080000;
  v55 = 1;
  while (1)
  {
LABEL_39:
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    if (v19 < *(v2 + 184))
    {
      while (1)
      {
        mdb_cursor_first(v62, &v59, 0);
        if (v24)
        {
          break;
        }

        v19 = *v60;
        v61 = *v60;
        mdb_cursor_del(v62, 0);
        if (v25)
        {
          break;
        }

        if (v19 >= *(v2 + 184))
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_44;
        }
      }

      return;
    }

LABEL_44:
    if (v20 < **(a1 + 40))
    {
      if (v20 || (mdb_page_search(v62, 0, 9), !v26) || v26 == -30798)
      {
        v27 = *(a1 + 40);
        v59 = 8;
        v60 = (a1 + 24);
        v28 = *v27;
        while (1)
        {
          v20 = v28;
          v57 = 8 * v28 + 8;
          mdb_cursor_put(v62, &v59, &v57, 0x10000);
          if (v29)
          {
            break;
          }

          v30 = *(a1 + 40);
          v28 = *v30;
          if (v20 >= *v30)
          {
            mdb_midl_sort(*(a1 + 40));
            memcpy(v58, v30, v57);
            goto LABEL_39;
          }
        }
      }

      return;
    }

    v31 = *v4;
    v32 = v23;
    v33 = *v4 ? *v31 : 0;
    v34 = *(a1 + 56);
    v35 = v33 + v34;
    if (v22 >= v33 + v34)
    {
      break;
    }

    v36 = v61;
    if (v21 >= v3 && v61 >= 2)
    {
      v21 = 0;
      v36 = --v61;
    }

LABEL_64:
    v38 = v22 - v21;
    v39 = v35 - (v22 - v21);
    if (v39 > v3 && v36 >= 2)
    {
      v21 = v3 + (v39 / v36) / (v3 + 1) * (v3 + 1);
    }

    else
    {
      v21 = v39 & ~(v39 >> 63);
    }

    v23 = v32;
    v59 = 8;
    v60 = &v61;
    v57 = 8 * v21 + 8;
    mdb_cursor_put(v62, &v59, &v57, 0x10000);
    if (v41)
    {
      return;
    }

    if (v21 > v3 && v23 == 0)
    {
      v43 = v21;
    }

    else
    {
      v43 = 0;
    }

    bzero(&v58[v43 & (v43 >> 63)], 8 * (v43 - (v43 & (v43 >> 63))) + 8);
    v22 = v21 + v38;
  }

  if (v22 != v33 + v34 && v55 >= 1)
  {
    --v55;
    v36 = v61;
    goto LABEL_64;
  }

  v44 = *(a1 + 48);
  if (v44)
  {
    v45 = v34;
    if (mdb_midl_need((v2 + 176), (2 * v34) | 1))
    {
      return;
    }

    v31 = *v4;
    v46 = &(*v4)[*(*v4 - 1) - v45];
    v47 = 1;
    do
    {
      v48 = v47;
      *&v46[2 * v47] = *v44;
      v44 = v44[6];
      ++v47;
    }

    while (v44);
    *v46 = v48;
    mdb_midl_sort(v46);
    mdb_midl_xmerge(v31, v46);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v35 = *v31;
  }

  if (v35)
  {
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    mdb_cursor_first(v62, &v59, &v57);
    if (!v49)
    {
      v50 = &v31[v35];
      do
      {
        v56 = *v60;
        v51 = (v57 >> 3) - 1;
        v60 = &v56;
        if (v51 > v35)
        {
          v57 = 8 * v35 + 8;
          v51 = v35;
        }

        v50 -= v51;
        v58 = v50;
        v52 = *v50;
        *v50 = v51;
        mdb_cursor_put(v62, &v59, &v57, 64);
        *v50 = v52;
        if (v53)
        {
          break;
        }

        v35 -= v51;
        if (!v35)
        {
          break;
        }

        mdb_cursor_next(v62, &v59, &v57, 8);
      }

      while (!v54);
    }
  }
}

uint64_t mdb_page_flush(uint64_t a1, int a2)
{
  v2 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *v4;
  if ((*(v3 + 14) & 8) == 0)
  {
    v37 = *(a1 + 32);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 16);
    v13 = *v3;
    v41 = *(a1 + 72);
    v42 = v5;
    v38 = v5 + 1;
    v14 = 1;
    v39 = 1 - v5;
    v40 = *v4;
    v35 = a2;
    v15 = a2;
    while (1)
    {
      if (v15 >= v5)
      {
        v19 = 0;
        LODWORD(v20) = v15++;
      }

      else
      {
        v16 = v15 + 1;
        v17 = &v4[2 * v16];
        v8 = v17[1];
        v18 = *(v8 + 10);
        if (v18 >= 0x4000)
        {
          v16 = 0;
          while (1)
          {
            *(v8 + 10) = v18 & 0x7FFF;
            *v17 = 0;
            if (!(v39 + v15 + v16))
            {
              break;
            }

            v8 = v17[3];
            v18 = *(v8 + 10);
            v17 += 2;
            ++v16;
            if (v18 < 0x4000)
            {
              v21 = v15 + v16;
              v19 = v21 < v42;
              LODWORD(v20) = v15 + v16;
              LODWORD(v16) = v21 + 1;
              goto LABEL_11;
            }
          }

          v19 = v15 + v16 + 1 < v42;
          LODWORD(v20) = v15 + v16 + 1;
          v15 = v38;
        }

        else
        {
          v19 = 1;
          LODWORD(v20) = v15;
LABEL_11:
          v15 = v16;
          v22 = *v17;
          *(v8 + 10) = v18 & 0x3FEF;
          v7 = v22 * v12;
          if ((v18 & 4) != 0)
          {
            v6 = *(v8 + 12) * v12;
          }

          else
          {
            v6 = v12;
          }
        }
      }

      if (v7 != v14 || v11 == 64 || v6 + v9 >= 0x40000001)
      {
        if (v11)
        {
          v43 = v19;
          v23 = v12;
          while (1)
          {
            if (v11 == 1)
            {
              v24 = pwrite(v13, __buf[0].iov_base, v9, v10);
            }

            else
            {
              while (lseek(v13, v10, 0) == -1)
              {
                result = *__error();
                if (result != 4)
                {
                  return result;
                }
              }

              v24 = writev(v13, __buf, v11);
            }

            LODWORD(v5) = v40;
            v4 = v41;
            v12 = v23;
            v19 = v43;
            if (v24 == v9)
            {
              break;
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
              return 5;
            }

            result = *__error();
            if (result != 4)
            {
              return result;
            }
          }
        }

        if (!v19)
        {
          if ((*(v37 + 14) & 8) != 0)
          {
            v27 = v35;
          }

          else
          {
            v27 = v35;
            if (v5 <= v35)
            {
              LODWORD(v20) = v35;
            }

            else
            {
              v31 = v4 + 2;
              v32 = v35;
              do
              {
                v20 = v32;
                v33 = &v31[2 * v32];
                while (1)
                {
                  v34 = v33[1];
                  if (!*v33)
                  {
                    break;
                  }

                  if ((*(v34 + 5) & 4) != 0 && *(v34 + 3) != 1)
                  {
                    free(v34);
                    LODWORD(v5) = v40;
                    v4 = v41;
                  }

                  else
                  {
                    *v34 = *(v37 + 192);
                    *(v37 + 192) = v34;
                  }

                  ++v20;
                  v33 += 2;
                  if (v20 >= v42)
                  {
                    goto LABEL_59;
                  }
                }

                v32 = v20 + 1;
                *&v4[2 * ++v27] = *v33;
                v4[2 * v27] = *v34;
              }

              while (v20 + 1 < v5);
              LODWORD(v20) = v20 + 1;
            }
          }

LABEL_59:
          v2 = a1;
          goto LABEL_41;
        }

        v9 = 0;
        v11 = 0;
        v10 = v7;
      }

      v26 = &__buf[v11];
      v26->iov_base = v8;
      v26->iov_len = v6;
      v14 = v7 + v6;
      v9 += v6;
      ++v11;
    }
  }

  if (v5 <= a2)
  {
    LODWORD(v20) = a2;
    v27 = a2;
  }

  else
  {
    v27 = a2;
    do
    {
      v20 = a2;
      v28 = &v4[2 * a2 + 3];
      while (1)
      {
        v29 = *v28;
        v30 = *(*v28 + 10);
        if (v30 >= 0x4000)
        {
          break;
        }

        ++v20;
        *(v29 + 10) = v30 & 0x3FEF;
        v28 += 16;
        if (v20 >= v5)
        {
          goto LABEL_41;
        }
      }

      a2 = v20 + 1;
      *(v29 + 10) = v30 & 0x7FFF;
      *&v4[2 * ++v27] = *(v28 - 8);
    }

    while (v20 + 1 < v5);
    LODWORD(v20) = v20 + 1;
  }

LABEL_41:
  result = 0;
  *(v2 + 128) += v20 - v27;
  *v4 = v27;
  return result;
}

uint64_t mdb_env_write_meta(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(v3 + 12) | *(a1 + 124);
  v5 = *(v3 + 72 + 8 * (v2 & 1));
  v6 = *(*(v3 + 72 + 8 * !(v2 & 1)) + 16);
  if (v6 <= *(v3 + 112))
  {
    v6 = *(v3 + 112);
  }

  if ((v4 & 0x80000) == 0)
  {
    v29 = *(v5 + 128);
    v7 = *(v5 + 120);
    v30 = v6;
    v8 = *(a1 + 88);
    v9 = *v8;
    v10 = v8[2];
    v32 = v8[1];
    v33 = v10;
    v31 = v9;
    v12 = v8[4];
    v11 = v8[5];
    v34 = v8[3];
    v35 = v12;
    v36 = v11;
    v37 = *(a1 + 16) - 1;
    v38 = v2;
    v13 = v5 - *(v3 + 56);
    v14 = *(v3 + 8 * ((v4 & 0x50000) == 0));
    while (1)
    {
      v15 = pwrite(v14, &v30, 0x78uLL, v13 + 16);
      if (v15 == 120)
      {
        goto LABEL_10;
      }

      if ((v15 & 0x80000000) == 0)
      {
        v16 = 5;
LABEL_19:
        v37 = v7;
        v38 = v29;
        pwrite(*v3, &v30, 0x78uLL, v13 + 16);
        goto LABEL_20;
      }

      v16 = *__error();
      if (v16 != 4)
      {
        goto LABEL_19;
      }
    }
  }

  *(v5 + 16) = v6;
  v17 = *(a1 + 88);
  v18 = *v17;
  v19 = v17[1];
  *(v5 + 56) = v17[2];
  *(v5 + 40) = v19;
  *(v5 + 24) = v18;
  v20 = *(a1 + 88);
  v21 = v20[3];
  v22 = v20[4];
  *(v5 + 104) = v20[5];
  *(v5 + 88) = v22;
  *(v5 + 72) = v21;
  v23 = *(a1 + 24);
  *(v5 + 120) = *(a1 + 16) - 1;
  *(v5 + 128) = v23;
  if ((v4 & 0x50000) != 0 || ((*(v3 + 12) & 0x100000) != 0 ? (v25 = 1) : (v25 = 16), v26 = v5 - 16, v27 = (*(v3 + 20) - 1) & (v26 - *(v3 + 56)), !msync((v26 - v27), (v27 + *(v3 + 16)), v25)))
  {
LABEL_10:
    v24 = *(v3 + 64);
    v16 = 0;
    if (v24)
    {
      *(v24 + 8) = *(a1 + 24);
    }

    return v16;
  }

  v16 = *__error();
LABEL_20:
  *(v3 + 12) |= 0x80000000;
  return v16;
}

uint64_t mdb_cmp_long(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void mdb_get(uint64_t a1, unsigned int a2, void *a3, _OWORD *a4)
{
  v6 = 0;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v9 = 0;
          memset(v8, 0, sizeof(v8));
          memset(v7, 0, sizeof(v7));
          if ((*(*(a1 + 112) + a2) & 0x10) != 0 && (*(a1 + 124) & 0x13) == 0)
          {
            mdb_cursor_init(v8, a1, a2, v7);
            mdb_cursor_set(v8, a3, a4, 15, &v6);
          }
        }
      }
    }
  }
}

void mdb_cursor_set(uint64_t a1, void *a2, _OWORD *a3, int a4, int *a5)
{
  if (!*a2)
  {
    return;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 68) &= 0xFFFFFFFC;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_6:
    mdb_page_search(a1, a2, 0);
    if (v11)
    {
      return;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    goto LABEL_8;
  }

  v38 = 0uLL;
  v15 = *(a1 + 66);
  v12 = *(a1 + 8 * v15 + 72);
  if ((v12[6] & 0xFFFE) == 0x10)
  {
    *(a1 + 2 * v15 + 328) = 0;
    return;
  }

  if ((v12[5] & 0x20) != 0)
  {
    v14 = 0;
    v16 = **(a1 + 40);
    v17 = v12 + 8;
  }

  else
  {
    v14 = v12 + v12[8];
    v16 = *(v14 + 6);
    v17 = (v14 + 8);
  }

  *&v38 = v16;
  *(&v38 + 1) = v17;
  v18 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v18)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = 0;
    goto LABEL_26;
  }

  if (v18 <= 0)
  {
    LODWORD(v24) = *(a1 + 66);
    goto LABEL_40;
  }

  v19 = v12[6] - 16;
  v20 = v19 >> 1;
  if (v19 >= 4)
  {
    v21 = v12 + 8;
    v22 = v20 - 1;
    if ((v12[5] & 0x20) != 0)
    {
      v23 = v21 + v38 * v22;
    }

    else
    {
      v14 = v12 + v21[v22];
      *&v38 = *(v14 + 6);
      v23 = v14 + 8;
    }

    *(&v38 + 1) = v23;
    v25 = (*(*(a1 + 48) + 16))(a2, &v38);
    if (v25)
    {
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v36 = *(a1 + 2 * *(a1 + 66) + 328);
      if (v36 >= (v12[6] - 16) >> 1 || ((v12[5] & 0x20) != 0 ? (v37 = v21 + v38 * v36) : (v14 = v12 + v21[v36], *&v38 = *(v14 + 6), v37 = v14 + 8), *(&v38 + 1) = v37, (*(*(a1 + 48) + 16))(a2, &v38)))
      {
        *(a1 + 68) &= ~2u;
LABEL_8:
        v13 = mdb_node_search(a1, a2, a5);
        v14 = v13;
        if (a5 && !*a5)
        {
          return;
        }

        if (!v13)
        {
          if (mdb_cursor_sibling(a1, 1))
          {
            *(a1 + 68) |= 2u;
            return;
          }

          v12 = *(a1 + 8 * *(a1 + 66) + 72);
          v14 = v12 + v12[8];
        }

        goto LABEL_45;
      }
    }

    else
    {
      *(a1 + 2 * *(a1 + 66) + 328) = v20 - 1;
    }

LABEL_26:
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_45;
  }

LABEL_32:
  v26 = a1 + 328;
  v24 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v27 = 0;
    while (((*(*(v26 + 8 * v27 - 256) + 12) - 16) >> 1) - 1 <= *(v26 + 2 * v27))
    {
      if (v24 == ++v27)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    LODWORD(v27) = 0;
  }

  if (v27 == v24)
  {
LABEL_39:
    *(v26 + 2 * v24) = v20;
    return;
  }

LABEL_40:
  if (v24)
  {
    goto LABEL_6;
  }

  *(a1 + 328) = 0;
  if (a4 != 17 || a5)
  {
    return;
  }

LABEL_45:
  *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  if ((v12[5] & 0x20) != 0)
  {
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      v33 = **(a1 + 40);
      *a2 = v33;
      a2[1] = v12 + *(a1 + 2 * *(a1 + 66) + 328) * v33 + 16;
    }

    return;
  }

  if ((*(v14 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v14);
    if ((a4 - 15) > 2)
    {
      LODWORD(v38) = 0;
      if (a4 == 2)
      {
        v34 = &v38;
      }

      else
      {
        v34 = 0;
      }

      if (!mdb_cursor_set(*(a1 + 16), a3, 0, 17, v34))
      {
        goto LABEL_78;
      }

      return;
    }

    mdb_cursor_first(*(a1 + 16), a3, 0);
LABEL_78:
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      *a2 = *(v14 + 6);
      a2[1] = v14 + 8;
    }

    return;
  }

  if (!a3)
  {
    goto LABEL_78;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v38 = 0uLL;
    if (!mdb_node_read(a1, v14, &v38))
    {
      v28 = *(*(a1 + 48) + 24);
      if (v38 == 8 && v28 == mdb_cmp_int)
      {
        v28 = mdb_cmp_cint;
      }

      v30 = v28(a3, &v38);
      v31 = a4 != 2 && v30 <= 0;
      v32 = !v31;
      if (!v30 || !v32)
      {
        *a3 = v38;
        goto LABEL_78;
      }
    }
  }

  else
  {
    v35 = *(a1 + 16);
    if (v35)
    {
      *(v35 + 68) &= 0xFFFFFFFC;
    }

    if (!mdb_node_read(a1, v14, a3))
    {
      goto LABEL_78;
    }
  }
}

void mdb_cursor_get(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v30 = 0;
  if (a1 && (*(*(a1 + 24) + 124) & 0x13) == 0)
  {
    v6 = mdb_cursor_first;
    switch(a4)
    {
      case 0:
        mdb_cursor_first(a1, a2, a3);
        break;
      case 1:
        goto LABEL_32;
      case 2:
      case 3:
        if (a3 && *(a1 + 16))
        {
          goto LABEL_10;
        }

        break;
      case 4:
        if ((*(a1 + 68) & 1) == 0)
        {
          break;
        }

        v10 = *(a1 + 66);
        v11 = *(a1 + 8 * v10 + 72);
        v12 = *(v11 + 12) - 16;
        v13 = v12 >> 1;
        v14 = a1 + 2 * v10;
        if (v12 < 2 || (v15 = *(v14 + 328), v13 <= v15))
        {
          *(v14 + 328) = v13;
        }

        else if ((*(v11 + 10) & 0x20) != 0)
        {
          v29 = **(a1 + 40);
          *a2 = v29;
          a2[1] = v11 + v29 * v15 + 16;
        }

        else
        {
          v16 = v11 + *(v11 + 2 * v15 + 16);
          if (a2)
          {
            *a2 = *(v16 + 6);
            a2[1] = v16 + 8;
          }

          if (a3)
          {
            if ((*(v16 + 4) & 4) == 0)
            {
              goto LABEL_39;
            }

            mdb_cursor_get(*(a1 + 16), a3, 0, 4);
          }
        }

        break;
      case 5:
        if (!a3)
        {
          break;
        }

        if ((*(a1 + 68) & 1) == 0)
        {
          break;
        }

        if ((*(*(a1 + 40) + 4) & 0x10) == 0)
        {
          break;
        }

        v9 = *(a1 + 16);
        if ((*(v9 + 68) & 3) != 1)
        {
          break;
        }

        goto LABEL_54;
      case 6:
        mdb_cursor_last(a1, a2, a3);
        break;
      case 7:
        v6 = mdb_cursor_last;
LABEL_32:
        if (!a3)
        {
          break;
        }

        v17 = *(a1 + 68);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = *(a1 + 16);
        if (!v18)
        {
          break;
        }

        v19 = *(a1 + 66);
        v20 = *(a1 + 328 + 2 * v19);
        v21 = *(a1 + 8 * v19 + 72);
        v22 = *(v21 + 12) - 16;
        if (v20 >= v22 >> 1)
        {
          *(a1 + 328 + 2 * v19) = v22 >> 1;
        }

        else
        {
          *(a1 + 68) = v17 & 0xFFFFFFFD;
          v16 = v21 + *(v21 + 2 * v20 + 16);
          if ((*(v16 + 4) & 4) != 0)
          {
            if (*(v18 + 68))
            {
              v6();
            }
          }

          else
          {
            if (a2)
            {
              *a2 = *(v16 + 6);
              a2[1] = v16 + 8;
            }

LABEL_39:
            mdb_node_read(a1, v16, a3);
          }
        }

        break;
      case 8:
      case 9:
      case 11:
        mdb_cursor_next(a1, a2, a3, a4);
        break;
      case 10:
        if (!a3)
        {
          break;
        }

        if ((*(*(a1 + 40) + 4) & 0x10) == 0)
        {
          break;
        }

        mdb_cursor_next(a1, a2, a3, 9);
        if (v8)
        {
          break;
        }

        v9 = *(a1 + 16);
        if ((*(v9 + 68) & 1) == 0)
        {
          break;
        }

        goto LABEL_54;
      case 12:
      case 13:
      case 14:
        mdb_cursor_prev(a1, a2, a3, a4);
        break;
      case 15:
      case 16:
      case 17:
LABEL_10:
        if (a2)
        {
          if (a4 == 17)
          {
            v7 = 0;
          }

          else
          {
            v7 = &v30;
          }

          mdb_cursor_set(a1, a2, a3, a4, v7);
        }

        break;
      case 18:
        if (a3)
        {
          if ((*(*(a1 + 40) + 4) & 0x10) != 0)
          {
            if ((*(a1 + 68) & 1) != 0 || (mdb_cursor_last(a1, a2, a3), !v23))
            {
              v24 = *(a1 + 16);
              if ((*(v24 + 68) & 1) != 0 && !mdb_cursor_sibling(v24, 0))
              {
                v9 = *(a1 + 16);
LABEL_54:
                v25 = *(v9 + 66);
                v26 = v9 + 8 * v25;
                v27 = *(v26 + 72);
                *a3 = ((*(v27 + 12) - 16) >> 1) * **(v9 + 40);
                a3[1] = v27 + 16;
                *(v9 + 2 * v25 + 328) = ((*(*(v26 + 72) + 12) + 131056) >> 1) - 1;
              }
            }
          }
        }

        break;
      default:
        break;
    }

    v28 = *(a1 + 68);
    if ((v28 & 8) != 0)
    {
      *(a1 + 68) = v28 & 0xFFFFFFF7;
    }
  }
}

uint64_t mdb_node_read(uint64_t a1, unsigned int *a2, void *a3)
{
  if (a2[1])
  {
    v6 = 0;
    *a3 = *a2;
    result = mdb_page_get(a1, *(a2 + *(a2 + 3) + 8), &v6, 0);
    if (result)
    {
      return result;
    }

    v4 = (v6 + 16);
  }

  else
  {
    *a3 = *a2;
    v4 = a2 + *(a2 + 3) + 8;
  }

  result = 0;
  a3[1] = v4;
  return result;
}

void mdb_cursor_next(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = *(a1 + 68);
  if (a4 == 9 && (v8 & 8) != 0)
  {
    return;
  }

  if (v8)
  {
    v9 = *(a1 + 66);
    v10 = *(a1 + 72 + 8 * v9);
    if ((v8 & 2) != 0)
    {
      if (((*(v10 + 12) - 16) >> 1) - 1 <= *(a1 + 2 * v9 + 328))
      {
        return;
      }

      *(a1 + 68) = v8 & 0xFFFFFFFD;
    }

    if ((*(*(a1 + 40) + 4) & 4) != 0)
    {
      v14 = v10 + *(v10 + 2 * *(a1 + 2 * v9 + 328) + 16);
      if ((*(v14 + 4) & 4) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 8)
        {
          v18 = mdb_cursor_next(*(a1 + 16), a3, 0, 8);
          if (a4 != 8 || v18 != -30798)
          {
            if (!a2 || v18)
            {
              return;
            }

            v16 = *(v14 + 6);
            v17 = v14 + 8;
LABEL_36:
            *a2 = v16;
            a2[1] = v17;
            return;
          }
        }
      }

      else
      {
        *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
        if (a4 == 9)
        {
          return;
        }
      }
    }

    v11 = *(a1 + 68);
    if ((v11 & 8) != 0)
    {
      *(a1 + 68) = v11 & 0xFFFFFFF7;
    }

    else
    {
      v12 = *(a1 + 66);
      v13 = *(a1 + 328 + 2 * v12) + 1;
      if (v13 >= (*(v10 + 12) - 16) >> 1)
      {
        if (mdb_cursor_sibling(a1, 1))
        {
          *(a1 + 68) |= 2u;
          return;
        }

        v10 = *(a1 + 72 + 8 * *(a1 + 66));
      }

      else
      {
        *(a1 + 328 + 2 * v12) = v13;
      }
    }

    if ((*(v10 + 10) & 0x20) != 0)
    {
      v16 = **(a1 + 40);
      v17 = v10 + *(a1 + 2 * *(a1 + 66) + 328) * v16 + 16;
    }

    else
    {
      v15 = v10 + *(v10 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16);
      if ((*(v15 + 4) & 4) != 0)
      {
        mdb_xcursor_init1(a1, v10 + *(v10 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16));
        mdb_cursor_first(*(a1 + 16), a3, 0);
        if (v19)
        {
          return;
        }
      }

      else if (a3 && mdb_node_read(a1, (v10 + *(v10 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16)), a3))
      {
        return;
      }

      if (!a2)
      {
        return;
      }

      v16 = *(v15 + 6);
      v17 = v15 + 8;
    }

    goto LABEL_36;
  }

  mdb_cursor_first(a1, a2, a3);
}

void mdb_cursor_last(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    mdb_page_search(a1, 0, 8);
    if (v8)
    {
      return;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = ((*(v10 + 12) + 131056) >> 1) - 1;
  *(a1 + 2 * v9 + 328) = v11;
  *(a1 + 68) = v7 | 3;
  v12 = v10 + 16;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (!a2)
    {
      return;
    }

    v14 = **(a1 + 40);
    *a2 = v14;
    v15 = v12 + v14 * v11;
LABEL_18:
    a2[1] = v15;
    return;
  }

  v13 = v10 + *(v12 + 2 * v11);
  if ((*(v13 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v13);
    if (mdb_cursor_last(*(a1 + 16), a3, 0))
    {
      return;
    }

    goto LABEL_16;
  }

  if (!a3 || !mdb_node_read(a1, v13, a3))
  {
LABEL_16:
    if (!a2)
    {
      return;
    }

    *a2 = *(v13 + 6);
    v15 = v13 + 8;
    goto LABEL_18;
  }
}

uint64_t mdb_cursor_sibling(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 < 2)
  {
    return 4294936498;
  }

  v14[5] = v2;
  v14[6] = v3;
  v6 = a2;
  *(a1 + 64) = v4 - 1;
  LOWORD(v9) = *(a1 + 66) - 1;
  *(a1 + 66) = v9;
  v8 = a1 + 328;
  v9 = v9;
  v10 = *(a1 + 328 + 2 * v9);
  if (!a2)
  {
    if (!*(a1 + 328 + 2 * v9))
    {
      goto LABEL_9;
    }

    LOWORD(v10) = v10 - 1;
LABEL_8:
    *(v8 + 2 * v9) = v10;
    goto LABEL_11;
  }

  if (++v10 < (*(*(a1 + 8 * v9 + 72) + 12) - 16) >> 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = mdb_cursor_sibling(a1, a2);
  v9 = *(a1 + 66);
  if (result)
  {
    *(a1 + 66) = v9 + 1;
    ++*(a1 + 64);
    return result;
  }

LABEL_11:
  v14[0] = 0;
  v11 = (*(a1 + 72 + 8 * v9) + *(*(a1 + 72 + 8 * v9) + 2 * *(v8 + 2 * v9) + 16));
  result = mdb_page_get(a1, *v11 | (*(v11 + 2) << 32), v14, 0);
  if (result)
  {
    *(a1 + 68) &= 0xFFFFFFFC;
  }

  else
  {
    v12 = v14[0];
    v13 = *(a1 + 64);
    if (v13 < 0x20)
    {
      *(a1 + 64) = v13 + 1;
      *(a1 + 66) = v13;
      *(a1 + 72 + 8 * v13) = v12;
      *(v8 + 2 * v13) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    result = 0;
    if (!v6)
    {
      *(v8 + 2 * *(a1 + 66)) = ((*(v12 + 12) + 131056) >> 1) - 1;
    }
  }

  return result;
}

void mdb_cursor_prev(uint64_t a1, void *a2, void *a3, int a4)
{
  if (*(a1 + 68))
  {
    v9 = *(a1 + 66);
  }

  else
  {
    mdb_cursor_last(a1, a2, a3);
    if (v8)
    {
      return;
    }

    v9 = *(a1 + 66);
    ++*(a1 + 2 * v9 + 328);
  }

  v10 = *(a1 + 72 + 8 * v9);
  if ((*(*(a1 + 40) + 4) & 4) != 0)
  {
    v11 = *(a1 + 2 * v9 + 328);
    if (v11 < (*(v10 + 12) - 16) >> 1)
    {
      v12 = v10 + *(v10 + 2 * v11 + 16);
      if ((*(v12 + 4) & 4) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 0xC)
        {
          v13 = mdb_cursor_prev(*(a1 + 16), a3, 0, 12);
          if (a4 != 12 || v13 != -30798)
          {
            if (!v13)
            {
              if (a2)
              {
                *a2 = *(v12 + 6);
                a2[1] = v12 + 8;
              }

              *(a1 + 68) &= ~2u;
            }

            return;
          }

          v9 = *(a1 + 66);
        }
      }

      else
      {
        *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
        if (a4 == 13)
        {
          return;
        }
      }
    }
  }

  *(a1 + 68) &= 0xFFFFFFF5;
  LOWORD(v14) = *(a1 + 328 + 2 * v9);
  if (!v14)
  {
    if (mdb_cursor_sibling(a1, 0))
    {
      return;
    }

    v9 = *(a1 + 66);
    v10 = *(a1 + 72 + 8 * v9);
    v14 = (*(v10 + 12) + 131056) >> 1;
  }

  v15 = v14 - 1;
  *(a1 + 328 + 2 * v9) = v15;
  v16 = *(v10 + 10);
  if ((v16 & 2) == 0)
  {
    return;
  }

  if ((v16 & 0x20) != 0)
  {
    v18 = **(a1 + 40);
    v19 = v10 + v15 * v18 + 16;
LABEL_27:
    *a2 = v18;
    a2[1] = v19;
    return;
  }

  v17 = v10 + *(v10 + 2 * v15 + 16);
  if ((*(v17 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + *(v10 + 2 * v15 + 16));
    mdb_cursor_last(*(a1 + 16), a3, 0);
    if (v20)
    {
      return;
    }

    goto LABEL_25;
  }

  if (!a3 || !mdb_node_read(a1, (v10 + *(v10 + 2 * v15 + 16)), a3))
  {
LABEL_25:
    if (!a2)
    {
      return;
    }

    v18 = *(v17 + 6);
    v19 = v17 + 8;
    goto LABEL_27;
  }
}

void mdb_cursor_first(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    mdb_page_search(a1, 0, 4);
    if (v8)
    {
      return;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = v10 + 16;
  v12 = *(v10 + 16);
  *(a1 + 68) = v7 & 0xFFFFFFFC | 1;
  *(a1 + 2 * v9 + 328) = 0;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (!a2)
    {
      return;
    }

    *a2 = **(a1 + 40);
LABEL_18:
    a2[1] = v11;
    return;
  }

  v13 = v10 + v12;
  if ((*(v10 + v12 + 4) & 4) != 0)
  {
    mdb_xcursor_init1(a1, v10 + v12);
    if (mdb_cursor_first(*(a1 + 16), a3, 0))
    {
      return;
    }

    goto LABEL_16;
  }

  if (!a3 || !mdb_node_read(a1, (v10 + v12), a3))
  {
LABEL_16:
    if (!a2)
    {
      return;
    }

    *a2 = *(v13 + 6);
    v11 = v13 + 8;
    goto LABEL_18;
  }
}

uint64_t mdb_page_spill(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 68) & 4) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 6);
  if (*(a1 + 32) >= 2u)
  {
    v5 += *(*(v4 + 88) + 54);
  }

  if (a2)
  {
    v6 = *(*(v4 + 32) + 16);
    v5 += (*a2 + *a3 + v6 + 8) / v6;
  }

  if (*(v4 + 128) > (2 * v5))
  {
    return 0;
  }

  v8 = *(v4 + 72);
  v9 = *(v4 + 64);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      LODWORD(v11) = 0;
      if ((v10 + 1) > 2)
      {
        v12 = (v10 + 1);
      }

      else
      {
        v12 = 2;
      }

      v13 = (v9 + 2);
      v14 = v12 - 1;
      do
      {
        v16 = *v13++;
        v15 = v16;
        if ((v16 & 1) == 0)
        {
          LODWORD(v11) = v11 + 1;
          *&v9[2 * v11] = v15;
        }

        --v14;
      }

      while (v14);
      v11 = v11;
    }

    else
    {
      v11 = 0;
    }

    *v9 = v11;
  }

  else
  {
    v17 = mdb_midl_alloc(0x1FFFF);
    *(v4 + 64) = v17;
    if (!v17)
    {
      return 12;
    }
  }

  result = mdb_pages_xkeep(a1, 16, 1);
  if (!result)
  {
    v18 = *v8;
    if (*v8)
    {
      if ((2 * v5) < 0x4000)
      {
        v19 = 0x3FFF;
      }

      else
      {
        v19 = 2 * v5;
      }

      do
      {
        v20 = &v8[4 * v18];
        v21 = v20[1];
        if ((*(v21 + 10) & 0xC000) == 0)
        {
          v22 = 2 * *v20;
          v23 = *v4;
          if (*v4)
          {
            while (1)
            {
              v24 = v23[8];
              if (v24)
              {
                v25 = mdb_midl_search(v24, v22);
                v26 = v23[8];
                if (*v26 >= v25 && v26[v25] == v22)
                {
                  break;
                }
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_34;
              }
            }

            *(v21 + 10) |= 0x8000u;
          }

          else
          {
LABEL_34:
            result = mdb_midl_append((v4 + 64), v22);
            if (result)
            {
              goto LABEL_42;
            }

            --v19;
          }
        }

        --v18;
      }

      while (v18 && v19);
    }

    mdb_midl_sort(*(v4 + 64));
    result = mdb_page_flush(v4, v18);
    if (!result)
    {
      result = mdb_pages_xkeep(a1, 32784, v18);
    }
  }

LABEL_42:
  if (result)
  {
    v27 = 2;
  }

  else
  {
    v27 = 8;
  }

  *(v4 + 124) |= v27;
  return result;
}

void mdb_page_new(uint64_t a1, __int16 a2, uint64_t a3, uint64_t **a4)
{
  v5 = a3;
  v10 = 0;
  mdb_page_alloc(a1, a3, &v10);
  if (!v8)
  {
    v9 = v10;
    *(v10 + 5) = a2 | 0x10;
    *(v9 + 6) = 16;
    *(v9 + 7) = *(*(*(a1 + 24) + 32) + 16);
    if (a2)
    {
      ++*(*(a1 + 40) + 8);
    }

    else if ((a2 & 2) != 0)
    {
      ++*(*(a1 + 40) + 16);
    }

    else if ((a2 & 4) != 0)
    {
      *(*(a1 + 40) + 24) += v5;
      *(v9 + 3) = v5;
    }

    *a4 = v9;
  }
}

void mdb_cursor_touch(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 2 && (**(a1 + 56) & 0x21) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    v6 = *(a1 + 24);
    if (*(*(v6 + 96) + 4 * v2) != *(*(*(v6 + 32) + 152) + 4 * v2))
    {
      return;
    }

    mdb_cursor_init(v9, v6, 1u, v8);
    mdb_page_search(v9, *(a1 + 48), 1);
    if (v7)
    {
      return;
    }

    **(a1 + 56) |= 1u;
  }

  *(a1 + 66) = 0;
  if (*(a1 + 64))
  {
    do
    {
      mdb_page_touch(a1);
      v3 = *(a1 + 64);
      if (v4)
      {
        break;
      }

      v5 = *(a1 + 66) + 1;
      *(a1 + 66) = v5;
    }

    while (v3 > v5);
    *(a1 + 66) = v3 - 1;
  }
}

void mdb_update_key(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 66);
  v4 = *(a1 + 2 * v3 + 328);
  v5 = *(a1 + 8 * v3 + 72);
  v6 = v5[v4 + 8];
  v7 = (v5 + v6);
  v8 = *a2;
  v9 = (*a2 + 1) & 0xFFFFFFFE;
  v10 = *(v5 + v6 + 6);
  v11 = (v10 + 1) & 0x1FFFE;
  v12 = v9 - v11;
  if (v9 != v11)
  {
    if (v12 <= 0)
    {
      v13 = v5[6];
    }

    else
    {
      v13 = v5[6];
      if (v12 > (v5[7] - v13))
      {
        v15 = *v7 | (v7[2] << 32);
        mdb_node_del(a1, 0);

        mdb_page_split(a1, a2, 0, v15, 0x40000);
        return;
      }
    }

    v16 = ((v13 + 131056) >> 1);
    if (((v13 + 131056) >> 1))
    {
      v17 = v5 + 8;
      do
      {
        v18 = *v17;
        if (v18 <= v6)
        {
          *v17 = v18 - v12;
        }

        ++v17;
        --v16;
      }

      while (v16);
    }

    memmove(v5 + v5[7] - v12, v5 + v5[7], v6 - v5[7] + 8);
    v5[7] -= v12;
    v7 = (v5 + v5[v4 + 8]);
    v10 = v7[3];
    v8 = *a2;
  }

  if (v8 != v10)
  {
    v7[3] = v8;
  }

  if (v8)
  {
    memcpy(v7 + 4, a2[1], v8);
  }
}

void mdb_page_alloc(uint64_t a1, signed int a2, uint64_t **a3)
{
  v3 = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 + 32);
  v7 = (v5 + 176);
  v6 = *(v5 + 176);
  if (v6)
  {
    v8 = *v6;
  }

  else
  {
    v8 = 0;
  }

  v40 = 0;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v9 = (a2 - 1);
  if (a2 == 1)
  {
    v10 = *(v4 + 48);
    if (v10)
    {
      *(v4 + 48) = v10[6];
      --*(v4 + 56);
      *a3 = v10;
      return;
    }
  }

  *a3 = 0;
  if (!*(v4 + 128))
  {
    goto LABEL_54;
  }

  oldest = 0;
  v12 = 0;
  v35 = 0;
  v13 = 1;
  v14 = 1 - a2;
  v33 = 60 * a2;
  while (1)
  {
    v41 = 0;
    v42 = 0;
    v36 = 0;
    v37 = 0;
    if (v8 > v9)
    {
      v15 = v7;
      v16 = v8;
      v17 = v8;
      while (1)
      {
        v18 = v6[v17];
        if (v6[v14 + v17] == v18 + v9)
        {
          goto LABEL_41;
        }

        if (--v17 <= v9)
        {
          v3 = a2;
          v19 = v33-- < 1;
          v8 = v16;
          if (v19)
          {
            goto LABEL_39;
          }

          v7 = v15;
          break;
        }
      }
    }

    if (v13)
    {
      v40 = *(v5 + 184);
      oldest = *(v5 + 168);
      mdb_cursor_init(v38, v4, 0, 0);
      v20 = v40;
      if (v40)
      {
        v42 = &v40;
        v41 = 8;
        v12 = 17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v20 = v40;
    }

    v21 = v20 + 1;
    v40 = v21;
    if (oldest <= v21)
    {
      if (!v35)
      {
        oldest = mdb_find_oldest(v4);
        *(v5 + 168) = oldest;
        v21 = v40;
      }

      if (oldest <= v21)
      {
        goto LABEL_39;
      }

      v35 = 1;
    }

    mdb_cursor_get(v38, &v41, 0, v12);
    if (v22)
    {
      break;
    }

    v23 = *v42;
    v40 = v23;
    if (oldest <= v23)
    {
      if (!v35)
      {
        oldest = mdb_find_oldest(v4);
        *(v5 + 168) = oldest;
        v23 = v40;
      }

      if (oldest <= v23)
      {
        goto LABEL_39;
      }

      v35 = 1;
    }

    if (mdb_node_read(v38, (*(&v38[4] + WORD1(v38[4]) + 1) + *(*(&v38[4] + WORD1(v38[4]) + 1) + 2 * *(&v38[20] + WORD1(v38[4]) + 4) + 16)), &v36))
    {
      goto LABEL_54;
    }

    v24 = v37;
    if (v6)
    {
      if (mdb_midl_need(v7, *v37))
      {
        goto LABEL_54;
      }

      v6 = *v7;
    }

    else
    {
      v6 = mdb_midl_alloc(*v37);
      *v7 = v6;
      if (!v6)
      {
        goto LABEL_54;
      }
    }

    *(v5 + 184) = v40;
    mdb_midl_xmerge(v6, v24);
    v13 = 0;
    v8 = *v6;
    v12 = 8;
  }

  if (v22 != -30798)
  {
    goto LABEL_54;
  }

LABEL_39:
  v16 = v8;
  v18 = *(v4 + 16);
  if ((v18 + v3) >= *(v5 + 128))
  {
    goto LABEL_54;
  }

  v17 = 0;
LABEL_41:
  if ((*(v5 + 14) & 8) != 0)
  {
    v25 = (*(v5 + 56) + v18 * *(v5 + 16));
  }

  else
  {
    v25 = mdb_page_malloc(v4, a2);
    if (!v25)
    {
LABEL_54:
      *(v4 + 124) |= 2u;
      return;
    }
  }

  if (v17)
  {
    v26 = v16 - a2;
    *v6 = v26;
    v27 = v17 - a2;
    if (v17 - a2 < v26)
    {
      v28 = v26 - v27;
      v29 = &v6[v27 + 1];
      v30 = v17 + 1;
      do
      {
        *v29++ = v6[v30++];
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    *(v4 + 16) = v18 + a2;
  }

  *v25 = v18;
  v31 = mdb_mid2l_append;
  if ((*(v4 + 124) & 0x80000) == 0)
  {
    v31 = mdb_mid2l_insert;
  }

  v41 = v18;
  v42 = v25;
  v31(*(v4 + 72), &v41);
  --*(v4 + 128);
  *a3 = v25;
}

void *mdb_node_del(void *result, int a2)
{
  v2 = *(result + 33);
  v3 = result[v2 + 9];
  v4 = *(result + v2 + 164);
  v5 = v3[6];
  v6 = v5 + 131056;
  v7 = v3[5];
  if ((v7 & 0x20) != 0)
  {
    v12 = a2;
    v13 = ~v4 + (v6 >> 1);
    if (v13)
    {
      v14 = v3 + v4 * a2 + 16;
      result = memmove(v14, &v14[a2], v13 * a2);
      LOWORD(v5) = v3[6];
    }

    v3[6] = v5 - 2;
    v15 = v12 + v3[7] - 2;
  }

  else
  {
    v8 = v3[v4 + 8];
    v9 = v3 + v8;
    v10 = *(v3 + v8 + 6);
    v11 = v10 + 8;
    if ((v7 & 2) != 0)
    {
      if (*(v9 + 2))
      {
        v11 = v10 + 16;
      }

      else
      {
        v11 += *v9;
      }
    }

    v16 = (v11 + 1) & 0xFFFFFFFE;
    v17 = (v6 >> 1);
    if (v17)
    {
      v18 = 0;
      v19 = v3 + 8;
      do
      {
        if (v4)
        {
          v20 = *v19;
          if (v20 >= v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

          v3[v18++ + 8] = v20 + v21;
        }

        ++v19;
        --v4;
        --v17;
      }

      while (v17);
    }

    result = memmove(v3 + v3[7] + v16, v3 + v3[7], v8 - v3[7]);
    v3[6] -= 2;
    v15 = v3[7] + v16;
  }

  v3[7] = v15;
  return result;
}

uint64_t mdb_page_get(uint64_t a1, unint64_t a2, unint64_t *a3, int *a4)
{
  v7 = *(a1 + 24);
  if ((*(a1 + 70) & 0xA) != 0)
  {
LABEL_10:
    if (*(v7 + 16) <= a2)
    {
      *(v7 + 124) |= 2u;
      return 4294936499;
    }

    v9 = 0;
  }

  else
  {
    v8 = 2 * a2;
    v9 = 1;
    v10 = *(a1 + 24);
    while (1)
    {
      v11 = v10[8];
      v12 = v10[9];
      if (v11)
      {
        v13 = mdb_midl_search(v11, 2 * a2);
        v14 = v10[8];
        if (*v14 >= v13 && v14[v13] == v8)
        {
          break;
        }
      }

      if (*v12)
      {
        v15 = mdb_mid2l_search(v12, a2);
        if (*v12 >= v15 && *&v12[4 * v15] == a2)
        {
          v16 = *&v12[4 * v15 + 2];
          goto LABEL_13;
        }
      }

      ++v9;
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_10;
      }
    }
  }

  v16 = *(*(v7 + 32) + 56) + *(*(v7 + 32) + 16) * a2;
LABEL_13:
  *a3 = v16;
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t mdb_page_unspill(uint64_t a1, _WORD *a2, char **a3)
{
  v6 = *(a1 + 32);
  v7 = 2 * *a2;
  v8 = a1;
  while (1)
  {
    v9 = v8[8];
    if (v9)
    {
      v10 = mdb_midl_search(v9, v7);
      v11 = v8[8];
      if (*v11 >= v10)
      {
        v12 = v10;
        if (v11[v10] == v7)
        {
          break;
        }
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(a1 + 128))
  {
    return 4294936508;
  }

  if ((a2[5] & 4) != 0)
  {
    v14 = *(a2 + 3);
  }

  else
  {
    v14 = 1;
  }

  if ((*(v6 + 14) & 8) != 0)
  {
    v16 = a2;
  }

  else
  {
    v15 = mdb_page_malloc(a1, v14);
    if (!v15)
    {
      return 12;
    }

    v16 = v15;
    v17 = *(v6 + 16);
    if (v14 < 2)
    {
      mdb_page_copy(v15, a2, v17);
    }

    else
    {
      memcpy(v15, a2, (v17 * v14));
    }
  }

  if (v8 == a1)
  {
    v18 = *(a1 + 64);
    if (*v18 == v12)
    {
      *v18 = v12 - 1;
    }

    else
    {
      v18[v12] |= 1uLL;
    }
  }

  v19 = mdb_mid2l_append;
  if ((*(a1 + 124) & 0x80000) == 0)
  {
    v19 = mdb_mid2l_insert;
  }

  v20[0] = *v16;
  v20[1] = v16;
  (v19)(*(a1 + 72), v20);
  result = 0;
  --*(a1 + 128);
  *(v16 + 5) |= 0x10u;
  *a3 = v16;
  return result;
}

char *mdb_page_malloc(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (a2 == 1)
  {
    v5 = *(v3 + 192);
    if (v5)
    {
      *(v3 + 192) = *v5;
      return v5;
    }

    v7 = v4 - 16;
    v6 = 16;
  }

  else
  {
    v6 = v4 * a2 - v4;
    v7 = *(v3 + 16);
    v4 = v4 * a2;
  }

  v8 = malloc_type_malloc(v4, 0xE790C6D3uLL);
  v5 = v8;
  if (v8)
  {
    if ((*(v3 + 15) & 1) == 0)
    {
      bzero(&v8[v6], v7);
      *(v5 + 4) = 0;
    }
  }

  else
  {
    *(a1 + 124) |= 2u;
  }

  return v5;
}

uint64_t mdb_ovpage_free(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = *(v3 + 32);
  v7 = (v6 + 176);
  if (!*(v6 + 176) || *v3)
  {
LABEL_3:
    result = mdb_midl_append_range((v3 + 40), v4, v5);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v10 = *(v3 + 64);
  if ((a2[5] & 0x10) != 0)
  {
    v12 = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = mdb_midl_search(*(v3 + 64), 2 * v4);
    if (*v10 < v11)
    {
      goto LABEL_3;
    }

    v12 = v11;
    if (v10[v11] != 2 * v4)
    {
      goto LABEL_3;
    }
  }

  result = mdb_midl_need(v7, v5);
  if (!result)
  {
    if ((a2[5] & 0x10) == 0)
    {
      if (*v10 == v12)
      {
        *v10 = v12 - 1;
      }

      else
      {
        v10[v12] |= 1uLL;
      }

LABEL_23:
      v23 = *v7;
      v24 = **v7;
      if (v24)
      {
        while (1)
        {
          v25 = v5 + v24;
          v26 = *&v23[2 * v24];
          if (v26 >= v4)
          {
            break;
          }

          *&v23[2 * v25] = v26;
          if (!--v24)
          {
            v25 = v5;
            break;
          }
        }
      }

      else
      {
        v25 = v5;
      }

      if (v25 > v24)
      {
        v27 = 0;
        v28 = v25 + ~v24;
        v29 = vdupq_n_s64(v28);
        v30 = &v23[2 * v25];
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_185DB7AF0)));
          if (v31.i8[0])
          {
            *v30 = v4 + v27;
          }

          if (v31.i8[4])
          {
            *(v30 - 1) = v4 + v27 + 1;
          }

          v27 += 2;
          v30 -= 4;
        }

        while (((v28 + 2) & 0x1FFFFFFFELL) != v27);
      }

      *v23 += v5;
LABEL_4:
      result = 0;
      *(*(a1 + 40) + 24) -= v5;
      return result;
    }

    v13 = *(v3 + 72);
    v14 = (*v13)--;
    v15 = &v13[2 * v14];
    v16 = v15[1];
    if (v16 == a2)
    {
LABEL_20:
      ++*(v3 + 128);
      if ((*(v6 + 14) & 8) == 0)
      {
        mdb_dpage_free(v6, a2);
      }

      goto LABEL_23;
    }

    v17 = v14;
    v18 = *v15;
    v19 = v14 + 1;
    v20 = &v13[2 * v17 - 1];
    while (--v19 >= 2)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      *(v20 - 1) = v18;
      *v20 = v16;
      v20 -= 2;
      v16 = v22;
      v18 = v21;
      if (v22 == a2)
      {
        goto LABEL_20;
      }
    }

    v32 = *v13 + 1;
    *v13 = v32;
    v33 = &v13[2 * v32];
    *v33 = v18;
    v33[1] = v16;
    *(v3 + 124) |= 2u;
    return 4294936517;
  }

  return result;
}

void mdb_page_split(uint64_t a1, const void **a2, size_t *a3, size_t a4, int a5)
{
  v9 = *(*(a1 + 24) + 32);
  v207[0] = 0uLL;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v201 = 0;
  v202 = 0;
  v200 = 0;
  memset(v199, 0, sizeof(v199));
  v197 = 0u;
  v198 = 0u;
  v10 = (a1 + 72);
  v11 = *(a1 + 66);
  v12 = *(a1 + 72 + 8 * v11);
  v195 = 0u;
  v196 = 0u;
  v13 = (a1 + 328);
  v14 = *(a1 + 328 + 2 * v11);
  v15 = *(v12 + 12);
  mdb_page_new(a1, *(v12 + 10), 1, &v202);
  if (v16)
  {
    return;
  }

  v166 = a2;
  v167 = v14;
  v164 = v15;
  v160 = a4;
  v162 = v10;
  v17 = v202;
  *(v202 + 4) = *(v12 + 8);
  v18 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v155 = 0;
    v156 = a3;
    v161 = v9;
    v19 = v14;
    v20 = v18 - 1;
    goto LABEL_4;
  }

  mdb_page_new(a1, 1, 1, &v201);
  if (v27)
  {
LABEL_179:
    *(*(a1 + 24) + 124) |= 2u;
    return;
  }

  v28 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v29 = v28 + 1;
    v30 = (a1 + 2 * v28 + 328);
    v31 = (a1 + 8 * v28 + 72);
    v32 = v31;
    v33 = v30;
    do
    {
      v35 = *--v32;
      v34 = v35;
      LOWORD(v35) = *--v33;
      *v31 = v34;
      *v30 = v35;
      --v29;
      v31 = v32;
      v30 = v33;
    }

    while (v29 > 1);
  }

  v36 = v201;
  *(a1 + 72) = v201;
  *(a1 + 328) = 0;
  v37 = *(a1 + 40);
  *(v37 + 40) = *v36;
  v18 = *(v37 + 6);
  *(v37 + 6) = v18 + 1;
  mdb_node_add(a1, 0, 0, 0, *v12, 0);
  if (v38)
  {
    *(a1 + 72) = *(a1 + 80);
    *(a1 + 328) = *(a1 + 330);
    v39 = *(a1 + 40);
    *(v39 + 40) = *v12;
    --*(v39 + 6);
    goto LABEL_179;
  }

  v155 = v18;
  v156 = a3;
  v161 = v9;
  v19 = v14;
  v20 = 0;
  ++*(a1 + 64);
  LOWORD(v18) = *(a1 + 66) + 1;
  *(a1 + 66) = v18;
LABEL_4:
  mdb_cursor_copy(a1, &v195);
  *&v196 = 0;
  v21 = WORD1(v199[0]);
  *(v199 + WORD1(v199[0]) + 1) = v17;
  v163 = v13;
  v158 = v20;
  *(&v199[16] + v20 + 4) = v13[v20] + 1;
  if ((a5 & 0x20000) != 0)
  {
    v157 = 0;
    v40 = 0;
    *(&v199[16] + v21 + 4) = 0;
    v207[0] = *a2;
    v41 = *&v207[0];
    v165 = v19;
    LODWORD(v42) = v20;
    goto LABEL_72;
  }

  v22 = v164 - 16;
  v23 = (v164 - 16) >> 1;
  v24 = (v23 + 1) >> 1;
  v165 = v24;
  if ((*(v17 + 5) & 0x20) == 0)
  {
    if ((*(v12 + 10) & 2) != 0)
    {
      v25 = v22 >> 1;
      v51 = v161;
      v52 = *a2 + 16;
      if (*a2 + *v156 + 8 <= *(v161 + 220))
      {
        v52 = *a2 + *v156 + 8;
      }

      LODWORD(v26) = (v52 + 3) & 0xFFFFFFFE;
    }

    else
    {
      v25 = v22 >> 1;
      if (a2)
      {
        v26 = *a2 + 10;
      }

      else
      {
        LODWORD(v26) = 10;
      }

      v51 = v161;
    }

    v54 = *(v51 + 16);
    v55 = mdb_page_malloc(*(a1 + 24), 1u);
    if (!v55)
    {
      goto LABEL_179;
    }

    v56 = v54 - 16;
    v57 = (v26 + 1) & 0xFFFFFFFE;
    *v55 = *v12;
    *(v55 + 5) = *(v12 + 10);
    *(v55 + 6) = 16;
    v161 = v51;
    *(v55 + 7) = *(v51 + 16);
    v40 = v55;
    if (v22 > 1)
    {
      v63 = 0;
      v64 = v55 + 16;
      v65 = (v12 + 16);
      if (v25 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v25;
      }

      v19 = v167;
      v67 = v167;
      LODWORD(v42) = v20;
      v59 = v165;
      do
      {
        if (!v67)
        {
          *&v64[2 * v63++] = 0;
        }

        v68 = *v65++;
        *&v64[2 * v63++] = v68;
        --v67;
        --v66;
      }

      while (v66);
      if (v56 >= 0)
      {
        v69 = v56;
      }

      else
      {
        v69 = v56 + 15;
      }

      v58 = v25 > v167;
      if (v22 >= 0x40 && v57 <= v69 >> 4 && v25 > v167)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v19 = v167;
      v58 = v25 > v167;
      LODWORD(v42) = v20;
      v59 = v165;
    }

    if (v59 < v19 && v58)
    {
      v60 = v59 - 1;
      v61 = -1;
      v58 = 1;
      LODWORD(v62) = v25;
    }

    else
    {
      if (v58)
      {
        v58 = 0;
        LODWORD(v62) = 0;
        v60 = v59 + ((*(v12 + 10) >> 1) & 1) + 1;
        v61 = 1;
        goto LABEL_56;
      }

      LODWORD(v62) = 0;
      v61 = 1;
      v60 = v25;
    }

    if (v62 != v60)
    {
LABEL_56:
      v70 = 0;
      v71 = v61;
      v72 = v60 - v61;
      v73 = -v62;
      v74 = -v60;
      v62 = v62;
      while (1)
      {
        if (v19 == v62)
        {
          v70 += v57;
        }

        else
        {
          v75 = v12 + *&v40[2 * v62 + 16];
          v76 = v70 + *(v75 + 6) + 10;
          if ((*(v12 + 10) & 2) != 0)
          {
            if (*(v75 + 4))
            {
              v76 += 8;
            }

            else
            {
              v76 += *v75;
            }
          }

          v70 = (v76 + 1) & 0xFFFFFFFE;
        }

        if (v70 > v56 || v72 == v62)
        {
          break;
        }

        v62 += v71;
        v73 -= v71;
        if (v74 == v73)
        {
          goto LABEL_69;
        }
      }

      v59 = v58 - v73;
    }

LABEL_69:
    v157 = v25;
    if (v59 == v19)
    {
      v41 = *a2;
      v77 = a2[1];
      *&v207[0] = *a2;
      *(&v207[0] + 1) = v77;
      v165 = v19;
    }

    else
    {
      v165 = v59;
      v78 = v12 + *&v40[2 * v59 + 16];
      v41 = *(v78 + 6);
      *&v207[0] = v41;
      *(&v207[0] + 1) = v78 + 8;
    }

    goto LABEL_72;
  }

  v43 = v19;
  v44 = v13[v18];
  v45 = v44 - v24;
  v41 = **(a1 + 40);
  v46 = v12 + 16 + v41 * v24;
  v157 = v23;
  v47 = v41 * (v23 - v24);
  *(v12 + 12) -= 2 * (v23 - v24);
  *(v17 + 6) += 2 * (v23 - v24);
  v48 = v41 * (v23 - v24) - 2 * (v23 - v24);
  *(v12 + 14) += v48;
  *(v17 + 7) -= v48;
  *&v207[0] = v41;
  v49 = v46;
  if (v24 == v43)
  {
    v49 = a2[1];
  }

  *(&v207[0] + 1) = v49;
  if (v45 < 0)
  {
    v53 = (v12 + 16 + v41 * v163[*(a1 + 66)]);
    memcpy(v17 + 2, (v12 + 16 + v41 * v24), v41 * (v23 - v24));
    *(&v207[0] + 1) = v17 + 2;
    memmove(&v53[v41], v53, (v165 - v163[*(a1 + 66)]) * v41);
    v19 = v167;
    memcpy(v53, a2[1], v41);
    v40 = 0;
    *(v12 + 12) += 2;
    *(v12 + 14) = *(v12 + 14) - v41 + 2;
  }

  else
  {
    v50 = (v45 * v41);
    if (v44 != v24)
    {
      memcpy(v17 + 2, (v12 + 16 + v41 * v24), (v45 * v41));
    }

    memcpy(v17 + v50 + 16, a2[1], v41);
    memcpy(v17 + v50 + v41 + 16, (v46 + v50), (v47 - v50));
    v40 = 0;
    *(v17 + 6) += 2;
    *(v17 + 7) = *(v17 + 7) - v41 + 2;
    v163[*(a1 + 66)] = v45;
    v19 = v167;
  }

  LODWORD(v42) = v158;
LABEL_72:
  v153 = *(*(v199 + v42 + 1) + 14) - *(*(v199 + v42 + 1) + 12);
  v154 = v41 + 10;
  if (v41 + 10 <= v153)
  {
    --WORD1(v199[0]);
    mdb_node_add(&v195, *(&v199[16] + v42 + 4), v207, 0, *v17, 0);
    ++WORD1(v199[0]);
    v87 = a5;
    v88 = v163;
    if (!v85)
    {
      goto LABEL_93;
    }

    goto LABEL_78;
  }

  v79 = v19;
  v80 = v40;
  v168 = v79;
  v81 = *(a1 + 64);
  --LOWORD(v199[0]);
  --WORD1(v199[0]);
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v82 = *(*(&v196 + 1) + 104);
  v83 = v197;
  v84 = &v195;
  if ((BYTE4(v199[0]) & 4) != 0)
  {
    DWORD1(v174) = 1;
    *&v171 = &v195;
    v84 = &v170;
  }

  *v84 = *(v82 + 8 * v197);
  *(v82 + 8 * v83) = v84;
  v85 = mdb_page_split(&v195, v207, 0, *v17, 0);
  *(v82 + 8 * v83) = *v84;
  if (v85)
  {
    v86 = v161;
    v40 = v80;
    goto LABEL_176;
  }

  if (*(a1 + 64) <= v81)
  {
    v42 = v158;
  }

  else
  {
    v42 = v158 + 1;
  }

  v89 = *(v199 + v42 + 1);
  v90 = v162[v42];
  if (v89 == v90)
  {
    v87 = a5;
    v40 = v80;
    v19 = v168;
    v88 = v163;
    goto LABEL_93;
  }

  v88 = v163;
  v87 = a5;
  if (v163[v42] < (*(v90 + 12) - 16) >> 1)
  {
    v40 = v80;
    v19 = v168;
    goto LABEL_93;
  }

  v40 = v80;
  if (v42 >= 1)
  {
    for (i = 0; i < v42; ++i)
    {
      *&v163[4 * i - 128] = *(v199 + i + 1);
      v163[i] = *(&v199[16] + i + 4);
    }
  }

  v162[v42] = v89;
  v19 = v168;
  if (*(&v199[16] + v42 + 4))
  {
    v163[v42] = *(&v199[16] + v42 + 4) - 1;
    goto LABEL_93;
  }

  v163[v42] = 0;
  v85 = mdb_cursor_sibling(a1, 0);
  if (v85)
  {
LABEL_78:
    if (v85 == -30798)
    {
      v85 = -30779;
    }

    goto LABEL_175;
  }

LABEL_93:
  if ((v87 & 0x20000) != 0)
  {
    v114 = *(a1 + 66);
    v162[v114] = v17;
    v88[v114] = 0;
    mdb_node_add(a1, 0, a2, v156, v160, v87);
    if (v85)
    {
      goto LABEL_175;
    }

    v113 = v154;
    if (*(a1 + 66))
    {
      memcpy(v88, &v199[16] + 8, 2 * *(a1 + 66));
    }

LABEL_138:
    v126 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
    if (v126)
    {
      v96 = v40;
      v127 = *(v12 + 12) - 16;
      v128 = v127 >> 1;
      v129 = *(a1 + 68);
      v130 = v202;
      v131 = 8 * v155 + 80;
      v132 = 2 * v155 + 330;
      while (1)
      {
        v133 = v126;
        if ((v129 & 4) != 0)
        {
          v133 = v126[2];
        }

        if (v133 == a1 || (*(v126 + 17) & *(v133 + 17) & 1) == 0)
        {
          goto LABEL_171;
        }

        if (!v155)
        {
          break;
        }

        if (v133[9] == v12)
        {
          v134 = (v133 + v131);
          v135 = (v133 + v132);
          v136 = v155 + 1;
          v137 = (v133 + v132);
          v138 = (v133 + v131);
          do
          {
            v139 = *--v137;
            *v135 = v139;
            v140 = *--v138;
            *v134 = v140;
            v135 = v137;
            v134 = v138;
          }

          while (v136-- > 1);
          *(v133 + 164) = v128 <= *(v133 + 164);
          v133[9] = *v162;
          ++*(v133 + 32);
          v142 = *(v133 + 33) + 1;
          *(v133 + 33) = v142;
          goto LABEL_151;
        }

LABEL_171:
        v126 = *v126;
        if (!v126)
        {
          v85 = 0;
          goto LABEL_173;
        }
      }

      v142 = *(v133 + 33);
LABEL_151:
      v143 = *(a1 + 66);
      if (v143 <= v142 && v133[v143 + 9] == v12)
      {
        v145 = v133 + 41;
        v146 = *(v133 + v143 + 164);
        if ((v87 & 0x40000) == 0 && v146 >= v19)
        {
          *(v145 + v143) = v146 + 1;
          v143 = *(a1 + 66);
          v146 = *(v145 + v143);
        }

        if (v128 <= v146)
        {
          v133[v143 + 9] = v130;
          *(v145 + v143) = v146 - (v127 >> 1);
          if (*(a1 + 66))
          {
            v147 = 0;
            do
            {
              *(v145 + v147) = *(&v199[16] + v147 + 4);
              v145[v147 - 32] = *(v199 + v147 + 1);
              ++v147;
            }

            while (v147 < *(a1 + 66));
          }
        }
      }

      else if (v113 <= v153 && v42 <= v142 && v133[v42 + 9] == v162[v42])
      {
        v144 = *(v133 + v42 + 164);
        if (v144 >= v88[v42])
        {
          *(v133 + v42 + 164) = v144 + 1;
        }
      }

      if ((*(v12 + 10) & 2) != 0)
      {
        v148 = v133[2];
        if (v148)
        {
          if (*(v148 + 68))
          {
            v149 = *(a1 + 66);
            v150 = v133[v149 + 9];
            v151 = *(v133 + v149 + 164);
            if (v151 < (*(v150 + 12) - 16) >> 1)
            {
              v152 = v150 + *(v150 + 2 * v151 + 16);
              if ((*(v152 + 4) & 6) == 4)
              {
                *(v148 + 72) = v152 + *(v152 + 6) + 8;
              }
            }
          }
        }
      }

      goto LABEL_171;
    }

    v85 = 0;
LABEL_175:
    v86 = v161;
    goto LABEL_176;
  }

  if ((*(v12 + 10) & 0x20) != 0)
  {
    v113 = v154;
    if (v165 <= v19)
    {
      v162[*(a1 + 66)] = v17;
      v115 = v88[v42] + 1;
      v88[v42] = v115;
      v116 = v162[v42];
      if (*(v199 + v42 + 1) != v116 && (*(v116 + 12) - 16) >> 1 <= v115 && (v42 & 0x80000000) == 0)
      {
        v117 = (v42 + 1);
        v118 = 328;
        v119 = 72;
        do
        {
          *(a1 + v119) = *(&v195 + v119);
          *(a1 + v118) = *(&v195 + v118);
          v118 += 2;
          v119 += 8;
          --v117;
        }

        while (v117);
      }
    }

    goto LABEL_138;
  }

  v159 = v42;
  v92 = v19;
  v93 = v87;
  v94 = 0;
  v95 = 0;
  v162[*(a1 + 66)] = v17;
  v96 = v40;
  v97 = (v40 + 16);
  v98 = &v203;
  v99 = v165;
  while (1)
  {
    if (v99 == v92)
    {
      v100 = v166[1];
      v205 = *v166;
      v206 = v100;
      if ((*(v12 + 10) & 2) != 0)
      {
        v98 = v156;
      }

      else
      {
        v94 = v160;
      }

      v163[*(a1 + 66)] = v95;
      v101 = *(v12 + 10);
      LODWORD(v102) = v93;
    }

    else
    {
      v103 = (v12 + v97[v99]);
      v104 = *(v103 + 3);
      v205 = v104;
      v206 = v103 + 2;
      v101 = *(v12 + 10);
      if ((v101 & 2) != 0)
      {
        v203 = *v103;
        v204 = &v104[(v103 + 2)];
        LODWORD(v102) = *(v103 + 2);
        v98 = &v203;
      }

      else
      {
        v102 = *(v103 + 2);
        v94 = *v103 | (v102 << 32);
      }
    }

    if (!(v101 & 2 | v95))
    {
      v205 = 0;
    }

    mdb_node_add(a1, v95, &v205, v98, v94, v102);
    if (v85)
    {
      break;
    }

    if (v99 == v157)
    {
      v99 = 0;
      v95 = 0;
      v162[*(a1 + 66)] = v96;
    }

    else
    {
      ++v99;
      ++v95;
    }

    if (v99 == v165)
    {
      v40 = v96;
      v105 = *(v96 + 6);
      v106 = (v105 - 16) >> 1;
      v87 = v93;
      v19 = v92;
      LODWORD(v42) = v159;
      v88 = v163;
      if ((v105 - 16) >= 2)
      {
        v107 = (v12 + 16);
        if (v106 <= 1)
        {
          v108 = 1;
        }

        else
        {
          v108 = v106;
        }

        v109 = v97;
        do
        {
          v110 = *v109++;
          *v107++ = v110;
          --v108;
        }

        while (v108);
        LOWORD(v105) = *(v96 + 6);
      }

      *(v12 + 12) = v105;
      v111 = *(v96 + 7);
      *(v12 + 14) = v111;
      memcpy((v12 + *(v12 + 2 * v106 - 2 + 16)), &v96[v97[v106 - 1]], (*(v161 + 16) - v111));
      if (v165 <= v19)
      {
        v112 = *(a1 + 66);
        v162[v112] = v202;
        v120 = v163[v159] + 1;
        v163[v159] = v120;
        v121 = v162[v159];
        v113 = v154;
        if (*(v199 + v159 + 1) != v121 && (*(v121 + 12) - 16) >> 1 <= v120 && (v159 & 0x80000000) == 0)
        {
          v122 = v159 + 1;
          v123 = 328;
          v124 = 72;
          do
          {
            *(a1 + v124) = *(&v195 + v124);
            *(a1 + v123) = *(&v195 + v123);
            v123 += 2;
            v124 += 8;
            --v122;
          }

          while (v122);
        }
      }

      else
      {
        v112 = *(a1 + 66);
        v162[v112] = v12;
        v113 = v154;
      }

      if ((v87 & 0x10000) != 0)
      {
        v125 = v162[v112] + *(v162[v112] + 2 * v163[v112] + 16);
        if ((*(v125 + 4) & 1) == 0)
        {
          v156[1] = v125 + *(v125 + 6) + 8;
        }
      }

      goto LABEL_138;
    }
  }

LABEL_173:
  v86 = v161;
  v40 = v96;
LABEL_176:
  if (v40)
  {
    *v40 = *(v86 + 192);
    *(v86 + 192) = v40;
  }

  if (v85)
  {
    goto LABEL_179;
  }
}

void mdb_node_add(uint64_t a1, int a2, const void **a3, size_t *a4, size_t a5, int a6)
{
  v8 = *(a1 + 8 * *(a1 + 66) + 72);
  v36 = 0;
  v9 = v8[5];
  if ((v9 & 0x20) != 0)
  {
    v15 = **(a1 + 40);
    v16 = ((v8[6] - 16) >> 1) - a2;
    if (v16 >= 1)
    {
      memmove(v8 + v15 * a2 + v15 + 16, v8 + v15 * a2 + 16, v16 * v15);
    }

    memcpy(v8 + v15 * a2 + 16, a3[1], v15);
    v8[6] += 2;
    v8[7] = v8[7] - v15 + 2;
    return;
  }

  v10 = a6;
  v13 = v8[6];
  if (a3)
  {
    v14 = *a3 + 8;
  }

  else
  {
    v14 = 8;
  }

  v17 = (v8[7] - v13) - 2;
  if ((v9 & 2) == 0)
  {
    v18 = v14;
    goto LABEL_16;
  }

  if (a6)
  {
    v18 = v14 + 8;
LABEL_16:
    v21 = (v18 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (v21 > v17)
    {
      v19 = *(a1 + 24);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = *a4 + v14;
  v19 = *(a1 + 24);
  v20 = *(v19 + 32);
  if (v18 <= *(v20 + 220))
  {
    goto LABEL_16;
  }

  v21 = (v14 + 9) & 0xFFFFFFFFFFFFFFFELL;
  if (v21 > v17)
  {
LABEL_18:
    *(v19 + 124) |= 2u;
    return;
  }

  mdb_page_new(a1, 4, ((*a4 + 15) / *(v20 + 16)) + 1, &v36);
  if (v22)
  {
    return;
  }

  v10 |= 1u;
  v13 = v8[6];
LABEL_19:
  v23 = (v13 - 16) >> 1;
  if (v23 > a2)
  {
    v24 = &v8[v23 + 8];
    v25 = v24;
    do
    {
      --v23;
      v26 = *--v25;
      *v24 = v26;
      v24 = v25;
    }

    while (v23 > a2);
    LOWORD(v13) = v8[6];
  }

  v27 = v8[7] - v21;
  v8[a2 + 8] = v27;
  v8[7] = v27;
  v8[6] = v13 + 2;
  v28 = v8 + v27;
  if (a3)
  {
    v29 = *a3;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 3) = v29;
  *(v28 + 2) = v10;
  v30 = v8[5];
  if ((v30 & 2) != 0)
  {
    a5 = *a4;
  }

  else
  {
    *(v28 + 2) = WORD2(a5);
  }

  *v28 = a5;
  if (a3)
  {
    memcpy(v28 + 8, a3[1], *a3);
    v30 = v8[5];
  }

  if ((v30 & 2) != 0)
  {
    v31 = &v28[v29 + 8];
    if (v36)
    {
      v32 = v36 + 2;
      *v31 = *v36;
      if ((v10 & 0x10000) != 0)
      {
        a4[1] = v32;
        return;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = v32;
    }

    else
    {
      if (v10)
      {
        *v31 = *a4[1];
        return;
      }

      if ((v10 & 0x10000) != 0)
      {
        a4[1] = v31;
        return;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = &v28[v29 + 8];
    }

    memcpy(v35, v33, v34);
  }
}

uint64_t mdb_xcursor_init1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 68) & 0xA0004;
  *(v2 + 68) = v3;
  if ((*(a2 + 4) & 2) != 0)
  {
    v8 = a2 + *(a2 + 6);
    v9 = *(v8 + 8);
    v10 = *(v8 + 40);
    *(v2 + 408) = *(v8 + 24);
    *(v2 + 424) = v10;
    *(v2 + 392) = v9;
    *(v2 + 72) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = a2 + *(a2 + 6);
    *(v2 + 392) = 0x1000000000000;
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    *(v2 + 400) = xmmword_185DB7AF0;
    *(v2 + 416) = 0;
    *(v2 + 424) = (v5[6] - 16) >> 1;
    *(v2 + 432) = v6;
    *(v2 + 434) = v5[1];
    *(v2 + 436) = v5[2];
    *(v2 + 438) = v5[3];
    *(v2 + 64) = 1;
    *(v2 + 68) = v3 | 1;
    *(v2 + 72) = v5;
    *(v2 + 328) = 0;
    v7 = *(result + 40);
    if ((*(v7 + 4) & 0x10) != 0)
    {
      *(v2 + 396) = 16;
      *(v2 + 392) = v5[4];
      if ((*(v7 + 4) & 0x20) != 0)
      {
        *(v2 + 396) = 24;
      }
    }
  }

  *(v2 + 488) = 56;
  if (*(v2 + 456) == mdb_cmp_int && *(v2 + 392) == 8)
  {
    *(v2 + 456) = mdb_cmp_cint;
  }

  return result;
}

__n128 mdb_xcursor_init2(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (a3)
  {
    v4 = *(v3 + 68) | 1;
    *(v3 + 64) = 1;
    *(v3 + 68) = v4;
    *(v3 + 328) = 0;
    *(v3 + 488) = 56;
    *(v3 + 456) = *(a2 + 456);
  }

  else if ((*(v3 + 68) & 1) == 0)
  {
    return result;
  }

  result = *(a2 + 392);
  v6 = *(a2 + 424);
  *(v3 + 408) = *(a2 + 408);
  *(v3 + 424) = v6;
  *(v3 + 392) = result;
  *(v3 + 72) = *(a2 + 72);
  return result;
}

void mdb_cursor_del(uint64_t a1, int a2)
{
  if ((*(*(a1 + 24) + 124) & 0x20013) != 0)
  {
    return;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    return;
  }

  v3 = a1 + 328;
  if (*(a1 + 328 + 2 * *(a1 + 66)) >= (*(*(a1 + 72 + 8 * *(a1 + 66)) + 12) - 16) >> 1 || (a2 & 0x8000) == 0 && mdb_page_spill(a1, 0, 0))
  {
    return;
  }

  mdb_cursor_touch(a1);
  if (v5)
  {
    return;
  }

  v6 = *(a1 + 66);
  v7 = *(a1 + 72 + 8 * v6);
  v8 = *(v7 + 10);
  if ((v8 & 2) == 0)
  {
    return;
  }

  if ((v8 & 0x20) != 0)
  {
    goto LABEL_37;
  }

  v9 = v7 + 16;
  v10 = v7 + *(v7 + 16 + 2 * *(v3 + 2 * v6));
  v11 = *(v10 + 4);
  if ((v11 & 4) == 0)
  {
    if (((v11 ^ a2) & 2) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if ((a2 & 0x20) != 0)
  {
    v12 = *(a1 + 16);
    *(*(a1 + 40) + 32) = *(*(a1 + 40) + 32) - *(v12 + 424) + 1;
    *(v12 + 68) &= ~1u;
    if ((v11 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if ((v11 & 2) == 0)
  {
    *(*(a1 + 16) + 72) = v10 + *(v10 + 6) + 8;
  }

  if (!mdb_cursor_del(*(a1 + 16), 0x8000))
  {
    v12 = *(a1 + 16);
    if (*(v12 + 424))
    {
      if ((*(v10 + 4) & 2) != 0)
      {
        v18 = v10 + *(v10 + 6);
        v20 = *(v12 + 408);
        v19 = *(v12 + 424);
        *(v18 + 8) = *(v12 + 392);
        *(v18 + 24) = v20;
        *(v18 + 40) = v19;
      }

      else
      {
        mdb_node_shrink(v7, *(v3 + 2 * *(a1 + 66)));
        v13 = *(a1 + 66);
        v14 = v7 + *(v9 + 2 * *(v3 + 2 * v13));
        *(*(a1 + 16) + 72) = v14 + *(v14 + 6) + 8;
        for (i = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32)); i; i = *i)
        {
          if (i != a1 && *(i + 32) >= *(a1 + 64) && (*(i + 68) & 1) != 0 && i[v13 + 9] == v7)
          {
            v16 = i[2];
            if (v16)
            {
              if ((*(v16 + 68) & 1) != 0 && *(i + v13 + 164) < (*(v7 + 12) - 16) >> 1)
              {
                v17 = v7 + *(v9 + 2 * *(i + v13 + 164));
                if ((*(v17 + 4) & 6) == 4)
                {
                  *(v16 + 72) = v17 + *(v17 + 6) + 8;
                }
              }
            }
          }
        }
      }

      --*(*(a1 + 40) + 32);
      return;
    }

    *(v12 + 68) &= ~1u;
    LOWORD(v11) = *(v10 + 4);
    if ((v11 & 2) == 0)
    {
LABEL_36:
      if (v11)
      {
        v21 = 0;
        if (mdb_page_get(a1, *(v10 + *(v10 + 6) + 8), &v21, 0) || mdb_ovpage_free(a1, v21))
        {
          goto LABEL_42;
        }
      }

LABEL_37:

      mdb_cursor_del0(a1);
      return;
    }

LABEL_33:
    if (mdb_drop0(v12, 0))
    {
LABEL_42:
      *(*(a1 + 24) + 124) |= 2u;
      return;
    }

    LOWORD(v11) = *(v10 + 4);
    goto LABEL_36;
  }
}

char *mdb_node_shrink(char *result, unsigned int a2)
{
  v3 = result;
  v4 = result + 16;
  v5 = *&result[2 * a2 + 16];
  v6 = &result[v5];
  v7 = *&result[v5 + 6];
  v8 = &result[v5 + v7];
  v9 = *(v8 + 10);
  v10 = *(v8 + 11) - v9;
  v11 = *&result[v5] - v10;
  if ((*(v8 + 9) & 0x20) != 0)
  {
    v15 = *&result[v5] - v10;
    if (v11)
    {
      return result;
    }
  }

  else
  {
    if ((v9 - 16) >= 2)
    {
      v12 = (v9 - 16) >> 1;
      v13 = v12 + 1;
      v14 = &result[2 * v12 + 22 + v5 + v7];
      do
      {
        *&v14[v10] = *v14 - v10;
        --v13;
        v14 -= 2;
      }

      while (v13 > 1);
    }

    v15 = 16;
  }

  v16 = v8 + 8;
  *(v16 + 7) = v9;
  *v16 = *result;
  *v6 = v11;
  *(v6 + 1) = 0;
  result = memmove(&result[*(result + 7) + v10], &result[*(result + 7)], &v16[v15] - &result[*(result + 7)]);
  v17 = *(v3 + 6) - 16;
  if (v17 >= 2)
  {
    v18 = *&v4[2 * a2];
    v19 = v17 >> 1;
    v20 = v19 + 1;
    v21 = &v3[2 * v19 + 14];
    do
    {
      v22 = *v21;
      if (v22 <= v18)
      {
        *v21 = v22 + v10;
      }

      --v20;
      v21 -= 2;
    }

    while (v20 > 1);
  }

  *(v3 + 7) += v10;
  return result;
}

uint64_t mdb_drop0(uint64_t a1, int a2)
{
  mdb_page_search(a1, 0, 4);
  if (result)
  {
    if (result == -30798)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    goto LABEL_59;
  }

  v31 = *(a1 + 24);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v5 = *(a1 + 68);
  if (((v5 & 4) != 0 || !a2 && !*(*(a1 + 40) + 24)) && *(a1 + 64))
  {
    v6 = *(a1 + 64) - 1;
    *(a1 + 64) = v6;
    if (v6)
    {
      --*(a1 + 66);
    }

    else
    {
      *(a1 + 68) = v5 & 0xFFFFFFFE;
    }
  }

  mdb_cursor_copy(a1, v33);
  if (!*(a1 + 64))
  {
    goto LABEL_56;
  }

  v7 = a1 + 72;
  v8 = (a1 + 328);
  v9 = a1 + 330;
  while (1)
  {
    while (1)
    {
      v10 = *(v7 + 8 * *(a1 + 66));
      v11 = v10[6] - 16;
      v12 = v11 >> 1;
      if ((v10[5] & 2) != 0)
      {
        if (v11 >= 2)
        {
          v14 = 0;
          v13 = v12 <= 1 ? 1 : v12;
          do
          {
            v15 = v10 + v10[v14 + 8];
            v16 = *(v15 + 4);
            if (v16)
            {
              v32 = 0;
              v17 = *(v15 + *(v15 + 6) + 8);
              result = mdb_page_get(a1, v17, &v32, 0);
              if (result)
              {
                goto LABEL_58;
              }

              v18 = v32;
              result = mdb_midl_append_range((v31 + 40), v17, *(v32 + 12));
              if (result)
              {
                goto LABEL_58;
              }

              v19 = *(a1 + 40);
              v20 = *(v19 + 24) - *(v18 + 12);
              *(v19 + 24) = v20;
              if (!a2 && !v20)
              {
                v7 = a1 + 72;
                v8 = (a1 + 328);
                goto LABEL_48;
              }
            }

            else if (a2)
            {
              if ((v16 & 2) != 0)
              {
                mdb_xcursor_init1(a1, v15);
                result = mdb_drop0(*(a1 + 16), 0);
                if (result)
                {
                  goto LABEL_58;
                }
              }
            }

            ++v14;
          }

          while (v13 != v14);
          v7 = a1 + 72;
          v8 = (a1 + 328);
          if (a2)
          {
            goto LABEL_42;
          }
        }

        else
        {
          LOWORD(v13) = 0;
          if (a2)
          {
            goto LABEL_42;
          }
        }

        if (!*(*(a1 + 40) + 24))
        {
          break;
        }
      }

      else
      {
        result = mdb_midl_need((v31 + 40), v11 >> 1);
        if (result)
        {
          goto LABEL_58;
        }

        if (v11 >= 2)
        {
          v21 = v10 + 8;
          v22 = *(v31 + 40);
          v23 = v12 <= 1 ? 1 : v12;
          LOWORD(v13) = v23;
          do
          {
            v24 = *v21++;
            v25 = *(v10 + v24) | (*(v10 + v24 + 4) << 32);
            v26 = *v22 + 1;
            *v22 = v26;
            v22[v26] = v25;
            --v23;
          }

          while (v23);
        }

        else
        {
          LOWORD(v13) = 0;
        }
      }

LABEL_42:
      if (!*(a1 + 66))
      {
        goto LABEL_56;
      }

      v8[*(a1 + 66)] = v13;
      result = mdb_cursor_sibling(a1, 1);
      if (result == -30798)
      {
        break;
      }

      if (result)
      {
        goto LABEL_57;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_56;
      }
    }

LABEL_48:
    v27 = *(a1 + 64);
    if (!v27)
    {
      goto LABEL_55;
    }

    v28 = v27 - 1;
    *(a1 + 64) = v27 - 1;
    if (v27 == 1)
    {
      break;
    }

    --*(a1 + 66);
    *(a1 + 328) = 0;
    if ((v27 - 1) != 1)
    {
      v29 = 0;
      v30 = v28 - 1;
      do
      {
        *(v9 + 2 * v29) = 0;
        *(v9 + 8 * v29 - 250) = *(v34 + v29);
        ++v29;
      }

      while (v30 != v29);
    }
  }

  *(a1 + 68) &= ~1u;
LABEL_55:
  *v8 = 0;
LABEL_56:
  result = mdb_midl_append((v31 + 40), *(*(a1 + 40) + 40));
LABEL_57:
  if (result)
  {
LABEL_58:
    *(v31 + 124) |= 2u;
  }

LABEL_59:
  *(a1 + 68) &= ~1u;
  return result;
}

void mdb_cursor_del0(uint64_t a1)
{
  v2 = a1 + 328;
  v3 = *(a1 + 66);
  v4 = *(a1 + 328 + 2 * v3);
  v5 = *(a1 + 32);
  v6 = a1 + 72;
  v7 = *(a1 + 72 + 8 * v3);
  mdb_node_del(a1, **(a1 + 40));
  --*(*(a1 + 40) + 32);
  for (i = *(*(*(a1 + 24) + 104) + 8 * v5); i; i = *i)
  {
    v9 = i;
    if ((*(a1 + 68) & 4) != 0)
    {
      v9 = i[2];
    }

    if (v9 != a1)
    {
      v10 = *(v9 + 17);
      if ((*(i + 17) & v10 & 1) != 0 && *(v9 + 32) >= *(a1 + 64))
      {
        v11 = *(a1 + 66);
        if (v9[v11 + 9] == v7)
        {
          v12 = v9 + 41;
          v13 = *(v9 + v11 + 164);
          if (v13 == v4)
          {
            *(v9 + 17) = v10 | 8;
            if ((*(*(a1 + 40) + 4) & 4) != 0)
            {
              *(v9[2] + 68) &= 0xFFFFFFFC;
            }
          }

          else
          {
            if (v13 > v4)
            {
              *(v12 + v11) = v13 - 1;
            }

            v14 = v9[2];
            if (v14)
            {
              if ((*(v14 + 68) & 1) != 0 && *(v12 + *(a1 + 66)) < (*(v7 + 12) - 16) >> 1)
              {
                v15 = v7 + *(v7 + 16 + 2 * *(v12 + *(a1 + 66)));
                if ((*(v15 + 4) & 6) == 4)
                {
                  *(v14 + 72) = v15 + *(v15 + 6) + 8;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!mdb_rebalance(a1))
  {
    if (!*(a1 + 64))
    {
      v16 = (a1 + 68);
      goto LABEL_22;
    }

    v18 = *(*(*(a1 + 24) + 104) + 8 * v5);
    if (!v18)
    {
LABEL_47:
      v16 = (a1 + 68);
      v17 = 8;
      goto LABEL_48;
    }

    v19 = *(v6 + 8 * *(a1 + 66));
    v20 = (*(v19 + 12) - 16) >> 1;
    while (1)
    {
      v21 = v18;
      if ((*(a1 + 68) & 4) != 0)
      {
        v21 = *(v18 + 16);
      }

      v22 = (v21 + 68);
      if ((*(v18 + 68) & *(v21 + 68) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (*(v21 + 64) < *(a1 + 64))
      {
        goto LABEL_46;
      }

      v23 = *(a1 + 66);
      if (*(v21 + 72 + 8 * v23) != v19)
      {
        goto LABEL_46;
      }

      v24 = *(v21 + 328 + 2 * v23);
      if (v24 < *(v2 + 2 * v23))
      {
        goto LABEL_46;
      }

      if (v20 <= v24)
      {
        v25 = mdb_cursor_sibling(v21, 1);
        if (v25 == -30798)
        {
          v30 = 2;
          goto LABEL_45;
        }

        if (v25)
        {
          break;
        }
      }

      v26 = *(v21 + 16);
      if (!v26 || (*v22 & 2) != 0)
      {
        goto LABEL_46;
      }

      v27 = *(v21 + 72 + 8 * *(v21 + 66)) + *(*(v21 + 72 + 8 * *(v21 + 66)) + 2 * *(v21 + 328 + 2 * *(v21 + 66)) + 16);
      v28 = *(v27 + 4);
      if ((v28 & 4) != 0)
      {
        if (*(v26 + 68))
        {
          if ((v28 & 2) == 0)
          {
            *(v26 + 72) = v27 + *(v27 + 6) + 8;
          }
        }

        else
        {
          mdb_xcursor_init1(v21, v27);
          mdb_cursor_first(*(v21 + 16), 0, 0);
          if (v29)
          {
            break;
          }
        }
      }

      v22 = (*(v21 + 16) + 68);
      v30 = 8;
LABEL_45:
      *v22 |= v30;
LABEL_46:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_47;
      }
    }
  }

  v16 = (*(a1 + 24) + 124);
LABEL_22:
  v17 = 2;
LABEL_48:
  *v16 |= v17;
}

uint64_t mdb_cursor_open(uint64_t a1, unsigned int a2, void *a3)
{
  result = 22;
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 8) != 0)
  {
    v7 = *(a1 + 124);
    if ((v7 & 0x13) != 0)
    {
      return 4294936514;
    }

    else if (v7 & 0x20000 | a2)
    {
      if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) != 0)
      {
        v8 = 888;
      }

      else
      {
        v8 = 392;
      }

      v9 = malloc_type_malloc(v8, 0xDB9F4F9BuLL);
      if (v9)
      {
        v10 = v9;
        mdb_cursor_init(v9, a1, a2, (v9 + 98));
        v11 = *(a1 + 104);
        if (v11)
        {
          *v10 = *(v11 + 8 * a2);
          *(v11 + 8 * a2) = v10;
          v10[17] |= 0x40u;
        }

        result = 0;
        *a3 = v10;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_renew(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 32);
      if (v4 < *(a1 + 120) && (*(*(a1 + 112) + v4) & 8) != 0 && (*(a2 + 68) & 0x40) == 0 && !*(a1 + 104))
      {
        if ((*(a1 + 124) & 0x13) != 0)
        {
          return 4294936514;
        }

        else
        {
          mdb_cursor_init(a2, a1, v4, *(a2 + 16));
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_count(uint64_t a1, uint64_t *a2)
{
  v2 = 22;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 4294936512;
    }

    if ((*(*(a1 + 24) + 124) & 0x13) != 0)
    {
      return 4294936514;
    }

    v4 = *(a1 + 68);
    if ((v4 & 1) == 0)
    {
      return 22;
    }

    if (*(a1 + 64))
    {
      if ((v4 & 2) == 0)
      {
        v5 = *(a1 + 66);
        goto LABEL_14;
      }

      v5 = *(a1 + 66);
      if (*(a1 + 2 * v5 + 328) < (*(*(a1 + 8 * v5 + 72) + 12) - 16) >> 1)
      {
        *(a1 + 68) = v4 & 0xFFFFFFFD;
LABEL_14:
        if ((*(*(a1 + 8 * v5 + 72) + *(*(a1 + 8 * v5 + 72) + 2 * *(a1 + 2 * v5 + 328) + 16) + 4) & 4) != 0)
        {
          if ((*(v3 + 68) & 1) == 0)
          {
            return 22;
          }

          v6 = *(v3 + 424);
        }

        else
        {
          v6 = 1;
        }

        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    return 4294936498;
  }

  return v2;
}

void mdb_cursor_close(void *a1)
{
  if (a1 && !*(a1 + 1))
  {
    if ((*(a1 + 68) & 0x40) != 0)
    {
      v1 = *(*(a1 + 3) + 104);
      if (v1)
      {
        v2 = (v1 + 8 * *(a1 + 8));
        do
        {
          v3 = v2;
          v2 = *v2;
          if (v2)
          {
            v4 = v2 == a1;
          }

          else
          {
            v4 = 1;
          }
        }

        while (!v4);
        if (v2 == a1)
        {
          *v3 = *a1;
        }
      }
    }

    free(a1);
  }
}

void mdb_del(uint64_t a1, unsigned int a2, void *a3, __int128 *a4)
{
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 0x10) != 0 && (*(a1 + 124) & 0x20013) == 0)
  {
    if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) == 0)
    {
      a4 = 0;
    }

    mdb_del0(a1, a2, a3, a4, 0);
  }
}

void mdb_del0(uint64_t a1, unsigned int a2, void *a3, __int128 *a4, int a5)
{
  memset(v17, 0, 392);
  memset(v16, 0, sizeof(v16));
  v15 = 0uLL;
  v14 = 0;
  mdb_cursor_init(v17, a1, a2, v16);
  if (a4)
  {
    v15 = *a4;
    v10 = &v15;
    v11 = 2;
  }

  else
  {
    v10 = 0;
    a5 |= 0x20u;
    v11 = 15;
  }

  mdb_cursor_set(v17, a3, v10, v11, &v14);
  if (!v12)
  {
    v13 = *(a1 + 104);
    v17[0] = *(v13 + 8 * a2);
    *(v13 + 8 * a2) = v17;
    mdb_cursor_del(v17, a5);
    *(*(a1 + 104) + 8 * a2) = v17[0];
  }
}

void mdb_put(uint64_t a1, unsigned int a2, size_t *a3, uint64_t a4, int a5)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v13 = 0;
          memset(v12, 0, sizeof(v12));
          memset(v11, 0, sizeof(v11));
          if ((a5 & 0xFFF8FFCF) == 0 && (*(*(a1 + 112) + a2) & 0x10) != 0 && (*(a1 + 124) & 0x20013) == 0)
          {
            mdb_cursor_init(v12, a1, a2, v11);
            v10 = *(a1 + 104);
            *&v12[0] = *(v10 + 8 * a2);
            *(v10 + 8 * a2) = v12;
            mdb_cursor_put(v12, a3, a4, a5);
            *(*(a1 + 104) + 8 * a2) = *&v12[0];
          }
        }
      }
    }
  }
}

uint64_t mdb_dbi_open(uint64_t a1, char *__s, unsigned int a3, unsigned int *a4)
{
  if ((a3 & 0xFFFBFF81) != 0)
  {
    return 22;
  }

  if ((*(a1 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  if (!__s)
  {
    *a4 = 1;
    if ((a3 & 0x7E) != 0)
    {
      v17 = *(a1 + 88);
      v18 = *(v17 + 52);
      v19 = a3 & 0x7E | v18;
      if (v19 != v18)
      {
        *(v17 + 52) = v19;
        *(a1 + 124) |= 4u;
      }
    }

    mdb_default_cmp(a1, 1u);
    return 0;
  }

  if (!*(*(a1 + 80) + 64))
  {
    mdb_default_cmp(a1, 1u);
  }

  v70 = 0uLL;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = strlen(__s);
  v11 = *(a1 + 120);
  if (v11 < 3)
  {
    goto LABEL_20;
  }

  v12 = 0;
  v13 = (*(a1 + 80) + 104);
  for (i = 2; i != v11; ++i)
  {
    v15 = *(v13 - 1);
    if (v15)
    {
      if (v10 == v15 && !strncmp(__s, *v13, v10))
      {
        v4 = 0;
        *a4 = i;
        return v4;
      }
    }

    else if (!v12)
    {
      v12 = i;
    }

    v13 += 6;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
LABEL_20:
    if (v11 >= *(*(a1 + 32) + 36))
    {
      return 4294936505;
    }

    v12 = 0;
    v16 = 1;
  }

  if ((*(*(a1 + 88) + 52) & 0xC) == 0)
  {
    v60 = 0;
    v71[0] = v10;
    v71[1] = __s;
    mdb_cursor_init(&v64, a1, 1u, 0);
    mdb_cursor_set(&v64, v71, &v70, 15, &v60);
    if (v20 == -30798)
    {
      if (a3 < 0x40000)
      {
        return 4294936498;
      }

      if ((*(a1 + 126) & 2) != 0)
      {
        return 13;
      }

      v30 = strdup(__s);
      if (v30)
      {
        v22 = v30;
        *&v70 = 48;
        *(&v70 + 1) = &v61;
        v61 = 0u;
        v62 = 0u;
        *&v63 = 0;
        *(&v63 + 1) = -1;
        WORD2(v61) = a3;
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = *(*(&v65 + 1) + 104);
        v32 = v66;
        v33 = &v64;
        if ((BYTE4(v68[0]) & 4) != 0)
        {
          DWORD1(v39) = 1;
          *&v36 = &v64;
          v33 = &v35;
        }

        *v33 = *(v31 + 8 * v66);
        *(v31 + 8 * v32) = v33;
        mdb_cursor_put(&v64, v71, &v70, 2);
        *(v31 + 8 * v32) = *v33;
        if (v34)
        {
          v4 = v34;
          free(v22);
          return v4;
        }

        v23 = 29;
        if (!v16)
        {
LABEL_38:
          v24 = (*(a1 + 80) + 48 * v12);
          *v24 = v10;
          v24[1] = v22;
          v24[4] = 0;
          *(*(a1 + 112) + v12) = v23;
          v25 = *(*(a1 + 32) + 152);
          LODWORD(v24) = *(v25 + 4 * v12) + 1;
          *(v25 + 4 * v12) = v24;
          v26 = *(a1 + 88);
          *(*(a1 + 96) + 4 * v12) = v24;
          v27 = (v26 + 48 * v12);
          v28 = **(&v70 + 1);
          v29 = *(*(&v70 + 1) + 32);
          v27[1] = *(*(&v70 + 1) + 16);
          v27[2] = v29;
          *v27 = v28;
          *a4 = v12;
          mdb_default_cmp(a1, v12);
          if (v16)
          {
            v4 = 0;
            ++*(a1 + 120);
            return v4;
          }

          return 0;
        }

LABEL_37:
        v12 = *(a1 + 120);
        goto LABEL_38;
      }
    }

    else
    {
      v4 = v20;
      if (v20)
      {
        return v4;
      }

      if ((*(*(v68 + WORD1(v68[0]) + 1) + *(*(v68 + WORD1(v68[0]) + 1) + 2 * *(&v68[16] + WORD1(v68[0]) + 4) + 16) + 4) & 6) != 2)
      {
        return 4294936512;
      }

      v21 = strdup(__s);
      if (v21)
      {
        v22 = v21;
        v23 = 28;
        if (!v16)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    return 12;
  }

  if (a3 >= 0x40000)
  {
    return 4294936512;
  }

  else
  {
    return 4294936498;
  }
}

uint64_t mdb_default_cmp(uint64_t result, unsigned int a2)
{
  v2 = *(*(result + 88) + 48 * a2 + 4);
  v3 = mdb_cmp_cint;
  if ((v2 & 8) == 0)
  {
    v3 = mdb_cmp_memn;
  }

  if ((v2 & 2) != 0)
  {
    v3 = mdb_cmp_memnr;
  }

  v4 = *(result + 80);
  *(v4 + 48 * a2 + 16) = v3;
  if ((v2 & 4) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v6 = (v2 & 0x10) == 0;
      v5 = mdb_cmp_int;
      v7 = mdb_cmp_cint;
    }

    else
    {
      v6 = (v2 & 0x40) == 0;
      v5 = mdb_cmp_memnr;
      v7 = mdb_cmp_memn;
    }

    if (v6)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 48 * a2 + 24) = v5;
  return result;
}

void mdb_dbi_close(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2 && *(a1 + 36) > a2)
  {
    v2 = *(a1 + 136);
    v3 = *(v2 + 48 * a2 + 8);
    if (v3)
    {
      v4 = (v2 + 48 * a2);
      *v4 = 0;
      v4[1] = 0;
      v5 = *(a1 + 152);
      *(*(a1 + 144) + 2 * a2) = 0;
      ++*(v5 + 4 * a2);
      free(v3);
    }
  }
}

uint64_t mdb_dbi_flags(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *a3 = *(*(a1 + 88) + 48 * a2 + 4) & 0x7FFF;
  return result;
}

uint64_t mdb_drop(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 22;
  if (a1)
  {
    if (a3 <= 1 && *(a1 + 120) > a2)
    {
      v13 = 0;
      if ((*(*(a1 + 112) + a2) & 0x10) != 0)
      {
        if ((*(a1 + 126) & 2) != 0)
        {
          return 13;
        }

        else if (*(*(a1 + 96) + 4 * a2) == *(*(*(a1 + 32) + 152) + 4 * a2))
        {
          v3 = mdb_cursor_open(a1, a2, &v13);
          if (!v3)
          {
            v7 = mdb_drop0(v13, *(v13[5] + 4) & 4);
            v3 = v7;
            for (i = *(*(a1 + 104) + 8 * a2); i; i = *i)
            {
              *(i + 17) &= 0xFFFFFFFC;
            }

            if (v7)
            {
              goto LABEL_19;
            }

            if (a2 >= 2 && a3)
            {
              mdb_del0(a1, 1u, v13[6], 0, 2);
              v3 = v9;
              if (!v9)
              {
                *(*(a1 + 112) + a2) = 2;
                mdb_dbi_close(*(a1 + 32), a2);
                goto LABEL_19;
              }

              v10 = *(a1 + 124) | 2;
            }

            else
            {
              v3 = 0;
              *(*(a1 + 112) + a2) |= 1u;
              v11 = *(a1 + 88) + 48 * a2;
              *(v11 + 38) = 0;
              *(v11 + 22) = 0u;
              *(v11 + 6) = 0u;
              *(v11 + 40) = -1;
              v10 = *(a1 + 124) | 4;
            }

            *(a1 + 124) = v10;
LABEL_19:
            mdb_cursor_close(v13);
          }
        }

        else
        {
          return 4294936516;
        }
      }
    }
  }

  return v3;
}

uint64_t mdb_set_compare(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 16) = a3;
  return result;
}

uint64_t mdb_set_dupsort(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 24) = a3;
  return result;
}

uint64_t mdb_set_relfunc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 32) = a3;
  return result;
}

uint64_t mdb_set_relctx(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 40) = a3;
  return result;
}

uint64_t mdb_reader_pid(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v12 = 0x300000000;
  v10 = a3;
  v11 = 1;
  if (fcntl(*(a1 + 4), a2, &v10))
  {
    while (1)
    {
      result = *__error();
      if (result != 4)
      {
        break;
      }

      v11 = 1;
      v12 = 0x300000000;
      v7 = *(a1 + 4);
      v10 = v5;
      if (!fcntl(v7, a2, &v10))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v9 = a2 == 7 && WORD2(v12) != 2;
    return (v9 << 31 >> 31);
  }

  return result;
}

void mdb_dpage_free(uint64_t a1, void *a2)
{
  if ((*(a2 + 5) & 4) != 0 && *(a2 + 3) != 1)
  {
    free(a2);
  }

  else
  {
    *a2 = *(a1 + 192);
    *(a1 + 192) = a2;
  }
}

void mdb_page_search(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if ((*(v4 + 124) & 0x13) == 0)
  {
    v5 = a3;
    if ((**(a1 + 56) & 2) != 0)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      if (*(*(v4 + 96) + 4 * *(a1 + 32)) != *(*(*(v4 + 32) + 152) + 4 * *(a1 + 32)))
      {
        return;
      }

      mdb_cursor_init(v17, v4, 1u, 0);
      if (mdb_page_search(v17, *(a1 + 48), 0))
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      v14 = 0;
      v10 = mdb_node_search(v17, *(a1 + 48), &v14);
      if (!v14)
      {
        return;
      }

      if ((*(v10 + 2) & 6) != 2)
      {
        return;
      }

      if (mdb_node_read(v17, v10, &v15))
      {
        return;
      }

      v11 = *(a1 + 40);
      if ((*(v11 + 4) & 0x7FFF) != *(v16 + 2))
      {
        return;
      }

      v12 = *v16;
      v13 = v16[2];
      *(v11 + 16) = v16[1];
      *(v11 + 32) = v13;
      *v11 = v12;
      **(a1 + 56) &= ~2u;
    }

    v7 = *(*(a1 + 40) + 40);
    if (v7 != -1 && ((v8 = *(a1 + 72)) != 0 && *v8 == v7 || !mdb_page_get(a1, v7, (a1 + 72), 0)))
    {
      *(a1 + 64) = 1;
      if ((v5 & 1) == 0 || (mdb_page_touch(a1), !v9))
      {
        if ((v5 & 2) == 0)
        {
          mdb_page_search_root(a1, a2, v5);
        }
      }
    }
  }
}

char *mdb_node_search(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8 * *(a1 + 66) + 72);
  v19 = 0;
  v20 = 0;
  v6 = v5[6] - 16;
  v7 = v6 >> 1;
  v8 = v5[5];
  v9 = ((v8 >> 1) & 1) == 0;
  v10 = (v6 >> 1) - 1;
  v11 = *(*(a1 + 48) + 16);
  if (v11 == mdb_cmp_cint)
  {
    if (v8)
    {
      if (*(v5 + v5[9] + 6) == 8)
      {
        v11 = mdb_cmp_long;
      }

      else
      {
        v11 = mdb_cmp_int;
      }

      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = mdb_cmp_cint;
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((v8 & 0x20) == 0)
  {
LABEL_3:
    if (v9 < v7)
    {
      v17 = v5[6] - 16;
      v18 = a3;
      while (1)
      {
        LODWORD(v12) = (v10 + v9) >> 1;
        v13 = v5 + *(v5 + (2 * v12) + 16);
        v19 = *(v13 + 3);
        v20 = (v13 + 8);
        v14 = v11(a2, &v19);
        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 <= 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v9 = v12 + 1;
        }

        if (v9 > v10)
        {
          goto LABEL_26;
        }
      }
    }

    LODWORD(v12) = 0;
    v13 = 0;
    goto LABEL_33;
  }

  v19 = **(a1 + 40);
  v13 = v5 + v5[8];
  if (v9 < v7)
  {
    v17 = v6;
    v18 = a3;
    while (1)
    {
      v12 = (v10 + v9) >> 1;
      v20 = v5 + v19 * v12 + 16;
      v14 = v11(a2, &v19);
      if (!v14)
      {
        break;
      }

      if (v14 <= 0)
      {
        v10 = v12 - 1;
      }

      else
      {
        v9 = v12 + 1;
      }

      if (v9 > v10)
      {
LABEL_26:
        a3 = v18;
        v6 = v17;
        if (v14 < 1 || (LODWORD(v12) = v12 + 1, (v5[5] & 0x20) != 0))
        {
          v15 = 0;
          if (v18)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v13 = v5 + v5[v12 + 8];
          if (v18)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_30:
    v15 = 1;
    a3 = v18;
    v6 = v17;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  LODWORD(v12) = 0;
LABEL_33:
  v15 = 1;
  if (!a3)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v6 <= 1)
  {
    v15 = 0;
  }

  *a3 = v15;
LABEL_37:
  *(a1 + 2 * *(a1 + 66) + 328) = v12;
  if (v12 >= v7)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

void mdb_page_touch(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * *(a1 + 66));
  __dst = 0;
  v4 = *(a1 + 24);
  v5 = v3[5];
  if ((v5 & 0x10) == 0)
  {
    if ((*(v4 + 124) & 8) != 0)
    {
      if (mdb_page_unspill(*(a1 + 24), v3, &__dst))
      {
        goto LABEL_15;
      }

      v7 = __dst;
      if (__dst)
      {
LABEL_20:
        v16 = *(a1 + 66);
        *(v2 + 8 * v16) = v7;
        v17 = *(*(v4 + 104) + 8 * *(a1 + 32));
        if ((*(a1 + 68) & 4) != 0)
        {
          if (v17)
          {
            v21 = *(a1 + 64);
            do
            {
              v22 = v17[2];
              if (*(v22 + 64) >= v21)
              {
                v23 = v22 + 72;
                if (*(v23 + 8 * v16) == v3)
                {
                  *(v23 + 8 * v16) = v7;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }

        else if (v17)
        {
          v18 = *(a1 + 64);
          do
          {
            if (v17 != a1 && *(v17 + 32) >= v18 && v17[v16 + 9] == v3)
            {
              v17[v16 + 9] = v7;
              if ((*(v7 + 5) & 2) != 0)
              {
                v19 = v17[2];
                if (v19)
                {
                  if ((*(v19 + 68) & 1) != 0 && *(v17 + v16 + 164) < (*(v7 + 6) - 16) >> 1)
                  {
                    v20 = &v7[*&v7[2 * *(v17 + v16 + 164) + 16]];
                    if ((*(v20 + 2) & 6) == 4)
                    {
                      *(v19 + 72) = &v20[*(v20 + 3) + 8];
                    }
                  }
                }
              }
            }

            v17 = *v17;
          }

          while (v17);
        }

        return;
      }
    }

    if (!mdb_midl_need((v4 + 40), 1))
    {
      mdb_page_alloc(a1, 1, &__dst);
      if (!v6)
      {
        v7 = __dst;
        v8 = *__dst;
        v9 = *(v4 + 40);
        v10 = *v9 + 1;
        *v9 = v10;
        v9[v10] = *v3;
        if (*(a1 + 66))
        {
          v11 = *(v2 + 8 * (*(a1 + 66) - 1)) + *(*(v2 + 8 * (*(a1 + 66) - 1)) + 2 * *(a1 + 2 * (*(a1 + 66) - 1) + 328) + 16);
          *v11 = v8;
          *(v11 + 4) = WORD2(v8);
        }

        else
        {
          *(*(a1 + 40) + 40) = v8;
        }

LABEL_18:
        mdb_page_copy(v7, v3, *(*(v4 + 32) + 16));
        *v7 = v8;
        *(v7 + 5) |= 0x10u;
        goto LABEL_20;
      }
    }

LABEL_15:
    *(v4 + 124) |= 2u;
    return;
  }

  if ((v5 & 0x40) != 0 || !*v4)
  {
    return;
  }

  v12 = *(v4 + 72);
  v8 = *v3;
  if (!*v12 || (v13 = mdb_mid2l_search(*(v4 + 72), *v3), *v12 < v13) || (v14 = &v12[4 * v13], *v14 != v8))
  {
    v15 = mdb_page_malloc(v4, 1u);
    if (!v15)
    {
      return;
    }

    v7 = v15;
    v24[0] = v8;
    v24[1] = v15;
    mdb_mid2l_insert(v12, v24);
    goto LABEL_18;
  }

  if (v3 != *(v14 + 1))
  {
    *(a1 + 68) &= 0xFFFFFFFC;
    *(v4 + 124) |= 2u;
  }
}

void mdb_page_search_root(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 72;
  v5 = *(a1 + 66);
  v6 = *(a1 + 72 + 8 * v5);
  v16 = v6;
  v7 = *(v6 + 10);
  if (v7)
  {
    v10 = a3 & 0xC;
    v11 = a1 + 328;
    do
    {
      if (v10)
      {
        if ((a3 & 8) != 0)
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
          if ((*(a1 + 68) & 1) != 0 && *(v11 + 2 * v5) == v12)
          {
            v5 = *(a1 + 64);
            *(a1 + 64) = v5 + 1;
            *(a1 + 66) = v5;
            v6 = *(v4 + 8 * v5);
            v16 = v6;
            if (a3)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        else
        {
          LOWORD(v12) = 0;
        }
      }

      else
      {
        v15 = 0;
        if (mdb_node_search(a1, a2, &v15))
        {
          LOWORD(v12) = *(v11 + 2 * *(a1 + 66)) - (v15 == 0);
        }

        else
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
        }
      }

      v13 = (v6 + *(v6 + 2 * v12 + 16));
      if (mdb_page_get(a1, *v13 | (*(v13 + 2) << 32), &v16, 0))
      {
        return;
      }

      *(v11 + 2 * *(a1 + 66)) = v12;
      v5 = *(a1 + 64);
      if (v5 > 0x1F)
      {
        *(*(a1 + 24) + 124) |= 2u;
        return;
      }

      v6 = v16;
      *(a1 + 64) = v5 + 1;
      *(a1 + 66) = v5;
      *(v4 + 8 * v5) = v6;
      *(v11 + 2 * v5) = 0;
      if (a3)
      {
LABEL_16:
        mdb_page_touch(a1);
        if (v14)
        {
          return;
        }

        v5 = *(a1 + 66);
        v6 = *(v4 + 8 * v5);
        v16 = v6;
      }

LABEL_18:
      v7 = *(v6 + 10);
    }

    while ((v7 & 1) != 0);
  }

  if ((v7 & 2) != 0)
  {
    *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  }

  else
  {
    *(*(a1 + 24) + 124) |= 2u;
  }
}

void *mdb_page_copy(char *__dst, _WORD *__src, int a3)
{
  v4 = __src;
  v5 = __dst;
  v6 = __src[7];
  v7 = __src[6];
  if (((v6 - v7) & 0xFFF8) == 0 || (__src[5] & 0x20) != 0)
  {
    v9 = a3 - ((v6 - v7) & 0xFFF8u);
  }

  else
  {
    v8 = v6 & 0xFFF8;
    memcpy(__dst, __src, (v7 + 7) & 0x1FFF8);
    v9 = (a3 - v8);
    __dst = &v5[v8];
    __src = (v4 + v8);
  }

  return memcpy(__dst, __src, v9);
}

uint64_t mdb_env_reader_dest(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = getpid();
  if (v2 == result)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t mdb_pages_xkeep(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 24);
  v27 = 0;
  v26 = 0;
  v6 = *(v5 + 120);
  v7 = v6;
  v8 = a1;
  do
  {
LABEL_2:
    if (*(v8 + 68))
    {
      v12 = v8;
      do
      {
        v13 = *(v12 + 64);
        if (*(v12 + 64))
        {
          v14 = 0;
          do
          {
            v15 = *(v12 + 72 + 8 * v14);
            v16 = *(v15 + 10);
            if ((v16 & 0xC050) == a2)
            {
              *(v15 + 10) = v16 ^ 0x8000;
            }

            ++v14;
          }

          while (v13 != v14);
          v17 = v14 - 1;
        }

        else
        {
          v15 = 0;
          v17 = 0xFFFFFFFFLL;
        }

        v18 = *(v12 + 16);
        if (!v18)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        if ((*(v18 + 68) & 1) == 0)
        {
          break;
        }

        if ((*(v15 + 10) & 2) == 0)
        {
          break;
        }

        v19 = *(v15 + *(v15 + 2 * *(v12 + 2 * v17 + 328) + 16) + 4);
        v12 = *(v12 + 16);
      }

      while ((v19 & 2) != 0);
    }

    v8 = *v8;
    if (v8)
    {
      v9 = v8 == a1;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = 8 * v7 - 8;
  while (v10 != -8)
  {
    v8 = *(*(v5 + 104) + v10);
    v10 -= 8;
    --v7;
    if (v8)
    {
      v11 = v8 == a1;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      goto LABEL_2;
    }
  }

  result = 0;
  if (a3 && v6)
  {
    v21 = 0;
    v22 = 40;
    do
    {
      if (*(*(v5 + 112) + v21))
      {
        v23 = *(*(v5 + 88) + v22);
        if (v23 != -1)
        {
          result = mdb_page_get(a1, v23, &v27, &v26);
          if (result)
          {
            return result;
          }

          v24 = *(v27 + 10);
          if ((v24 & 0xC050) == a2 && v26 <= 1)
          {
            *(v27 + 10) = v24 ^ 0x8000;
          }
        }
      }

      ++v21;
      v22 += 48;
    }

    while (v21 < *(v5 + 120));
    return 0;
  }

  return result;
}

unint64_t mdb_find_oldest(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 24) - 1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      v6 = v3 + (v4 << 6) + 136;
      v7 = v6;
      do
      {
        v8 = *v7;
        v7 -= 16;
        if (v8)
        {
          v9 = *(v6 - 8);
          if (result >= v9)
          {
            result = v9;
          }
        }

        --v5;
        v6 = v7;
      }

      while (v5 > 1);
    }
  }

  return result;
}

uint64_t mdb_rebalance(uint64_t a1)
{
  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v2 = (a1 + 72);
  v3 = *(a1 + 66);
  v4 = *(a1 + 72 + 8 * v3);
  if (v4[5])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = 250;
  }

  v7 = *(a1 + 24);
  v8 = (*(*(v7 + 32) + 16) - 16);
  v9 = v4[7];
  v10 = v4[6];
  if (1000 * (v8 - (v9 - v10)) / v8 >= v6 && v5 <= (v10 - 16) >> 1)
  {
    return 0;
  }

  if (*(a1 + 64) > 1u)
  {
    v21 = v3 - 1;
    mdb_cursor_copy(a1, &v119);
    *&v120 = 0;
    v22 = a1 + 328;
    v118 = *(a1 + 328 + 2 * v3);
    v23 = *(a1 + 328 + 2 * (v3 - 1));
    v24 = *(&v123[16] + (v3 - 1) + 4);
    if (*(a1 + 328 + 2 * (v3 - 1)))
    {
      v25 = v24 - 1;
      *(&v123[16] + v21 + 4) = v25;
      v26 = (v2[v21] + *(v2[v21] + 2 * v25 + 16));
      v15 = mdb_page_get(a1, *v26 | (*(v26 + 2) << 32), v123 + WORD1(v123[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      LOWORD(v27) = 0;
      v28 = WORD1(v123[0]);
      *(&v123[16] + WORD1(v123[0]) + 4) = ((*(*(v123 + WORD1(v123[0]) + 1) + 12) + 131056) >> 1) - 1;
      v29 = *(a1 + 66);
    }

    else
    {
      v30 = v24 + 1;
      *(&v123[16] + v21 + 4) = v30;
      v31 = (v2[v21] + *(v2[v21] + 2 * v30 + 16));
      v15 = mdb_page_get(a1, *v31 | (*(v31 + 2) << 32), v123 + WORD1(v123[0]) + 1, 0);
      if (v15)
      {
        return v15;
      }

      v28 = WORD1(v123[0]);
      *(&v123[16] + WORD1(v123[0]) + 4) = 0;
      v29 = *(a1 + 66);
      v27 = (*(v2[v29] + 12) + 131056) >> 1;
    }

    *(v22 + 2 * v29) = v27;
    v32 = (*(*(*(a1 + 24) + 32) + 16) - 16);
    v33 = *(v123 + v28 + 1);
    v34 = *(v33 + 14);
    v35 = *(v33 + 12);
    if (1000 * (v32 - (v34 - v35)) / v32 < v6 || v5 >= (v35 - 16) >> 1)
    {
      if (v23)
      {
        *(&v123[16] + v28 + 4) += *(v22 + 2 * v28) + 1;
        v174 = 0;
        v47 = v118 + ((v35 + 131056) >> 1);
        v173 = 0u;
        v172 = 0u;
        v171 = 0u;
        v170 = 0u;
        v169 = 0u;
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v48 = *(*(&v120 + 1) + 104);
        v49 = v121;
        v50 = &v119;
        if ((BYTE4(v123[0]) & 4) != 0)
        {
          DWORD1(v154) = 1;
          *&v151 = &v119;
          v50 = &v150;
        }

        *v50 = *(v48 + 8 * v121);
        *(v48 + 8 * v49) = v50;
        mdb_page_merge(a1, &v119);
        v20 = v51;
        *(v48 + 8 * v49) = *v50;
        mdb_cursor_copy(&v119, a1);
      }

      else
      {
        mdb_page_merge(&v119, a1);
        v20 = v53;
        LOWORD(v47) = v118;
      }

      *(a1 + 68) &= ~2u;
      goto LABEL_77;
    }

    mdb_page_touch(&v119);
    if (v36)
    {
      goto LABEL_73;
    }

    mdb_page_touch(a1);
    if (v36)
    {
      goto LABEL_73;
    }

    v177 = 0;
    v178 = 0;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    v37 = *(v123 + WORD1(v123[0]) + 1);
    v38 = *(v37 + 10);
    if ((v38 & 0x20) != 0)
    {
      LODWORD(v41) = 0;
      v61 = 0;
      v62 = v37 + *(&v123[16] + WORD1(v123[0]) + 4) * **(&v121 + 1) + 16;
      v177 = **(&v121 + 1);
      v178 = v62;
      v175 = 0;
      v176 = 0;
    }

    else
    {
      v39 = (v37 + *(v37 + 2 * *(&v123[16] + WORD1(v123[0]) + 4) + 16));
      v40 = *v39;
      v41 = *(v39 + 2);
      if ((v38 & 1) == 0 || *(&v123[16] + WORD1(v123[0]) + 4))
      {
        v63 = *(v39 + 3);
        v177 = v63;
        v178 = v39 + 2;
      }

      else
      {
        v117 = *v39;
        v42 = v123[0];
        mdb_page_search_lowest(&v119);
        if (v36)
        {
          goto LABEL_73;
        }

        v43 = *(v123 + WORD1(v123[0]) + 1);
        if ((*(v43 + 10) & 0x20) != 0)
        {
          v45 = **(&v121 + 1);
          v46 = (v43 + 16);
        }

        else
        {
          v44 = v43 + *(v43 + 16);
          v45 = *(v44 + 6);
          v46 = (v44 + 8);
        }

        v40 = v117;
        v177 = v45;
        v178 = v46;
        LOWORD(v123[0]) = v42;
        WORD1(v123[0]) = v42 - 1;
        v63 = *(v39 + 3);
      }

      v61 = v40 | (v41 << 32);
      v175 = *v39;
      v176 = v39 + v63 + 8;
    }

    *&v151 = 0;
    v64 = *(a1 + 66);
    if ((*(v2[v64] + 10) & 1) != 0 && !*(v22 + 2 * v64))
    {
      v79 = *(a1 + 64);
      v125 = 0uLL;
      mdb_cursor_copy(a1, &v150);
      mdb_page_search_lowest(&v150);
      if (v36)
      {
        goto LABEL_73;
      }

      v80 = *(&v154 + WORD1(v154) + 1);
      if ((*(v80 + 10) & 0x20) != 0)
      {
        v82 = **(&v152 + 1);
        v83 = v80 + 16;
      }

      else
      {
        v81 = v80 + *(v80 + 16);
        v82 = *(v81 + 6);
        v83 = v81 + 8;
      }

      *&v125 = v82;
      *(&v125 + 1) = v83;
      LOWORD(v154) = v79;
      WORD1(v154) = v79 - 1;
      *(&v170 + (v79 - 1) + 4) = 0;
      mdb_update_key(&v150, &v125);
      if (v36)
      {
        goto LABEL_73;
      }

      v64 = *(a1 + 66);
    }

    mdb_node_add(a1, *(v22 + 2 * v64), &v177, &v175, v61, v41);
    if (v36)
    {
LABEL_73:
      v20 = v36;
LABEL_74:
      LOWORD(v47) = v118;
      goto LABEL_75;
    }

    mdb_node_del(&v119, v177);
    v66 = *(v123 + WORD1(v123[0]) + 1);
    if (v23)
    {
      v67 = *(*(*(&v120 + 1) + 104) + 8 * v121);
      if (v67)
      {
        v68 = v2[WORD1(v123[0])];
        v69 = BYTE4(v123[0]);
        do
        {
          v70 = v67;
          if ((v69 & 4) != 0)
          {
            v70 = *(v67 + 2);
          }

          if ((*(v70 + 68) & 1) != 0 && *(v70 + 33) >= WORD1(v123[0]))
          {
            if (v70 != a1 && *(v70 + WORD1(v123[0]) + 9) == v68)
            {
              v71 = *(v70 + WORD1(v123[0]) + 164);
              if (v71 >= *(v22 + 2 * WORD1(v123[0])))
              {
                *(v70 + WORD1(v123[0]) + 164) = v71 + 1;
              }
            }

            if (v70 != &v119)
            {
              v72 = WORD1(v123[0]);
              if (*(v70 + WORD1(v123[0]) + 9) == v66)
              {
                v73 = v70 + 41;
                if (*(v70 + WORD1(v123[0]) + 164) == *(&v123[16] + WORD1(v123[0]) + 4))
                {
                  v74 = *(a1 + 66);
                  *(v70 + WORD1(v123[0]) + 9) = v2[v74];
                  *(v73 + v72) = *(v22 + 2 * v74);
                  ++*(v73 + WORD1(v123[0]) - 1);
                }
              }
            }

            if ((*(v66 + 10) & 2) != 0)
            {
              v75 = *(v70 + 2);
              if (v75)
              {
                if (*(v75 + 68))
                {
                  v76 = *(v70 + WORD1(v123[0]) + 9);
                  v77 = *(v70 + WORD1(v123[0]) + 164);
                  if (v77 < (*(v76 + 12) - 16) >> 1)
                  {
                    v78 = v76 + *(v76 + 2 * v77 + 16);
                    if ((*(v78 + 4) & 6) == 4)
                    {
                      *(v75 + 72) = v78 + *(v78 + 6) + 8;
                    }
                  }
                }
              }
            }
          }

          v67 = *v67;
        }

        while (v67);
      }
    }

    else
    {
      v84 = *(*(*(&v120 + 1) + 104) + 8 * v121);
      if (v84)
      {
        v85 = BYTE4(v123[0]);
        do
        {
          v86 = v84;
          if ((v85 & 4) != 0)
          {
            v86 = *(v84 + 2);
          }

          if (v86 != &v119 && (*(v86 + 68) & 1) != 0)
          {
            v87 = WORD1(v123[0]);
            if (*(v86 + 33) >= WORD1(v123[0]))
            {
              v88 = v86 + 9;
              if (*(v86 + WORD1(v123[0]) + 9) == v66)
              {
                v89 = v86 + 41;
                v90 = v86 + WORD1(v123[0]) + 164;
                v91 = *v90;
                if (!*v90)
                {
                  v92 = *(a1 + 66);
                  v88[WORD1(v123[0])] = v2[v92];
                  *(v89 + v87) = *(v22 + 2 * v92);
                  v93 = v89 + 2 * WORD1(v123[0]);
                  v94 = *(v93 - 2);
                  v90 = (v93 - 2);
                  v91 = v94;
                }

                *v90 = v91 - 1;
                if ((*(v66 + 10) & 2) != 0)
                {
                  v95 = *(v86 + 2);
                  if (v95)
                  {
                    if (*(v95 + 68))
                    {
                      v96 = v88[WORD1(v123[0])];
                      v97 = *(v89 + WORD1(v123[0]));
                      if (v97 < (*(v96 + 12) - 16) >> 1)
                      {
                        v98 = v96 + *(v96 + 2 * v97 + 16);
                        if ((*(v98 + 4) & 6) == 4)
                        {
                          *(v95 + 72) = v98 + *(v98 + 6) + 8;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v84 = *v84;
        }

        while (v84);
      }
    }

    v99 = WORD1(v123[0]);
    if (!*(&v123[16] + WORD1(v123[0]) + 4))
    {
      if (*(&v123[16] + WORD1(v123[0]) + 3))
      {
        v101 = *(v123 + WORD1(v123[0]) + 1);
        if ((*(v101 + 10) & 0x20) != 0)
        {
          v103 = (v101 + 16);
        }

        else
        {
          v102 = v101 + *(v101 + 16);
          v177 = *(v102 + 6);
          v103 = (v102 + 8);
        }

        v178 = v103;
        v108 = &v150;
        mdb_cursor_copy(&v119, &v150);
        LOWORD(v154) = v154 - 1;
        --WORD1(v154);
        v149 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v109 = *(*(&v151 + 1) + 104);
        v110 = v152;
        if ((BYTE4(v154) & 4) != 0)
        {
          DWORD1(v129) = 1;
          *&v126 = &v150;
          v108 = &v125;
        }

        *v108 = *(v109 + 8 * v152);
        *(v109 + 8 * v110) = v108;
        mdb_update_key(&v150, &v177);
        *(v109 + 8 * v110) = *v108;
        if (v36)
        {
          goto LABEL_73;
        }

        v99 = WORD1(v123[0]);
      }

      if (*(*(v123 + v99 + 1) + 10))
      {
        v111 = *(&v123[16] + v99 + 4);
        v125 = 0uLL;
        *(&v123[16] + v99 + 4) = 0;
        mdb_update_key(&v119, &v125);
        LODWORD(v99) = WORD1(v123[0]);
        *(&v123[16] + WORD1(v123[0]) + 4) = v111;
      }
    }

    v100 = *(a1 + 66);
    if (*(v22 + 2 * v100))
    {
      v20 = 0;
      goto LABEL_74;
    }

    if (*(v22 + 2 * v100 - 2))
    {
      v104 = *(*(v123 + v99 + 1) + 10);
      v105 = v2[v100];
      if ((v104 & 0x20) != 0)
      {
        v107 = (v105 + 16);
      }

      else
      {
        v106 = v105 + *(v105 + 16);
        v177 = *(v106 + 6);
        v107 = (v106 + 8);
      }

      LOWORD(v47) = v118;
      v178 = v107;
      v112 = &v150;
      mdb_cursor_copy(a1, &v150);
      LOWORD(v154) = v154 - 1;
      --WORD1(v154);
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v113 = *(*(&v151 + 1) + 104);
      v114 = v152;
      if ((BYTE4(v154) & 4) != 0)
      {
        DWORD1(v129) = 1;
        *&v126 = &v150;
        v112 = &v125;
      }

      *v112 = *(v113 + 8 * v152);
      *(v113 + 8 * v114) = v112;
      mdb_update_key(&v150, &v177);
      *(v113 + 8 * v114) = *v112;
      if (v115)
      {
        v20 = v115;
        goto LABEL_75;
      }

      v100 = *(a1 + 66);
    }

    else
    {
      LOWORD(v47) = v118;
    }

    if (*(v2[v100] + 10))
    {
      v116 = *(v22 + 2 * v100);
      v125 = 0uLL;
      *(v22 + 2 * v100) = 0;
      mdb_update_key(a1, &v125);
      v20 = 0;
      *(v22 + 2 * *(a1 + 66)) = v116;
    }

    else
    {
      v20 = 0;
    }

LABEL_75:
    if (v23)
    {
      LOWORD(v47) = v47 + 1;
    }

LABEL_77:
    *(v22 + 2 * *(a1 + 66)) = v47;
    return v20;
  }

  v11 = *v2;
  v12 = *(*v2 + 10);
  if ((v12 & 0x40) != 0)
  {
    return 0;
  }

  v13 = *(v11 + 12) - 16;
  if (v13 <= 1)
  {
    v14 = *(a1 + 40);
    *(v14 + 40) = -1;
    *(v14 + 6) = 0;
    *(v14 + 16) = 0;
    v15 = mdb_midl_append((v7 + 40), *v11);
    if (!v15)
    {
      v16 = *(a1 + 68) & 0xFFFFFFFE;
      *(a1 + 64) = 0;
      *(a1 + 68) = v16;
      v17 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v17)
      {
        do
        {
          v18 = v17;
          if ((*(a1 + 68) & 4) != 0)
          {
            v18 = v17[2];
          }

          v19 = *(v18 + 17);
          if ((v19 & 1) != 0 && *(v18 + 32) >= *(a1 + 64) && v18[9] == v11)
          {
            *(v18 + 16) = 0;
            *(v18 + 17) = v19 & 0xFFFFFFFE;
          }

          v20 = 0;
          v17 = *v17;
        }

        while (v17);
        return v20;
      }

      return 0;
    }

    return v15;
  }

  v20 = 0;
  if ((v12 & 1) == 0 || (v13 & 0xFFFFFFFE) != 2)
  {
    return v20;
  }

  v15 = mdb_midl_append((v7 + 40), *v11);
  if (v15)
  {
    return v15;
  }

  v52 = *(v11 + *(v11 + 16)) | (*(v11 + *(v11 + 16) + 4) << 32);
  *(*(a1 + 40) + 40) = v52;
  v15 = mdb_page_get(a1, v52, v2, 0);
  if (v15)
  {
    return v15;
  }

  v54 = *(a1 + 40);
  --*(v54 + 6);
  --*(v54 + 8);
  *(a1 + 328) = *(a1 + 330);
  if (*(v54 + 6) >= 2u)
  {
    v55 = 0;
    do
    {
      *(a1 + 8 * v55 + 80) = *(a1 + 8 * v55 + 88);
      *(a1 + 2 * v55 + 330) = *(a1 + 2 * v55 + 332);
      v56 = v55 + 2;
      ++v55;
    }

    while (v56 < *(v54 + 6));
  }

  v57 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
  if (!v57)
  {
    return 0;
  }

  v58 = *(a1 + 68);
  do
  {
    v59 = v57;
    if ((v58 & 4) != 0)
    {
      v59 = v57[2];
    }

    if (v59 != a1 && (*(v59 + 68) & 1) != 0 && v59[9] == v11)
    {
      if (*(v54 + 6))
      {
        v60 = 0;
        do
        {
          v59[v60 + 9] = v59[v60 + 10];
          *(v59 + v60 + 164) = *(v59 + v60 + 165);
          v54 = *(a1 + 40);
          ++v60;
        }

        while (v60 < *(v54 + 6));
      }

      --*(v59 + 32);
      --*(v59 + 33);
    }

    v20 = 0;
    v57 = *v57;
  }

  while (v57);
  return v20;
}

uint64_t mdb_cursor_copy(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = *(result + 40);
  v2 = *(result + 64);
  *(a2 + 64) = v2;
  *(a2 + 66) = *(result + 66);
  *(a2 + 68) = *(result + 68);
  if (v2)
  {
    v3 = 0;
    v4 = result + 328;
    v5 = a2 + 328;
    do
    {
      v6 = *(v4 + 2 * v3);
      *(v5 + 8 * v3 - 256) = *(v4 + 8 * v3 - 256);
      *(v5 + 2 * v3++) = v6;
    }

    while (v3 < *(result + 64));
  }

  return result;
}

void mdb_page_merge(uint64_t a1, uint64_t a2)
{
  v54 = 0;
  v55 = 0;
  v4 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  mdb_page_touch(a2);
  if (v6)
  {
    return;
  }

  v56 = 0;
  v57 = 0;
  v7 = *(a2 + 8 * *(a2 + 66) + 72);
  v47 = *(v7 + 12) + 131056;
  if ((*(v5 + 10) & 0x20) == 0)
  {
    if ((*(v5 + 12) & 0xFFFE) != 0x10)
    {
      v8 = 0;
      v9 = v47 >> 1;
      do
      {
        v10 = (v5 + *(v5 + 16 + 2 * v8));
        if (!v8 && (*(v5 + 10) & 1) != 0)
        {
          v53 = 0;
          memset(v52, 0, sizeof(v52));
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          mdb_cursor_copy(a1, &v48);
          *&v49 = 0;
          mdb_page_search_lowest(&v48);
          if (v13)
          {
            return;
          }

          v14 = *(v52 + WORD1(v52[0]) + 1);
          if ((*(v14 + 10) & 0x20) != 0)
          {
            v56 = **(&v50 + 1);
            v16 = (v14 + 16);
          }

          else
          {
            v15 = v14 + *(v14 + 16);
            v56 = *(v15 + 6);
            v16 = (v15 + 8);
          }

          v57 = v16;
          v11 = *(v10 + 3);
        }

        else
        {
          v11 = *(v10 + 3);
          v56 = v11;
          v57 = v10 + 2;
        }

        v54 = *v10;
        v55 = v10 + v11 + 8;
        mdb_node_add(a2, v9, &v56, &v54, v54 | (*(v10 + 2) << 32), *(v10 + 2));
        if (v12)
        {
          return;
        }

        ++v8;
        LOWORD(v9) = v9 + 1;
      }

      while ((*(v5 + 12) - 16) >> 1 > v8);
    }

LABEL_21:
    --*(a1 + 66);
    mdb_node_del(a1, 0);
    v20 = *(a1 + 66);
    if (!*(a1 + 328 + 2 * v20))
    {
      v56 = 0;
      mdb_update_key(a1, &v56);
      LOWORD(v20) = *(a1 + 66);
      if (v30)
      {
        *(a1 + 66) = v20 + 1;
        return;
      }
    }

    v21 = v20 + 1;
    *(a1 + 66) = v21;
    v22 = *(v4 + 8 * v21);
    v23 = *v22;
    v24 = *(a1 + 24);
    v25 = *(v22 + 10);
    if ((v25 & 0x10) != 0 && *(a1 + 32))
    {
      if (!*v24)
      {
LABEL_35:
        *(v22 + 48) = *(v24 + 48);
        *(v24 + 48) = v22;
        ++*(v24 + 56);
        v29 = v25 | 0x4000;
        *(v22 + 10) = v29;
LABEL_36:
        v31 = (v29 & 2) == 0;
        v32 = 16;
        if (v31)
        {
          v32 = 8;
        }

        --*(*(a1 + 40) + v32);
        v33 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
        if (v33)
        {
          v34 = *(a1 + 66);
          v35 = *(a1 + 68);
          v36 = v34 - 1;
          do
          {
            v37 = v33;
            if ((v35 & 4) != 0)
            {
              v37 = v33[2];
            }

            if (v37 != a1 && *(v37 + 32) >= *(a1 + 64))
            {
              v38 = v37 + 9;
              v39 = v37[v34 + 9];
              if (v39 == v22)
              {
                v38[v34] = v7;
                *(v37 + v34 + 164) += v47 >> 1;
                *(v37 + v36 + 164) = *(a2 + 328 + 2 * v36);
                v39 = v7;
              }

              else if (v38[v36] == *(v4 + 8 * v36))
              {
                v40 = *(v37 + v36 + 164);
                if (v40 > *(a1 + 328 + 2 * v36))
                {
                  *(v37 + v36 + 164) = v40 - 1;
                }
              }

              if ((*(v22 + 10) & 2) != 0)
              {
                v41 = v37[2];
                if (v41)
                {
                  if (*(v41 + 68))
                  {
                    v42 = *(v37 + v34 + 164);
                    if (v42 < (*(v39 + 12) - 16) >> 1)
                    {
                      v43 = v39 + *(v39 + 2 * v42 + 16);
                      if ((*(v43 + 4) & 6) == 4)
                      {
                        *(v41 + 72) = v43 + *(v43 + 6) + 8;
                      }
                    }
                  }
                }
              }
            }

            v33 = *v33;
          }

          while (v33);
        }

        v44 = *(a2 + 64);
        v45 = *(*(a2 + 40) + 6);
        if (v44)
        {
          *(a2 + 64) = v44 - 1;
          if (v44 == 1)
          {
            *(a2 + 68) &= ~1u;
          }

          else
          {
            --*(a2 + 66);
          }
        }

        mdb_rebalance(a2);
        v46 = *(*(a2 + 40) + 6) - v45 + v44;
        *(a2 + 64) = v46;
        *(a2 + 66) = v46 - 1;
        return;
      }

      v26 = *(v24 + 72);
      if (*v26)
      {
        v27 = mdb_mid2l_search(*(v24 + 72), *v22);
        if (*v26 >= v27)
        {
          v28 = &v26[2 * v27];
          if (*v28 == v23)
          {
            if (v28[1] != v22)
            {
              *(a1 + 68) &= 0xFFFFFFFC;
              *(v24 + 124) |= 2u;
              return;
            }

            v25 = *(v22 + 10);
            goto LABEL_35;
          }
        }
      }
    }

    if (mdb_midl_append((v24 + 40), v23))
    {
      return;
    }

    v29 = *(v22 + 10);
    goto LABEL_36;
  }

  v56 = **(a1 + 40);
  v57 = (v5 + 16);
  if ((*(v5 + 12) & 0xFFFE) == 0x10)
  {
    goto LABEL_21;
  }

  v17 = 0;
  v18 = v47 >> 1;
  while (1)
  {
    mdb_node_add(a2, v18, &v56, 0, 0, 0);
    if (v19)
    {
      break;
    }

    v57 = (v57 + v56);
    ++v17;
    LOWORD(v18) = v18 + 1;
    if ((*(v5 + 12) - 16) >> 1 <= v17)
    {
      goto LABEL_21;
    }
  }
}

void mdb_page_search_lowest(uint64_t a1)
{
  v2 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  if (!mdb_page_get(a1, *(v5 + *(v5 + 16)) | (*(v5 + *(v5 + 16) + 4) << 32), &v5, 0))
  {
    *(a1 + 328 + 2 * *(a1 + 66)) = 0;
    v3 = *(a1 + 64);
    if (v3 < 0x20)
    {
      v4 = v5;
      *(a1 + 64) = v3 + 1;
      *(v2 + 8 * v3) = v4;
      *(a1 + 66) = v3;
      *(a1 + 328 + 2 * v3) = 0;

      mdb_page_search_root(a1, 0, 4);
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }
  }
}

uint64_t mdb_cmp_memnr(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 + *a1;
  v4 = *a1 - *a2;
  v5 = v2 + (v4 & ~(v4 >> 63));
  if (v4 >= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a1 - *a2;
  }

  v7 = (*a2 + a2[1] - 1);
  while (v3 > v5)
  {
    v9 = *--v3;
    v8 = v9;
    v10 = *v7--;
    result = (v8 - v10);
    if (v8 != v10)
    {
      return result;
    }
  }

  if (v6 < 0)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

uint64_t mdb_cmp_memn(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v7 = v3 - v5;
  v6 = v3 <= v5;
  if (v3 < v5)
  {
    v7 = -1;
  }

  if (v3 > v5)
  {
    LODWORD(v3) = v5;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  LODWORD(result) = memcmp(v2, v4, v3);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t mdb_midl_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[2 * v5];
    if (v6 >= a2)
    {
      if (v6 <= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 <= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

void *mdb_midl_alloc(int a1)
{
  v2 = malloc_type_malloc(8 * a1 + 16, 0x100004000313F17uLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = 0;
  v3 = v2 + 1;
  *v2 = a1;
  return v3;
}

void mdb_midl_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 8));
  }
}

void *mdb_midl_shrink(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v2 - 8);
  result = (v2 - 8);
  if (v4 >= 0x20000)
  {
    result = malloc_type_realloc(result, 0x100008uLL, 0x100004000313F17uLL);
    if (result)
    {
      *result++ = 0x1FFFFLL;
      *a1 = result;
    }
  }

  return result;
}

uint64_t mdb_midl_need(_DWORD **a1, int a2)
{
  v3 = *a1;
  v4 = (*v3 + a2);
  v6 = *(v3 - 1);
  v5 = v3 - 2;
  if (v6 >= v4)
  {
    return 0;
  }

  v7 = (v4 + (v4 >> 2) + 258) & 0xFFFFFF00;
  v8 = malloc_type_realloc(v5, 8 * v7, 0x100004000313F17uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  result = 0;
  *v9 = (v7 - 2);
  *a1 = v9 + 8;
  return result;
}

uint64_t mdb_midl_append(unint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, 0x1FFFF))
    {
      return 12;
    }

    v3 = *a1;
    v4 = **a1;
  }

  result = 0;
  v7 = v4 + 1;
  *v3 = v7;
  v3[v7] = a2;
  return result;
}

uint64_t mdb_midl_grow(void *a1, int a2)
{
  v4 = malloc_type_realloc((*a1 - 8), 8 * (*(*a1 - 8) + a2) + 16, 0x100004000313F17uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  result = 0;
  *v5 += a2;
  *a1 = v5 + 1;
  return result;
}

uint64_t mdb_midl_append_list(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = **a1;
  if (v4 + v5 >= *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, v4))
    {
      return 12;
    }

    v3 = *a1;
    v5 = **a1;
    v4 = *a2;
  }

  memcpy(&v3[v5 + 1], a2 + 1, 8 * v4);
  result = 0;
  *v3 += *a2;
  return result;
}

uint64_t mdb_midl_append_range(unint64_t **a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v6 = **a1;
  v7 = v6 + a3;
  if (v7 > *(*a1 - 1))
  {
    if (mdb_midl_grow(a1, a3 | 0x1FFFF))
    {
      return 12;
    }

    v5 = *a1;
  }

  *v5 = v7;
  if (a3)
  {
    v10 = 0;
    v11 = vdupq_n_s64(a3 - 1);
    v12 = &v5[v6 + a3];
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v10), xmmword_185DB7AF0)));
      if (v13.i8[0])
      {
        *v12 = a2 + v10;
      }

      if (v13.i8[4])
      {
        *(v12 - 1) = a2 + v10 + 1;
      }

      v10 += 2;
      v12 -= 2;
    }

    while (((a3 + 1) & 0x1FFFFFFFELL) != v10);
  }

  return 0;
}

uint64_t *mdb_midl_xmerge(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result + *a2;
  *result = -1;
  if (v2)
  {
    v5 = result[v3];
    v6 = v4;
    do
    {
      v7 = a2[v2];
      if (v5 >= v7)
      {
        v9 = v3;
        v8 = v6;
      }

      else
      {
        do
        {
          v8 = v6 - 1;
          result[v6] = v5;
          v9 = v3 - 1;
          v5 = result[v3 - 1];
          --v6;
          --v3;
        }

        while (v5 < v7);
      }

      v6 = v8 - 1;
      result[v8] = v7;
      v3 = v9;
      --v2;
    }

    while (v2);
  }

  *result = v4;
  return result;
}

int *mdb_midl_sort(int *result)
{
  LODWORD(v1) = 0;
  v27 = *MEMORY[0x1E69E9840];
  v2 = result + 2;
  v3 = *result;
  LODWORD(v4) = 1;
LABEL_2:
  while (2)
  {
    v5 = v4 + 1;
    while (v3 - v4 > 7)
    {
      v6 = (v3 + v4) >> 1;
      v7 = *&result[2 * v6];
      *&result[2 * v6] = *&result[2 * v5];
      *&result[2 * v5] = v7;
      v8 = *&result[2 * v4];
      v9 = *&result[2 * v3];
      if (v8 < v9)
      {
        *&result[2 * v4] = v9;
        *&result[2 * v3] = v8;
        v7 = *&result[2 * v5];
        v9 = v8;
      }

      if (v7 < v9)
      {
        *&result[2 * v5] = v9;
        *&result[2 * v3] = v7;
        v7 = *&result[2 * v5];
      }

      v10 = *&result[2 * v4];
      if (v10 < v7)
      {
        *&result[2 * v4] = v7;
        *&result[2 * v5] = v10;
        v7 = v10;
      }

      LODWORD(v11) = v4 + 1;
      v12 = v3;
      while (1)
      {
        v13 = &v2[2 * v11];
        v11 = v11;
        do
        {
          ++v11;
          v15 = *v13;
          v13 += 2;
          v14 = v15;
        }

        while (v15 > v7);
        v16 = v12 + 1;
        v17 = &result[2 * v12];
        do
        {
          v19 = *(v17 - 1);
          v17 -= 2;
          v18 = v19;
          --v12;
          --v16;
        }

        while (v19 < v7);
        if (v16 <= v11)
        {
          break;
        }

        *(v13 - 1) = v18;
        *v17 = v14;
      }

      *&result[2 * v5] = v18;
      *v17 = v7;
      v20 = v1;
      v1 = v1 + 2;
      v21 = &v26[v20];
      if (v3 - v11 + 1 < v12 - v4)
      {
        v26[v1] = v12 - 1;
        v21[1] = v4;
        LODWORD(v4) = v11;
        goto LABEL_2;
      }

      v26[v1] = v3;
      v21[1] = v11;
      v3 = v12 - 1;
    }

    if (v3 > v4)
    {
      v4 = v4;
      do
      {
        v22 = v4++;
        v23 = *&result[2 * v4];
        if (v22 >= 1)
        {
          while (1)
          {
            v24 = &result[2 * v22];
            if (*v24 >= v23)
            {
              break;
            }

            *(v24 + 1) = *v24;
            v25 = __OFSUB__(v22, 1);
            LODWORD(v22) = v22 - 1;
            if ((v22 < 0) ^ v25 | (v22 == 0))
            {
              LODWORD(v22) = 0;
              break;
            }
          }
        }

        *&v2[2 * v22] = v23;
      }

      while (v4 != v3);
    }

    if (v1)
    {
      LODWORD(v4) = v26[v1 - 1];
      v3 = v26[v1];
      LODWORD(v1) = v1 - 2;
      continue;
    }

    return result;
  }
}

uint64_t mdb_mid2l_search(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v2 >> 1;
    v5 = v3 + (v2 >> 1) + 1;
    v6 = *&a1[4 * v5];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        return v5;
      }

      v4 = v2 + ~v4;
      v3 += (v2 >> 1) + 1;
    }

    v2 = v4;
  }

  while (v4);
  if (v6 >= a2)
  {
    return v5;
  }

  else
  {
    return (v5 + 1);
  }
}

__n128 mdb_mid2l_insert(unsigned int *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = mdb_mid2l_search(a1, *a2);
  if (v5)
  {
    v7 = *a1;
    if ((*a1 < v5 || *&a1[4 * v5] != v4) && v7 <= 0x1FFFE)
    {
      v8 = v7 + 1;
      *a1 = v7 + 1;
      if (v5 < v7 + 1)
      {
        v9 = &a1[4 * v7 + 4];
        do
        {
          *v9 = *(v9 - 1);
          v9 -= 4;
          --v8;
        }

        while (v5 < v8);
      }

      result = *a2;
      *&a1[4 * v5] = *a2;
    }
  }

  return result;
}

__n128 mdb_mid2l_append(unint64_t *a1, __n128 *a2)
{
  if (*a1 <= 0x1FFFE)
  {
    v2 = *a1 + 1;
    *a1 = v2;
    result = *a2;
    *&a1[2 * v2] = *a2;
  }

  return result;
}

void MTLArchiveUsageDB::store(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_put error: %s", buf, 0xCu);
}

void MTLArchiveUsageDB::prune(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_cursor_open error: %s", buf, 0xCu);
}

void mapFileToMemory()
{
  __error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v0, "fstat failed for file %s with errno %d", v1, v2, v3, v4);
}

{
  __error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v0, "Mapping of file %s failed with errno %d", v1, v2, v3, v4);
}

{
  __error();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_185B8E000, MEMORY[0x1E69E9C10], v0, "Unable to open mach-O at path: %s  Error:%i", v1, v2, v3, v4);
}

uint64_t tileColorAttachmentFormattedDescription(uint64_t a1, MTLTileRenderPipelineColorAttachmentDescriptor *a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  v4[0] = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  v4[1] = @"pixelFormat =";
  v4[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{MTLPixelFormatGetName(LODWORD(v2->super.isa)), v4[0], @"pixelFormat ="}];
  return [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:{3), "componentsJoinedByString:", @" "}];
}

void validateWithDevice(id *a1, uint64_t a2)
{
  v3 = [objc_msgSend(*a1 "name")];
  _MTLMessageContextPush_(a2, 4, @"function %s cannot be used to build a pipeline state without setting constant values first.", v4, v5, v6, v7, v8, v3);
}

{
  v3 = [objc_msgSend(*a1 "name")];
  _MTLMessageContextPush_(a2, 4, @"function %s cannot be used to build a pipeline state. Use newFunctionWithName:constantValues:... to get the specialized function", v4, v5, v6, v7, v8, v3);
}

void MTLXPCCompilerConnection::errorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with unknown XPC error", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "UNKNOWN XPC_TYPE_ERROR\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_TERMINATION_IMMINENT", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_TERMINATION_IMMINENT\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_CONNECTION_INVALID", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_CONNECTION_INVALID\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Compiler failed with XPC_ERROR_CONNECTION_INTERRUPTED", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "XPC_ERROR_CONNECTION_INTERRUPTED\n", a5, a6, a7, a8, v8);
}

void MTLXPCCompilerConnection::checkConnectionAlive(uint8_t *buf, char *a2, void *a3, void *a4)
{
  if (*a2 >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  *buf = 136315138;
  *a4 = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compiler encountered XPC_ERROR_CONNECTION_INVALID: %s (is the OS shutting down or process jetsammed?)", buf, 0xCu);
}

float MTLXPCCompilerConnection::checkConnectionAlive(double a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3[0] = 67109376;
  v3[1] = 10;
  v4 = 2048;
  v5 = v1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompiler: failed to ping the compiler service %u times over %f ms", v3, 0x12u);
  return result;
}

void CompilerPluginInterface::CompilerPluginInterface(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to dlopen MTLCompiler framework with error: %s", &v1, 0xCu);
}

void MTLCompilerFSCache::copyShaderCache(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Path set to copy Metal shader cache (%s) does not exist", buf, 0xCu);
}

{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Path set to copy Metal shader cache (%s) is not a directory", buf, 0xCu);
}

void MTLCompilerFSCache::copyShaderCache(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to create %s directory in shader cache at location: %s", buf, 0x16u);
}

void MTLCompilerFSCache::flushElement(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "flushElement";
  v3 = 1024;
  v4 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "@ %s(): fscache_element_get_data() failed with error = %d\n", &v1, 0x12u);
}

void MTLPipelineDataCache::open(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_185B8E000, log, OS_LOG_TYPE_ERROR, "fstat failed for the pipeline data cache, errno %d", buf, 8u);
}

{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_185B8E000, log, OS_LOG_TYPE_ERROR, "Mapping the pipeline data cache failed, errno %d", buf, 8u);
}

void MTLPipelineDataCache::parseDataFileHeader()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache is not valid for the given system", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache has an invalid number of entries", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache has an invalid data section", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v0, v1, "The pipeline data cache is empty", v2, v3, v4, v5);
}

uint64_t MTLPipelineDataCache::parseDataFileHeader(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, v3, v4, "The pipeline data cache has an invalid entry", v5, v6, v7, v8);
  return *a2 >> 7;
}

void getCacheMainFolder()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  __error();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void getCacheMainFolder(uint64_t a1, const char *a2)
{
  __error();
  strnlen(a2, 0x400uLL);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_2(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "boundingBoxBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9620, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and one of the MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_3(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "vertexBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9558, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and one of the MTLAccelerationStructureMotionTriangleGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_4(void *a1, void *a2)
{
  v3 = [a1 primitiveKeyframeCount];
  [objc_msgSend(a2 "controlPointBuffers")];
  MTLReportFailure(0, "MTLBVHDescriptorForMTLAccelerationStructureDescriptor", 9490, @"Motion keyframe count mismatch in MTLPrimitiveAccelerationStructureDescriptor (MTLPrimitiveAccelerationStructureDescriptor has %lu keyframes and and one of the MTLAccelerationStructureMotionCurveGeometryDescriptor has %lu keyframes).", v4, v5, v6, v7, v3);
}

void MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION()
{
  {
    MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev = getenv("MTL_COMPILER_SCHEDULER_VERSION");
  }
}

void MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS()
{
  {
    MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev = getenv("MTL_MAX_COMPILER_TASKS");
  }
}

void parseDecompressionResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data; out buffer is full.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data; unexpected EOF found.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to allocate memory for uncompression while extracting the flatbuffer.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_5(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "Failed to uncompress data.", a5, a6, a7, a8, v8);
}

void newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator()(uint64_t a1, void *a2, NSString *a3, int a4)
{
  v300 = a3;
  if (!a2)
  {
    OUTLINED_FUNCTION_11();
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_5(v8);
      v194 = OUTLINED_FUNCTION_2_0();
      v288 = a3;
      _MTLMessageContextPush_(v194, 8, @"Non-output node functionGraphs[%lu].nodes[%lu] cannot be nil.", v195, v196, v197, v198, v199, v200);
    }
  }

  OUTLINED_FUNCTION_4();
  if (a4)
  {
    if ((v10 & 1) == 0)
    {
      v11 = objc_opt_class();
      if ((OUTLINED_FUNCTION_15(v11) & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      v12 = objc_opt_class();
      if ((OUTLINED_FUNCTION_15(v12) & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v13, 8, @"functionGraphs[%lu].outputNode is not a MTLFunctionStitchingFunctionNode.", v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else if ((v10 & 1) == 0)
  {
    v20 = objc_opt_class();
    if ((OUTLINED_FUNCTION_15(v20) & 1) == 0)
    {
      OUTLINED_FUNCTION_3();
    }

    v21 = objc_opt_class();
    if ((OUTLINED_FUNCTION_15(v21) & 1) == 0)
    {
      v201 = OUTLINED_FUNCTION_2_0();
      v288 = a3;
      _MTLMessageContextPush_(v201, 8, @"functionGraphs[%lu].nodes[%lu] is not a MTLFunctionStitchingFunctionNode.", v202, v203, v204, v205, v206, v207);
    }
  }

  OUTLINED_FUNCTION_4();
  if (v22)
  {
    return;
  }

  v23 = 0x1E696A000uLL;
  if (a4)
  {
    v24 = @"OUTPUT(node_output) : ";
  }

  else
  {
    v284 = a3;
    v24 = @"NODE(node_%lu) : ";
  }

  [**(a1 + 24) appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", v24, v284, v288)}];
  v294 = *(a1 + 32);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v295 = *a1;
  v296 = v25;
  v297 = &v300;
  v298 = *(a1 + 8);
  v299 = v26;
  if (a4)
  {
    if ((*v295 & 1) == 0)
    {
      if (![a2 arguments])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 arguments])
      {
        v214 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v214, 8, @"functionGraphs[%lu].outputNode.arguments cannot be nil.", v215, v216, v217, v218, v219, v220);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v27 & 1) == 0)
    {
      [a2 arguments];
      v28 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v28) & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 arguments];
      v29 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v29) & 1) == 0)
      {
        v221 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v221, 8, @"functionGraphs[%lu].outputNode.arguments is not an NSArray.", v222, v223, v224, v225, v226, v227);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v30 & 1) == 0)
    {
      if (![a2 controlDependencies])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 controlDependencies])
      {
        v228 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v228, 8, @"functionGraphs[%lu].outputNode.controlDependencies cannot be nil.", v229, v230, v231, v232, v233, v234);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v31 & 1) == 0)
    {
      [a2 controlDependencies];
      v32 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v32) & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 controlDependencies];
      v33 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v33) & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_2_0();
        _MTLMessageContextPush_(v34, 8, @"functionGraphs[%lu].outputNode.controlDependencies is not an NSArray.", v35, v36, v37, v38, v39, v40);
      }
    }
  }

  else
  {
    if ((*v295 & 1) == 0)
    {
      if (![a2 arguments])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 arguments])
      {
        v235 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v235, 8, @"functionGraphs[%lu].nodes[%lu].arguments cannot be nil.", v236, v237, v238, v239, v240, v285);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v41 & 1) == 0)
    {
      [a2 arguments];
      v42 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v42) & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 arguments];
      v43 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v43) & 1) == 0)
      {
        v241 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v241, 8, @"functionGraphs[%lu].nodes[%lu].arguments is not an NSArray.", v242, v243, v244, v245, v246, v285);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v44 & 1) == 0)
    {
      if (![a2 controlDependencies])
      {
        OUTLINED_FUNCTION_3();
      }

      if (![a2 controlDependencies])
      {
        v247 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v247, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies cannot be nil.", v248, v249, v250, v251, v252, v285);
      }
    }

    OUTLINED_FUNCTION_4();
    if ((v45 & 1) == 0)
    {
      [a2 controlDependencies];
      v46 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v46) & 1) == 0)
      {
        OUTLINED_FUNCTION_3();
      }

      [a2 controlDependencies];
      v47 = OUTLINED_FUNCTION_9();
      if ((OUTLINED_FUNCTION_8(v47) & 1) == 0)
      {
        v253 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v253, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies is not an NSArray.", v254, v255, v256, v257, v258, v285);
      }
    }
  }

  if ([a2 arguments] && (objc_msgSend(a2, "arguments"), v48 = OUTLINED_FUNCTION_9(), (OUTLINED_FUNCTION_8(v48) & 1) != 0) && objc_msgSend(a2, "controlDependencies") && (objc_msgSend(a2, "controlDependencies"), v49 = OUTLINED_FUNCTION_9(), (OUTLINED_FUNCTION_8(v49) & 1) != 0))
  {
    v50 = [objc_msgSend(a2 "arguments")];
    v51 = v50 + [objc_msgSend(a2 "controlDependencies")] + 1;
  }

  else
  {
    v51 = 1;
  }

  v52 = [MEMORY[0x1E695DF70] arrayWithCapacity:v51];
  [a2 isMemberOfClass:objc_opt_class()];
  OUTLINED_FUNCTION_4();
  if (v54)
  {
    if ((v53 & 1) == 0)
    {
      if ([objc_msgSend(a2 "arguments")] != 1)
      {
        OUTLINED_FUNCTION_3();
      }

      if ([objc_msgSend(a2 "arguments")] != 1)
      {
        v259 = OUTLINED_FUNCTION_0_6();
        _MTLMessageContextPush_(v259, 8, @"functionGraphs[%lu].nodes[%lu].arguments must have one element.", v260, v261, v262, v263, v264, v285);
      }
    }

    OUTLINED_FUNCTION_4();
    if (v55)
    {
      goto LABEL_98;
    }

    v56 = MEMORY[0x1E696AEC0];
    v57 = @"EARLY_RETURN";
  }

  else
  {
    if (a4)
    {
      if ((v53 & 1) == 0)
      {
        if (![a2 name])
        {
          OUTLINED_FUNCTION_3();
        }

        if (![a2 name])
        {
          v265 = OUTLINED_FUNCTION_2_0();
          _MTLMessageContextPush_(v265, 8, @"functionGraphs[%lu].outputNode.name cannot be nil.", v266, v267, v268, v269, v270, v271);
        }
      }

      OUTLINED_FUNCTION_4();
      if ((v58 & 1) == 0)
      {
        if ([objc_msgSend(a2 "name")])
        {
          OUTLINED_FUNCTION_3();
        }

        if ([objc_msgSend(a2 "name")])
        {
          v59 = OUTLINED_FUNCTION_2_0();
          _MTLMessageContextPush_(v59, 8, @"functionGraphs[%lu].outputNode.name cannot be empty.", v60, v61, v62, v63, v64, v65);
        }
      }
    }

    else
    {
      if ((v53 & 1) == 0)
      {
        if (![a2 name])
        {
          OUTLINED_FUNCTION_3();
        }

        if (![a2 name])
        {
          v272 = OUTLINED_FUNCTION_0_6();
          _MTLMessageContextPush_(v272, 8, @"functionGraphs[%lu].nodes[%lu].name cannot be nil.", v273, v274, v275, v276, v277, v285);
        }
      }

      OUTLINED_FUNCTION_4();
      if ((v66 & 1) == 0)
      {
        if ([objc_msgSend(a2 "name")])
        {
          OUTLINED_FUNCTION_3();
        }

        if ([objc_msgSend(a2 "name")])
        {
          v278 = OUTLINED_FUNCTION_0_6();
          _MTLMessageContextPush_(v278, 8, @"functionGraphs[%lu].nodes[%lu].name cannot be empty.", v279, v280, v281, v282, v283, v285);
        }
      }
    }

    OUTLINED_FUNCTION_4();
    if (v67)
    {
      goto LABEL_98;
    }

    v68 = MEMORY[0x1E696AEC0];
    v285 = [a2 name];
    v57 = @"FUNCTION(%@)";
    v56 = v68;
  }

  [v52 addObject:{objc_msgSend(v56, "stringWithFormat:", v57, v285)}];
LABEL_98:
  OUTLINED_FUNCTION_4();
  if ((v69 & 1) == 0 && [objc_msgSend(a2 "arguments")])
  {
    v70 = 0;
    while (1)
    {
      v71 = [objc_msgSend(a2 "arguments")];
      OUTLINED_FUNCTION_4();
      if (a4)
      {
        if ((v72 & 1) == 0)
        {
          if ((OUTLINED_FUNCTION_13() & 1) == 0)
          {
            OUTLINED_FUNCTION_3();
          }

          if ((OUTLINED_FUNCTION_13() & 1) == 0)
          {
            v73 = OUTLINED_FUNCTION_2_0();
            v289 = v70;
            _MTLMessageContextPush_(v73, 8, @"functionGraphs[%lu].outputNode.arguments[%lu] does not conform to MTLFunctionStitchingNode.", v74, v75, v76, v77, v78, v79);
          }
        }
      }

      else if ((v72 & 1) == 0)
      {
        if ((OUTLINED_FUNCTION_13() & 1) == 0)
        {
          OUTLINED_FUNCTION_3();
        }

        if ((OUTLINED_FUNCTION_13() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_3();
          v289 = v144;
          v291 = v70;
          OUTLINED_FUNCTION_12();
          _MTLMessageContextPush_(v145, v146, @"functionGraphs[%lu].nodes[%lu].arguments[%lu] does not conform to MTLFunctionStitchingNode.", v147, v148, v149, v150, v151, v285);
        }
      }

      v80 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v80))
      {
        break;
      }

      v81 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v81))
      {
        break;
      }

      v82 = objc_opt_class();
      if (OUTLINED_FUNCTION_7(v82))
      {
        OUTLINED_FUNCTION_4();
        if ((v83 & 1) == 0)
        {
          v84 = *(v23 + 3776);
          v286 = [v71 argumentIndex];
          v85 = [v84 stringWithFormat:@"INPUT(%lu)", v286, v289, v291, v293, v294];
          goto LABEL_155;
        }
      }

      else
      {
        v86 = objc_opt_class();
        if (OUTLINED_FUNCTION_7(v86))
        {
          OUTLINED_FUNCTION_4();
          if ((v87 & 1) == 0)
          {
            v88 = *(v23 + 3776);
            v287 = [v71 bindIndex];
            v85 = [v88 stringWithFormat:@"BUFFER(CONSTANT, %lu)", v287, v289, v291, v293, v294];
            goto LABEL_155;
          }
        }

        else
        {
          v89 = objc_opt_class();
          if (OUTLINED_FUNCTION_7(v89))
          {
            OUTLINED_FUNCTION_4();
            if ((v90 & 1) == 0)
            {
              v91 = *(v23 + 3776);
              v92 = [v71 dereference];
              v290 = [v71 bindIndex];
              v292 = [v71 byteOffset];
              v93 = 42;
              if (!v92)
              {
                v93 = 0;
              }

              v23 = 0x1E696A000;
              v85 = [v91 stringWithFormat:@"%cBUFFER_ADDR(BUFFER(CONSTANT, %lu), %lu)", v93, v290, v292, v293, v294];
              goto LABEL_155;
            }
          }

          else
          {
            v106 = objc_opt_class();
            if (OUTLINED_FUNCTION_7(v106))
            {
              OUTLINED_FUNCTION_4();
              if ((v107 & 1) == 0)
              {
                v23 = MEMORY[0x1E696AEC0];
                [v71 bindIndex];
                v108 = OUTLINED_FUNCTION_10();
                v109 = @"TEXTURE(%lu)";
                goto LABEL_154;
              }
            }

            else
            {
              v113 = objc_opt_class();
              if (OUTLINED_FUNCTION_7(v113))
              {
                OUTLINED_FUNCTION_4();
                if ((v114 & 1) == 0)
                {
                  v23 = MEMORY[0x1E696AEC0];
                  [v71 bindIndex];
                  v108 = OUTLINED_FUNCTION_10();
                  v109 = @"SAMPLER(%lu)";
                  goto LABEL_154;
                }
              }

              else
              {
                v115 = objc_opt_class();
                if (OUTLINED_FUNCTION_7(v115))
                {
                  OUTLINED_FUNCTION_4();
                  if ((v116 & 1) == 0)
                  {
                    v23 = MEMORY[0x1E696AEC0];
                    [v71 bindIndex];
                    v108 = OUTLINED_FUNCTION_10();
                    v109 = @"THREADGROUP(%lu)";
                    goto LABEL_154;
                  }
                }

                else
                {
                  v117 = objc_opt_class();
                  if (OUTLINED_FUNCTION_7(v117))
                  {
                    OUTLINED_FUNCTION_4();
                    if ((v118 & 1) == 0)
                    {
                      v108 = *(v23 + 3776);
                      v109 = @"IMAGEBLOCK";
                      goto LABEL_154;
                    }
                  }

                  else
                  {
                    v119 = objc_opt_class();
                    if (OUTLINED_FUNCTION_7(v119))
                    {
                      OUTLINED_FUNCTION_4();
                      if ((v120 & 1) == 0)
                      {
                        v108 = *(v23 + 3776);
                        v109 = @"BUILTIN(THREAD_POSITION_IN_GRID)";
                        goto LABEL_154;
                      }
                    }

                    else
                    {
                      v121 = objc_opt_class();
                      OUTLINED_FUNCTION_7(v121);
                      OUTLINED_FUNCTION_11();
                      if (!v124)
                      {
                        if (a4)
                        {
                          if ((v123 & 1) == 0)
                          {
                            OUTLINED_FUNCTION_5(v122);
                            v125 = **(a1 + 8);
                            v126 = **(a1 + 16);
                            v127 = objc_opt_class();
                            v289 = v70;
                            v291 = NSStringFromClass(v127);
                            v128 = v125;
                            v23 = 0x1E696A000;
                            _MTLMessageContextPush_(v128, 8, @"functionGraphs[%lu].outputNode.arguments[%lu] is of incorrect type: %@.", v129, v130, v131, v132, v133, v126);
                          }
                        }

                        else if ((v123 & 1) == 0)
                        {
                          OUTLINED_FUNCTION_5(v122);
                          v134 = **(a1 + 8);
                          v135 = **(a1 + 16);
                          v136 = v300;
                          v137 = objc_opt_class();
                          v291 = v70;
                          v293 = NSStringFromClass(v137);
                          v289 = v136;
                          v138 = v134;
                          v23 = 0x1E696A000;
                          _MTLMessageContextPush_(v138, 8, @"functionGraphs[%lu].nodes[%lu].arguments[%lu] is of incorrect type: %@.", v139, v140, v141, v142, v143, v135);
                        }

                        goto LABEL_157;
                      }

                      if ((v123 & 1) == 0)
                      {
                        v108 = *(v23 + 3776);
                        v109 = @"BUILTIN(THREAD_POSITION_IN_THREADGROUP)";
LABEL_154:
                        v85 = [v108 stringWithFormat:v109, v285, v289, v291, v293, v294];
LABEL_155:
                        v112 = v85;
                        v111 = v52;
LABEL_156:
                        [v111 addObject:v112];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_157:
      v70 = (v70 + 1);
      if (v70 >= [objc_msgSend(a2 "arguments")])
      {
        goto LABEL_168;
      }
    }

    v94 = newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(&v294, [**(a1 + 32) nodes], v71);
    OUTLINED_FUNCTION_11();
    if (a4)
    {
      if ((v96 & 1) == 0)
      {
        if (v94 == -1)
        {
          goto LABEL_138;
        }

        if (v94 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v95);
          OUTLINED_FUNCTION_2_0();
          v289 = v97;
          v291 = v70;
          OUTLINED_FUNCTION_12();
          v105 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].outputNode.arguments[%lu].";
LABEL_167:
          _MTLMessageContextPush_(v98, v99, v105, v100, v101, v102, v103, v104, v285);
        }

LABEL_136:
        OUTLINED_FUNCTION_4();
        if ((v110 & 1) == 0)
        {
          v85 = [*(v23 + 3776) stringWithFormat:@"NODE(node_%lu)", v94, v289, v291, v293, v294];
          goto LABEL_155;
        }

        goto LABEL_157;
      }
    }

    else if ((v96 & 1) == 0)
    {
      if (v94 == -1)
      {
LABEL_138:
        v111 = v52;
        v112 = @"NODE(node_output)";
        goto LABEL_156;
      }

      if (v94 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_136;
      }

      OUTLINED_FUNCTION_5(v95);
      v98 = OUTLINED_FUNCTION_1_3();
      v291 = v152;
      v293 = v70;
      v285 = v153;
      v289 = v153;
      v99 = 8;
      v105 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].nodes[%lu].arguments[%lu].";
      goto LABEL_167;
    }

    if (v94 == -1)
    {
      goto LABEL_157;
    }

    goto LABEL_136;
  }

LABEL_168:
  OUTLINED_FUNCTION_4();
  if ((v154 & 1) == 0)
  {
    [a2 controlDependencies];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      OUTLINED_FUNCTION_3();
    }

    [a2 controlDependencies];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v208 = OUTLINED_FUNCTION_0_6();
      _MTLMessageContextPush_(v208, 8, @"functionGraphs[%lu].nodes[%lu].controlDependencies is not a NSArray.", v209, v210, v211, v212, v213, v285);
    }
  }

  OUTLINED_FUNCTION_4();
  if ((v155 & 1) == 0 && [objc_msgSend(a2 "controlDependencies")])
  {
    for (i = 0; i < [objc_msgSend(a2 "controlDependencies")]; ++i)
    {
      v157 = [objc_msgSend(a2 "controlDependencies")];
      OUTLINED_FUNCTION_4();
      if (a4)
      {
        if ((v158 & 1) == 0)
        {
          v159 = objc_opt_class();
          if ((OUTLINED_FUNCTION_14(v159) & 1) == 0)
          {
            OUTLINED_FUNCTION_3();
          }

          v160 = objc_opt_class();
          if ((OUTLINED_FUNCTION_14(v160) & 1) == 0)
          {
            v161 = OUTLINED_FUNCTION_2_0();
            _MTLMessageContextPush_(v161, 8, @"functionGraphs[%lu].outputNode.controlDependencies[%lu] is not of type MTLFunctionStitchingFunctionNode.", v162, v163, v164, v165, v166, v167);
          }
        }
      }

      else if ((v158 & 1) == 0)
      {
        v168 = objc_opt_class();
        if ((OUTLINED_FUNCTION_14(v168) & 1) == 0)
        {
          OUTLINED_FUNCTION_3();
        }

        v169 = objc_opt_class();
        if ((OUTLINED_FUNCTION_14(v169) & 1) == 0)
        {
          OUTLINED_FUNCTION_1_3();
          OUTLINED_FUNCTION_12();
          _MTLMessageContextPush_(v185, v186, @"functionGraphs[%lu].nodes[%lu].controlDependencies[%lu] is not of type MTLFunctionStitchingFunctionNode.", v187, v188, v189, v190, v191, v285);
        }
      }

      v170 = newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(&v294, [**(a1 + 32) nodes], v157);
      OUTLINED_FUNCTION_11();
      if (a4)
      {
        if (v172)
        {
          goto LABEL_201;
        }

        if (v170 == -1)
        {
          goto LABEL_197;
        }

        if (v170 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v171);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_12();
          v180 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].outputNode.controlDependencies[%lu].";
LABEL_204:
          _MTLMessageContextPush_(v173, v174, v180, v175, v176, v177, v178, v179, v285);
        }
      }

      else
      {
        if (v172)
        {
LABEL_201:
          if (v170 == -1)
          {
            continue;
          }

          goto LABEL_195;
        }

        if (v170 == -1)
        {
LABEL_197:
          v183 = v52;
          v182 = @"*NODE(node_output)";
          goto LABEL_198;
        }

        if (v170 == 0x7FFFFFFFFFFFFFFFLL)
        {
          OUTLINED_FUNCTION_5(v171);
          v173 = OUTLINED_FUNCTION_1_3();
          v285 = v184;
          v174 = 8;
          v180 = @"functionGraphs[%lu].nodes does not contain functionGraphs[%lu].nodes[%lu].controlDependencies[%lu].";
          goto LABEL_204;
        }
      }

LABEL_195:
      OUTLINED_FUNCTION_4();
      if ((v181 & 1) == 0)
      {
        v285 = v170;
        v182 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*NODE(node_%lu)"];
        v183 = v52;
LABEL_198:
        [v183 addObject:v182];
      }
    }
  }

  OUTLINED_FUNCTION_4();
  if ((v192 & 1) == 0)
  {
    [**(a1 + 24) appendString:{objc_msgSend(v52, "componentsJoinedByString:", @", ")}];
    OUTLINED_FUNCTION_4();
    if (!v193)
    {
      [**(a1 + 24) appendString:@";\n"];
    }
  }
}

unint64_t newDAGStringFromFunctionGraphs(NSArray<MTLFunctionStitchingGraph *> *,unsigned long,_MTLMessageContext *)::$_0::operator() const(MTLFunctionStitchingFunctionNode const*,unsigned long,BOOL)::{lambda(NSArray*<MTLFunctionStitchingFunctionNode*>,NSArray*)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  if ([**a1 outputNode] == a3 && (**(a1 + 8) & 1) == 0)
  {
    v19 = *(a1 + 16);
    if ((*v19 & 1) == 0 && **(a1 + 24) >= **(a1 + 32))
    {
      *v19 = 1;
      _MTLMessageContextPush_(**(a1 + 40), 8, @"functionGraphs[%lu].nodes[%lu] contains a reference to .output_node, which must be listed in .nodes before its use.", v5, v6, v7, v8, v9, **(a1 + 48));
    }

    return -1;
  }

  else
  {
    v10 = std::__hash_table<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::__unordered_map_hasher<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::hash<MTLFunctionStitchingFunctionNode *>,std::equal_to<MTLFunctionStitchingFunctionNode *>,true>,std::__unordered_map_equal<MTLFunctionStitchingFunctionNode *,std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>,std::equal_to<MTLFunctionStitchingFunctionNode *>,std::hash<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__hash_value_type<MTLFunctionStitchingFunctionNode *,unsigned long>>>::find<MTLFunctionStitchingFunctionNode *>(*(a1 + 56), &v20);
    if (v10)
    {
      result = v10[3];
      if (result < **(a1 + 32))
      {
        return result;
      }

      v17 = *(a1 + 16);
      if ((*v17 & 1) == 0)
      {
        v18 = *(a1 + 8);
        if ((*v18 & 1) == 0)
        {
          *v17 = 1;
          if (!*v18)
          {
            _MTLMessageContextPush_(**(a1 + 40), 8, @"functionGraphs[%lu].nodes[%lu] contains a reference to .nodes[%lu], which must be listed before its use.", v11, v12, v13, v14, v15, **(a1 + 48));
          }
        }
      }
    }

    else if (a2 && **(a1 + 8) == 1)
    {
      return [a2 indexOfObject:v20];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT()
{
  {
    MTLEnvVarAggregator::GET_MTL_LEGACY_COMPILER_PROCESS_COUNT(BOOL,int)::ev = getenv("MTL_LEGACY_COMPILER_PROCESS_COUNT");
  }
}

void _MTLCompilerWarningLog(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = [objc_msgSend(objc_msgSend(a1 "localizedDescription")];
  _os_log_error_impl(&dword_185B8E000, a2, OS_LOG_TYPE_ERROR, "Warning: %s", &v3, 0xCu);
}

void MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE()
{
  {
    MTLEnvVarAggregator::GET_MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE(BOOL,int)::ev = getenv("MTL_MAXIMUM_CONCURRENT_COMPILATION_TASK_COUNT_API_OVERRIDE");
  }
}

void MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT()
{
  {
    MTLEnvVarAggregator::GET_MTL_FIXED_COMPILER_PROCESS_COUNT(BOOL,int)::ev = getenv("MTL_FIXED_COMPILER_PROCESS_COUNT");
  }
}

void MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER()
{
  {
    MTLEnvVarAggregator::GET_MTL_THREADS_PER_COMPILER(BOOL,int)::ev = getenv("MTL_THREADS_PER_COMPILER");
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[_MTLDevice initProgressTracking]::$_1 &&>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "[NSBundle bundleWithIdentifier:@com.apple.Metal] failed", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_185B8E000, MEMORY[0x1E69E9C10], a3, "[metalBundle URLForResource:@MTLECBE withExtension:@metallib] failed", a5, a6, a7, a8, v8);
}

void _mtlValidateArgumentsForTextureViewOnDevice_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 numFaces];
  [a1 arrayLength];
  _MTLMessageContextPush_(a2, 4, @"(newSliceRange.location + newSliceRange.length)(%lu) must be <= (%lu).", v6, v7, v8, v9, v10, a3);
}

void MTLPipelineDescriptions::initWithFileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "initWithFileDescriptor", 228, @"stringWithUTF8String returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 231, @"stringByStandardizingPath returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 234, @"stringByDeletingLastPathComponent returned nil!", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 255, @"stringWithUTF8String return nil !", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "initWithFileDescriptor", 258, @"stringByAppendingPathComponent returned nil !", a5, a6, a7, a8, vars0);
}

void MTLPipelineDescriptions::deserializeFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "deserializeFunction", 443, @"Function with no name in pipeline library", a5, a6, a7, a8, vars0);
}

{
  MTLReportFailure(0, "deserializeFunction", 531, @"Function %@ could not be found in library", a5, a6, a7, a8, a1);
}

id MTLPipelineDescriptions::deserializeFunction(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MTLReportFailure(0, "deserializeFunction", 479, @"Base function with no name in pipeline library", a5, a6, a7, a8, v10);
  result = objc_alloc(MEMORY[0x1E696AEC0]);
  *a1 = result;
  return result;
}

void MTLPipelineDescriptions::deserializeFunction(MTLSerializer::SerializedString *a1)
{
  Value = MTLSerializer::SerializedString::getValue(a1);
  MTLReportFailure(0, "deserializeFunction", 511, @"Invalid library index in pipeline library for function %s", v2, v3, v4, v5, Value);
}

{
  Value = MTLSerializer::SerializedString::getValue(a1);
  MTLReportFailure(0, "deserializeFunction", 513, @"No constant values specified for specialized function %s", v2, v3, v4, v5, Value);
}

void MTLPipelineLibraryBuilder::newLibraryWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1uLL, "newLibraryWithFile", 764, @"filePath is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 761, @"filePath must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1uLL, "newLibraryWithFile", 771, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 766, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void ___ZN37MTLLegacyMonolithicCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectP11objc_object_block_invoke_cold_1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompilerService log replay resulted in %u error", v1, 8u);
}

void MTLLegacyMonolithicCompilerConnection::BuildRequestInternal(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = 0;
  v3 = 2080;
  v4 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Could not load compiler plugin at %s", &v1, 0x16u);
}

void *MTLProgressBinsForceBarrier(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 48) == 1)
    {
      [a2 endVirtualSubstream];

      return [a2 beginVirtualSubstream];
    }

    else
    {
      v4 = *(result + 21);
      v5 = *(result + 35);
      *(result + 35) = v5 + 1;
      [a2 signalProgress:v5];
      if (*(v3 + 20))
      {
        v6 = 0;
        do
        {
          [a2 setSubstream:v6];
          [a2 waitForProgress:v5];
          v6 = (v6 + 1);
        }

        while (v6 < *(v3 + 20));
      }

      [a2 setSubstream:v4];

      return std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(v3 + 19);
    }
  }

  return result;
}

uint64_t MTLProgressBinsEnableVirtualSubstreams(uint64_t result)
{
  if (result)
  {
    *(result + 48) = 1;
  }

  return result;
}

uint64_t MTLProgressBinsSynchronizeBufferAccess(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  if (result)
  {
    v5 = result;
    if (*(result + 48))
    {
      v7 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__equal_range_multi<objc_object  {objcproto9MTLBuffer}>((result + 96), &v16);
      if (v7 != v8)
      {
        v9 = v7;
        v10 = v8;
        do
        {
          if (a3 == 1 || v9[3] == 1)
          {
            v12 = *(v9 + 8);
            v13 = *(v9 + 9);
            *(v5 + 42) = v13;
            (*(a4 + 16))(a4, v12, v13);
          }

          v9 = *v9;
        }

        while (v9 != v10);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage,std::equal_to,std::hash,true>,std::allocator<MTLAccelerationStructureCommandProgressBinsInternal::BufferUsage>>::__emplace_multi<std::pair<objc_object  {objcproto9MTLBuffer},MTLAccelerationStructureCommandProgressBinsInternal>>(v5 + 56);
    }

    result = MTLProgressBinsSynchronizeBuffer(result, a2);
    if ((result & 0x80000000) == 0)
    {
      v14 = *(v5 + 42);
      v15 = *(a4 + 16);

      return v15(a4, result, v14);
    }
  }

  return result;
}

void *MTLProgressBinsReset(void *result)
{
  if (result)
  {
    v1 = result;
    result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(result + 12);
    v1[3] = 0;
    v1[4] = 0;
    *(v1 + 21) = 0;
    *(v1 + 35) = 0;
  }

  return result;
}

void MTLVersionedDB::openDB(int a1)
{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLVersionedDB::openDB(uint64_t a1, uint64_t a2, int a3)
{
  mdb_strerror(a3);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void MTLVersionedDB::MTLVersionedDB()
{
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLVersionedDB::Transaction::Transaction(int a1)
{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  mdb_strerror(a1);
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLVersionedDB::Transaction::~Transaction(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "mdb_txn_commit error: %s", buf, 0xCu);
}

void MTLArchiveMapDB::store(char *a1, void *a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "storeArchive('%s', '%s') invalid payload", &v5, 0x16u);
}

void _NewTensorDataWithMTLTensor_cold_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  [a2 extents];
  [a2 extents];
  [a4 extents];
  [a2 extents];
  [a4 extents];
  MTLReportFailure(0, "_NewTensorDataWithMTLTensor", 269, @"The stride of dimension %u (= %u) is not equal to strides[%u] (%u) * dimensions[%u] (%u) = %u", v7, v8, v9, v10, a1);
}

void MTLCompilerMachORequest::CreateMachOFile(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot open mach-O (%s) with error:%i", &v3, 0x12u);
}

void MTLLibraryBuilder::newLibraryWithFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1uLL, "newLibraryWithFile", 7111, @"filepath is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 7108, @"filepath must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1uLL, "newLibraryWithFile", 7118, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFile", 7115, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void ___ZN17MTLLibraryBuilder18newLibraryWithFileEPU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to open metal library with error: %s", &v1, 0xCu);
}

void MTLLibraryBuilder::newLibraryWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1uLL, "newLibraryWithData", 7211, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithData", 7208, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::newLibraryWithFunctionArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1uLL, "newLibraryWithFunctionArray", 7259, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithFunctionArray", 7256, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::initLibraryContainerWithRequestData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(0, "initLibraryContainerWithRequestData", 9240, @"requestData must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "initLibraryContainerWithRequestData", 9241, @"requestSize must not be 0.", a5, a6, a7, a8, a9);
}

void getCompilerConnectionManager()
{
  dispatch_once(&getCompilerConnectionHost(int)::onceToken, &__block_literal_global_1988);
}

{
  dispatch_once(&getCompilerConnectionHost(int)::onceToken, &__block_literal_global_1986);
}

void MTLLibraryBuilder::newLibraryWithSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(1uLL, "newLibraryWithSource", 9714, @"source is not a NSString.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithSource", 9711, @"source must not be nil.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1uLL, "newLibraryWithSource", 9719, @"options is not a MTLCompileOptions.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(1uLL, "newLibraryWithSource", 9739, @"device is not a MTLDevice.", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithSource", 9736, @"device must not be nil.", a5, a6, a7, a8, a9);
}

void MTLLibraryBuilder::newLibraryWithSource()
{
  if (__cxa_guard_acquire(byte_1EA8D8958))
  {
    _MergedGlobals = getenv("METAL_FORCE_OPT_SIZE");
    __cxa_guard_release(byte_1EA8D8958);
  }
}

void MTLLibraryBuilder::newLibraryWithDAG(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLReportFailure(0, "newLibraryWithDAG", 10533, @"functionDag cannot be nil", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithDAG", 10534, @"functions cannot be nil", a5, a6, a7, a8, a9);
}

{
  MTLReportFailure(0, "newLibraryWithDAG", 10535, @"functions cannot be empty", a5, a6, a7, a8, a9);
}

void ___ZN30MTLLegacyXPCCompilerConnection24DispatchLogReplayRequestEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectbP11objc_object_block_invoke_cold_1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MTLCompilerService: log replay resulted in %u error", v1, 8u);
}

void MTLLegacyXPCCompilerConnection::checkConnectionActive(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compiler encountered XPC_ERROR_CONNECTION_INVALID: %s (is the OS shutting down?)", &v1, 0xCu);
}

void ___ZN30MTLLegacyXPCCompilerConnection20BuildRequestInternalEP18MTLCompilerRequestPKcPU27objcproto16OS_dispatch_data8NSObjectibP11objc_objectU13block_pointerFvjPKvmS3_E_block_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 104) + 1;
  v3[0] = 67109378;
  v3[1] = v2;
  v4 = 2080;
  v5 = a2;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compilation failed with XPC_ERROR_CONNECTION_INVALID on %d try: %s (is the OS shutting down?)", v3, 0x12u);
}

void validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(uint64_t a1, MTLPixelFormat *a2)
{
  Name = MTLPixelFormatGetName(a1);
  v10 = MTLPixelFormatGetName(*a2);
  OUTLINED_FUNCTION_0_9(v10, v4, @"depthAttachmentPixelFormat (%s) and stencilAttachmentPixelFormat (%s) must match.", v5, v6, v7, v8, v9, Name);
}

void MTLGetEnvCase<MTLErrorModeType>(const char *a1, const char ***a2, const char ***a3)
{
  v5 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "Invalid option for %s, valid options are:\n", a1);
  v6 = *a2;
  v7 = *a3;
  while (v6 != v7)
  {
    v8 = *v6;
    v6 += 2;
    fprintf(*v5, "\t%s\n", v8);
  }

  __assert_rtn("MTLGetEnvCase", "MTLUtils_Internal.h", 75, "0");
}

void ___ZN19MTLSchedulerRequest16generateXPCBlockE11qos_class_ti_block_invoke_cold_1(uint8_t *buf, unsigned __int8 *a2, int *a3)
{
  v3 = *a2 + 1;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Compilation failed with XPC_ERROR_CONNECTION_TERMINATION_IMMINENT on %d try. This indicates that the process was likely terminated by the OS (e.g., jetsam or shutdown).", buf, 8u);
}

void MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE()
{
  {
    MTLEnvVarAggregator::GET_MTL_FORCE_COMPILER_FAILURE(BOOL,BOOL)::ev = getenv("MTL_FORCE_COMPILER_FAILURE");
  }
}

void ___ZN19MTLSchedulerRequest23generateMonolithicBlockE11qos_class_ti_block_invoke_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MTLCompiler: Failed to load compiler plugin at %s", &v2, 0xCu);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t mdb_env_share_locks(uint64_t a1, int *a2)
{
  *(*(a1 + 64) + 8) = *(*(a1 + 72 + 8 * ((*(a1 + 12) >> 25) & 1 ^ (*(*(a1 + 72) + 128) < *(*(a1 + 80) + 128)))) + 128);
  v7 = 0x100000000;
  v6 = xmmword_185DB7AF0;
  do
  {
    result = fcntl(*(a1 + 4), 8, &v6);
    if (!result)
    {
      break;
    }

    result = *__error();
  }

  while (result == 4);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t mdb_env_create(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xF8uLL, 0x10B004020E85D84uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  v2[6] = 126;
  *(v2 + 4) = 0x200000002;
  *v2 = -1;
  v2[2] = -1;
  v2[10] = getpid();
  v4 = sysconf(29);
  result = 0;
  v3[5] = v4;
  *a1 = v3;
  return result;
}

uint64_t mdb_env_map(uint64_t a1, char *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x80000) != 0)
  {
    if (ftruncate(*a1, *(a1 + 112)) < 0)
    {
      return *__error();
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = mmap(a2, *(a1 + 112), v5, 1, *a1, 0);
  *(a1 + 56) = v6;
  if (v6 == -1)
  {
    *(a1 + 56) = 0;
    return *__error();
  }

  if ((v4 & 0x800000) != 0)
  {
    madvise(v6, *(a1 + 112), 1);
    v6 = *(a1 + 56);
  }

  if (a2 && v6 != a2)
  {
    return 16;
  }

  v7 = 0;
  v8 = &v6[*(a1 + 16) + 16];
  *(a1 + 72) = v6 + 16;
  *(a1 + 80) = v8;
  return v7;
}

uint64_t mdb_env_open(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v27 = -1;
  v4 = 22;
  if ((a3 & 0xFC00BFFE) != 0)
  {
    return v4;
  }

  if (*a1 != -1)
  {
    return v4;
  }

  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 12) | a3;
  v4 = mdb_fname_init(a2, v8, &v25);
  if (v4)
  {
    return v4;
  }

  v9 = v8 | 0x20000000;
  if ((v8 & 0x20000) != 0)
  {
    v9 = v8 & 0xDFF7FFFF | 0x20000000;
  }

  else
  {
    v10 = mdb_midl_alloc(0x1FFFF);
    *(a1 + 200) = v10;
    if (!v10 || (v11 = malloc_type_calloc(0x20000uLL, 0x10uLL, 0x108004057E67DB5uLL), (*(a1 + 208) = v11) == 0))
    {
      *(a1 + 12) = v9;
LABEL_27:
      v4 = 12;
      goto LABEL_28;
    }
  }

  *(a1 + 12) = v9;
  *(a1 + 48) = strdup(a2);
  *(a1 + 136) = malloc_type_calloc(*(a1 + 36), 0x30uLL, 0x1080040226B62D8uLL);
  *(a1 + 144) = malloc_type_calloc(*(a1 + 36), 2uLL, 0x1000040BDFB0063uLL);
  v12 = malloc_type_calloc(*(a1 + 36), 4uLL, 0x100004052888210uLL);
  *(a1 + 152) = v12;
  v13 = *(a1 + 136);
  if (!v13 || !*(a1 + 48))
  {
    goto LABEL_27;
  }

  v4 = 12;
  if (!*(a1 + 144) || !v12)
  {
    goto LABEL_28;
  }

  *(v13 + 16) = mdb_cmp_long;
  if ((v9 & 0x420000) == 0)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
LABEL_33:
      v4 = v16;
      goto LABEL_28;
    }

    if ((v9 & 0x2000000) != 0 && !v27)
    {
      v4 = 35;
      goto LABEL_28;
    }
  }

  v14 = v9 & 0x20000;
  if ((v9 & 0x20000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 514;
  }

  v16 = mdb_fopen(a1, &v25, v15, a4, a1);
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x420000) == 0x20000)
  {
    v16 = mdb_env_setup_locks(a1, &v25, a4, &v27);
    if (v16)
    {
      goto LABEL_33;
    }
  }

  v16 = mdb_env_open2(a1, v9 & 0x2000000);
  if (v16)
  {
    goto LABEL_33;
  }

  v16 = mdb_fopen(a1, &v25, 20971521, a4, (a1 + 8));
  if (v16)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x2000000) != 0 || v27 < 1)
  {
    if (v14)
    {
      v4 = 0;
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v17 = mdb_env_share_locks(a1, &v27);
  if (!(v17 | v14))
  {
LABEL_38:
    v19 = *(a1 + 36);
    v20 = malloc_type_calloc(1uLL, *(a1 + 16), 0x4D3CF501uLL);
    *(a1 + 88) = v20;
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = malloc_type_calloc(1uLL, 61 * v19 + 136, 0xB3B38C76uLL);
    if (!v21)
    {
      goto LABEL_28;
    }

    v4 = 0;
    v22 = *(a1 + 36);
    v23 = &v21[6 * v22 + 17];
    v24 = v23 + 8 * v22;
    v21[12] = v24;
    v21[13] = v23;
    v21[14] = v24 + 4 * v22;
    v21[4] = a1;
    v21[10] = *(a1 + 136);
    v21[11] = v21 + 17;
    *(v21 + 31) = 1;
    *(a1 + 104) = v21;
    goto LABEL_29;
  }

  v4 = v17;
  if (v17)
  {
LABEL_28:
    mdb_env_close1(a1);
  }

LABEL_29:
  if (HIDWORD(v25))
  {
    free(v26);
  }

  return v4;
}

uint64_t mdb_fname_init(const char *a1, int a2, uint64_t a3)
{
  v5 = ~a2 & 0x404000;
  *(a3 + 4) = 0;
  v6 = strlen(a1);
  *a3 = v6;
  if (v5)
  {
    v8 = malloc_type_malloc(v6 + 10, 0x53DCED66uLL);
    *(a3 + 8) = v8;
    if (v8)
    {
      *(a3 + 4) = 1;
      strcpy(v8, a1);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    result = 0;
    *(a3 + 8) = a1;
  }

  return result;
}

uint64_t mdb_env_setup_locks(uint64_t a1, int *a2, unsigned __int16 a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = mdb_fopen(a1, a2, 16777734, a3, (a1 + 4));
  if (!v6)
  {
    if ((*(a1 + 14) & 0x20) == 0)
    {
      v8 = pthread_key_create((a1 + 160), mdb_env_reader_dest);
      if (v8)
      {
        return v8;
      }

      *(a1 + 12) |= 0x10000000u;
    }

    v17 = 0x300000000;
    v16 = xmmword_185DB7AF0;
    do
    {
      if (!fcntl(*(a1 + 4), 8, &v16))
      {
        goto LABEL_13;
      }

      v9 = *__error();
    }

    while (v9 == 4);
    if (v9)
    {
      WORD2(v17) = 1;
      do
      {
        if (!fcntl(*(a1 + 4), 9, &v16))
        {
          LODWORD(v7) = 0;
          goto LABEL_14;
        }

        v7 = *__error();
      }

      while (v7 == 4);
      if (!v7)
      {
        goto LABEL_14;
      }

      return v7;
    }

LABEL_13:
    LODWORD(v7) = 1;
LABEL_14:
    *a4 = v7;
    v10 = lseek(*(a1 + 4), 0, 2);
    if (v10 != -1)
    {
      v11 = ((*(a1 + 24) - 1) << 6) + 256;
      if (v10 >= v11 || *a4 < 1)
      {
        *(a1 + 24) = ((v10 + 0x3FFFFFFF00) >> 6) + 1;
        v11 = v10;
      }

      else if (ftruncate(*(a1 + 4), ((*(a1 + 24) - 1) << 6) + 256))
      {
        return *__error();
      }

      v12 = mmap(0, v11, 3, 1, *(a1 + 4), 0);
      if (v12 != -1)
      {
        *(a1 + 64) = v12;
        if (*a4 < 1)
        {
          if (*v12 != -1091583778)
          {
            return 4294936503;
          }

          if (*(v12 + 1) != 774479874)
          {
            return 4294936502;
          }

          v7 = *__error();
          if (v7 <= 0x23 && ((1 << v7) & 0x800002001) != 0)
          {
            return 0;
          }
        }

        else
        {
          v16.__sig = 0;
          *v16.__opaque = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *(v12 + 56) = 0u;
          *(v12 + 72) = 0u;
          v13 = *(a1 + 64);
          v13[8] = 0u;
          v13[9] = 0u;
          v13[10] = 0u;
          v13[11] = 0u;
          v8 = pthread_mutexattr_init(&v16);
          if (v8)
          {
            return v8;
          }

          v14 = pthread_mutexattr_setpshared(&v16, 1);
          if (v14 || (v14 = pthread_mutex_init((*(a1 + 64) + 24), &v16), v14))
          {
            v7 = v14;
            pthread_mutexattr_destroy(&v16);
          }

          else
          {
            v7 = pthread_mutex_init((*(a1 + 64) + 128), &v16);
            pthread_mutexattr_destroy(&v16);
            if (!v7)
            {
              **(a1 + 64) = -1091583778;
              *(*(a1 + 64) + 4) = 774479874;
              *(*(a1 + 64) + 8) = 0;
              *(*(a1 + 64) + 16) = 0;
            }
          }
        }

        return v7;
      }
    }

    return *__error();
  }

  v7 = v6;
  if (v6 == 30)
  {
    if ((*(a1 + 14) & 2) == 0)
    {
      return 30;
    }

    return 0;
  }

  return v7;
}

uint64_t mdb_fopen(unsigned int *a1, int *a2, int a3, uint64_t a4, int *a5)
{
  if (a2[1])
  {
    strcpy((*(a2 + 1) + *a2), (&(&mdb_suffixes)[2 * (a3 == 16777734)])[(a1[3] >> 14) & 1]);
  }

  v10 = open(*(a2 + 1), a3 & 0x1400A03, a4);
  v11 = v10;
  if (v10 == -1)
  {
    result = *__error();
  }

  else
  {
    if (a3 == 16779777 && a1[4] >= a1[5])
    {
      fcntl(v10, 48, 1);
    }

    result = 0;
  }

  *a5 = v11;
  return result;
}

uint64_t mdb_env_open2(uint64_t a1, int a2)
{
  v4 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 12);
  memset(v16, 0, 136);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = 1;
  __buf = 0u;
  while (1)
  {
    v7 = v6;
    v8 = pread(*a1, &__buf, 0x98uLL, v4);
    if (v8 != 152)
    {
      break;
    }

    result = 4294936503;
    if ((BYTE10(__buf) & 8) == 0 || v18 != -1091583778)
    {
      goto LABEL_20;
    }

    if (DWORD1(v18) != 1)
    {
      result = 4294936502;
      goto LABEL_20;
    }

    if (!v4)
    {
      goto LABEL_9;
    }

    if (!a2)
    {
      if (v26 <= v16[16])
      {
        goto LABEL_10;
      }

LABEL_9:
      *v16 = v18;
      *&v16[8] = v22;
      *&v16[6] = v21;
      *&v16[4] = v20;
      *&v16[2] = v19;
      v16[16] = v26;
      *&v16[14] = v25;
      *&v16[12] = v24;
      *&v16[10] = v23;
      goto LABEL_10;
    }

    if (v26 < v16[16])
    {
      goto LABEL_9;
    }

LABEL_10:
    v6 = 0;
    v10 = v16[3];
    v4 += LODWORD(v16[3]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!(v4 | v8))
  {
    result = 2;
    goto LABEL_20;
  }

  if ((v8 & 0x80000000) == 0)
  {
    result = 4294936503;
    goto LABEL_20;
  }

  result = *__error();
  if (result)
  {
LABEL_20:
    if (result != 2)
    {
      return result;
    }

    v11 = 0;
    v10 = *(a1 + 20);
    if (v10 >= 0x8000)
    {
      v10 = 0x8000;
    }

    *(a1 + 16) = v10;
    memset(&v16[3], 0, 112);
    *&v16[1] = 0u;
    v16[0] = 0x1BEEFC0DELL;
    WORD2(v16[3]) = *(a1 + 12) | 8;
    v16[8] = -1;
    v16[2] = 0x100000;
    v12 = *(a1 + 112);
    LODWORD(v16[3]) = v10;
    *&v16[14] = xmmword_185DC4920;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v16[3];
LABEL_39:
    *(a1 + 16) = v10;
    v12 = *(a1 + 112);
    v11 = 1;
    if (!v12)
    {
LABEL_24:
      v12 = v16[2];
      *(a1 + 112) = v16[2];
    }
  }

  v13 = v10 * v16[15] + v10;
  if (v12 < v13)
  {
    *(a1 + 112) = v13;
    v12 = v13;
  }

  v16[2] = v12;
  if (v11)
  {
    if (v5)
    {
      v14 = v16[1];
      goto LABEL_33;
    }

LABEL_32:
    v14 = 0;
LABEL_33:
    result = mdb_env_map(a1, v14);
    if (!result)
    {
LABEL_34:
      result = 0;
      v15 = *(a1 + 16);
      *(a1 + 216) = ((v15 - 16) >> 3) - 1;
      *(a1 + 220) = (((v15 - 16) >> 1) & 0x7FFFFFFE) - 2;
      *(a1 + 128) = *(a1 + 112) / v15;
    }
  }

  else if (v5)
  {
    result = mdb_env_map(a1, v16[1]);
    if (!result)
    {
      v16[1] = *(a1 + 56);
      result = mdb_env_init_meta(a1, v16);
      if (!result)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    result = mdb_env_init_meta(a1, v16);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  return result;
}

uint64_t mdb_env_close1(uint64_t result)
{
  if ((*(result + 15) & 0x20) != 0)
  {
    v1 = result;
    v2 = *(result + 136);
    if (v2)
    {
      v3 = *(v1 + 36);
      if (v3 >= 3)
      {
        v4 = v3 + 1;
        v5 = 48 * v3 - 40;
        do
        {
          free(*(*(v1 + 136) + v5));
          --v4;
          v5 -= 48;
        }

        while (v4 > 3);
        v2 = *(v1 + 136);
      }

      free(v2);
    }

    free(*(v1 + 88));
    free(*(v1 + 152));
    free(*(v1 + 144));
    free(*(v1 + 48));
    free(*(v1 + 208));
    free(*(v1 + 104));
    mdb_midl_free(*(v1 + 200));
    if ((*(v1 + 15) & 0x10) != 0)
    {
      pthread_key_delete(*(v1 + 160));
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      munmap(v6, *(v1 + 112));
    }

    v7 = *(v1 + 8);
    if (v7 != -1)
    {
      close(v7);
    }

    if (*v1 != -1)
    {
      close(*v1);
    }

    if (*(v1 + 64))
    {
      v8 = getpid();
      v9 = *(v1 + 28);
      if (v9 >= 1)
      {
        v10 = v9 + 1;
        v11 = (v9 << 6) + 136;
        do
        {
          v12 = *(v1 + 64);
          if (*(v12 + v11) == v8)
          {
            *(v12 + v11) = 0;
          }

          --v10;
          v11 -= 64;
        }

        while (v10 > 1);
      }

      munmap(*(v1 + 64), ((*(v1 + 24) - 1) << 6) + 256);
    }

    result = *(v1 + 4);
    if (result != -1)
    {
      result = close(result);
    }

    *(v1 + 12) &= 0xCFFFFFFF;
  }

  return result;
}

void mdb_env_close(void *a1)
{
  if (a1)
  {
    while (1)
    {
      v2 = a1[24];
      if (!v2)
      {
        break;
      }

      a1[24] = *v2;
      free(v2);
    }

    mdb_env_close1(a1);

    free(a1);
  }
}

uint64_t mdb_env_init_meta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = malloc_type_calloc(2uLL, v4, 0xFC816637uLL);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 0;
  *(v5 + 5) = 8;
  *(v5 + 1) = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 5) = *(a2 + 64);
  *(v5 + 4) = v9;
  *(v5 + 3) = v8;
  *(v5 + 2) = v7;
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  *(v5 + 18) = *(a2 + 128);
  *(v5 + 8) = v12;
  *(v5 + 7) = v11;
  *(v5 + 6) = v10;
  v13 = &v5[v4];
  *v13 = 1;
  *(v13 + 5) = 8;
  *(v13 + 1) = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(v13 + 5) = *(a2 + 64);
  *(v13 + 4) = v16;
  *(v13 + 3) = v15;
  *(v13 + 2) = v14;
  v17 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  *(v13 + 18) = *(a2 + 128);
  *(v13 + 8) = v19;
  *(v13 + 7) = v18;
  *(v13 + 6) = v17;
  v20 = (2 * v4);
  while (1)
  {
    v21 = pwrite(*a1, v6, v20, 0);
    if (v21 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_11;
    }
  }

  if (v21 < 0)
  {
LABEL_11:
    v22 = *__error();
    goto LABEL_12;
  }

  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 28;
  }

LABEL_12:
  free(v6);
  return v22;
}