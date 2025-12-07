void sub_1A744C1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (*(v40 - 185) < 0)
  {
    operator delete(*(v39 + 112));
  }

  *(v39 + 112) = v40 - 96;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v40 - 208));
  *(v39 + 112) = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v40 - 208));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a26);
  if (a37 < 0)
  {
    operator delete(*(v39 + 48));
  }

  _Unwind_Resume(a1);
}

void sub_1A744C310()
{
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v1 - 128);
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v0 + 112));
  }

  JUMPOUT(0x1A744C2E0);
}

void sub_1A744C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v17 - 73) < 0)
  {
    operator delete(*(v16 + 224));
  }

  JUMPOUT(0x1A744C2F0);
}

void MILOpConverter::Softplus(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v88[0] = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v81);
  if (SHIBYTE(v81.__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v81.__begin_->__r_.__value_.__l.__data_, v81.__begin_->__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&v81.__begin_->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v81.__begin_->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v6;
  }

  *&v68[0] = &v81;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v68);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v8 = MIL::IRValueType::AsTensorType(OutputType);
  v9 = (*(*v8 + 88))(v8);
  std::string::basic_string[abi:ne200100]<0>(&v81, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v11);
  if (SHIBYTE(v81.__end_cap_.__value_) < 0)
  {
    operator delete(v81.__begin_);
  }

  memset(v68, 0, sizeof(v68));
  std::string::basic_string[abi:ne200100]<0>(v85, "x");
  memset(&v81, 0, sizeof(v81));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v81, v85, &v87, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v68, a1, &v81, a3, &v66);
  v65.__begin_ = &v81;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v86 < 0)
  {
    operator delete(v85[0]);
  }

  v81.__begin_ = 3;
  std::string::basic_string[abi:ne200100]<0>(&v81.__end_, "NCW");
  v82 = 4;
  std::string::basic_string[abi:ne200100]<0>(v83, "NCHW");
  v83[3] = 5;
  std::string::basic_string[abi:ne200100]<0>(v84, "NCDHW");
  std::map<long,std::string>::map[abi:ne200100](v85, &v81, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v84[i + 2]) < 0)
    {
      operator delete(v84[i]);
    }
  }

  memset(&v81, 0, sizeof(v81));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v81, v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 3));
  v14 = (a2 + 8);
  v15 = *(a2 + 31);
  if (v15 < 0)
  {
    if (*(a2 + 16) != 19)
    {
      goto LABEL_56;
    }

    v16 = *v14;
  }

  else
  {
    v16 = (a2 + 8);
    if (v15 != 19)
    {
      goto LABEL_56;
    }
  }

  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 11);
  if (v17 == 0x73756C7074666F73 && v18 == 0x74656D617261705FLL && v19 == 0x63697274656D6172)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v69.__r_.__value_.__l.__size_;
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, size + 23);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      p_p = __p.__begin_;
    }

    if (size)
    {
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v69;
      }

      else
      {
        v24 = v69.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v24, size);
    }

    strcpy(p_p + size, "__@convert_input_layout");
    ZinMILUnitBuilder::DeclareCustomOperationInputLayout(&v65, a3, MILTensorRank, v66, v85, v9);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "beta");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v69.__r_.__value_.__l.__size_;
    }

    v27 = &v61;
    std::string::basic_string[abi:ne200100](&v61, v26 + 7);
    if (v63 < 0)
    {
      v27 = v61;
    }

    if (v26)
    {
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v69;
      }

      else
      {
        v28 = v69.__r_.__value_.__r.__words[0];
      }

      memmove(v27, v28, v26);
    }

    strcpy(v27 + v26, "__@beta");
    begin = v65.__begin_;
    v80 = ParameterValue;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v58, &v80, &v81, 1uLL);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v78[0] = &unk_1F1A399E8;
    v78[3] = v78;
    v79 = 0;
    v76[0] = &unk_1F1A399E8;
    v76[3] = v76;
    v77 = 0;
    ZinMILUnitBuilder::InsertAxPlusB(&v61, begin, &v58, &v55, a3, v78, &__p, v76);
    std::vector<std::string>::__vdeallocate(&v81);
    v81 = __p;
    memset(&__p, 0, sizeof(__p));
    v87 = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v87);
    std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v76);
    std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v78);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v61);
    }

    __p.__begin_ = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

LABEL_56:
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v69.__r_.__value_.__l.__size_;
  }

  v31 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v30 + 6);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v31 = __p.__begin_;
  }

  if (v30)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v69;
    }

    else
    {
      v32 = v69.__r_.__value_.__r.__words[0];
    }

    memmove(v31, v32, v30);
  }

  strcpy(v31 + v30, "__@exp");
  v75[0] = &unk_1F1A39F68;
  v75[3] = v75;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v81, v75, &v65);
  std::vector<std::string>::__vdeallocate(&v81);
  v81 = v65;
  memset(&v65, 0, sizeof(v65));
  v61 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v75);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v69.__r_.__value_.__l.__size_;
  }

  v34 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v33 + 11);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v34 = __p.__begin_;
  }

  if (v33)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v69;
    }

    else
    {
      v35 = v69.__r_.__value_.__r.__words[0];
    }

    memmove(v34, v35, v33);
  }

  strcpy(v34 + v33, "__@plus_one");
  v36 = v81.__begin_;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  LODWORD(v87) = 1065353216;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v58, &v87, &v87 + 1, 1uLL);
  ZinMILUnitBuilder::InsertAxPlusB(&__p.__begin_, v36, &v61, &v58, a3, &v65);
  std::vector<std::string>::__vdeallocate(&v81);
  v81 = v65;
  memset(&v65, 0, sizeof(v65));
  v55 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v69.__r_.__value_.__l.__size_;
  }

  v38 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v37 + 7);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v38 = __p.__begin_;
  }

  if (v37)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v69;
    }

    else
    {
      v39 = v69.__r_.__value_.__r.__words[0];
    }

    memmove(v38, v39, v37);
  }

  strcpy(v38 + v37, "__@log2");
  v74[0] = &unk_1F1A39FE8;
  v74[3] = v74;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v81, v74, &v65);
  std::vector<std::string>::__vdeallocate(&v81);
  v81 = v65;
  memset(&v65, 0, sizeof(v65));
  v61 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v74);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v69.__r_.__value_.__l.__size_;
  }

  v41 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v40 + 8);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v41 = __p.__begin_;
  }

  if (v40)
  {
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v69;
    }

    else
    {
      v42 = v69.__r_.__value_.__r.__words[0];
    }

    memmove(v41, v42, v40);
  }

  strcpy(v41 + v40, "__@log2e");
  v43 = v81.__begin_;
  LODWORD(v87) = 1060208640;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v61, &v87, &v87 + 1, 1uLL);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  ZinMILUnitBuilder::InsertAxPlusB(&__p.__begin_, v43, &v61, &v58, a3, &v65);
  std::vector<std::string>::__vdeallocate(&v81);
  v81 = v65;
  memset(&v65, 0, sizeof(v65));
  v55 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  v44 = *(a2 + 31);
  if (v44 < 0)
  {
    if (*(a2 + 16) != 19)
    {
      goto LABEL_155;
    }

    v14 = *v14;
  }

  else if (v44 != 19)
  {
    goto LABEL_155;
  }

  if (*v14 == 0x73756C7074666F73 && v14[1] == 0x74656D617261705FLL && *(v14 + 11) == 0x63697274656D6172)
  {
    std::string::basic_string[abi:ne200100]<0>(&v65, "alpha");
    v47 = MIL::IROperation::TryGetParameterValue();
    if (SHIBYTE(v65.__end_cap_.__value_) < 0)
    {
      operator delete(v65.__begin_);
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v69.__r_.__value_.__l.__size_;
    }

    v49 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v48 + 8);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      v49 = __p.__begin_;
    }

    if (v48)
    {
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v69;
      }

      else
      {
        v50 = v69.__r_.__value_.__r.__words[0];
      }

      memmove(v49, v50, v48);
    }

    strcpy(v49 + v48, "__@alpha");
    v51 = v81.__begin_;
    v87 = v47;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v61, &v87, v88, 1uLL);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v72[0] = &unk_1F1A399E8;
    v72[3] = v72;
    v73 = 0;
    v70[0] = &unk_1F1A399E8;
    v70[3] = v70;
    v71 = 0;
    ZinMILUnitBuilder::InsertAxPlusB(&__p.__begin_, v51, &v61, &v58, a3, v72, &v65, v70);
    std::vector<std::string>::__vdeallocate(&v81);
    v81 = v65;
    memset(&v65, 0, sizeof(v65));
    v55 = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
    std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v70);
    std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v72);
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v69.__r_.__value_.__l.__size_;
    }

    v53 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v52 + 24);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      v53 = __p.__begin_;
    }

    if (v52)
    {
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v69;
      }

      else
      {
        v54 = v69.__r_.__value_.__r.__words[0];
      }

      memmove(v53, v54, v52);
    }

    strcpy(v53 + v52, "__@convert_output_layout");
    ZinMILUnitBuilder::ConvertToDefaultLayout(&v65, a3, MILTensorRank, v81.__begin_, v85, v9);
    std::vector<std::string>::__vdeallocate(&v81);
    v81 = v65;
    memset(&v65, 0, sizeof(v65));
    v61 = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

LABEL_155:
  ZinMILUnitBuilder::Finalize(v68, a3, a1, &v69.__r_.__value_.__l.__data_, v9, 1, 1);
  v65.__begin_ = &v81;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v65);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v85, v85[1]);
  v81.__begin_ = &v66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__begin_ = (&v68[1] + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__begin_ = v68;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v81);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_1A744D10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a26 = v43 - 240;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v43 - 136, *(v43 - 128));
  *(v43 - 240) = &a29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v43 - 240));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a32);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_1A744D2BC()
{
  v1 = v0 + 72;
  v2 = -96;
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 32;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x1A744D284);
    }
  }
}

void sub_1A744D2E8()
{
  while (1)
  {
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 24));
    }

    v0 -= 32;
    if (v0 == v1 - 240)
    {
      JUMPOUT(0x1A744D284);
    }
  }
}

void sub_1A744D31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v22 - 113) < 0)
  {
    operator delete(*(v22 - 136));
  }

  JUMPOUT(0x1A744D294);
}

void MILOpConverter::SigmoidHard(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v25);
  if (*(*&v25[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, **&v25[0], *(*&v25[0] + 8));
  }

  else
  {
    v5 = **&v25[0];
    v26.__r_.__value_.__r.__words[2] = *(*&v25[0] + 16);
    *&v26.__r_.__value_.__l.__data_ = v5;
  }

  v40[0] = v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v25, 0, sizeof(v25));
  std::string::basic_string[abi:ne200100]<0>(v35, "x");
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v40, v35, &v37, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v25, a1, v40, a3, v24);
  v23.__begin_ = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v40, "alpha");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v40, "beta");
  v10 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  v39[0] = &unk_1F1A3A068;
  v39[3] = v39;
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v40, v39);
  v42 = 1;
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v39);
  v34[0] = &unk_1F1A3A0E8;
  v34[3] = v34;
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v35, v34);
  v38 = 2;
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v34);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  begin = &v22;
  std::string::basic_string[abi:ne200100](&v22, size + 13);
  if (SHIBYTE(v22.__end_cap_.__value_) < 0)
  {
    begin = v22.__begin_;
  }

  if (size)
  {
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v26;
    }

    else
    {
      v13 = v26.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v13, size);
  }

  strcpy(begin + size, "__@alpha_beta");
  v14 = v24[0];
  v33 = ParameterValue;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&v19, &v33, v34, 1uLL);
  v32 = v10;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<__CFNumber const*>::__init_with_size[abi:ne200100]<__CFNumber const* const*,__CFNumber const* const*>(&__p, &v32, &v33, 1uLL);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v30, v40);
  v31 = v42;
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v28, v35);
  v29 = v38;
  ZinMILUnitBuilder::InsertAxPlusB(&v22.__begin_, v14, &v19, &__p, a3, v30, &v23, v28);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v28);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v30);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (SHIBYTE(v22.__end_cap_.__value_) < 0)
  {
    operator delete(v22.__begin_);
  }

  v27[0] = &unk_1F1A3A168;
  v27[3] = v27;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&v23, v27, &v22);
  std::vector<std::string>::__vdeallocate(&v23);
  v23 = v22;
  memset(&v22, 0, sizeof(v22));
  v19 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v27);
  ZinMILUnitBuilder::Finalize(v25, a3, a1, &v26.__r_.__value_.__l.__data_, v8, 1, 1);
  v22.__begin_ = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v35);
  v15 = std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v40);
  v40[0] = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v15);
  v40[0] = &v25[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  v40[0] = v25;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v40);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1A744D83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  *(v51 - 112) = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v51 - 112));
  _Unwind_Resume(a1);
}

void sub_1A744D940()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1A744D8F8);
}

void sub_1A744D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v20 - 161) < 0)
  {
    operator delete(*(v20 - 184));
  }

  JUMPOUT(0x1A744D908);
}

void MILOpConverter::ClampedRelu(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v15);
  if (*(*&v15[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, **&v15[0], *(*&v15[0] + 8));
  }

  else
  {
    v5 = **&v15[0];
    v16.__r_.__value_.__r.__words[2] = *(*&v15[0] + 16);
    *&v16.__r_.__value_.__l.__data_ = v5;
  }

  v14[0] = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v15, 0, sizeof(v15));
  std::string::basic_string[abi:ne200100]<0>(&v20, "x");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v20, &v21, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v15, a1, &__p, a3, v14);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (SHIBYTE(v20.__end_cap_.__value_) < 0)
  {
    operator delete(v20.__begin_);
  }

  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "alpha");
  RetrieveRequiredValue<float>(a1, &__p, &v12 + 1, 0);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "beta");
  RetrieveRequiredValue<float>(a1, &__p, &v12, 0);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  begin = &v20;
  std::string::basic_string[abi:ne200100](&v20, size + 13);
  if (SHIBYTE(v20.__end_cap_.__value_) < 0)
  {
    begin = v20.__begin_;
  }

  if (size)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    memmove(begin, v11, size);
  }

  strcpy(begin + size, "__@leaky_relu");
  v19[0] = &unk_1F1A3A1E8;
  v19[1] = &v12 + 4;
  v19[3] = v19;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v14, v19, &__p);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v19);
  if (SHIBYTE(v20.__end_cap_.__value_) < 0)
  {
    operator delete(v20.__begin_);
  }

  v18[0] = &unk_1F1A3A268;
  v18[1] = &v12;
  v18[3] = v18;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(&__p, v18, &v20);
  std::vector<std::string>::__vdeallocate(&__p);
  __p = v20;
  memset(&v20, 0, sizeof(v20));
  p_p = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v18);
  ZinMILUnitBuilder::Finalize(v15, a3, a1, &v16.__r_.__value_.__l.__data_, v8, 1, 1);
  v20.__begin_ = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  __p.__begin_ = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v14[0] = &v15[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0] = v15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1A744DD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  a17 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void MILOpConverter::Gamma(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
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
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A3A2E8;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A744E088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MILOpConverter::DeGamma(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
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
  std::string::basic_string[abi:ne200100]<0>(v16, "x");
  memset(v10, 0, sizeof(v10));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v10, v16, &v18, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v12, a1, v10, a3, v11);
  v14 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v15[0] = &unk_1F1A3A368;
  v15[3] = v15;
  ZinMILUnitBuilder::CreateUnit<ZinIrNeuronUnitInfo>(v11, v15, v9);
  v10[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](v15);
  ZinMILUnitBuilder::Finalize(v12, a3, a1, &v13.__r_.__value_.__l.__data_, v8, 1, 1);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  v11[0] = &v12[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v11[0] = v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1A744E35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

_OWORD *std::vector<MILToUnitConversion>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MILToUnitConversion>::__emplace_back_slow_path<MILToUnitConversion>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = v3 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  a1[1] = result;
  return result;
}

void *std::vector<MILToUnitConversion>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MILToUnitConversion>::__emplace_back_slow_path<MILToUnitConversion const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = v3 + 2;
  }

  a1[1] = result;
  return result;
}

