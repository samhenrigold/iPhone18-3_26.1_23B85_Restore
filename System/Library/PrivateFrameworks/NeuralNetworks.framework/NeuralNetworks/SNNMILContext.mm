@interface SNNMILContext
+ (id)valueForIRTensorValue:(const IRTensorValue *)value;
+ (id)valueForIRTensorValueType:(const IRTensorValueType *)type name:()basic_string<char;
+ (id)valueForIRValue:(const IRValue *)value;
+ (id)valueForIRValueType:(const IRValueType *)type name:()basic_string<char;
- (SNNMILContext)init;
- (SNNMILContext)initWithOpsetName:(id)name;
- (basic_string<char,)opsetName;
- (id).cxx_construct;
- (shared_ptr<MIL::MILContext>)context;
- (unique_ptr<const)milValueForString:(id)string;
- (unique_ptr<const)milValueForTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset;
- (unique_ptr<const)milValueForTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type;
- (void)dealloc;
@end

@implementation SNNMILContext

- (SNNMILContext)init
{
  v6.receiver = self;
  v6.super_class = SNNMILContext;
  v2 = [(SNNMILContext *)&v6 init];
  MIL::Opsets::Common::CreateMILContext(&v5, v2);
  std::shared_ptr<MIL::MILContext>::operator=[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(&v2->_context.__ptr_, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  MEMORY[0x25F878B50](&v2->_opsetName, "ios15");
  return v2;
}

- (SNNMILContext)initWithOpsetName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SNNMILContext;
  v5 = [(SNNMILContext *)&v10 init];
  MIL::Opsets::Common::CreateMILContext(&v8, v5);
  std::shared_ptr<MIL::MILContext>::operator=[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(&v5->_context.__ptr_, &v8);
  v6 = v8;
  *&v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (nameCopy)
  {
    objc_msgSend_cxxString(nameCopy);
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  if (*(&v5->_opsetName.__rep_.__l + 23) < 0)
  {
    operator delete(v5->_opsetName.__rep_.__l.__data_);
  }

  *v5->_opsetName.__rep_.__s.__data_ = v8;
  *(&v5->_opsetName.__rep_.__l + 2) = v9;

  return v5;
}

- (void)dealloc
{
  cntrl = self->_context.__cntrl_;
  self->_context.__ptr_ = 0;
  self->_context.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v4.receiver = self;
  v4.super_class = SNNMILContext;
  [(SNNMILContext *)&v4 dealloc];
}

- (shared_ptr<MIL::MILContext>)context
{
  cntrl = self->_context.__cntrl_;
  *v2 = self->_context.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (unique_ptr<const)milValueForString:(id)string
{
  v4 = v3;
  stringCopy = string;
  MIL::IRTensorValueType::MakeScalar();
  if (stringCopy)
  {
    objc_msgSend_cxxString(stringCopy);
  }

  else
  {
    __p = 0;
    v8 = 0;
  }

  MIL::IRTensorValueType::MakeStringValue();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  *v4 = v9;

  return v6;
}

- (unique_ptr<const)milValueForTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type
{
  v8 = v5;
  v38 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  v10 = shapeCopy;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v11 = shapeCopy;
  if (shapeCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = shapeCopy;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v13)
    {
      bytesCopy = bytes;
      v25 = v8;
      v14 = *v31;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          unsignedIntegerValue = [v17 unsignedIntegerValue];
          v27 = MIL::IRConstantDimension::Make(self->_context.__ptr_, [v17 unsignedIntegerValue]);
          v10 = v11;
          std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, &v27);
          v15 *= unsignedIntegerValue;
        }

        v13 = [v12 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v13);
      v19 = v15;
      bytes = bytesCopy;
      v8 = v25;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  if (v10)
  {
    Scalar = MIL::IRTensorValueType::MakeWithShape();
  }

  else
  {
    Scalar = MIL::IRTensorValueType::MakeScalar();
  }

  v21 = (*(*Scalar + 88))(Scalar);
  if (v21 > 10)
  {
    if (v21 > 14)
    {
      switch(v21)
      {
        case 15:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v27, bytes, bytes + 2 * v19, v19);
          MIL::IRTensorValueType::MakeUInt16Value();
          goto LABEL_44;
        case 16:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v27, bytes, bytes + 4 * v19, v19);
          MIL::IRTensorValueType::MakeUInt32Value();
          goto LABEL_44;
        case 17:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v27, bytes, bytes + 8 * v19, v19);
          MIL::IRTensorValueType::MakeUInt64Value();
          goto LABEL_44;
      }
    }

    else
    {
      switch(v21)
      {
        case 11:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, bytes, bytes + 4 * v19, v19);
          MIL::IRTensorValueType::MakeInt32Value();
          goto LABEL_44;
        case 12:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v27, bytes, bytes + 8 * v19, v19);
          MIL::IRTensorValueType::MakeInt64Value();
          goto LABEL_44;
        case 14:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, bytes, bytes + v19, v19);
          MIL::IRTensorValueType::MakeUInt8Value();
          goto LABEL_44;
      }
    }

    goto LABEL_50;
  }

  if (v21 > 5)
  {
    switch(v21)
    {
      case 6:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v27, bytes, bytes + 8 * v19, v19);
        MIL::IRTensorValueType::MakeFloat64Value();
        goto LABEL_44;
      case 9:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, bytes, bytes + v19, v19);
        MIL::IRTensorValueType::MakeInt8Value();
        goto LABEL_44;
      case 10:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&v27, bytes, bytes + 2 * v19, v19);
        MIL::IRTensorValueType::MakeInt16Value();
        goto LABEL_44;
    }

