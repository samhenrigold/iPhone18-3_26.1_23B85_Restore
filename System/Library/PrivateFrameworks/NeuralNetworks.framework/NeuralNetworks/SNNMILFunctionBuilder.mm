@interface SNNMILFunctionBuilder
- (BOOL)isUniqueOutputName:(id)name;
- (BOOL)retainOutputs:(id)outputs;
- (BOOL)retainOutputsWithNames:(id)names;
- (SNNMILContext)context;
- (SNNMILFunctionBuilder)initWithName:(id)name context:(id)context location:(id)location;
- (basic_string<char,)milName;
- (const)tensorValueTypeWithShape:(id)shape dataType:(unint64_t)type;
- (id).cxx_construct;
- (id)build;
- (id)constantOperationWithValue:(unique_ptr<const)MIL:(std:(id)l :(id)a5 default_delete<const MIL::IRValue>>)a3 :IRValue name:location:;
- (id)constantScalar:(id)scalar dataType:(unint64_t)type location:(id)location;
- (id)constantScalar:(id)scalar dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantScalar:(id)scalar location:(id)location;
- (id)constantScalar:(id)scalar name:(id)name location:(id)location;
- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset location:(id)location;
- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset name:(id)name location:(id)location;
- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (id)constantValue:(id)value name:(id)name location:(id)location;
- (id)nextSymbol;
- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs attributes:(id)attributes location:(id)location;
- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs location:(id)location;
- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type location:(id)location;
- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location;
- (unique_ptr<MIL::IRArgument,)milArgumentForSNNMILValue:(id)value;
@end

@implementation SNNMILFunctionBuilder

- (SNNMILFunctionBuilder)initWithName:(id)name context:(id)context location:(id)location
{
  nameCopy = name;
  contextCopy = context;
  locationCopy = location;
  v18.receiver = self;
  v18.super_class = SNNMILFunctionBuilder;
  v12 = [(SNNMILFunctionBuilder *)&v18 init];
  objc_storeStrong(&v12->_name, name);
  objc_storeWeak(&v12->_context, contextCopy);
  v13 = [SNNMILSourceLocation locationOrEmpty:locationCopy];
  location = v12->_location;
  v12->_location = v13;

  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  outputNames = v12->_outputNames;
  v12->_outputNames = v15;

  return v12;
}

- (basic_string<char,)milName
{
  v3 = objc_msgSend_name(v1);
  v5 = v3;
  if (v3)
  {
    objc_msgSend_cxxString(v3);
  }

  else
  {
    retstr->__rep_.__l.__data_ = 0;
    retstr->__rep_.__l.__size_ = 0;
    *(&retstr->__rep_.__l + 2) = 0;
  }

  return result;
}

- (id)build
{
  function = self->_function;
  if (function)
  {
    v3 = function;
  }

  else
  {
    location = self->_location;
    if (location)
    {
      objc_msgSend_milLocation(location, a2);
      if (v27)
      {
        operator new();
      }
    }

    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    MIL::IRBlock::Make();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v27);
    *&v27 = v30;
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v27);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v25 = 0;
    v26 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    platformOpset = [WeakRetained platformOpset];
    v8 = (*(*platformOpset + 16))(platformOpset);
    v10 = v9;
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v24 = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
    }

    *(&__dst + v10) = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    MIL::IRFunction::Make();
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v27);
    if (v24 < 0)
    {
      operator delete(__dst);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v11 = [SNNMILFunction alloc];
    v21 = v30[0];
    if (v30[0])
    {
      operator new();
    }

    v22 = 0;
    v30[0] = 0;
    v12 = objc_msgSend_name(self);
    v13 = v12;
    if (v12)
    {
      objc_msgSend_cxxString(v12);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
    }

    v14 = [(SNNMILFunction *)v11 initWithFunction:&v21 name:__p];
    v15 = self->_function;
    self->_function = v14;

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v3 = self->_function;
    v16 = v30[0];
    v30[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v32;
    v32 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return v3;
}

- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  v37 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  nameCopy = name;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = shapeCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        v16 = WeakRetained;
        if (WeakRetained)
        {
          objc_msgSend_context(WeakRetained);
          v17 = __p;
        }

        else
        {
          v17 = 0;
          __p = 0;
          v24 = 0;
        }

        v18 = MIL::IRConstantDimension::Make(v17, [v14 unsignedIntegerValue]);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        __p = v18;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v31, &__p);
      }

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v11);
  }

  v19 = objc_loadWeakRetained(&self->_context);
  objc_msgSend_context(v19);
  v20 = MIL::IRTensorValueType::MakeWithShape();
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v26 = v20;
  if (nameCopy)
  {
    objc_msgSend_cxxString(nameCopy);
  }

  else
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
  }

  p_p = &__p;
  v34 = &v26;
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<MIL::IRTensorValueType const*&>>(&self->_inputs, &__p, &std::piecewise_construct, &p_p, &v34);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  v21 = [[SNNMILNamedValue alloc] initWithName:nameCopy];
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v21;
}