void ZinIrNeuronUnitInfo::ZinIrNeuronUnitInfo(ZinIrNeuronUnitInfo *this, const ZinIrNeuronUnitInfo *a2)
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
  *this = &unk_1F19CEE38;
  v6 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v6;
}

void sub_1A744E60C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MILToUnitConversion>::__emplace_back_slow_path<MILToUnitConversion>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  *(&v16 + 1) = 0;
  *(16 * v2) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v16 = 16 * v2 + 16;
  v8 = a1[1];
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(&v14);
  return v13;
}

void sub_1A744E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILToUnitConversion>,MILToUnitConversion*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MILToUnitConversion>,MILToUnitConversion*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ZinIrTensor>>,std::shared_ptr<ZinIrTensor>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ZinIrNeuronUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrNeuronUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<MILToUnitConversion>::__emplace_back_slow_path<MILToUnitConversion const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *&v18 = v8 + 1;
  v10 = a1[1];
  v11 = (v8 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MILToUnitConversion>,MILToUnitConversion*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(&v16);
  return v15;
}

void sub_1A744E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A39758;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  __p[1] = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = -1;
  __p[0] = &unk_1F19CEE38;
  v17 = 0;
  v18 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v19 = _D0;
  v20 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, __p);
  ZinIrUnitInfo::~ZinIrUnitInfo(__p);
  v9 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  RetrieveRequiredValue<float>(v9, __p, a2 + 25, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  a2[8] = 6;
  a2[20] = 18;
}

void sub_1A744EB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Elu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrNeuronUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<MILOpConverter::Gelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 23;
}

uint64_t std::__function::__func<MILOpConverter::Gelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A39868;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
{
  __p[1] = 0;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = -1;
  __p[0] = &unk_1F19CEE38;
  v17 = 0;
  v18 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v19 = _D0;
  v20 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, __p);
  ZinIrUnitInfo::~ZinIrUnitInfo(__p);
  a2[8] = 6;
  a2[20] = 2;
  v9 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  RetrieveRequiredValue<float>(v9, __p, a2 + 22, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A744EF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::LeakyRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A398E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = **(a1 + 8);
}

uint64_t std::__function::__func<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SimpleActivation(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Relu6(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Relu6(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
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
  a2[8] = 6;
  a2[20] = 3;
  a2[24] = 1086324736;
}

uint64_t std::__function::__func<MILOpConverter::Relu6(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Relu6(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

double std::__function::__func<WeightTransform<float,float>::WeightTransform(void)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<WeightTransform<float,float>::WeightTransform(void)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::operator()@<D0>(uint64_t **a1@<X1>, std::vector<unsigned int> *a2@<X8>)
{
  v3 = *a1;
  if (a1[1] - *a1 != 8)
  {
    ZinAssertImpl("Error: Default Weight transform can only handle one IRValue at a time.");
  }

  memset(&v5, 0, sizeof(v5));
  RetrieveIRValue<float,float>(*v3, &v5);
  result = *&v5.__begin_;
  *a2 = v5;
  return result;
}

void sub_1A744F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<WeightTransform<float,float>::WeightTransform(void)::{lambda(std::vector<MIL::IRValue const*> const&)#1},std::allocator<WeightTransform<float,float>::WeightTransform(void)::{lambda(std::vector<MIL::IRValue const*> const&)#1}>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::ScaledTanh(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ScaledTanh(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 7;
}

uint64_t std::__function::__func<MILOpConverter::ScaledTanh(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ScaledTanh(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A39AF8;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
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
  a2[20] = 2;
  v9 = **(a1 + 8);
  result = *v9;
  a2[22] = *v9;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::map<long,std::string>::map[abi:ne200100](uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_hint_unique_key_args<long,std::pair<long const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__emplace_hint_unique_key_args<long,std::pair<long const,std::string> const&>(uint64_t **a1, void *a2, uint64_t *a3, uint64_t a4)
{
  result = *std::__tree<long>::__find_equal<long>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<long,std::string>,std::__map_value_compare<long,std::__value_type<long,std::string>,std::less<long>,true>,std::allocator<std::__value_type<long,std::string>>>::__construct_node<std::pair<long const,std::string> const&>();
  }

  return result;
}

void sub_1A744F980(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 1;
}

uint64_t std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 3;
  *&result = 4286578688;
  *(a2 + 92) = 4286578688;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinIrEWUnitInfo::ZinIrEWUnitInfo(ZinIrEWUnitInfo *this, const ZinIrEWUnitInfo *a2)
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
  *this = &unk_1F1A2EA10;
  *(this + 20) = *(a2 + 20);
}

void sub_1A744FD9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrEWUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrEWUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 1;
}

void sub_1A744FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::PRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A39D68;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
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
  a2[20] = 31;
  v9 = *(a1 + 8);
  result = *v9;
  a2[26] = *v9;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ThresholdedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 9;
}

void sub_1A74502E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 14;
}

uint64_t std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 2;
}

void sub_1A74505E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::Softsign(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 17;
}

uint64_t std::__function::__func<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Softplus(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::operator()(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  RetrieveIRValue<float,float>(**a1, &__p);
  v3 = *__p.__begin_ / 0.2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a2, &v3, &__p, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1A7450A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::operator()(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  RetrieveIRValue<float,float>(**a1, &__p);
  v3 = (*__p.__begin_ + -0.5) / 0.2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a2, &v3, &__p, 1uLL);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1A7450BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 22;
}

uint64_t std::__function::__func<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::SigmoidHard(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A1E8;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, _DWORD *a2)
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
  a2[20] = 2;
  v9 = *(a1 + 8);
  result = *v9;
  a2[22] = *v9;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A268;
  a2[1] = v2;
  return result;
}

float std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v10[1], 0, 24);
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = -1;
  v10[0] = &unk_1F19CEE38;
  v15 = 0;
  v16 = xmmword_1A75A3510;
  __asm { FMOV            V0.2S, #1.0 }

  v17 = _D0;
  v18 = 0;
  std::optional<ZinIrNeuronUnitInfo>::operator=[abi:ne200100]<ZinIrNeuronUnitInfo&,void>(a2, v10);
  ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  *(a2 + 32) = 6;
  *(a2 + 80) = 3;
  result = **(a1 + 8);
  *(a2 + 96) = result;
  *(a2 + 92) = -8388608;
  return result;
}

uint64_t std::__function::__func<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::ClampedRelu(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Gamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 32;
}

uint64_t std::__function::__func<MILOpConverter::Gamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Gamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::DeGamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::DeGamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 24;
}

uint64_t std::__function::__func<MILOpConverter::DeGamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::DeGamma(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrNeuronUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::Select(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v58 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(&v55);
  if (*(v55.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *v55.__r_.__value_.__l.__data_, *(v55.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v5 = *v55.__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = *(v55.__r_.__value_.__r.__words[0] + 16);
    *&v44.__r_.__value_.__l.__data_ = v5;
  }

  *&v43[0] = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v43);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v43, 0, sizeof(v43));
  std::string::basic_string[abi:ne200100]<0>(&v55, "cond");
  std::string::basic_string[abi:ne200100]<0>(&v56, "a");
  std::string::basic_string[abi:ne200100]<0>(v57, "b");
  memset(v41, 0, sizeof(v41));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v41, &v55, &v58, 3uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v43, a1, v41, a3, v42);
  v40[0] = v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v57[i + 2]) < 0)
    {
      operator delete(v57[i]);
    }
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v11 = &v55;
  std::string::basic_string[abi:ne200100](&v55, size + 14);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v55.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v44;
    }

    else
    {
      v12 = v44.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, size);
  }

  strcpy(v11 + size, "__@ew_neq_zero");
  if (*(v42[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *v42[0], *(v42[0] + 8));
  }

  else
  {
    v13 = *v42[0];
    v53.__r_.__value_.__r.__words[2] = *(v42[0] + 16);
    *&v53.__r_.__value_.__l.__data_ = v13;
  }

  memset(v40, 0, sizeof(v40));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v40, &v53, &v54, 1uLL);
  v52[0] = &unk_1F1A3A3E8;
  v52[3] = v52;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(v40, v52, v41);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v52);
  v50.__r_.__value_.__r.__words[0] = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v44.__r_.__value_.__l.__size_;
  }

  v15 = &v55;
  std::string::basic_string[abi:ne200100](&v55, v14 + 13);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v55.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v44;
    }

    else
    {
      v16 = v44.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, "__@ew_eq_zero");
  if (*(v42[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, *v42[0], *(v42[0] + 8));
  }

  else
  {
    v17 = *v42[0];
    v50.__r_.__value_.__r.__words[2] = *(v42[0] + 16);
    *&v50.__r_.__value_.__l.__data_ = v17;
  }

  memset(&v53, 0, sizeof(v53));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v53, &v50, &v51, 1uLL);
  v49[0] = &unk_1F1A3A468;
  v49[3] = v49;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(&v53, v49, v40);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v49);
  __p[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v44.__r_.__value_.__l.__size_;
  }

  v19 = &v50;
  std::string::basic_string[abi:ne200100](&v50, v18 + 11);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v50.__r_.__value_.__r.__words[0];
  }

  if (v18)
  {
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v44;
    }

    else
    {
      v20 = v44.__r_.__value_.__r.__words[0];
    }

    memmove(v19, v20, v18);
  }

  strcpy(v19 + v18, "__@ew_mul_0");
  if (*(v41[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *v41[0], v41[0][1]);
  }

  else
  {
    v21 = *v41[0];
    v55.__r_.__value_.__r.__words[2] = v41[0][2];
    *&v55.__r_.__value_.__l.__data_ = v21;
  }

  if (*(v42[0] + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *(v42[0] + 24), *(v42[0] + 32));
  }

  else
  {
    v22 = *(v42[0] + 24);
    v56.__r_.__value_.__r.__words[2] = *(v42[0] + 40);
    *&v56.__r_.__value_.__l.__data_ = v22;
  }

  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v55, v57, 2uLL);
  v48[0] = &unk_1F1A3A4E8;
  v48[3] = v48;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(__p, v48, &v53);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v48);
  v36[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v36);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v55 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v44.__r_.__value_.__l.__size_;
  }

  v25 = __p;
  std::string::basic_string[abi:ne200100](__p, v24 + 11);
  if (v39 < 0)
  {
    v25 = __p[0];
  }

  if (v24)
  {
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v44;
    }

    else
    {
      v26 = v44.__r_.__value_.__r.__words[0];
    }

    memmove(v25, v26, v24);
  }

  strcpy(v25 + v24, "__@ew_mul_1");
  if (*(v40[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *v40[0], v40[0][1]);
  }

  else
  {
    v27 = *v40[0];
    v55.__r_.__value_.__r.__words[2] = v40[0][2];
    *&v55.__r_.__value_.__l.__data_ = v27;
  }

  if (*(v42[0] + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *(v42[0] + 48), *(v42[0] + 56));
  }

  else
  {
    v56 = *(v42[0] + 48);
  }

  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v36, &v55, v57, 2uLL);
  v47[0] = &unk_1F1A3A568;
  v47[3] = v47;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(v36, v47, &v50);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v47);
  v35[0] = v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v35);
  for (k = 0; k != -6; k -= 3)
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v55 + k * 8 + 24));
    }
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v44.__r_.__value_.__l.__size_;
  }

  v30 = v36;
  std::string::basic_string[abi:ne200100](v36, v29 + 9);
  if (v37 < 0)
  {
    v30 = v36[0];
  }

  if (v29)
  {
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v44;
    }

    else
    {
      v31 = v44.__r_.__value_.__r.__words[0];
    }

    memmove(v30, v31, v29);
  }

  strcpy(v30 + v29, "__@ew_add");
  if (*(v53.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *v53.__r_.__value_.__l.__data_, *(v53.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v32 = *v53.__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = *(v53.__r_.__value_.__r.__words[0] + 16);
    *&v55.__r_.__value_.__l.__data_ = v32;
  }

  if (*(v50.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *v50.__r_.__value_.__l.__data_, *(v50.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v33 = *v50.__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = *(v50.__r_.__value_.__r.__words[0] + 16);
    *&v56.__r_.__value_.__l.__data_ = v33;
  }

  memset(v35, 0, sizeof(v35));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v35, &v55, v57, 2uLL);
  v46[0] = &unk_1F1A3A5E8;
  v46[3] = v46;
  ZinMILUnitBuilder::CreateUnit<ZinIrEWUnitInfo>(v35, v46, __p);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v46);
  v45 = v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v55 + m * 8 + 24));
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  ZinMILUnitBuilder::Finalize(v43, a3, a1, &v44.__r_.__value_.__l.__data_, v8, 1, 1);
  v55.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = &v43[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55.__r_.__value_.__r.__words[0] = v43;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1A7451E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v50 - 128) = v50 - 224;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 128));
  *(v50 - 128) = v50 - 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 128));
  *(v50 - 128) = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 128));
  *(v50 - 128) = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 128));
  *(v50 - 128) = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v50 - 128));
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&a33);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void sub_1A7451FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  v45 = (v44 - 81);
  v46 = -48;
  v47 = (v44 - 81);
  while (1)
  {
    v48 = *v47;
    v47 -= 24;
    if (v48 < 0)
    {
      operator delete(*(v45 - 23));
    }

    v45 = v47;
    v46 += 24;
    if (!v46)
    {
      JUMPOUT(0x1A7452048);
    }
  }
}

void sub_1A7452064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v12 - 256);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v12 - 201) < 0)
  {
    operator delete(*(v12 - 224));
  }

  if (*(v12 - 105) < 0)
  {
    operator delete(*(v12 - 128));
  }

  JUMPOUT(0x1A7451FBCLL);
}

void sub_1A74520B0()
{
  std::__function::__value_func<void ()(std::optional<ZinIrEWUnitInfo> &)>::~__value_func[abi:ne200100](v1 - 192);
  *(v1 - 224) = v0;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v1 - 224));
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  JUMPOUT(0x1A7451FCCLL);
}