LABEL_50:
    *v8 = 0;
    goto LABEL_47;
  }

  if (v21 != 2)
  {
    if (v21 == 4)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(&v27, bytes, bytes + 2 * v19, v19);
      MIL::IRTensorValueType::MakeFloat16Value();
      goto LABEL_44;
    }

    if (v21 == 5)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v27, bytes, bytes + 4 * v19, v19);
      MIL::IRTensorValueType::MakeFloat32Value();
LABEL_44:
      v22 = v27;
      *v8 = v26;
      if (!v22)
      {
        goto LABEL_47;
      }

      v28 = v22;
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<BOOL>::__init_with_size[abi:ne200100]<BOOL *,BOOL *>(&v27, bytes, bytes + v19, v19);
  MIL::IRTensorValueType::MakeBoolValue();
  v22 = v27;
  *v8 = v26;
  if (v22)
  {
LABEL_46:
    operator delete(v22);
  }

LABEL_47:
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return v23;
}

- (unique_ptr<const)milValueForTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset
{
  v26 = v6;
  v45 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = shapeCopy;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v14)
  {
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        [v17 unsignedIntegerValue];
        *&v34[0] = MIL::IRConstantDimension::Make(self->_context.__ptr_, [v17 unsignedIntegerValue]);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v40, v34);
      }

      v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v14);
  }

  MIL::IRTensorValueType::MakeWithShape();
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  MIL::IRTensorValueType::MakeScalar();
  std::string::basic_string[abi:ne200100]<0>(&v31, "BLOBFILE");
  MIL::IRTensorValueType::MakeStringValue();
  std::string::basic_string[abi:ne200100]<0>(__p, "type");
  v43 = __p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34, __p, &std::piecewise_construct, &v43);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v18 + 5, &v33);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v33;
  v33 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  MIL::IRTensorValueType::MakeScalar();
  if (filenameCopy)
  {
    objc_msgSend_cxxString(filenameCopy);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  MIL::IRTensorValueType::MakeStringValue();
  std::string::basic_string[abi:ne200100]<0>(__p, "path");
  v43 = __p;
  v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34, __p, &std::piecewise_construct, &v43);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v20 + 5, &v33);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v33;
  v33 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  Scalar = MIL::IRTensorValueType::MakeScalar();
  [offsetCopy unsignedLongValue];
  MIL::IRTensorValueType::MakeUInt64Value(&v33, Scalar);
  std::string::basic_string[abi:ne200100]<0>(__p, "offset");
  v43 = __p;
  v23 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34, __p, &std::piecewise_construct, &v43);
  std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(v23 + 5, &v33);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v33;
  v33 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  MIL::IRTensorValueType::MakeValueFromFileProperties();
  *v26 = __p[0];
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v34);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return v25;
}