- (id)placeholderWithShape:(id)shape dataType:(unint64_t)type location:(id)location
{
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v11 = [(SNNMILFunctionBuilder *)self placeholderWithShape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v11;
}

- (BOOL)retainOutputsWithNames:(id)names
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  namesCopy = names;
  v5 = [namesCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = *v28;
    p_outputs = &self->_outputs;
    v8 = namesCopy;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(namesCopy);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if (v10)
        {
          objc_msgSend_cxxString(v10);
        }

        else
        {
          *__p = 0uLL;
          v26 = 0;
        }

        end = self->_outputs.__end_;
        cap = self->_outputs.__cap_;
        if (end >= cap)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((end - p_outputs->__begin_) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_outputs->__begin_) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          v31.__end_cap_.__value_ = &self->_outputs;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&self->_outputs, v16);
          }

          v17 = 24 * v13;
          *(v17 + 16) = v26;
          *v17 = *__p;
          v26 = 0;
          *__p = 0uLL;
          v18 = (24 * v13 + 24);
          begin = self->_outputs.__begin_;
          v20 = (self->_outputs.__end_ - begin);
          v21 = (24 * v13 - v20);
          memcpy((v17 - v20), begin, v20);
          v22 = self->_outputs.__begin_;
          self->_outputs.__begin_ = v21;
          self->_outputs.__end_ = v18;
          v23 = self->_outputs.__cap_;
          self->_outputs.__cap_ = 0;
          v31.__end_ = v22;
          v31.__end_cap_.__value_ = v23;
          v31.__first_ = v22;
          v31.__begin_ = v22;
          std::__split_buffer<std::string>::~__split_buffer(&v31);
          self->_outputs.__end_ = v18;
          namesCopy = v8;
        }

        else
        {
          *(end + 2) = v26;
          *end = *__p;
          self->_outputs.__end_ = end + 24;
        }
      }

      v5 = [namesCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  return 1;
}

- (BOOL)retainOutputs:(id)outputs
{
  v18 = *MEMORY[0x277D85DE8];
  outputsCopy = outputs;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = outputsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = objc_msgSend_name(*(*(&v13 + 1) + 8 * v9), v13);
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(SNNMILFunctionBuilder *)self retainOutputsWithNames:v5];
  return v11;
}

- (id)constantOperationWithValue:(unique_ptr<const)MIL:(std:(id)l :(id)a5 default_delete<const MIL::IRValue>>)a3 :IRValue name:location:
{
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained platformOpset];
  std::string::basic_string[abi:ne200100]<0>(&v43, "const");
  MIL::IROpset::TryGetOperatorSharedPtr();
  if (v45 < 0)
  {
    operator delete(v43);
  }

  v11 = objc_loadWeakRetained(&self->_context);
  v12 = v11;
  if (v11)
  {
    objc_msgSend_milValueForString_(v11);
  }

  else
  {
    v40[0] = 0;
  }

  if (v9)
  {
    objc_msgSend_milLocation(v9);
    v13 = v36;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v33, "");
    MIL::TextFileLocation::Make();
    v13 = v35;
    v35 = 0;
    v36 = v13;
  }

  v37 = v13;
  if (v13)
  {
    operator new();
  }

  v38 = 0;
  v36 = 0;
  v31[2] = v40[1];
  v32 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  if (lCopy)
  {
    objc_msgSend_cxxString(lCopy);
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
  }

  (*(*a3.var0->var0 + 4))();
  MIL::IRNamedValueType::Make();
  v47 = v28;
  if (v28)
  {
    operator new();
  }

  v48 = 0;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(v29, &v47, &v49, 1uLL);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRValue const>,0>(&v43, "val", a3.var0);
  std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRValue const>,0>(v46, "name", v40);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v24, &v43, 2);
  memset(v23, 0, sizeof(v23));
  MIL::IROperation::Make();
  v42 = v23;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v42);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v24);
  for (i = 0; i != -10; i -= 5)
  {
    v15 = &(&v43)[i];
    v16 = v46[i + 4];
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (*(v15 + 63) < 0)
    {
      operator delete(v15[5]);
    }
  }

  v43 = v29;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v28);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v30, v31[0]);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v17 = v36;
  v36 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (!v9)
  {
    v18 = v35;
    v35 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }
  }

  v43 = v39;
  if (v39)
  {
    operator new();
  }

  v44 = 0;
  v39 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&self->_operations.__begin_, &v43);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v19 = [[SNNMILNamedValue alloc] initWithName:lCopy];
  v20 = v39;
  v39 = 0;
  if (v20)
  {
    (*(*v20 + 1))(v20);
  }

  v21 = v40[0];
  v40[0] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  return v19;
}