void sub_1A74520FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v18 = (v17 - 57);
  v19 = -72;
  v20 = (v17 - 57);
  while (1)
  {
    v21 = *v20;
    v20 -= 24;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 24;
    if (!v19)
    {
      JUMPOUT(0x1A7451FDCLL);
    }
  }
}

void sub_1A7452154()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == (v1 - 128))
    {
      JUMPOUT(0x1A7451FDCLL);
    }
  }
}

void std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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

void sub_1A7452298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 10;
}

void sub_1A745240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_1>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 2;
}

void sub_1A7452580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_2>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 2;
}

void sub_1A74526F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_3>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrEWUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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
  *(a2 + 80) = 1;
}

void sub_1A7452868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4,std::allocator<MILOpConverter::Select(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_4>,void ()(std::optional<ZinIrEWUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MIL::Opsets::Custom::ane::aneOpset::Register(uint64_t a1)
{
  v2 = 3;
  LODWORD(__p) = 6647393;
  operator new();
}

void sub_1A74529DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Custom::ane::aneOpset::Register();
  }

  std::unique_ptr<MIL::Opsets::Custom::ane::aneOpset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Opsets::Custom::ane::aneengineOpset::Register(uint64_t a1)
{
  v2 = 9;
  strcpy(__p, "aneengine");
  operator new();
}

void sub_1A7452B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    MIL::Opsets::Custom::ane::aneOpset::Register();
  }

  std::unique_ptr<MIL::Opsets::Custom::ane::aneOpset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MIL::IROpset **std::unique_ptr<MIL::Opsets::Custom::ane::aneOpset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x1AC55A070]();
  }

  return a1;
}

void sub_1A7452C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  operator new();
}

void sub_1A7452FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Custom::ane::aneOpset::GetOperatorNameToNameMap(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[16],char const(&)[12]>(a1);
}

void sub_1A74531B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  operator new();
}

void sub_1A74535F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void MIL::Opsets::Custom::ane::aneengineOpset::GetOperatorNameToNameMap(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const(&)[16],char const(&)[12]>(a1);
}

void MIL::Opsets::Custom::ane::aneOpset::~aneOpset(MIL::Opsets::Custom::ane::aneOpset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>(uint64_t a1)
{
  std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<std::unique_ptr<MIL::IROperator> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 2);
  v2[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v2 + 2);
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A6E8;
  a2[1] = v2;
  return result;
}

void sub_1A7453B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<MIL::IROperator> ()(void)>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A778;
  a2[1] = v2;
  return result;
}

void sub_1A7453DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A7F8;
  a2[1] = v2;
  return result;
}

void sub_1A7453F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A878;
  a2[1] = v2;
  return result;
}

void sub_1A745407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A8F8;
  a2[1] = v2;
  return result;
}

void sub_1A74541DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A978;
  a2[1] = v2;
  return result;
}

void sub_1A745433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Custom::ane::aneOpset::GetopConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1A7454400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 2);
  v2[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v2 + 2);
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[12],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_1A7454598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3A9F8;
  a2[1] = v2;
  return result;
}

void sub_1A74547F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_0,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_0>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AA78;
  a2[1] = v2;
  return result;
}

void sub_1A7454958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_1,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_1>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AAF8;
  a2[1] = v2;
  return result;
}

void sub_1A7454AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_2,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_2>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AB78;
  a2[1] = v2;
  return result;
}

void sub_1A7454C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_3,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_3>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3ABF8;
  a2[1] = v2;
  return result;
}

void sub_1A7454D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_4,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_4>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AC78;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "ane.pe_goc");
  MIL::Operators::Custom::ane::PEGOC::Make(v1, __p);
}

void sub_1A7454ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_5>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3ACF8;
  a2[1] = v2;
  return result;
}

void sub_1A7455038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_6,std::allocator<MIL::Opsets::Custom::ane::aneengineOpset::GetopConstructors(MIL::MILContext &)::$_6>,std::unique_ptr<MIL::IROperator> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void MILOpConverter::Pad(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v15);
  if (*(*&v15[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, **&v15[0], *(*&v15[0] + 8));
  }

  else
  {
    v5 = **&v15[0];
    v17.__r_.__value_.__r.__words[2] = *(*&v15[0] + 16);
    *&v17.__r_.__value_.__l.__data_ = v5;
  }

  v14[0] = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  v9 = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 96))(v10);
  v16 = (v11[1] - *v11) >> 3;
  memset(v15, 0, sizeof(v15));
  std::string::basic_string[abi:ne200100]<0>(v20, "x");
  memset(v13, 0, sizeof(v13));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v13, v20, &v22, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v15, a1, v13, a3, v14);
  v18 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v19[0] = &unk_1F1A3ADD8;
  v19[1] = a1;
  v19[2] = &v16;
  v19[3] = v19;
  ZinMILUnitBuilder::CreateUnit<ZinIrPadUnitInfo>(v14, v19, v12);
  v13[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  std::__function::__value_func<void ()(std::optional<ZinIrPadUnitInfo> &)>::~__value_func[abi:ne200100](v19);
  ZinMILUnitBuilder::Finalize(v15, a3, a1, &v17.__r_.__value_.__l.__data_, v8, 1, 1);
  v13[0] = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v13);
  v14[0] = &v15[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0] = v15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1A7455350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrPadUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A33FD0;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v10);
  }
}

void sub_1A7455718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrPadUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

ZinIrTextureUnitInfo *std::optional<ZinIrPadUnitInfo>::~optional(ZinIrTextureUnitInfo *this)
{
  if (*(this + 232) == 1)
  {
    *this = &unk_1F1A33FD0;
    v2 = *(this + 25);
    if (v2)
    {
      *(this + 26) = v2;
      operator delete(v2);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
  }

  return this;
}

uint64_t std::__shared_ptr_pointer<ZinIrPadUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPadUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPadUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3ADD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPadUnitInfo> &)>::operator()(uint64_t a1, ZinIrTextureUnitInfo *a2)
{
  v156[0] = *MEMORY[0x1E69E9840];
  memset(&v75[1], 0, 24);
  v77 = 0u;
  v78 = 0u;
  v79 = -1;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v83, 0, sizeof(v83));
  v75[0] = &unk_1F1A33FD0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v76 = 44;
  memset(&v74, 0, sizeof(v74));
  v4 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "pad");
  RetrieveRequiredValue<int>(v4, &__p, &v74, 0);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p);
  }

  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  v5 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "mode");
  RetrieveRequiredValue<std::string>(v5, &__p, v72, 0);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p);
  }

  v71 = 0;
  v6 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, "constant_val");
  RetrieveRequiredValue<float>(v6, &__p, &v71, 0);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p);
  }

  v149[0] = 0;
  v148 = 0;
  memset(v150, 0, sizeof(v150));
  v149[1] = 0;
  v147[0] = &v84;
  v147[1] = &v84 + 4;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v150, v147, &v148, 2uLL);
  v146[0] = &v84;
  v146[1] = &v84 + 4;
  memset(v151, 0, sizeof(v151));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v151, v146, v147, 2uLL);
  v145[0] = &v84;
  v145[1] = &v84 + 4;
  memset(v152, 0, sizeof(v152));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v152, v145, v146, 2uLL);
  v144[0] = &v84;
  v144[1] = &v84 + 4;
  memset(v153, 0, sizeof(v153));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v153, v144, v145, 2uLL);
  v143[0] = &v84;
  v143[1] = &v84 + 4;
  v155[1] = 0;
  v154 = 0;
  v155[0] = 0;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(&v154, v143, v144, 2uLL);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(&v66, &v148, v156, 6uLL);
  __p = 2;
  v93 = 0;
  v95 = 0;
  v94 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(&v93, v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 3));
  memset(v136, 0, sizeof(v136));
  v135[0] = &v84 + 8;
  v135[1] = &v84 + 12;
  v135[2] = &v84;
  v135[3] = &v84 + 4;
  memset(v137, 0, sizeof(v137));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v137, v135, v136, 4uLL);
  v134[0] = &v84 + 8;
  v134[1] = &v84 + 12;
  v134[2] = &v84;
  v134[3] = &v84 + 4;
  memset(v138, 0, sizeof(v138));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v138, v134, v135, 4uLL);
  v133[0] = &v84 + 8;
  v133[1] = &v84 + 12;
  v133[2] = &v84;
  v133[3] = &v84 + 4;
  memset(v139, 0, sizeof(v139));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v139, v133, v134, 4uLL);
  v132[0] = &v84 + 8;
  v132[1] = &v84 + 12;
  v132[2] = &v84;
  v132[3] = &v84 + 4;
  v141[1] = 0;
  v140 = 0;
  v141[0] = 0;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(&v140, v132, v133, 4uLL);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(&v63, v136, &v142, 6uLL);
  v96 = 4;
  v97[0] = 0;
  v98 = 0;
  v97[1] = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(v97, v63, v64, 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 3));
  memset(v128, 0, sizeof(v128));
  memset(v127, 0, sizeof(v127));
  v126[0] = &v85 + 8;
  v126[1] = &v85 + 12;
  v126[2] = &v84 + 8;
  v126[3] = &v84 + 12;
  v126[4] = &v84;
  v126[5] = &v84 + 4;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v128, v126, v127, 6uLL);
  v125[0] = &v85 + 8;
  v125[1] = &v85 + 12;
  v125[2] = &v84 + 8;
  v125[3] = &v84 + 12;
  v125[4] = &v84;
  v125[5] = &v84 + 4;
  memset(v129, 0, sizeof(v129));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v129, v125, v126, 6uLL);
  v124[0] = &v85 + 8;
  v124[1] = &v85 + 12;
  v124[2] = &v84 + 8;
  v124[3] = &v84 + 12;
  v124[4] = &v84;
  v124[5] = &v84 + 4;
  v131[1] = 0;
  v130 = 0;
  v131[0] = 0;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(&v130, v124, v125, 6uLL);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(&v60, v127, v132, 6uLL);
  v99 = 6;
  v100 = 0;
  v102 = 0;
  v101 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(&v100, v60, v61, 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3));
  memset(v120, 0, sizeof(v120));
  v119[0] = &v86;
  v119[1] = &v86 + 4;
  v119[2] = &v85 + 8;
  v119[3] = &v85 + 12;
  v119[4] = &v84 + 8;
  v119[5] = &v84 + 12;
  v119[6] = &v84;
  v119[7] = &v84 + 4;
  memset(v121, 0, sizeof(v121));
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(v121, v119, v120, 8uLL);
  v118[0] = &v85;
  v118[1] = &v85 + 4;
  v118[2] = &v85 + 8;
  v118[3] = &v85 + 12;
  v118[4] = &v84 + 8;
  v118[5] = &v84 + 12;
  v118[6] = &v84;
  v118[7] = &v84 + 4;
  v123[1] = 0;
  v122 = 0;
  v123[0] = 0;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(&v122, v118, v119, 8uLL);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(&v57, v120, v124, 6uLL);
  v103 = 8;
  memset(v104, 0, 24);
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(v104, v57, v58, 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3));
  memset(v115, 0, sizeof(v115));
  v114[0] = &v86;
  v114[1] = &v86 + 4;
  v114[2] = &v85;
  v114[3] = &v85 + 4;
  v114[4] = &v85 + 8;
  v114[5] = &v85 + 12;
  v114[6] = &v84 + 8;
  v114[7] = &v84 + 12;
  v114[8] = &v84;
  v114[9] = &v84 + 4;
  v116 = 0;
  v117[0] = 0;
  v117[1] = 0;
  std::vector<long *>::__init_with_size[abi:ne200100]<long * const*,long * const*>(&v116, v114, v115, 0xAuLL);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(&v54, v115, v118, 6uLL);
  v104[3] = 10;
  v105[0] = 0;
  *v106 = 0;
  v105[1] = 0;
  std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(v105, v54, v55, 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3));
  std::map<unsigned long,std::vector<std::vector<int *>>>::map[abi:ne200100](v69, &__p, 5);
  for (i = 136; i != -24; i -= 32)
  {
    v91 = (&__p + i);
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v91);
  }

  v91 = &v54;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v91);
  for (j = 0; j != -18; j -= 3)
  {
    v9 = v117[j - 1];
    if (v9)
    {
      v117[j] = v9;
      operator delete(v9);
    }
  }

  v115[0] = &v57;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v115);
  for (k = 0; k != -18; k -= 3)
  {
    v11 = v123[k - 1];
    if (v11)
    {
      v123[k] = v11;
      operator delete(v11);
    }
  }

  v120[0] = &v60;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v120);
  for (m = 0; m != -18; m -= 3)
  {
    v13 = v131[m - 1];
    if (v13)
    {
      v131[m] = v13;
      operator delete(v13);
    }
  }

  v127[0] = &v63;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v127);
  for (n = 0; n != -18; n -= 3)
  {
    v15 = v141[n - 1];
    if (v15)
    {
      v141[n] = v15;
      operator delete(v15);
    }
  }

  v136[0] = &v66;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v136);
  for (ii = 0; ii != -18; ii -= 3)
  {
    v17 = v155[ii - 1];
    if (v17)
    {
      v155[ii] = v17;
      operator delete(v17);
    }
  }

  begin = v74.__begin_;
  v19 = v74.__end_ - v74.__begin_;
  v20 = v70[0];
  if (!v70[0])
  {
    goto LABEL_87;
  }

  v21 = v70;
  do
  {
    v22 = *(v20 + 4);
    _CF = v22 >= v19;
    v24 = v22 < v19;
    if (_CF)
    {
      v21 = v20;
    }

    v20 = *&v20[8 * v24];
  }

  while (v20);
  if (v21 == v70 || v19 < v21[4] || (v25 = v21[5], v26 = v21[6], v25 == v26))
  {
LABEL_87:
    ZinAssertImpl("Unsupported padding size %ld", v74.__end_ - v74.__begin_);
  }

  v27 = **(a1 + 16);
  if (v27 >= 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3))
  {
    ZinAssertImpl("Unsupported tensor rank %lu for given padding size %ld", **(a1 + 16), v74.__end_ - v74.__begin_);
  }

  if (v74.__end_ != v74.__begin_)
  {
    v28 = *&v25[24 * v27];
    if (v19 <= 1)
    {
      v19 = 1;
    }

    do
    {
      v30 = *begin++;
      v29 = v30;
      v31 = *v28++;
      *v31 = v29;
      --v19;
    }

    while (v19);
  }

  _S8 = v71;
  std::string::basic_string[abi:ne200100]<0>(&__p, "constant");
  LODWORD(v95) = 7;
  std::string::basic_string[abi:ne200100]<0>(&v96, "reflect");
  LODWORD(v98) = 6;
  std::string::basic_string[abi:ne200100]<0>(&v99, "replicate");
  LODWORD(v102) = 3;
  std::map<std::string,ZinIrPaddingMode>::map[abi:ne200100](&v148, &__p, 3);
  for (jj = 0; jj != -96; jj -= 32)
  {
    if (*(&v101 + jj + 7) < 0)
    {
      operator delete(*(&v99 + jj));
    }
  }

  v34 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v148, v72);
  if (v149 == v34)
  {
    v53 = v72;
    if (v73 < 0)
    {
      v53 = v72[0];
    }

    ZinAssertImpl("Unsupported padding mode: %s", v53);
  }

  v35 = *(v34 + 56);
  if (v35 == 7)
  {
    __asm { FCVT            H0, S8 }

    v90 = _H0;
  }

  LODWORD(__p) = 0;
  BYTE4(__p) = v86 != 0;
  LODWORD(v93) = 1;
  BYTE4(v93) = v85 != 0;
  LODWORD(v94) = 2;
  BYTE4(v94) = *(&v85 + 1) != 0;
  LODWORD(v95) = 3;
  BYTE4(v95) = *(&v84 + 1) != 0;
  LODWORD(v96) = 4;
  BYTE4(v96) = v84 != 0;
  std::map<ZinIrDimension,BOOL>::map[abi:ne200100](v136, &__p, 5);
  v40 = 0;
  v41 = v35 << 32;
  do
  {
    v42 = dword_1A7606ABC[v40];
    v43 = v136[1];
    if (!v136[1])
    {
      goto LABEL_58;
    }

    v44 = &v136[1];
    do
    {
      if (*(v43 + 7) >= v42)
      {
        v44 = v43;
      }

      v43 = v43[*(v43 + 7) < v42];
    }

    while (v43);
    if (v44 == &v136[1] || v42 < *(v44 + 7))
    {
LABEL_58:
      v44 = &v136[1];
    }

    if (*(v44 + 32) == 1)
    {
      v45 = v88;
      if (v88 >= v89)
      {
        v47 = (v88 - v87) >> 3;
        if ((v47 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v48 = (v89 - v87) >> 2;
        if (v48 <= v47 + 1)
        {
          v48 = v47 + 1;
        }

        if (v89 - v87 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v87, v49);
        }

        v50 = (8 * v47);
        *v50 = v41 | v42;
        v46 = (8 * v47 + 8);
        v51 = v50 - (v88 - v87);
        memcpy(v51, v87, v88 - v87);
        v52 = v87;
        v87 = v51;
        v88 = v46;
        v89 = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v88 = v41 | v42;
        v46 = v45 + 1;
      }

      v88 = v46;
    }

    ++v40;
  }

  while (v40 != 5);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v136, v136[1]);
  std::__tree<std::string>::destroy(&v148, v149[0]);
  if (v88 != v87)
  {
    ZinIrTextureUnitInfo::ZinIrTextureUnitInfo(&__p, v75);
    *&v106[4] = v84;
    v107 = v85;
    v108 = v86;
    __p = &unk_1F1A33FD0;
    v109 = 0;
    v111 = 0;
    v110 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v109, v87, v88, (v88 - v87) >> 3);
    v112 = v90;
    v113 = 1;
    std::__optional_storage_base<ZinIrPadUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrPadUnitInfo,false>>(a2, &__p);
    if (v113 == 1)
    {
      __p = &unk_1F1A33FD0;
      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(&__p);
    }
  }

  std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::destroy(v69, v70[0]);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v74.__begin_)
  {
    v74.__end_ = v74.__begin_;
    operator delete(v74.__begin_);
  }

  v75[0] = &unk_1F1A33FD0;
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v75);
}