+ (id)valueForIRTensorValueType:(const IRTensorValueType *)type name:()basic_string<char
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:a4];
  v6 = (*(type->var0 + 11))(type) - 2;
  if (v6 < 0x10 && ((0xF79Fu >> v6) & 1) != 0)
  {
    v7 = qword_25BCBA9C0[v6];
  }

  else
  {
    v8 = MEMORY[0x277CBEAD8];
    MIL::IRDataTypeToString();
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    [v8 raise:*MEMORY[0x277CBE660] format:{@"Unsupported data type %s", p_p}];
    if (v19 < 0)
    {
      operator delete(__p);
    }

    v7 = 0;
  }

  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11 = (*(type->var0 + 12))(type);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*v11 != v13)
  {
    do
    {
      v14 = MIL::IRDimension::AsConstant(*v12);
      v15 = [MEMORY[0x277CCABB0] numberWithInt:(*(*v14 + 48))(v14)];
      [v10 addObject:v15];

      ++v12;
    }

    while (v12 != v13);
  }

  v16 = [[SNNMILValueDescriptor alloc] initWithShape:v10 dataType:v7 name:v5];

  return v16;
}

+ (id)valueForIRValueType:(const IRValueType *)type name:()basic_string<char
{
  v6 = (*(type->var0 + 3))(type, a2);
  if (v6)
  {
    v7 = v6;
    if (*(&a4->__rep_.__l + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, a4->__rep_.__l.__data_, a4->__rep_.__l.__size_);
    }

    else
    {
      v14 = *a4;
    }

    v10 = [SNNMILContext valueForIRTensorValueType:v7 name:&v14];
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    data = v14.__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = (*(type->var0 + 4))(type);
    if (!v8)
    {
      (*(type->var0 + 5))(type);
      (*(type->var0 + 6))(type);
      v10 = 0;
      goto LABEL_15;
    }

    v9 = v8;
    if (*(&a4->__rep_.__l + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, a4->__rep_.__l.__data_, a4->__rep_.__l.__size_);
    }

    else
    {
      __p = *a4;
    }

    v10 = [SNNMILContext valueForIRListValueType:v9 name:&__p];
    if ((*(&__p.__rep_.__l + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    data = __p.__rep_.__l.__data_;
  }

  operator delete(data);
LABEL_15:

  return v10;
}

+ (id)valueForIRTensorValue:(const IRTensorValue *)value
{
  v4 = (*(value->var0 + 4))(value, a2);
  v5 = (*(*v4 + 88))(v4) - 2;
  if (v5 < 0x10 && ((0xF79Fu >> v5) & 1) != 0)
  {
    v53 = qword_25BCBA9C0[v5];
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    MIL::IRDataTypeToString();
    if (v61 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    [v6 raise:v7 format:{@"Unsupported data type %s", v8}];
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    v53 = 0;
  }

  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10 = (*(value->var0 + 4))(value);
  v11 = (*(*v10 + 96))(v10);
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = 1;
  while (v13 != v12)
  {
    v15 = MIL::IRDimension::AsConstant(*v13);
    v16 = (*(*v15 + 48))(v15);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v9 addObject:v17];
    v14 *= v16;

    ++v13;
  }

  if ((*(value->var0 + 10))(value))
  {
    v18 = (*(value->var0 + 11))(value);
    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(__p, v18);
    std::string::basic_string[abi:ne200100]<0>(v56, "type");
    v54[0] = v56;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v56, &std::piecewise_construct, v54);
    MIL::IRValue::GetScalar<std::string>();
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    if (v59 < 0)
    {
      if (v58[1] != 14)
      {
        goto LABEL_29;
      }

      v19 = v58[0];
    }

    else
    {
      if (v59 != 14)
      {
        goto LABEL_29;
      }

      v19 = v58;
    }

    v24 = *v19;
    v25 = *(v19 + 6);
    if (v24 == 0x4C4259434147454CLL && v25 == 0x454C4946424F4C42)
    {
      v31 = +[SNNLogging framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SNNMILContext valueForIRTensorValue:v31];
      }

      v21 = 0;
      goto LABEL_38;
    }

LABEL_29:
    std::string::basic_string[abi:ne200100]<0>(v54, "path");
    v62 = v54;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v54, &std::piecewise_construct, &v62);
    MIL::IRValue::GetScalar<std::string>();
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v54, "offset");
    v62 = v54;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v54, &std::piecewise_construct, &v62);
    v27 = MIL::IRValue::GetScalar<unsigned long long>();
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    v28 = [SNNMILBlobValue alloc];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCXXString:v56];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v27];
    v21 = [(SNNMILBlobValue *)v28 initWithFilename:v29 shape:v9 dataType:v53 offset:v30];

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