- (id)constantValue:(id)value name:(id)name location:(id)location
{
  valueCopy = value;
  nameCopy = name;
  locationCopy = location;
  [valueCopy conformsToProtocol:&unk_286D64AF0];
  v11 = valueCopy;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v11)
  {
    objc_msgSend_milValueWithContext_(v11);
  }

  else
  {
    v18[0] = 0;
  }

  v17 = v18[0];
  v18[0] = 0;
  v13 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v17 name:nameCopy location:locationCopy];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v18[0];
  v18[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v13;
}

- (id)constantScalar:(id)scalar name:(id)name location:(id)location
{
  scalarCopy = scalar;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_milValueForString_(WeakRetained);
  }

  else
  {
    v18[0] = 0;
  }

  v17 = v18[0];
  v18[0] = 0;
  v13 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v17 name:nameCopy location:locationCopy];
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v18[0];
  v18[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v13;
}

- (id)constantScalar:(id)scalar location:(id)location
{
  scalarCopy = scalar;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v9 = [(SNNMILFunctionBuilder *)self constantScalar:scalarCopy name:nextSymbol location:locationCopy];

  return v9;
}

- (id)constantScalar:(id)scalar dataType:(unint64_t)type name:(id)name location:(id)location
{
  scalarCopy = scalar;
  nameCopy = name;
  locationCopy = location;
  v13 = [[SNNMILDataValue alloc] initWithScalar:scalarCopy dataType:type];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v13)
  {
    objc_msgSend_milValueWithContext_(v13);
  }

  else
  {
    v20[0] = 0;
  }

  v19 = v20[0];
  v20[0] = 0;
  v15 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v19 name:nameCopy location:locationCopy];
  v16 = v19;
  v19 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v20[0];
  v20[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v15;
}

- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  scalarsCopy = scalars;
  shapeCopy = shape;
  nameCopy = name;
  locationCopy = location;
  v16 = [[SNNMILDataValue alloc] initWithShape:shapeCopy scalars:scalarsCopy dataType:type];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (v16)
  {
    objc_msgSend_milValueWithContext_(v16);
  }

  else
  {
    v23[0] = 0;
  }

  v22 = v23[0];
  v23[0] = 0;
  v18 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v22 name:nameCopy location:locationCopy];
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v23[0];
  v23[0] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return v18;
}

- (id)constantScalar:(id)scalar dataType:(unint64_t)type location:(id)location
{
  scalarCopy = scalar;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v11 = [(SNNMILFunctionBuilder *)self constantScalar:scalarCopy dataType:type name:nextSymbol location:locationCopy];

  return v11;
}

- (id)constantTensorWithScalars:(id)scalars shape:(id)shape dataType:(unint64_t)type location:(id)location
{
  scalarsCopy = scalars;
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v14 = [(SNNMILFunctionBuilder *)self constantTensorWithScalars:scalarsCopy shape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v14;
}

- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type name:(id)name location:(id)location
{
  shapeCopy = shape;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v14 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_milValueForTensorWithBytes_shape_dataType_(WeakRetained);
  }

  else
  {
    v20[0] = 0;
  }

  v19 = v20[0];
  v20[0] = 0;
  v15 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v19 name:nameCopy location:locationCopy];
  v16 = v19;
  v19 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v20[0];
  v20[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v15;
}