void sub_1A745678C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, uint64_t a47, char a48)
{
  std::optional<ZinIrPadUnitInfo>::~optional(&STACK[0x210]);
  std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::destroy(&a35, a36);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  ZinIrPadUnitInfo::~ZinIrPadUnitInfo(&a48);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Pad(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrPadUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RetrieveRequiredValue<int>(uint64_t a1, uint64_t a2, std::vector<unsigned int> *a3, uint64_t a4)
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

uint64_t RetrieveRequiredValue<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  result = RetrieveIRValue<std::string,std::string>(ParameterValue, a3);
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

uint64_t RetrieveIRValue<std::string,std::string>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = MEMORY[0x1AC559650]();
    if (result)
    {
      if (*(result + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v4, *result, *(result + 8));
      }

      else
      {
        v3 = *result;
        v4.__r_.__value_.__r.__words[2] = *(result + 16);
        *&v4.__r_.__value_.__l.__data_ = v3;
      }

      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v4;
      return 1;
    }
  }

  return result;
}

uint64_t *std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *> const*,std::vector<int *> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<ZinIrOpLayer *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7456DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int *>>,std::vector<int *> const*,std::vector<int *> const*,std::vector<int *>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int *>::__init_with_size[abi:ne200100]<int **,int **>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int *>>,std::vector<int *>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<int *>::__init_with_size[abi:ne200100]<int **,int **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7456F18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int *>>,std::vector<int *>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ZinIrOpLayer *>>,std::vector<ZinIrOpLayer *>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<std::vector<int *>>::__init_with_size[abi:ne200100]<std::vector<int *>*,std::vector<int *>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<ZinIrOpLayer *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A7456FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int *>>,std::vector<int *>*,std::vector<int *>*,std::vector<int *>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int *>::__init_with_size[abi:ne200100]<int **,int **>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int *>>,std::vector<int *>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t **std::map<unsigned long,std::vector<std::vector<int *>>>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<std::vector<int *>>> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<std::vector<int *>>> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  result = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::__construct_node<std::pair<unsigned long const,std::vector<std::vector<int *>>> const&>();
  }

  return result;
}

void sub_1A7457244(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<std::vector<int *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<std::vector<int *>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

uint64_t std::map<std::string,ZinIrPaddingMode>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
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

uint64_t std::map<ZinIrDimension,BOOL>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<ZinIrDimension,char>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,char>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,char>>>::__emplace_hint_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension const,char> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void std::__optional_storage_base<ZinIrPadUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrPadUnitInfo,false>>(ZinIrTextureUnitInfo *this, uint64_t a2)
{
  if (*(this + 232) == *(a2 + 232))
  {
    if (*(this + 232))
    {

      ZinIrPadUnitInfo::operator=(this, a2);
    }
  }

  else if (*(this + 232))
  {
    *this = &unk_1F1A33FD0;
    v3 = *(this + 25);
    if (v3)
    {
      *(this + 26) = v3;
      operator delete(v3);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(this);
    *(this + 232) = 0;
  }

  else
  {

    std::__optional_storage_base<ZinIrPadUnitInfo,false>::__construct[abi:ne200100]<ZinIrPadUnitInfo>(this, a2);
  }
}

__int16 std::__optional_storage_base<ZinIrPadUnitInfo,false>::__construct[abi:ne200100]<ZinIrPadUnitInfo>@<H0>(ZinIrTextureUnitInfo *a1@<X0>, uint64_t a2@<X1>)
{
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo(a1, a2);
  *v3 = &unk_1F1A33FD0;
  v4 = *(a2 + 156);
  v5 = *(a2 + 172);
  *(v3 + 188) = *(a2 + 188);
  *(v3 + 172) = v5;
  *(v3 + 156) = v4;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 200) = 0;
  *(v3 + 200) = *(a2 + 200);
  *(v3 + 216) = *(a2 + 216);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  result = *(a2 + 224);
  *(v3 + 224) = result;
  *(v3 + 232) = 1;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPadUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MILOpConverter::WriteState(std::string::size_type a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ArgumentName = MIL::IROperation::GetArgumentName();
  if (*(ArgumentName + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *ArgumentName, *(ArgumentName + 8));
  }

  else
  {
    v6 = *ArgumentName;
    v10.__r_.__value_.__r.__words[2] = *(ArgumentName + 16);
    *&v10.__r_.__value_.__l.__data_ = v6;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MILFunctionInfo::GetTensorName(a3, &v10.__r_.__value_.__l.__data_, 0, &__p);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v10 = __p;
  if (a3 + 280 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a3 + 272, &v10))
  {
    __p.__r_.__value_.__r.__words[0] = &v10;
    *(std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 272), &v10, &std::piecewise_construct, &__p, &v11) + 80) = 0;
  }

  __p.__r_.__value_.__r.__words[0] = &v10;
  if (*(std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 272), &v10, &std::piecewise_construct, &__p, &v11) + 80) == 1)
  {
    __p.__r_.__value_.__r.__words[0] = &v10;
    v7 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 272), &v10, &std::piecewise_construct, &__p, &v11);
    v7[12] = v7[11];
  }

  __p.__r_.__value_.__r.__words[0] = &v10;
  v8 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 272), &v10, &std::piecewise_construct, &__p, &v11);
  __p.__r_.__value_.__r.__words[0] = a1;
  std::vector<MIL::IROperation const*>::emplace_back<MIL::IROperation const*>((v8 + 11), &__p);
  __p.__r_.__value_.__r.__words[0] = &v10;
  *(std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 272), &v10, &std::piecewise_construct, &__p, &v11) + 80) = 0;
  ZinAssertImpl("Cannot support standalone write_state");
}

void sub_1A7457884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::ReadState(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 200))(&__str);
  if (*(__str.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v5 = *__str.__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = *(__str.__r_.__value_.__r.__words[0] + 16);
    *&v21.__r_.__value_.__l.__data_ = v5;
  }

  __p.__r_.__value_.__r.__words[0] = &__str;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::string::basic_string[abi:ne200100]<0>(&__p, "input");
  ArgumentName = MIL::IROperation::GetArgumentName();
  if (*(ArgumentName + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *ArgumentName, *(ArgumentName + 8));
  }

  else
  {
    v7 = *ArgumentName;
    __str.__r_.__value_.__r.__words[2] = *(ArgumentName + 16);
    *&__str.__r_.__value_.__l.__data_ = v7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MILFunctionInfo::GetTensorName(a3, &__str.__r_.__value_.__l.__data_, 0, &__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  OutputType = MIL::IROperation::GetOutputType(a1);
  v9 = (*(*OutputType + 24))(OutputType);
  v10 = v9;
  if (!v9)
  {
    ZinAssertImpl("Unsupported state wrapped type");
  }

  v11 = (*(*v9 + 88))(v9);
  v12 = (*(*v10 + 96))(v10);
  v14 = *v12;
  v13 = v12[1];
  if (a3 + 16 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a3 + 15), &__str))
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    ZinAssertImpl("The state for this read_state (%s) was not created", p_str);
  }

  v15 = *(std::map<std::string,std::string>::at((a3 + 15), &__str) + 232);
  std::string::basic_string[abi:ne200100]<0>(&__p, "read_offset");
  v16 = (*(*a1 + 120))(a1, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v15 != 5) == (v16 == 0))
  {
    ZinAssertImpl("Read state should have a read_offset parameter if and only if state is circular");
  }

  if (a3 + 35 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a3 + 34), &__str))
  {
    MILFunctionInfo::GetTensorName(a3, &v21.__r_.__value_.__l.__data_, 0, &__p);
    p_p = &__p;
    v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 66, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &p_p);
    std::string::operator=((v17 + 7), &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    MILOpConverter::ReadStateRBWCreation(a1, a3, &__str, &v21.__r_.__value_.__l.__data_, (v13 - v14) >> 3, v11);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1A7457C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void MILOpConverter::ReadStateRBWCreation(const MIL::IROperation *a1, uint64_t **a2, uint64_t ***a3, const void **a4, uint64_t a5, unsigned int a6)
{
  v150 = *MEMORY[0x1E69E9840];
  __p.__r_.__value_.__r.__words[0] = a3;
  v105 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &__p, &v140);
  if (v105[11] == v105[12])
  {
    ZinAssertImpl("Cannot have standalone read_state after first write_state");
  }

  if (a2 + 16 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a2 + 15), a3))
  {
    if (*(a3 + 23) >= 0)
    {
      v100 = a3;
    }

    else
    {
      v100 = *a3;
    }

    ZinAssertImpl("State (%s) was not created", v100);
  }

  v102 = std::map<std::string,std::string>::at((a2 + 15), a3);
  v106 = *(v102 + 232);
  v103 = (v102 + 232);
  memset(v137, 0, sizeof(v137));
  v9 = v105[11];
  if (v105[12] == v9)
  {
    goto LABEL_211;
  }

  v10 = 0;
  __format = "Non-circular state buffer requires squeeze mask params";
  do
  {
    v11 = *(v9 + 8 * v10);
    std::string::basic_string[abi:ne200100]<0>(&__p, "data");
    *&v140.__r_.__value_.__r.__words[1] = 0uLL;
    v140.__r_.__value_.__r.__words[0] = &v140.__r_.__value_.__l.__size_;
    MILOpConverter::RetrieveProducers(v11, &__p, a2, &v140, 0, &v149);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v140, v140.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = v149.__r_.__value_.__r.__words[0];
    if (v149.__r_.__value_.__r.__words[0] == v149.__r_.__value_.__l.__size_)
    {
      v13 = 0;
      goto LABEL_26;
    }

    v13 = 0;
    do
    {
      v14 = v12 + 16;
      v15 = *(v12 + 39);
      if (v15 < 0)
      {
        if (*(v12 + 24) != 12)
        {
          goto LABEL_22;
        }

        v14 = *v14;
      }

      else if (v15 != 12)
      {
        goto LABEL_22;
      }

      v16 = bswap64(*v14);
      v17 = 0x736C6963655F7570;
      if (v16 == 0x736C6963655F7570 && (v16 = bswap32(*(v14 + 8)), v17 = 1684108389, v16 == 1684108389))
      {
        v18 = 0;
      }

      else if (v16 < v17)
      {
        v18 = -1;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        ++v13;
      }

LABEL_22:
      v12 += 72;
    }

    while (v12 != v149.__r_.__value_.__l.__size_);
    if (v13 >= 2)
    {
      ZinAssertImpl("Cannot have multiple slice_update per write_state");
    }

LABEL_26:
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    v111 = 0;
    v113 = 0u;
    v114 = 0u;
    v115 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F1A34278;
    v116 = 0u;
    v117 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 1065353216;
    v118 = 1065353216;
    v112 = 61;
    memset(&__str, 0, sizeof(__str));
    *&v140.__r_.__value_.__r.__words[1] = 0uLL;
    v140.__r_.__value_.__r.__words[0] = &v140.__r_.__value_.__l.__size_;
    MILFunctionInfo::GetTensorLayout(a2, a5, &__str, &v140);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v140, v140.__r_.__value_.__l.__size_);
    memset(&v135, 0, sizeof(v135));
    memset(&__s, 0, sizeof(__s));
    if (!v13)
    {
      *(&__s.__r_.__value_.__s + 23) = 4;
      strcpy(&__s, "data");
      std::string::operator=(&v135, &__str);
      LODWORD(v129.__begin_) = 0;
      v140.__r_.__value_.__r.__words[0] = &v129;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v129, &std::piecewise_construct, &v140)[3] = 0;
      LODWORD(v129.__begin_) = 1;
      v140.__r_.__value_.__r.__words[0] = &v129;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v129, &std::piecewise_construct, &v140)[3] = 0;
      LODWORD(v129.__begin_) = 2;
      v140.__r_.__value_.__r.__words[0] = &v129;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v129, &std::piecewise_construct, &v140)[3] = 0;
      LODWORD(v129.__begin_) = 3;
      v140.__r_.__value_.__r.__words[0] = &v129;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v129, &std::piecewise_construct, &v140)[3] = 0;
      LODWORD(v129.__begin_) = 4;
      v140.__r_.__value_.__r.__words[0] = &v129;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v129, &std::piecewise_construct, &v140)[3] = 0;
      v25 = v11;
      goto LABEL_122;
    }

    size = v149.__r_.__value_.__r.__words[0];
    if (v149.__r_.__value_.__r.__words[0] == v149.__r_.__value_.__l.__size_)
    {
      goto LABEL_39;
    }

    while (2)
    {
      v20 = size + 16;
      v21 = *(size + 39);
      if (v21 < 0)
      {
        if (*(size + 24) != 12)
        {
          goto LABEL_37;
        }

        v20 = *v20;
      }

      else if (v21 != 12)
      {
        goto LABEL_37;
      }

      v22 = *v20;
      v23 = *(v20 + 8);
      if (v22 == 0x70755F6563696C73 && v23 == 1702125924)
      {
        goto LABEL_39;
      }

LABEL_37:
      size += 72;
      if (size != v149.__r_.__value_.__l.__size_)
      {
        continue;
      }

      break;
    }

    size = v149.__r_.__value_.__l.__size_;