LABEL_38:
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(__p);
    goto LABEL_96;
  }

  v20 = [v9 count];
  v21 = 0;
  switch(v5)
  {
    case 0u:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithBool:MIL::IRValue::GetScalar<BOOL>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:0];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<BOOL>();
      if (v14 != v23)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 314, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 1u:
      if (!v20)
      {
        v51 = objc_alloc(MEMORY[0x277CCACA8]);
        MIL::IRValue::GetScalar<std::string>();
        v46 = [v51 initWithCXXString:__p];
        if (v61 < 0)
        {
          operator delete(__p[0]);
        }

        v47 = [[SNNMILDataValue alloc] initWithStringScalar:v46];
        goto LABEL_95;
      }

      v41 = +[SNNLogging framework];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [SNNMILContext valueForIRTensorValue:v41];
      }

LABEL_68:
      v21 = 0;
      break;
    case 2u:
      break;
    case 3u:
      if (!v20)
      {
        v49 = MEMORY[0x277CCABB0];
        MIL::IRValue::GetScalar<float>();
        v46 = [v49 numberWithDouble:v50];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:3];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<float>();
      if (v14 != v37)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 338, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 4u:
      if (!v20)
      {
        v48 = MEMORY[0x277CCABB0];
        MIL::IRValue::GetScalar<double>();
        v46 = [v48 numberWithDouble:?];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:4];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<double>();
      if (v14 != v33)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 326, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 7u:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithChar:MIL::IRValue::GetScalar<signed char>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:5];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<signed char>();
      if (v14 != v35)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 402, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 8u:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithShort:MIL::IRValue::GetScalar<short>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:6];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<short>();
      if (v14 != v42)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 414, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 9u:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithInteger:MIL::IRValue::GetScalar<int>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:7];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<int>();
      if (v14 != v43)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 426, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xAu:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithLong:MIL::IRValue::GetScalar<long long>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:8];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<long long>();
      if (v14 != v45)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 438, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xCu:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:MIL::IRValue::GetScalar<unsigned char>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:9];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned char>();
      if (v14 != v44)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 354, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xDu:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:MIL::IRValue::GetScalar<unsigned short>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:10];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned short>();
      if (v14 != v32)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 366, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xEu:
      if (!v20)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:MIL::IRValue::GetScalar<unsigned int>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:11];
        goto LABEL_95;
      }

      Data = MIL::IRTensorValue::GetDataView<unsigned int>();
      if (v14 != v36)
      {
        __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 378, "contiguousCount == dataView.Size()");
      }

      goto LABEL_80;
    case 0xFu:
      if (v20)
      {
        Data = MIL::IRTensorValue::GetDataView<unsigned long long>();
        if (v14 != v34)
        {
          __assert_rtn("+[SNNMILContext valueForIRTensorValue:]", "SNNTypes.mm", 390, "contiguousCount == dataView.Size()");
        }

LABEL_80:
        v21 = [[SNNMILDataValue alloc] initWithShape:v9 bytes:Data dataType:v53];
      }

      else
      {
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:MIL::IRValue::GetScalar<unsigned long long>()];
        v47 = [[SNNMILDataValue alloc] initWithScalar:v46 dataType:12];
LABEL_95:
        v21 = v47;
      }

      break;
    default:
      v38 = objc_alloc(MEMORY[0x277CCACA8]);
      MIL::IRDataTypeToString();
      v39 = [v38 initWithCXXString:__p];
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      v40 = +[SNNLogging framework];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(SNNMILContext *)v39 valueForIRTensorValue:v40];
      }

      goto LABEL_68;
  }

LABEL_96:

  return v21;
}

+ (id)valueForIRValue:(const IRValue *)value
{
  v4 = (*(value->var0 + 5))(value, a2);
  if (v4)
  {
    v5 = [SNNMILContext valueForIRTensorValue:v4];
  }

  else
  {
    v5 = (*(value->var0 + 6))(value);
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBF8] mutableCopy];
      Values = MIL::IRListValue::GetValues(v5);
      if (v8)
      {
        v9 = Values;
        v10 = 16 * v8;
        do
        {
          v11 = [SNNMILContext valueForIRValue:*v9];
          if (v11)
          {
            [v6 addObject:v11];
          }

          v9 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      v5 = [[SNNMILListValue alloc] initWithValues:v6];
    }

    else
    {
      (*(value->var0 + 7))(value);
      (*(value->var0 + 8))(value);
    }
  }

  return v5;
}

- (basic_string<char,)opsetName
{
  if (*(&result[1].__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result[1].__rep_.__l.__data_, result[1].__rep_.__l.__size_);
  }

  else
  {
    *retstr = result[1];
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

+ (void)valueForIRTensorValue:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
}

@end