- (id)constantTensorWithBytes:(void *)bytes shape:(id)shape dataType:(unint64_t)type location:(id)location
{
  shapeCopy = shape;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v13 = [(SNNMILFunctionBuilder *)self constantTensorWithBytes:bytes shape:shapeCopy dataType:type name:nextSymbol location:locationCopy];

  return v13;
}

- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset name:(id)name location:(id)location
{
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  nameCopy = name;
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_milValueForTensorBlobWithFilename_shape_dataType_offset_(WeakRetained);
  }

  else
  {
    v25[0] = 0;
  }

  v24 = v25[0];
  v25[0] = 0;
  v20 = [(SNNMILFunctionBuilder *)self constantOperationWithValue:&v24 name:nameCopy location:locationCopy];
  v21 = v24;
  v24 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v25[0];
  v25[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return v20;
}

- (id)constantTensorBlobWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset location:(id)location
{
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  locationCopy = location;
  nextSymbol = [(SNNMILFunctionBuilder *)self nextSymbol];
  v17 = [(SNNMILFunctionBuilder *)self constantTensorBlobWithFilename:filenameCopy shape:shapeCopy dataType:type offset:offsetCopy name:nextSymbol location:locationCopy];

  return v17;
}

- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs attributes:(id)attributes location:(id)location
{
  v114 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  inputsCopy = inputs;
  outputsCopy = outputs;
  attributesCopy = attributes;
  locationCopy = location;
  v105[1] = 0;
  v105[0] = 0;
  v104 = v105;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = inputsCopy;
  v13 = [obj countByEnumeratingWithState:&v100 objects:v113 count:16];
  if (v13)
  {
    v62 = *v101;
    do
    {
      v64 = v13;
      for (i = 0; i != v64; ++i)
      {
        if (*v101 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v100 + 1) + 8 * i);
        v16 = [obj objectForKeyedSubscript:v15];
        v107 = 0uLL;
        *&v108 = 0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v67 = v17;
          values = [v17 values];
          v19 = [values countByEnumeratingWithState:&v96 objects:v112 count:16];
          v20 = v67;
          if (v19)
          {
            v21 = *v97;
            v20 = v67;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v97 != v21)
                {
                  objc_enumerationMutation(values);
                }

                v23 = *(*(&v96 + 1) + 8 * j);

                v20 = v23;
                objc_msgSend_milArgumentForSNNMILValue_(self);
                __p = v78;
                if (v78)
                {
                  operator new();
                }

                v94 = 0;
                v78 = 0;
                std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&v107, &__p);
                if (v94)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v94);
                }

                v78 = 0;
              }

              v19 = [values countByEnumeratingWithState:&v96 objects:v112 count:16];
            }

            while (v19);
          }

          v16 = 0;
        }

        else
        {
          objc_msgSend_milArgumentForSNNMILValue_(self);
          __p = v78;
          if (v78)
          {
            operator new();
          }

          v94 = 0;
          v78 = 0;
          std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&v107, &__p);
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          v78 = 0;
        }

        if (v15)
        {
          objc_msgSend_cxxString(v15);
        }

        else
        {
          __p = 0;
          v94 = 0;
          v95 = 0;
        }

        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>(&v104, &__p, &__p, &v107);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(__p);
        }

        __p = &v107;
        std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      v13 = [obj countByEnumeratingWithState:&v100 objects:v113 count:16];
    }

    while (v13);
  }

  v65 = [MEMORY[0x277CBEBF8] mutableCopy];
  __p = 0;
  v94 = 0;
  v95 = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v63 = outputsCopy;
  v24 = [v63 countByEnumeratingWithState:&v89 objects:v111 count:16];
  if (v24)
  {
    v25 = *v90;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v90 != v25)
        {
          objc_enumerationMutation(v63);
        }

        v27 = *(*(&v89 + 1) + 8 * k);
        dimensions = [v27 dimensions];
        -[SNNMILFunctionBuilder tensorValueTypeWithShape:dataType:](self, "tensorValueTypeWithShape:dataType:", dimensions, [v27 dataType]);

        v29 = objc_msgSend_name(v27);
        if (v29)
        {
          objc_msgSend_name(v27);
        }

        else
        {
          [(SNNMILFunctionBuilder *)self nextSymbol];
        }
        v30 = ;

        if (v30)
        {
          objc_msgSend_cxxString(v30);
        }

        else
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
        }

        MIL::IRNamedValueType::Make();
        if (v107)
        {
          operator new();
        }

        *&v107 = 0;
        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v107);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(v86);
        }

        v31 = v94;
        if (v94 >= v95)
        {
          v33 = __p;
          v34 = v94 - __p;
          v35 = (v94 - __p) >> 4;
          v36 = v35 + 1;
          if ((v35 + 1) >> 60)
          {
            std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
          }

          v37 = v95 - __p;
          if ((v95 - __p) >> 3 > v36)
          {
            v36 = v37 >> 3;
          }

          v38 = v37 >= 0x7FFFFFFFFFFFFFF0;
          v39 = 0xFFFFFFFFFFFFFFFLL;
          if (!v38)
          {
            v39 = v36;
          }

          p_p = &__p;
          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>>(&__p, v39);
          }

          v40 = (16 * v35);
          *v40 = 0;
          v40[1] = 0;
          p_shared_weak_owners = (16 * v35 + 16);
          memcpy(0, v33, v34);
          v41 = __p;
          v42 = v95;
          __p = 0;
          v94 = p_shared_weak_owners;
          v95 = 0;
          *&v108 = v41;
          *(&v108 + 1) = v42;
          *(&v107 + 1) = v41;
          *&v107 = v41;
          std::__split_buffer<std::shared_ptr<MIL::IROperation>>::~__split_buffer(&v107);
        }

        else
        {
          v94->__vftable = 0;
          v31->__shared_owners_ = 0;
          p_shared_weak_owners = &v31->__shared_weak_owners_;
        }

        v94 = p_shared_weak_owners;
        v43 = [[SNNMILNamedValue alloc] initWithName:v30];
        [v65 addObject:v43];
        [(NSMutableArray *)self->_outputNames addObject:v30];
      }

      v24 = [v63 countByEnumeratingWithState:&v89 objects:v111 count:16];
    }

    while (v24);
  }

  v107 = 0u;
  v108 = 0u;
  LODWORD(p_p) = 1065353216;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v68 = attributesCopy;
  v44 = [v68 countByEnumeratingWithState:&v82 objects:v110 count:16];
  if (v44)
  {
    v45 = *v83;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v83 != v45)
        {
          objc_enumerationMutation(v68);
        }

        v47 = *(*(&v82 + 1) + 8 * m);
        v48 = [v68 objectForKeyedSubscript:v47];
        WeakRetained = objc_loadWeakRetained(&self->_context);
        if (v48)
        {
          objc_msgSend_milValueWithContext_(v48);
        }

        else
        {
          v81 = 0;
        }

        if (v47)
        {
          objc_msgSend_cxxString(v47);
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
        }

        v76 = &v78;
        v106 = &v81;
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<MIL::IRValue const> &&>>(&v107, &v78, &std::piecewise_construct, &v76, &v106);
        if (SHIBYTE(v80) < 0)
        {
          operator delete(v78);
        }

        v50 = v81;
        v81 = 0;
        if (v50)
        {
          (*(*v50 + 8))(v50);
        }
      }

      v44 = [v68 countByEnumeratingWithState:&v82 objects:v110 count:16];
    }

    while (v44);
  }

  v51 = objc_loadWeakRetained(&self->_context);
  [v51 platformOpset];
  if (namedCopy)
  {
    objc_msgSend_cxxString(namedCopy);
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  MIL::IROpset::TryGetOperatorSharedPtr();
  if (SHIBYTE(v80) < 0)
  {
    operator delete(v78);
  }

  if (!v76)
  {
    __assert_rtn("[SNNMILFunctionBuilder outputsByApplyingOperatorNamed:toInputs:outputs:attributes:location:]", "SNNMILBuilders.mm", 324, "op");
  }

  if (locationCopy)
  {
    objc_msgSend_milLocation(locationCopy);
    v52 = v73;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v70, "");
    MIL::TextFileLocation::Make();
    v52 = v72;
    v72 = 0;
    v73 = v52;
  }

  v74 = v52;
  if (v52)
  {
    operator new();
  }

  v75 = 0;
  v73 = 0;
  v69 = v77;
  if (v77)
  {
    atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v78 = 0;
  v79 = 0;
  v80 = 0;
  MIL::IROperation::Make();
  v106 = &v78;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v106);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  v53 = v73;
  v73 = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  if (!locationCopy)
  {
    v54 = v72;
    v72 = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    if (v71 < 0)
    {
      operator delete(v70);
    }
  }

  v78 = v81;
  if (v81)
  {
    operator new();
  }

  v79 = 0;
  v81 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](&self->_operations.__begin_, &v78);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  v55 = v65;
  v56 = v81;
  v81 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&v107);
  *&v107 = &__p;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v107);

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&v104, v105[0]);

  return v55;
}