LABEL_39:
    v25 = *size;
    *(&__s.__r_.__value_.__s + 23) = 6;
    strcpy(&__s, "update");
    std::string::basic_string[abi:ne200100]<0>(&v129, "begin");
    MILOpConverter::RetrieveProducer(v25, &v129, a2, 0, &v140);
    if (SHIBYTE(v129.__end_cap_.__value_) < 0)
    {
      operator delete(v129.__begin_);
    }

    memset(&v147, 0, sizeof(v147));
    std::string::basic_string[abi:ne200100]<0>(&v129, "squeeze_mask");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (SHIBYTE(v129.__end_cap_.__value_) < 0)
    {
      operator delete(v129.__begin_);
    }

    if (v106 != 5)
    {
      std::string::operator=(&v135, &__str);
      goto LABEL_55;
    }

    if (!ParameterValue)
    {
      goto LABEL_262;
    }

    if (!RetrieveIRValue<BOOL,BOOL>(ParameterValue, &v147))
    {
      ZinAssertImpl("Failed to retrieve squeeze mask parameter for state buffer");
    }

    v27 = v147.__r_.__value_.__l.__size_;
    if (v147.__r_.__value_.__l.__size_)
    {
      v28 = 0;
      do
      {
        if (((*(v147.__r_.__value_.__r.__words[0] + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          std::string::push_back(&v135, p_str->__r_.__value_.__s.__data_[v28]);
          v27 = v147.__r_.__value_.__l.__size_;
        }

        ++v28;
      }

      while (v28 < v27);
    }

LABEL_55:
    std::string::basic_string[abi:ne200100]<0>(&v129, "begin");
    v30 = MIL::IROperation::TryGetParameterValue();
    if (SHIBYTE(v129.__end_cap_.__value_) < 0)
    {
      operator delete(v129.__begin_);
    }

    if (v106 != 5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v129, "write_offset");
      v31 = (*(*v11 + 120))(v11, &v129, 0);
      if (SHIBYTE(v129.__end_cap_.__value_) < 0)
      {
        operator delete(v129.__begin_);
      }

      if (!v31)
      {
        ZinAssertImpl("Write state on circular state buffer must have write_offset");
      }

      v129.__begin_ = (v102 + 232);
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v116, v103, &std::piecewise_construct, &v129.__begin_) + 48) = 1;
      v129.__begin_ = (v102 + 232);
      v32 = std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v116, v103, &std::piecewise_construct, &v129.__begin_);
      std::string::operator=(v32 + 1, v31);
      memset(&v133, 0, sizeof(v133));
      std::string::basic_string[abi:ne200100]<0>(&v129, "begin");
      RetrieveRequiredValue<int>(v25, &v129, &v133, 0);
      if (SHIBYTE(v129.__end_cap_.__value_) < 0)
      {
        operator delete(v129.__begin_);
      }

      for (i = v133.__r_.__value_.__r.__words[0]; i != v133.__r_.__value_.__l.__size_; ++i)
      {
        if (*i)
        {
          ZinAssertImpl("Slice update begin must be all zero for circular state buffer");
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v128, "x");
      MILOpConverter::RetrieveProducer(v25, &v128, a2, 0, &v129);
      std::string::basic_string[abi:ne200100]<0>(&v127, "read_offset");
      ArgumentName = MIL::IROperation::GetArgumentName();
      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if (v132 < 0)
      {
        operator delete(v131);
      }

      if (v130 < 0)
      {
        operator delete(v129.__end_cap_.__value_);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      v40 = *(ArgumentName + 23);
      if (v40 >= 0)
      {
        v41 = *(ArgumentName + 23);
      }

      else
      {
        v41 = *(ArgumentName + 8);
      }

      v42 = *(v31 + 23);
      v43 = v42;
      if ((v42 & 0x80u) != 0)
      {
        v42 = *(v31 + 8);
      }

      if (v41 != v42 || (v40 >= 0 ? (v44 = ArgumentName) : (v44 = *ArgumentName), v43 >= 0 ? (v45 = v31) : (v45 = *v31), memcmp(v44, v45, v41)))
      {
        ZinAssertImpl("Read offset of read_state and write offset of the corresponding write_state must match");
      }

      begin = v133.__r_.__value_.__r.__words[0];
      if (v133.__r_.__value_.__r.__words[0])
      {
        v133.__r_.__value_.__l.__size_ = v133.__r_.__value_.__r.__words[0];
LABEL_101:
        operator delete(begin);
      }

      goto LABEL_116;
    }

    if (!v30)
    {
      if (v141.__r_.__value_.__s.__data_[15] < 0)
      {
        if (v141.__r_.__value_.__r.__words[0] != 6)
        {
LABEL_261:
          __format = "With dynamic offset, slice_update's begin must be produced by a concat";
LABEL_262:
          ZinAssertImpl(__format);
        }

        v46 = v140.__r_.__value_.__r.__words[2];
      }

      else
      {
        v46 = &v140.__r_.__value_.__s.__data_[16];
        if (v141.__r_.__value_.__s.__data_[15] != 6)
        {
          goto LABEL_261;
        }
      }

      v47 = *v46;
      v48 = *(v46 + 2);
      if (v47 == 1668181859 && v48 == 29793)
      {
        v50 = v140.__r_.__value_.__r.__words[0];
        std::string::basic_string[abi:ne200100]<0>(&v129, "values");
        v51 = (*(*v50 + 152))(v50, &v129);
        if (SHIBYTE(v129.__end_cap_.__value_) < 0)
        {
          operator delete(v129.__begin_);
        }

        if (v51 != a5)
        {
          ZinAssertImpl("Concat input size %ld must match state rank %ld", v51, a5);
        }

        MILOpConverter::FillRingBufferUnitOffset(v140.__r_.__value_.__l.__data_, &__str, a2, &__p);
        goto LABEL_116;
      }

      goto LABEL_261;
    }

    memset(&v129, 0, sizeof(v129));
    std::string::basic_string[abi:ne200100]<0>(&v133, "begin");
    RetrieveRequiredValue<int>(v25, &v133, &v129, 0);
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    begin = v129.__begin_;
    if (v129.__end_ != v129.__begin_)
    {
      v35 = 0;
      do
      {
        LODWORD(v128.__r_.__value_.__l.__data_) = 0;
        v36 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = __str.__r_.__value_.__r.__words[0];
        }

        v37 = v36->__r_.__value_.__s.__data_[v35];
        if ((ToZinIrDimension(v36->__r_.__value_.__s.__data_[v35], &v128) & 1) == 0)
        {
          ZinAssertImpl("ANEC internal error: invalid dimension %c", v37);
        }

        v38 = v129.__begin_[v35];
        v133.__r_.__value_.__r.__words[0] = &v128;
        std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v119, &v128, &std::piecewise_construct, &v133)[3] = v38;
        ++v35;
        begin = v129.__begin_;
      }

      while (v35 < v129.__end_ - v129.__begin_);
    }

    if (begin)
    {
      v129.__end_ = begin;
      goto LABEL_101;
    }

LABEL_116:
    if (v147.__r_.__value_.__r.__words[0])
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (v144 < 0)
    {
      operator delete(v142[0]);
    }

    if (v141.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v140.__r_.__value_.__r.__words[2]);
    }

LABEL_122:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v147, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v147 = __s;
    }

    memset(&v140, 0, sizeof(v140));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v140, &v147, &v148, 1uLL);
    ZinMILUnitBuilder::DeclareOperationInputs(v137, v25, &v140, a2, &v129);
    v133.__r_.__value_.__r.__words[0] = &v140;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v133);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    ParameterType = MIL::IROperation::TryGetParameterType();
    if (!ParameterType)
    {
      ZinAssertImpl("Invalid slice_update: update tensor type is not supported");
    }

    v53 = MIL::IRValueType::AsTensorType(ParameterType);
    v54 = MIL::IRTensorValueType::Rank(v53);
    v55 = (*(*v53 + 88))(v53);
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v135.__r_.__value_.__l.__size_ != v54)
      {
        v99 = v135.__r_.__value_.__r.__words[0];
LABEL_258:
        ZinAssertImpl("Invalid slice_update: update tensor layout %s not matching rank %d", v99, v54);
      }
    }

    else if (v54 != SHIBYTE(v135.__r_.__value_.__r.__words[2]))
    {
      v99 = &v135;
      goto LABEL_258;
    }

    if (*(a4 + 23) >= 0)
    {
      v56 = *(a4 + 23);
    }

    else
    {
      v56 = a4[1];
    }

    std::string::basic_string[abi:ne200100](&v127, v56 + 1);
    if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v127;
    }

    else
    {
      v57 = v127.__r_.__value_.__r.__words[0];
    }

    if (v56)
    {
      if (*(a4 + 23) >= 0)
      {
        v58 = a4;
      }

      else
      {
        v58 = *a4;
      }

      memmove(v57, v58, v56);
    }

    *(&v57->__r_.__value_.__l.__data_ + v56) = 95;
    v59 = *(v129.__end_ - 1);
    if (v59 >= 0)
    {
      v60 = (v129.__end_ - 6);
    }

    else
    {
      v60 = *(v129.__end_ - 3);
    }

    if (v59 >= 0)
    {
      v61 = *(v129.__end_ - 1);
    }

    else
    {
      v61 = *(v129.__end_ - 2);
    }

    v62 = std::string::append(&v127, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v128, "__@update_layout_convert", 0x18uLL);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v133.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v133.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    end = v129.__end_;
    v140.__r_.__value_.__r.__words[0] = v54;
    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v140.__r_.__value_.__r.__words[1], v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v140.__r_.__value_.__r.__words[1] = *&v135.__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[0] = v135.__r_.__value_.__r.__words[2];
    }

    std::map<long,std::string>::map[abi:ne200100](&v126, &v140, 1);
    ZinMILUnitBuilder::DeclareCustomOperationInputLayout(&v147, a2, v54, (end - 6), &v126, v55);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v126, v126.__r_.__value_.__l.__size_);
    if (v141.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v140.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v128.__r_.__value_.__r.__words[0] = a3;
    v67 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &v128, &v127);
    v68 = *(v67 + 79);
    if (v68 < 0)
    {
      v68 = v67[8];
    }

    v69 = a3;
    if (v68)
    {
      v128.__r_.__value_.__r.__words[0] = a3;
      v69 = (std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &v128, &v127) + 7);
    }

    if (*(v69 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v133, *v69, v69[1]);
    }

    else
    {
      v133 = *v69;
    }

    if (*(a4 + 23) >= 0)
    {
      v70 = *(a4 + 23);
    }

    else
    {
      v70 = a4[1];
    }

    std::string::basic_string[abi:ne200100](&v126, v70 + 6);
    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v126;
    }

    else
    {
      v71 = v126.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      if (*(a4 + 23) >= 0)
      {
        v72 = a4;
      }

      else
      {
        v72 = *a4;
      }

      memmove(v71, v72, v70);
    }

    strcpy(v71 + v70, "__@rbw");
    std::to_string(&v125, v10);
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v125;
    }

    else
    {
      v73 = v125.__r_.__value_.__r.__words[0];
    }

    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v125.__r_.__value_.__l.__size_;
    }

    v75 = std::string::append(&v126, v73, v74);
    v76 = *&v75->__r_.__value_.__l.__data_;
    v127.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
    *&v127.__r_.__value_.__l.__data_ = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v140, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_);
    }

    else
    {
      v140 = v133;
    }

    if (*(v147.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v141, *v147.__r_.__value_.__l.__data_, *(v147.__r_.__value_.__r.__words[0] + 8));
    }

    else
    {
      v77 = *v147.__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = *(v147.__r_.__value_.__r.__words[0] + 16);
      *&v141.__r_.__value_.__l.__data_ = v77;
    }

    memset(v124, 0, sizeof(v124));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v124, &v140, v142, 2uLL);
    v146[0] = &unk_1F1A3AEC8;
    v146[1] = &__p;
    v146[3] = v146;
    ZinMILUnitBuilder::CreateUnit<ZinIrRingBufferUnitInfo>(v124, v146, &v128);
    std::vector<std::string>::__vdeallocate(&v147);
    v147 = v128;
    memset(&v128, 0, sizeof(v128));
    v138 = &v128;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v138);
    std::__function::__value_func<void ()(std::optional<ZinIrRingBufferUnitInfo> &)>::~__value_func[abi:ne200100](v146);
    v138 = v124;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v138);
    for (j = 0; j != -6; j -= 3)
    {
      if (SHIBYTE(v141.__r_.__value_.__r.__words[j + 2]) < 0)
      {
        operator delete(*(&v140 + j * 8 + 24));
      }
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    MILFunctionInfo::GetTensorName(a2, v147.__r_.__value_.__l.__data_, 0, &v140);
    v128.__r_.__value_.__r.__words[0] = a3;
    v79 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &v128, &v127);
    v80 = v79;
    if (*(v79 + 79) < 0)
    {
      operator delete(v79[7]);
    }

    *(v80 + 7) = v140;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    v140.__r_.__value_.__r.__words[0] = &v147;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v140);
    v140.__r_.__value_.__r.__words[0] = &v129;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v140);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v119);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v116);
    ZinIrUnitInfo::~ZinIrUnitInfo(&__p.__r_.__value_.__l.__data_);
    __p.__r_.__value_.__r.__words[0] = &v149;
    std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
    ++v10;
    v9 = v105[11];
  }

  while (v10 < (v105[12] - v9) >> 3);
LABEL_211:
  std::string::basic_string[abi:ne200100]<0>(&__p, "read_offset");
  v81 = (*(*a1 + 120))(a1, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v106 != 5 && v81)
  {
    v82 = *(v105[12] - 8);
    std::string::basic_string[abi:ne200100]<0>(&__p, "write_offset");
    v83 = (*(*v82 + 120))(v82, &__p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!v83)
    {
      ZinAssertImpl("Write state must have write_offset parameter when working with a circular state buffer");
    }

    v84 = *(v81 + 23);
    if (v84 >= 0)
    {
      v85 = *(v81 + 23);
    }

    else
    {
      v85 = *(v81 + 8);
    }

    v86 = *(v83 + 23);
    v87 = v86;
    if ((v86 & 0x80u) != 0)
    {
      v86 = *(v83 + 8);
    }

    if (v85 != v86 || (v84 >= 0 ? (v88 = v81) : (v88 = *v81), v87 >= 0 ? (v89 = v83) : (v89 = *v83), memcmp(v88, v89, v85)))
    {
      *&__p.__r_.__value_.__r.__words[1] = 0uLL;
      v111 = 0;
      v113 = 0u;
      v114 = 0u;
      v115 = -1;
      v116 = 0u;
      v117 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 1065353216;
      v121 = 1065353216;
      __p.__r_.__value_.__r.__words[0] = &unk_1F1A34298;
      memset(v122, 0, sizeof(v122));
      v123 = 1065353216;
      v112 = 62;
      v140.__r_.__value_.__r.__words[0] = v102 + 232;
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v116, v103, &std::piecewise_construct, &v140) + 48) = 1;
      v140.__r_.__value_.__r.__words[0] = v102 + 232;
      v90 = std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v116, v103, &std::piecewise_construct, &v140);
      std::string::operator=(v90 + 1, v81);
      v91 = *(v102 + 64);
      v140.__r_.__value_.__l.__size_ = *(v102 + 56);
      LODWORD(v140.__r_.__value_.__r.__words[2]) = 1;
      v141.__r_.__value_.__r.__words[0] = *(v102 + 88);
      LODWORD(v141.__r_.__value_.__r.__words[1]) = 2;
      LODWORD(v140.__r_.__value_.__l.__data_) = 0;
      v141.__r_.__value_.__r.__words[2] = v91;
      LODWORD(v142[0]) = 3;
      v92 = *(v102 + 80);
      v142[1] = *(v102 + 72);
      v143 = 4;
      v145 = v92;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__assign_unique<std::pair<ZinIrDimension const,unsigned long> const*>(v122, &v140, v146);
      v140.__r_.__value_.__r.__words[0] = a3;
      v93 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &v140, &v129);
      if (*(a4 + 23) >= 0)
      {
        v94 = *(a4 + 23);
      }

      else
      {
        v94 = a4[1];
      }

      std::string::basic_string[abi:ne200100](&v140, v94 + 6);
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = &v140;
      }

      else
      {
        v95 = v140.__r_.__value_.__r.__words[0];
      }

      if (v94)
      {
        if (*(a4 + 23) >= 0)
        {
          v96 = a4;
        }

        else
        {
          v96 = *a4;
        }

        memmove(v95, v96, v94);
      }

      strcpy(v95 + v94, "__@rbr");
      if (*(v93 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&v149, v93[7], v93[8]);
      }

      else
      {
        v149 = *(v93 + 7);
      }

      memset(&v129, 0, sizeof(v129));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v129, &v149, &v150, 1uLL);
      v139[0] = &unk_1F1A3AFB8;
      v139[1] = &__p;
      v139[3] = v139;
      ZinMILUnitBuilder::CreateUnit<ZinIrRingBufferReaderUnitInfo>(&v129, v139, v109);
      __str.__r_.__value_.__r.__words[0] = v109;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
      std::__function::__value_func<void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::~__value_func[abi:ne200100](v139);
      __str.__r_.__value_.__r.__words[0] = &v129;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &unk_1F1A34298;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v122);
      __p.__r_.__value_.__r.__words[0] = &unk_1F1A34278;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v119);
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v116);
      ZinIrUnitInfo::~ZinIrUnitInfo(&__p.__r_.__value_.__l.__data_);
    }
  }

  ZinMILUnitBuilder::Finalize(v137, a2, a1, a4, a6, 1, 1);
  __p.__r_.__value_.__r.__words[0] = a3;
  *(std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &__p, &v140) + 80) = 1;
  MILFunctionInfo::GetTensorName(a2, a4, 0, &__p);
  v140.__r_.__value_.__r.__words[0] = a3;
  v97 = std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2 + 34, a3, &std::piecewise_construct, &v140, &v129);
  v98 = v97;
  if (*(v97 + 79) < 0)
  {
    operator delete(v97[7]);
  }

  *(v98 + 7) = __p;
  __p.__r_.__value_.__r.__words[0] = &v137[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = v137;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A7459238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  ZinIrRingBufferReaderUnitInfo::~ZinIrRingBufferReaderUnitInfo(&a27);
  ZinMILUnitBuilder::~ZinMILUnitBuilder(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void MILOpConverter::ReadStateTerminalRBW(uint64_t **a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  std::string::basic_string[abi:ne200100]<0>(&__p, "data");
  ArgumentName = MIL::IROperation::GetArgumentName();
  if (*(ArgumentName + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *ArgumentName, *(ArgumentName + 8));
  }

  else
  {
    v5 = *ArgumentName;
    v15.__r_.__value_.__r.__words[2] = *(ArgumentName + 16);
    *&v15.__r_.__value_.__l.__data_ = v5;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, "input");
  v6 = MIL::IROperation::GetArgumentName();
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

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  MILFunctionInfo::GetTensorName(a1, &__p.__r_.__value_.__l.__data_, 0, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v13;
  v8 = (*(*(*(v3 - 8) + 64) + 16))();
  v9 = (*(*v8 + 24))(v8);
  v10 = v9;
  if (!v9)
  {
    ZinAssertImpl("Unsupported state wrapped type");
  }

  v11 = (*(*v9 + 88))(v9);
  v12 = (*(*v10 + 96))(v10);
  MILOpConverter::ReadStateRBWCreation(*(v3 - 8), a1, &__p, &v15.__r_.__value_.__l.__data_, (v12[1] - *v12) >> 3, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1A74598B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MIL::IROperation const*>::emplace_back<MIL::IROperation const*>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 8);
}

uint64_t RetrieveIRValue<BOOL,BOOL>(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  MEMORY[0x1AC559330](&v8);
  if ((v8 & 1) == 0)
  {
    v4 = MEMORY[0x1AC559670](v2);
    if (v4)
    {
      LOBYTE(v6) = *v4;
      v2 = 1;
      std::vector<BOOL>::__assign_with_size[abi:ne200100]<BOOL const*,BOOL const*>(a2, &v6, &v6 + 1, 1uLL);
      return v2;
    }

    return 0;
  }

  ToVector<BOOL,BOOL>(&v9, &v6);
  if (*a2)
  {
    operator delete(*a2);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  return 1;
}

void MILOpConverter::MILProducerInfo::~MILProducerInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void ZinMILUnitBuilder::CreateUnit<ZinIrRingBufferUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v12);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v11);
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A7459DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrRingBufferUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrRingBufferReaderUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A34298;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v13);
    v10[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v12);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v11);
    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A745A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrRingBufferReaderUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

void ToVector<BOOL,BOOL>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<BOOL>::reserve(a2, a1[1]);
  if (a1[1])
  {
    v4 = 0;
    do
    {
      std::vector<BOOL>::push_back(a2, (*a1 + v4++));
    }

    while (a1[1] > v4);
  }
}

void sub_1A745A38C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ZinIrRingBufferUnitInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    *a1 = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 120);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 80));
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ZinIrRingBufferUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrRingBufferUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3>,void ()(std::optional<ZinIrRingBufferUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AEC8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3>,void ()(std::optional<ZinIrRingBufferUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  ZinIrRingBufferUnitInfo::ZinIrRingBufferUnitInfo(v3, *(a1 + 8));
  v6 = 1;
  std::__optional_storage_base<ZinIrRingBufferUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrRingBufferUnitInfo,false>>(a2, v3);
  if (v6 == 1)
  {
    v3[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v5);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v4);
    ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  }
}

void sub_1A745A5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<ZinIrRingBufferUnitInfo>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_3>,void ()(std::optional<ZinIrRingBufferUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__optional_storage_base<ZinIrRingBufferUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrRingBufferUnitInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == *(a2 + 160))
  {
    if (*(a1 + 160))
    {
      std::string::operator=((a1 + 8), (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      if (a1 != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
      }

      *(a1 + 64) = *(a2 + 64);
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__move_assign(a1 + 80, (a2 + 80));

      std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign(a1 + 120, (a2 + 120));
    }
  }

  else if (*(a1 + 160))
  {
    *a1 = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 120);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 80));
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
    *(a1 + 160) = 0;
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
    *a1 = &unk_1F1A34278;
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 80, (a2 + 80));
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 120, (a2 + 120));
    *(a1 + 160) = 1;
  }
}

void sub_1A745A7BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrRingBufferUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<MILOpConverter::MILProducerInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 72;
        std::__destroy_at[abi:ne200100]<MILOpConverter::MILProducerInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<MILOpConverter::MILProducerInfo,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

uint64_t std::optional<ZinIrRingBufferReaderUnitInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    *a1 = &unk_1F1A34298;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 160);
    *a1 = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 120);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 80));
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ZinIrRingBufferReaderUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrRingBufferReaderUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3AFB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ZinIrRingBufferUnitInfo::ZinIrRingBufferUnitInfo(v4, v3);
  v4[0] = &unk_1F1A34298;
  std::unordered_map<ZinIrDimension,long>::unordered_map(v7, v3 + 160);
  v8 = 1;
  std::__optional_storage_base<ZinIrRingBufferReaderUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrRingBufferReaderUnitInfo,false>>(a2, v4);
  if (v8 == 1)
  {
    v4[0] = &unk_1F1A34298;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v7);
    v4[0] = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v6);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table(&v5);
    ZinIrUnitInfo::~ZinIrUnitInfo(v4);
  }
}

uint64_t std::__function::__func<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4,std::allocator<MILOpConverter::ReadStateRBWCreation(MIL::IROperation const&,MILFunctionInfo &,std::string const&,std::string const&,unsigned long,MIL::IRDataType)::$_4>,void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__optional_storage_base<ZinIrRingBufferReaderUnitInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinIrRingBufferReaderUnitInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == *(a2 + 200))
  {
    if (*(a1 + 200))
    {
      std::string::operator=((a1 + 8), (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      if (a1 != a2)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
      }

      *(a1 + 64) = *(a2 + 64);
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__move_assign(a1 + 80, (a2 + 80));
      std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign(a1 + 120, (a2 + 120));

      std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign(a1 + 160, (a2 + 160));
    }
  }

  else if (*(a1 + 200))
  {
    *a1 = &unk_1F1A34298;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 160);
    *a1 = &unk_1F1A34278;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + 120);
    std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::~__hash_table((a1 + 80));
    ZinIrUnitInfo::~ZinIrUnitInfo(a1);
    *(a1 + 200) = 0;
  }

  else
  {
    ZinIrRingBufferReaderUnitInfo::ZinIrRingBufferReaderUnitInfo(a1, a2);
    *(a1 + 200) = 1;
  }
}

uint64_t ZinIrRingBufferReaderUnitInfo::ZinIrRingBufferReaderUnitInfo(uint64_t a1, uint64_t a2)
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
  *a1 = &unk_1F1A34278;
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 80, (a2 + 80));
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 120, (a2 + 120));
  *a1 = &unk_1F1A34298;
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__hash_table(a1 + 160, (a2 + 160));
  return a1;
}

void sub_1A745AE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrRingBufferReaderUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MILWriteStateOpInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,MILWriteStateOpInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MILWriteStateOpInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1A745B040(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MILWriteStateOpInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MILWriteStateOpInfo>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 11);
    if (v3)
    {
      *(__p + 12) = v3;
      operator delete(v3);
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void MILOpConverter::Flatten2D(MIL::IROperation *a1, uint64_t a2, uint64_t **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  (*(*a1 + 200))(v17);
  if (*(*&v17[0] + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, **&v17[0], *(*&v17[0] + 8));
  }

  else
  {
    v5 = **&v17[0];
    v18.__r_.__value_.__r.__words[2] = *(*&v17[0] + 16);
    *&v18.__r_.__value_.__l.__data_ = v5;
  }

  v13.i64[0] = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v7 = MIL::IRValueType::AsTensorType(OutputType);
  v8 = (*(*v7 + 88))(v7);
  memset(v17, 0, sizeof(v17));
  HIBYTE(v23) = 1;
  LOWORD(v21) = 120;
  v14.i64[0] = 0;
  v13 = 0uLL;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v13.i64, &v21, &v24, 1uLL);
  ZinMILUnitBuilder::DeclareOperationInputs(v17, a1, &v13, a3, v16);
  v19 = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }

  v13 = vdupq_n_s64(1uLL);
  v14 = v13;
  v15 = 1;
  v9 = MIL::IROperation::GetOutputType(a1);
  v10 = MIL::IRValueType::AsTensorType(v9);
  v11 = (*(*v10 + 96))(v10);
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  ToZinTensorDimensions(a3, v11, &v13, &v21);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v21, v22);
  v20[0] = &unk_1F1A3B0A8;
  v20[1] = &v13;
  v20[3] = v20;
  ZinMILUnitBuilder::CreateUnit<ZinIrReshapeUnitInfo>(v16, v20, v12);
  v21 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  std::__function::__value_func<void ()(std::optional<ZinIrReshapeUnitInfo> &)>::~__value_func[abi:ne200100](v20);
  ZinMILUnitBuilder::Finalize(v17, a3, a1, &v18.__r_.__value_.__l.__data_, v8, 1, 1);
  v13.i64[0] = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13.i64[0] = &v17[1] + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  v13.i64[0] = v17;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1A745B38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  a13 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrReshapeUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A34058;
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A745B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrReshapeUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ZinIrReshapeUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrReshapeUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ZinIrUnitInfo *std::optional<ZinIrReshapeUnitInfo>::~optional(ZinIrUnitInfo *this)
{
  if (*(this + 144) == 1)
  {
    *this = &unk_1F1A34058;
    v2 = *(this + 15);
    if (v2)
    {
      *(this + 16) = v2;
      operator delete(v2);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

uint64_t std::__function::__func<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3B0A8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0,std::allocator<MILOpConverter::Flatten2D(MIL::IROperation const&,MILOperationInfo const&,MILFunctionInfo &)::$_0>,void ()(std::optional<ZinIrReshapeUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrReshapeUnitInfo>::operator=[abi:ne200100]<ZinIrReshapeUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == 1)
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
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 120, (a2 + 120));
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
    *a1 = &unk_1F1A34058;
    v8 = *(a2 + 96);
    v9 = *(a2 + 112);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v8;
    *(a1 + 112) = v9;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a1 + 144) = 1;
  }

  return a1;
}