- (id)outputsByApplyingOperatorNamed:(id)named toInputs:(id)inputs outputs:(id)outputs location:(id)location
{
  namedCopy = named;
  inputsCopy = inputs;
  outputsCopy = outputs;
  locationCopy = location;
  v14 = [MEMORY[0x277CBEC10] mutableCopy];
  v15 = [(SNNMILFunctionBuilder *)self outputsByApplyingOperatorNamed:namedCopy toInputs:inputsCopy outputs:outputsCopy attributes:v14 location:locationCopy];

  return v15;
}

- (id)nextSymbol
{
  v2 = MEMORY[0x277CCACA8];
  symbolCounter = self->_symbolCounter;
  self->_symbolCounter = symbolCounter + 1;
  return [v2 stringWithFormat:@"data_%lu", symbolCounter];
}

- (const)tensorValueTypeWithShape:(id)shape dataType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  __p = 0;
  v24 = 0;
  v25 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  shapeCopy = shape;
  v6 = [shapeCopy countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(shapeCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_context);
        v11 = WeakRetained;
        if (WeakRetained)
        {
          objc_msgSend_context(WeakRetained);
          v12 = v17;
        }

        else
        {
          v12 = 0;
          v17 = 0;
          v18 = 0;
        }

        v13 = MIL::IRConstantDimension::Make(v12, [v9 unsignedIntegerValue]);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v17 = v13;
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&__p, &v17);
      }

      v6 = [shapeCopy countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = objc_loadWeakRetained(&self->_context);
  objc_msgSend_context(v14);
  v15 = MIL::IRTensorValueType::MakeWithShape();
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v15;
}