void sub_1A745BBE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrReshapeUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *ZinMILUnitBuilder::DeclareOperationInputs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t **a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a3;
  v18 = a3[1];
  if (*a3 != v18)
  {
    do
    {
      v9 = (*(*a2 + 152))(a2, v6);
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = (*(*a2 + 120))(a2, v6, v10);
          if (v11)
          {
            if (*(v11 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v43, *v11, *(v11 + 8));
            }

            else
            {
              v12 = *v11;
              v43.__r_.__value_.__r.__words[2] = *(v11 + 16);
              *&v43.__r_.__value_.__l.__data_ = v12;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v43, "");
          }

          MILFunctionInfo::GetTensorName(a4, &v43.__r_.__value_.__l.__data_, 0, &v42);
          v23 = 0;
          v22 = 0u;
          memset(__str, 0, sizeof(__str));
          *&v13 = -1;
          *(&v13 + 1) = -1;
          v24 = v13;
          v25 = v13;
          v26 = -1;
          v27 = 0;
          v28 = 0;
          v31 = -1;
          v29 = v13;
          v30[0] = v13;
          *(v30 + 12) = v13;
          v32 = 0;
          memset(v33, 0, 28);
          v33[7] = 5;
          v34 = -1;
          LOBYTE(v35) = 0;
          v41 = 0;
          LOBYTE(v19) = 0;
          v20 = 0;
          if (MILOpConverter::CreateConstInfo(a2, a4, v6, v10, __str, &v19))
          {
            std::string::operator=(&v43, __str);
            MILOpConverter::AddConstInfo(a4, __str, v14);
          }

          else
          {
            std::string::operator=(&v43, &v42);
          }

          size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
          if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v43.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            if (*(v6 + 23) < 0)
            {
              v6 = *v6;
            }

            ZinAssertImpl("Unable to resolve operation input %s.", v6);
          }

          std::vector<std::string>::push_back[abi:ne200100](a1 + 24, &v43);
          if (v41 == 1)
          {
            if (__p)
            {
              v40 = __p;
              operator delete(__p);
            }

            if (v37)
            {
              v38 = v37;
              operator delete(v37);
            }

            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }
          }

          if (*&v33[1])
          {
            *&v33[3] = *&v33[1];
            operator delete(*&v33[1]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(*&__str[24]);
          }

          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          v10 = (v10 + 1);
        }

        while (v9 != v10);
      }

      v6 += 24;
    }

    while (v6 != v18);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a5, *(a1 + 24), *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3));
}

void sub_1A745BFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  ZinIrIOInfo::~ZinIrIOInfo(va);
  if (*(v18 - 113) < 0)
  {
    operator delete(*(v18 - 136));
  }

  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::InsertTranspose(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *x8_0@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a6;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v9, &v13, &v14, 1uLL);
  v12[0] = &unk_1F1A3B198;
  v12[1] = a5;
  v12[2] = &v10;
  v12[3] = v12;
  ZinMILUnitBuilder::CreateUnit<ZinIrTransposeUnitInfo>(v9, v12, x8_0);
  std::__function::__value_func<void ()(std::optional<ZinIrTransposeUnitInfo> &)>::~__value_func[abi:ne200100](v12);
  v11 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void ZinMILUnitBuilder::CreateUnit<ZinIrTransposeUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A33FB0;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A745C41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrTransposeUnitInfo>::~optional(&a16);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::InsertCopy(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a4, *(a4 + 8));
  }

  else
  {
    v11 = *a4;
  }

  memset(v7, 0, sizeof(v7));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v7, &v11, &v12, 1uLL);
  v10[0] = &unk_1F1A3B288;
  v10[1] = &v8;
  v10[3] = v10;
  ZinMILUnitBuilder::CreateUnit<ZinIrGOCUnitInfo>(v7, v10, x8_0);
  std::__function::__value_func<void ()(std::optional<ZinIrGOCUnitInfo> &)>::~__value_func[abi:ne200100](v10);
  v9 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void ZinMILUnitBuilder::CreateUnit<ZinIrGOCUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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

void sub_1A745C928(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    (*(*v35 + 8))(v35, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a35 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::InsertSqueeze(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unsigned int a7@<W6>, uint64_t *a8@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = (a6[1] - *a6) >> 2;
  if (v10 == a5)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *a4, *(a4 + 8));
    }

    else
    {
      v30 = *a4;
    }

    *a8 = 0;
    a8[1] = 0;
    a8[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a8, &v30, &v31, 1uLL);
  }

  else
  {
    if (v10 > a5)
    {
      if (*(a3 + 23) >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      ZinAssertImpl("Squeeze insertion for operation %s: Cannot remove %zu axes from input rank %d.", v21, v10, a5);
    }

    memset(&v30, 0, sizeof(v30));
    *&v29.__r_.__value_.__r.__words[1] = 0uLL;
    v29.__r_.__value_.__r.__words[0] = &v29.__r_.__value_.__l.__size_;
    MILFunctionInfo::GetTensorLayout(a2, a5, &v30, &v29);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v29, v29.__r_.__value_.__l.__size_);
    v14 = *a6;
    if (a6[1] != *a6)
    {
      v15 = 0;
      do
      {
        LODWORD(v29.__r_.__value_.__l.__data_) = 0;
        RetrievePositiveAxis(a5, *(v14 + 4 * v15), &v29);
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v30;
        }

        else
        {
          v16 = v30.__r_.__value_.__r.__words[0];
        }

        v16->__r_.__value_.__s.__data_[SLODWORD(v29.__r_.__value_.__l.__data_)] = 45;
        ++v15;
        v14 = *a6;
      }

      while (v15 < (a6[1] - *a6) >> 2);
    }

    memset(&v29, 0, sizeof(v29));
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v30;
    }

    else
    {
      v17 = v30.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      do
      {
        v19 = v17->__r_.__value_.__s.__data_[0];
        if (v19 != 45)
        {
          std::string::push_back(&v29, v19);
        }

        v17 = (v17 + 1);
        --size;
      }

      while (size);
      memset(&v28, 0, sizeof(v28));
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v29.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v20 = 0;
      memset(&v28, 0, sizeof(v28));
    }

    v26 = 0;
    v27 = 0;
    __p = &v26;
    MILFunctionInfo::GetTensorLayout(a2, v20, &v28, &__p);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, v26);
    __p = 0;
    v26 = 0;
    v27 = 0;
    if (!GenerateANECTransposeMapping(a2, &v29, &v28, &__p))
    {
      v22 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v29.__r_.__value_.__r.__words[0];
      }

      v23 = &v28;
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v28.__r_.__value_.__r.__words[0];
      }

      ZinAssertImpl("Cannot retrieve transpose mappings between layouts %s and %s", v22, v23);
    }

    ZinMILUnitBuilder::InsertTranspose(a4, &__p, a7, a8);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void ZinMILUnitBuilder::InsertAxPlusB_Impl(const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a8@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = *(a4 + 24);
  v14 = *(a4 + 16);
  if (v14 == v15)
  {
    v21 = 0.0;
  }

  else
  {
    v16 = v14 + 1;
    if (v14 + 1 != v15)
    {
      v17 = *v14;
      v18 = v14 + 1;
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v19 < v17)
        {
          v17 = v20;
          v14 = v16;
        }

        v16 = v18;
      }

      while (v18 != v15);
    }

    v21 = *v14;
  }

  if (*(a2 + 23) >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = a2[1];
  }

  v23 = __p;
  std::string::basic_string[abi:ne200100](__p, v22 + 6);
  if (v34 < 0)
  {
    v23 = __p[0];
  }

  if (v22)
  {
    if (*(a2 + 23) >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    memmove(v23, v24, v22);
  }

  strcpy(v23 + v22, "_scale");
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *a3, *(a3 + 8));
  }

  else
  {
    v39 = *a3;
  }

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v31, &v39, v40, 1uLL);
  v38[0] = &unk_1F1A3B318;
  v38[1] = a4;
  v38[2] = a6;
  v38[3] = v38;
  ZinMILUnitBuilder::CreateUnit<ZinIrGOCUnitInfo>(v31, v38, a8);
  std::__function::__value_func<void ()(std::optional<ZinIrGOCUnitInfo> &)>::~__value_func[abi:ne200100](v38);
  v35 = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a4 + 16) != *(a4 + 24) && *(a5 + 16) != *(a5 + 24) && v21 != 0.0 && v21 < 0.0001)
  {
    if (*(a2 + 23) >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = a2[1];
    }

    v26 = v31;
    std::string::basic_string[abi:ne200100](v31, v25 + 15);
    if (v32 < 0)
    {
      v26 = v31[0];
    }

    if (v25)
    {
      if (*(a2 + 23) >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      memmove(v26, v27, v25);
    }

    strcpy(v26 + v25, "_fusion_barrier");
    v37[0] = &unk_1F1A3B3F8;
    v37[3] = v37;
    ZinMILUnitBuilder::CreateUnit<ZinIrPoolUnitInfo>(a8, v37, __p);
    std::vector<std::string>::__vdeallocate(a8);
    *a8 = *__p;
    a8[2] = v34;
    __p[1] = 0;
    v34 = 0;
    __p[0] = 0;
    v39.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
    std::__function::__value_func<void ()(std::optional<ZinIrPoolUnitInfo> &)>::~__value_func[abi:ne200100](v37);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = a2[1];
  }

  v29 = v31;
  std::string::basic_string[abi:ne200100](v31, v28 + 5);
  if (v32 < 0)
  {
    v29 = v31[0];
  }

  if (v28)
  {
    if (*(a2 + 23) >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, "_bias");
  v36[0] = &unk_1F1A3B488;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = v36;
  ZinMILUnitBuilder::CreateUnit<ZinIrGOCUnitInfo>(a8, v36, __p);
  std::vector<std::string>::__vdeallocate(a8);
  *a8 = *__p;
  a8[2] = v34;
  __p[1] = 0;
  v34 = 0;
  __p[0] = 0;
  v39.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);
  std::__function::__value_func<void ()(std::optional<ZinIrGOCUnitInfo> &)>::~__value_func[abi:ne200100](v36);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1A745D234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__function::__value_func<void ()(std::optional<ZinIrPoolUnitInfo> &)>::~__value_func[abi:ne200100](&a27);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrPoolUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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

void sub_1A745D55C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    (*(*v37 + 8))(v37, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a37 == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(&a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinMILUnitBuilder::InsertAxPlusB(const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v21[0] = VectorToDisk<float>(a4, a6);
  v21[1] = v13;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v22, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  v25 = 0;
  v26 = 0;
  v15[0] = VectorToDisk<float>(a5, a6);
  v15[1] = v14;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v19 = 0;
  v20 = 0;
  ZinMILUnitBuilder::InsertAxPlusB_Impl(a2, a3, v21, v15, a6, a7);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_1A745D788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VectorToDisk<float>(float **a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F1A3B508;
  v4[3] = v4;
  v2 = ToDisk_Impl<float,float>(a1, a2, v4);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A745D850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::InsertAxPlusB(const void **a2@<X1>, uint64_t a3@<X2>, MIL::IRValue ***a4@<X3>, MIL::IRValue ***a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v26 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v24, a7);
  v25 = *(a7 + 32);
  ToDisk<MIL::Fp16,float>(a4, a6, v24, 0, v19);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::__value_func[abi:ne200100](v22, a9);
  v23 = *(a9 + 32);
  ToDisk<MIL::Fp16,float>(a5, a6, v22, 0, v16);
  std::__function::__value_func<std::vector<float> ()(std::vector<MIL::IRValue const*> const&)>::~__value_func[abi:ne200100](v22);
  ZinMILUnitBuilder::InsertAxPlusB_Impl(a2, a3, v19, v16, a6, a8);
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

void sub_1A745D9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void ToDisk<MIL::Fp16,float>(MIL::IRValue ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
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
  if (v42 - v41 == 4 && (a4 & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>((a5 + 16), v14, v15, 1uLL);
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
      std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>((a5 + 16), v41, v42, (v42 - v41) >> 2);
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
    v32 = VectorToDisk<float>(&v41, a2);
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
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>((a5 + 16), v41, v42, (v42 - v41) >> 2);
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

void sub_1A745DE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
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

void ZinMILUnitBuilder::InsertCropND(uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a6, &v12, &v13, 1uLL);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v8 = -858993459 * ((a4[1] - *a4) >> 3);
  v9 = 0;
  if (v8 >= 1)
  {
    do
    {
      v11[0] = &unk_1F1A3B5F8;
      v11[1] = a4;
      v11[2] = &v9;
      v11[3] = v11;
      ZinMILUnitBuilder::CreateUnit<ZinIrInputViewUnitInfo>(a6, v11, &v12);
      std::vector<std::string>::__vdeallocate(a6);
      *a6 = v12;
      memset(&v12, 0, sizeof(v12));
      v10 = &v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
      std::__function::__value_func<void ()(std::optional<ZinIrInputViewUnitInfo> &)>::~__value_func[abi:ne200100](v11);
      ++v9;
    }

    while (v9 < v8);
  }
}

void ZinMILUnitBuilder::CreateUnit<ZinIrInputViewUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
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
    v10[0] = &unk_1F1A33F90;
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10[12]);
      }
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v10);
  }
}

void sub_1A745E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrInputViewUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::DeclareCustomOperationInputLayout(uint64_t *__return_ptr a1@<X8>, uint64_t a3@<X1>, int a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *(a7 + 8);
  v10 = a7 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v15 = v10;
  do
  {
    if (*(v11 + 32) >= a5)
    {
      v15 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a5));
  }

  while (v11);
  if (v15 != v10 && *(v15 + 32) <= a5)
  {
    memset(&v21, 0, sizeof(v21));
    v19 = 0;
    v20 = 0;
    __p = &v19;
    MILFunctionInfo::GetTensorLayout(a3, a5, &v21, &__p);
    v16 = (v15 + 40);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, v19);
    __p = 0;
    v19 = 0;
    v20 = 0;
    if (!GenerateANECTransposeMapping(a3, &v21, v15 + 40, &__p))
    {
      v17 = &v21;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      if (*(v15 + 63) < 0)
      {
        v16 = *v16;
      }

      ZinAssertImpl("ANE internal error: Cannot retrieve transpose mappings between layouts %s and %s", v17, v16);
    }

    ZinMILUnitBuilder::InsertTranspose(a6, &__p, a8, a1);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
LABEL_8:
    if (*(a6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *a6, *(a6 + 8));
    }

    else
    {
      v21 = *a6;
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &v21, &v22, 1uLL);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1A745E688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::ConvertToDefaultLayout(uint64_t *__return_ptr a1@<X8>, uint64_t a3@<X1>, int a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *(a7 + 8);
  v10 = a7 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v15 = v10;
  do
  {
    if (*(v11 + 32) >= a5)
    {
      v15 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a5));
  }

  while (v11);
  if (v15 != v10 && *(v15 + 32) <= a5)
  {
    memset(&v21, 0, sizeof(v21));
    v19 = 0;
    v20 = 0;
    __p = &v19;
    MILFunctionInfo::GetTensorLayout(a3, a5, &v21, &__p);
    v16 = (v15 + 40);
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&__p, v19);
    __p = 0;
    v19 = 0;
    v20 = 0;
    if (!GenerateANECTransposeMapping(a3, v15 + 40, &v21, &__p))
    {
      if (*(v15 + 63) < 0)
      {
        v16 = *v16;
      }

      v17 = &v21;
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      ZinAssertImpl("ANE internal error: Cannot retrieve transpose mappings between layouts %s and %s", v16, v17);
    }

    ZinMILUnitBuilder::InsertTranspose(a6, &__p, a8, a1);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
LABEL_8:
    if (*(a6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *a6, *(a6 + 8));
    }

    else
    {
      v21 = *a6;
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &v21, &v22, 1uLL);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1A745E8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinMILUnitBuilder::Finalize(__int128 **a1, ZinIrCompilerParameters **a2, const MIL::IROperation *a3, const void **a4, uint64_t a5, int a6, int a7)
{
  v12 = a1[1];
  if (*a1 == v12)
  {
    if (a6)
    {
      v16 = a1[3];
      if ((a1[4] - v16) != 24)
      {
        ZinAssertImpl("ANE internal error: Cannot create no-op ANECDictionaries with multiple inputs.");
      }

      ZinMILUnitBuilder::InsertCopy(v16, a5, v46);
      v42.__r_.__value_.__r.__words[0] = v46;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
    }
  }

  else
  {
    if (a7)
    {
      MILFunctionInfo::GetTensorName(a2, a4, 1, &v42);
      v13 = *(v12 - 2);
      if (*(v13 + 31) < 0)
      {
        operator delete(*(v13 + 8));
      }

      v14 = *&v42.__r_.__value_.__l.__data_;
      *(v13 + 24) = *(&v42.__r_.__value_.__l + 2);
      *(v13 + 8) = v14;
    }

    if (ZinIrCompilerParameters::isUTarget(a2[100]))
    {
      TensorFormatExceptions = ZinGetTensorFormatExceptions(*(v12 - 2));
    }

    else
    {
      TensorFormatExceptions = 0;
    }

    ToZinTensorFormatException(a5, TensorFormatExceptions, (*(v12 - 2) + 68));
  }

  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v17 = *a1;
  v18 = a1[1];
  while (v17 != v18)
  {
    v19 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(&v44, (*v17 + 8));
    v20 = (*v17 + 8);
    if (v45 != v19)
    {
      if (*(*v17 + 31) < 0)
      {
        v20 = *v20;
      }

      ZinAssertImpl("ANE internal error: Unit name %s collision during MIL to ANEC IR conversion.", v20);
    }

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v44, v20, *v17++ + 8);
  }

  *&v42.__r_.__value_.__l.__data_ = a3;
  v42.__r_.__value_.__r.__words[2] = 0;
  v43 = 0;
  inserted = MILFunctionInfo::InsertOp(a2, a4, &v42);
  v23 = v22;
  p_size = &v42.__r_.__value_.__l.__size_;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_size);
  v25 = *a1;
  v24 = a1[1];
  while (v25 != v24)
  {
    std::vector<MILToUnitConversion>::push_back[abi:ne200100](inserted + 8, v25++);
  }

  if (MILFunctionInfo::IsRootFunction(a2))
  {
    p_size = 0;
    if (a3)
    {
      if (RetrieveOpIdentifier(a3, &p_size) && (v23 & 1) != 0)
      {
        v42.__r_.__value_.__r.__words[0] = &p_size;
        v26 = std::__tree<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::vector<ZinAneTdInstruction *>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a2 + 3), &p_size, &std::piecewise_construct, &v42);
        v27 = v26;
        v28 = inserted + 7;
        v30 = v26[6];
        v29 = v26[7];
        if (v30 >= v29)
        {
          v32 = v26[5];
          v33 = (v30 - v32) >> 3;
          if ((v33 + 1) >> 61)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v34 = v29 - v32;
          v35 = v34 >> 2;
          if (v34 >> 2 <= (v33 + 1))
          {
            v35 = v33 + 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<__CFNumber const*>>((v26 + 5), v36);
          }

          v37 = (8 * v33);
          *v37 = v28;
          v31 = 8 * v33 + 8;
          v38 = v26[5];
          v39 = v26[6] - v38;
          v40 = v37 - v39;
          memcpy(v37 - v39, v38, v39);
          v41 = v27[5];
          v27[5] = v40;
          v27[6] = v31;
          v27[7] = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 1);
        }

        v27[6] = v31;
      }
    }
  }

  std::__tree<std::string>::destroy(&v44, v45[0]);
}

void ZinMILUnitBuilder::InsertLinear(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void **a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>, uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  ParameterType = MIL::IROperation::TryGetParameterType();
  v17 = MIL::IRValueType::AsTensorType(ParameterType);
  MILTensorRank = GetMILTensorRank(v17);
  if (MILTensorRank < 5)
  {
    v19 = MILTensorRank;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *a4, *(a4 + 8));
    }

    else
    {
      v30 = *a4;
    }

    memset(v27, 0, sizeof(v27));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v27, &v30, &v31, 1uLL);
    ZinMILUnitBuilder::DeclareOperationInputs(a1, a3, v27, a2, v28);
    v29[0] = v27;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (*(a6 + 23) >= 0)
    {
      v20 = *(a6 + 23);
    }

    else
    {
      v20 = a6[1];
    }

    v21 = &v30;
    std::string::basic_string[abi:ne200100](&v30, v20 + 30);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = v30.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      if (*(a6 + 23) >= 0)
      {
        v22 = a6;
      }

      else
      {
        v22 = *a6;
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, "__@linear_input_layout_convert");
    ZinMILUnitBuilder::DeclareCustomOperationInputLayout(v27, a2, v19, v28[0], a7, 4);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (*(a6 + 23) >= 0)
    {
      v23 = *(a6 + 23);
    }

    else
    {
      v23 = a6[1];
    }

    std::string::basic_string[abi:ne200100](&v30, v23 + 9);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v30;
    }

    else
    {
      v24 = v30.__r_.__value_.__r.__words[0];
    }

    if (v23)
    {
      if (*(a6 + 23) >= 0)
      {
        v25 = a6;
      }

      else
      {
        v25 = *a6;
      }

      memmove(v24, v25, v23);
    }

    strcpy(v24 + v23, "__@linear");
    v29[4] = 0;
    operator new();
  }

  ZinAssertImpl("ANE cannot support Linear with input rank >= 5.", x8_0);
}

void sub_1A745EFD8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A745EFD0);
}

void ZinMILUnitBuilder::CreateUnit<ZinIrLinearUnitInfo>(void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  LOBYTE(v10[0]) = 0;
  v22 = 0;
  v8 = *(a5 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, v10);
  if (v22)
  {
    operator new();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a7, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (v22 == 1)
  {
    v10[0] = &unk_1F1A2EA80;
    if (v21 == 1)
    {
      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }
    }

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

void sub_1A745F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  }

  std::optional<ZinIrLinearUnitInfo>::~optional(&a15);
  _Unwind_Resume(a1);
}

void ZinIrUnitInfo::ZinIrUnitInfo(ZinIrUnitInfo *this, const ZinIrUnitInfo *a2)
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
}

void sub_1A745F544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrTransposeUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrTransposeUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ZinIrUnitInfo *std::optional<ZinIrTransposeUnitInfo>::~optional(ZinIrUnitInfo *this)
{
  if (*(this + 104) == 1)
  {
    *this = &unk_1F1A33FB0;
    v2 = *(this + 10);
    if (v2)
    {
      *(this + 11) = v2;
      operator delete(v2);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }

  return this;
}

__n128 std::__function::__func<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrTransposeUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrTransposeUnitInfo> &)>::operator()(uint64_t result, uint64_t a2)
{
  if (*(*(result + 8) + 8) != **(result + 8))
  {
    memset(&v5[1], 0, 24);
    v6 = 0;
    v7 = 0u;
    v8 = 0u;
    v9 = -1;
    __p = 0;
    v5[0] = &unk_1F1A33FB0;
    v11 = 0;
    v12 = 0;
    std::optional<ZinIrTransposeUnitInfo>::operator=[abi:ne200100]<ZinIrTransposeUnitInfo,void>(a2, v5);
    v5[0] = &unk_1F1A33FB0;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    ZinIrUnitInfo::~ZinIrUnitInfo(v5);
    *(a2 + 32) = 21;
    v4 = *(result + 8);
    if ((a2 + 80) != v4)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a2 + 80), *v4, v4[1], (v4[1] - *v4) >> 3);
    }

    ToZinTensorFormat(**(result + 16), (a2 + 68));
  }
}

void sub_1A745F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertTranspose(MILFunctionInfo &,std::string const&,std::string const&,std::vector<DimensionMapping> const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrTransposeUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<ZinIrTransposeUnitInfo>::operator=[abi:ne200100]<ZinIrTransposeUnitInfo,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    *(a1 + 32) = *(a2 + 32);
    if (a1 != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 40), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
    }

    *(a1 + 64) = *(a2 + 64);
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(a1 + 80, (a2 + 80));
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
    *a1 = &unk_1F1A33FB0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1A745F974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrTransposeUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ZinIrGOCUnitInfo::ZinIrGOCUnitInfo(ZinIrGOCUnitInfo *this, const ZinIrGOCUnitInfo *a2)
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
  *this = &unk_1F19CA4D8;
  *(this + 5) = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 7) = v7;
  *(this + 8) = v8;
  *(this + 6) = v6;
}

void sub_1A745FAFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrGOCUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrGOCUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A3B288;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v4[1], 0, 24);
  v5 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = -1;
  v4[0] = &unk_1F19CA4D8;
  v9 = 0;
  v10 = 1065353216;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  v15 = -1;
  v16 = 0;
  v17 = -1;
  v18 = -1;
  std::optional<ZinIrGOCUnitInfo>::operator=[abi:ne200100]<ZinIrGOCUnitInfo&,void>(a2, v4);
  ZinIrUnitInfo::~ZinIrUnitInfo(v4);
  *(a2 + 32) = 8;
  *(a2 + 80) = 1;
  *(a2 + 84) = 1065353216;
  ToZinTensorFormat(**(a1 + 8), (a2 + 68));
  *(a2 + 92) = 1;
  *(a2 + 96) = 0;
}

void sub_1A745FD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertCopy(MILFunctionInfo &,std::string const&,std::string const&,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrGOCUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t result, ZinIrGOCUnitInfo *a2)
{
  v4 = *(result + 8);
  if (*(v4 + 44) == 1)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 6;
  }

  if (*(v4 + 16) != *(v4 + 24))
  {
    memset(&v8[1], 0, 24);
    v9 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = -1;
    v8[0] = &unk_1F19CA4D8;
    v13 = 0;
    v14 = 1065353216;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v19 = -1;
    v20 = 0;
    v21 = -1;
    v22 = -1;
    std::optional<ZinIrGOCUnitInfo>::operator=[abi:ne200100]<ZinIrGOCUnitInfo&,void>(a2, v8);
    ZinIrUnitInfo::~ZinIrUnitInfo(v8);
    GOCInitUnitInfo(a2);
    v6 = *(result + 8);
    v7 = v6[2];
    if (v6[3] - v7 == 4)
    {
      GOCSetScalarScale(*v7, *(result + 16), a2);
    }

    else
    {
      GOCSetScale(v6, v5, *(result + 16), a2);
    }
  }
}

void sub_1A745FFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_0>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinIrPoolUnitInfo::ZinIrPoolUnitInfo(ZinIrPoolUnitInfo *this, const ZinIrPoolUnitInfo *a2)
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
  *this = &unk_1F19CEE70;
  v6 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v6;
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  *(this + 40) = *(a2 + 40);
  *(this + 8) = v8;
  *(this + 9) = v9;
  *(this + 7) = v7;
}

void sub_1A74600F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ZinIrPoolUnitInfo  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ZinIrPoolUnitInfo  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_1,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_1>,void ()(std::optional<ZinIrPoolUnitInfo> &)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v3[1], 0, 24);
  v5 = 0u;
  v6 = 0u;
  v7 = -1;
  v3[0] = &unk_1F19CEE70;
  v9 = vdupq_n_s64(1uLL);
  v10 = 1;
  v11 = 0x100000001;
  v12 = 1;
  v13 = 0;
  v15 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0x3F80000000000001;
  v18 = 0;
  v8 = 1;
  v4 = 2;
  std::optional<ZinIrPoolUnitInfo>::operator=[abi:ne200100]<ZinIrPoolUnitInfo&,void>(a2, v3);
  ZinIrUnitInfo::~ZinIrUnitInfo(v3);
  *(a2 + 32) = 2;
}

void sub_1A74602C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_1,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_1>,void ()(std::optional<ZinIrPoolUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::optional<ZinIrPoolUnitInfo> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A3B488;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::operator()(uint64_t result, ZinIrGOCUnitInfo *a2)
{
  v2 = *(result + 8);
  if (*(v2 + 16) != *(v2 + 24))
  {
    if (*(v2 + 44) == 1)
    {
      v5 = *(v2 + 40);
    }

    else
    {
      v5 = 6;
    }

    memset(&v8[1], 0, 24);
    v9 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = -1;
    v8[0] = &unk_1F19CA4D8;
    v13 = 0;
    v14 = 1065353216;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v19 = -1;
    v20 = 0;
    v21 = -1;
    v22 = -1;
    std::optional<ZinIrGOCUnitInfo>::operator=[abi:ne200100]<ZinIrGOCUnitInfo&,void>(a2, v8);
    ZinIrUnitInfo::~ZinIrUnitInfo(v8);
    GOCInitUnitInfo(a2);
    v6 = *(result + 8);
    v7 = v6[2];
    if (v6[3] - v7 == 4)
    {
      GOCSetScalarBias(*v7, *(result + 16), a2);
    }

    else
    {
      GOCSetBias(v6, v5, *(result + 16), a2);
    }
  }
}

void sub_1A7460564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitInfo::~ZinIrUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2,std::allocator<ZinMILUnitBuilder::InsertAxPlusB_Impl(std::string const&,std::string const&,MILWeightInfo<float> const&,MILWeightInfo<float> const&,MILFunctionInfo &,MIL::IRDataType)::$_2>,void ()(std::optional<ZinIrGOCUnitInfo> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ToDisk_Impl<float,float>(float **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 512);
  v7 = MEMORY[0x1AC55A4C0](*(v6 + 128)) & 3;
  if (v7)
  {
    v8 = 4 - v7;
    std::vector<signed char>::vector[abi:ne200100](__ptr, 4 - v7);
    fwrite(__ptr[0], 1uLL, v8, *(v6 + 128));
    if (__ptr[0])
    {
      __ptr[1] = __ptr[0];
      operator delete(__ptr[0]);
    }
  }

  v10 = *a1;
  v9 = a1[1];
  while (v10 != v9)
  {
    v11 = *v10++;
    std::function<float ()(float)>::operator()(a3, v11);
    LODWORD(__ptr[0]) = v12;
    fwrite(__ptr, 4uLL, 1uLL, *(v6 + 128));
  }

  return MILProgramInfo::InsertWeightFileAndGetIndex(*(a2 + 512), v6 + 136);
}

void sub_1A746069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<MILFileInfo ToDisk_Impl<float,float>(std::vector<float> const&,MILFunctionInfo &,std::function<float ()(float)>)::$_0,std::allocator<MILFileInfo ToDisk_Impl<float,float>(std::vector<float> const&,MILFunctionInfo &,std::function<float ()(float)>)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}