- (unique_ptr<MIL::IRArgument,)milArgumentForSNNMILValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_name(valueCopy);
    v6 = v5;
    if (v5)
    {
      objc_msgSend_cxxString(v5);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    MIL::IRArgument::Make();
    if (v11 < 0)
    {
      operator delete(v10);
    }
  }

  else
  {
    [valueCopy conformsToProtocol:&unk_286D64AF0];
    v7 = valueCopy;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    if (v7)
    {
      objc_msgSend_milValueWithContext_(v7);
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      operator new();
    }

    MIL::IRArgument::Make();
  }

  return v9;
}

- (BOOL)isUniqueOutputName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    objc_msgSend_cxxString(nameCopy);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  begin = self->_outputs.__begin_;
  end = self->_outputs.__end_;
  if (begin != end)
  {
    v8 = begin + 3;
    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v8 - 3), *(v8 - 2));
      }

      else
      {
        v9 = *(v8 - 3);
        __p.__r_.__value_.__r.__words[2] = *(v8 - 1);
        *&__p.__r_.__value_.__l.__data_ = v9;
      }

      if (v22 >= 0)
      {
        v10 = HIBYTE(v22);
      }

      else
      {
        v10 = v21;
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v10 == size)
      {
        break;
      }

      v15 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      v16 = v8 == end || v15;
      v8 += 3;
      if (v16)
      {
        v17 = !v15;
        goto LABEL_31;
      }
    }

    if (v22 >= 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = memcmp(v13, p_p, v10) == 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_25;
  }

  v17 = 1;
LABEL_31:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  return v17;
}

- (SNNMILContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

- (void)constantOperationWithValue:(uint64_t *)a1 name:location:.cold.1(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_0_2(a1))
  {
    OUTLINED_FUNCTION_0_1();
    (*(v1 + 8))();
  }

  OUTLINED_FUNCTION_2_0();
}

- (void)constantValue:(uint64_t *)a1 name:location:.cold.1(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_0_2(a1))
  {
    OUTLINED_FUNCTION_0_1();
    (*(v1 + 8))();
  }

  OUTLINED_FUNCTION_2_0();
}

@end