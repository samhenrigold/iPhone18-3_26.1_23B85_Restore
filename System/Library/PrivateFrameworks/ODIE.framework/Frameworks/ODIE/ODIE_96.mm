void anonymous namespace::EncodingReader::emitError<char const(&)[54]>(uint64_t a1, void **a2, char *a3)
{
  v7[25] = *MEMORY[0x277D85DE8];
  v5[16] = 257;
  emitDiag(a2, 2, v5, &v6);
  if (v6)
  {
    mlir::Diagnostic::operator<<<54ul>(v7, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v6);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::try_emplace<std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a2, *(a2 + 4), *a3, &v14);
  v9 = v14;
  v10 = *(a2 + 4);
  if (result)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v15 = v14;
  v12 = *(a2 + 2);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v12 - *(a2 + 3) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a2, *(a2 + 4), *a3, &v15);
    v12 = *(a2 + 2);
    v9 = v15;
  }

  *(a2 + 2) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 3);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v10 = *(a2 + 4);
  v11 = 1;
LABEL_8:
  v13 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

void std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](__int128 **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 7;
    if ((v6 + 1) >> 57)
    {
      std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 6;
    if (v7 >> 6 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>>(v9);
    }

    v10 = v6 << 7;
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(v10, a2);
    v5 = v10 + 128;
    v11 = a1[1];
    v12 = v10 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>,mlir::BytecodeReader::Impl::RegionReadState*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    a1[1] = (v10 + 128);
    v14 = a1[2];
    a1[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    std::__split_buffer<mlir::BytecodeReader::Impl::RegionReadState>::~__split_buffer(v15);
  }

  else
  {
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(a1[1], a2);
    v5 = v4 + 128;
  }

  a1[1] = v5;
}

void mlir::BytecodeReader::BytecodeReader(void *a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  mlir::FileLineColRange::get(*a3, *(a2 + 16), *(a2 + 24), 0, 0);
  operator new();
}

uint64_t mlir::BytecodeReader::Impl::materialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  v8 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>((a1 + 48), &v8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*(a1 + 48) + 16 * *(a1 + 64));
  }

  result = mlir::BytecodeReader::Impl::materialize(a1, v6);
  *(a1 + 72) = 0;
  return result;
}

uint64_t mlir::BytecodeReader::Impl::finalize(int32x2_t *a1, unsigned int (*a2)(uint64_t), uint64_t a3)
{
  if (!*&a1[5])
  {
    return 1;
  }

  do
  {
    v13 = *(*&a1[4] + 16);
    if (a2(a3))
    {
      v14 = v13;
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>(&a1[6], &v14);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = (*&a1[6] + 16 * a1[8].u32[0]);
      }

      if ((mlir::BytecodeReader::Impl::materialize(a1, v7) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      mlir::Operation::dropAllReferences(v13);
      v8 = v13;
      if (*(v13 + 2))
      {
        *(v13 + 2) = 0;
        v10 = *v8;
        v9 = *(v8 + 1);
        *v9 = *v8;
        *(v10 + 8) = v9;
        *v8 = 0;
        *(v8 + 1) = 0;
      }

      mlir::Operation::destroy(v8);
      std::list<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>>::pop_front(&a1[3]);
      v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation *>(&a1[6], &v13);
      if (v11)
      {
        *v11 = -8192;
        a1[7] = vadd_s32(a1[7], 0x1FFFFFFFFLL);
      }
    }
  }

  while (a1[5]);
  return 1;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::StringAttr **a3)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v6 = 0;
  v7 = 0;
  BytecodeFileImpl = readBytecodeFileImpl(v8, a2, a3, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return BytecodeFileImpl;
}

BOOL readBytecodeFileImpl(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = mlir::FileLineColRange::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v11 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v11;
    mlir::BytecodeReader::Impl::Impl(v15, v8, a3, 0, v13, a4);
    v9 = mlir::BytecodeReader::Impl::read(v15, a2, 0, v12);
    mlir::BytecodeReader::Impl::~Impl(v15);
  }

  else
  {
    *&v13[0] = "input buffer is not an MLIR bytecode file";
    v14 = 259;
    emitDiag(v8, 2, v13, v15);
    v9 = (v15[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
  }

  return v9;
}

BOOL mlir::readBytecodeFile(uint64_t ****a1, uint64_t a2, mlir::StringAttr **a3)
{
  v6 = ***a1;
  v7 = *v6;
  v8 = v6[2] - v6[1];
  v11[0] = v6[1];
  v11[1] = v8;
  v11[2] = (*(v7 + 16))(v6, a2);
  v11[3] = v9;
  return readBytecodeFileImpl(v11, a2, a3, a1);
}

uint64_t mlir::Diagnostic::append<unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = 5;
  v14 = a2;
  v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v13, 1);
  v6 = *(a1 + 16) + 24 * *(a1 + 24);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a1 + 24);
  mlir::Diagnostic::operator<<<18ul>(a1, " bytes when only ");
  v8 = *a3;
  v13 = 5;
  v14 = v8;
  v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v13, 1);
  v10 = *(a1 + 16) + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 16);
  *v10 = v11;
  ++*(a1 + 24);
  mlir::Diagnostic::operator<<<8ul>(a1, " remain");
  return a1;
}

BOOL anonymous namespace::EncodingReader::parseByte<unsigned char>(uint64_t a1, _BYTE *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v5[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

uint64_t anonymous namespace::EncodingReader::alignTo(_anonymous_namespace_::EncodingReader *this, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1);
  if ((a2 ^ v3) <= v3)
  {
    v7 = *(this + 3);
    v22 = 257;
    emitDiag(v7, 2, v21, &v24);
    if (v24)
    {
      mlir::Diagnostic::operator<<<40ul>(&v25, "expected alignment to be a power-of-two");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v21, &v24);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
  }

  else
  {
    do
    {
      if ((*(this + 2) & v3) == 0)
      {
        return 1;
      }

      v20 = 0;
      {
        return 0;
      }

      v4 = v20;
    }

    while (v20 == 203);
    if (v20)
    {
      v5 = v27;
      do
      {
        *--v5 = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
    }

    else
    {
      v5 = &v26;
      v26 = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v5, v27, v27 - v5);
    v9 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v17, "'");
    v12 = v11->__r_.__value_.__r.__words[2];
    *__p = *&v11->__r_.__value_.__l.__data_;
    v19 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = *(this + 3);
    v22 = 257;
    emitDiag(v13, 2, v21, &v24);
    if (v24)
    {
      v22 = 260;
      v21[0] = __p;
      mlir::Diagnostic::operator<<(&v25, v21);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v21, &v24);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    v14 = v23;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v8 = (v14 & 1) == 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  return v8;
}

BOOL anonymous namespace::EncodingReader::parseBytes(void *a1, unint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v6 = *a1 + a1[1] - v3;
    v4 = (v8[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[21],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, void **a2, uint64_t *a3, uint64_t *a4)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v7[16] = 257;
  emitDiag(a2, 2, v7, &v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<21ul>(v9, "attempting to parse ");
    mlir::Diagnostic::append<unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(v9, *a3, a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void anonymous namespace::EncodingReader::emitError<char const(&)[62]>(uint64_t a1, void **a2, char *a3)
{
  v7[25] = *MEMORY[0x277D85DE8];
  v5[16] = 257;
  emitDiag(a2, 2, v5, &v6);
  if (v6)
  {
    mlir::Diagnostic::operator<<<62ul>(v7, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v6);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v15 = 0;
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v15;
  *(v8 + 16) = v15 & 1;
  v10 = *(a1 + 32);
  v11 = **(a1 + 24);
  if (v11 + (v9 >> 1) <= v10[1])
  {
    v13 = v9 >> 1;
    *(v8 + 24) = *v10 + v11;
    *(v8 + 32) = v13;
    *(v8 + 8) = a2;
    **(a1 + 24) += v13;
    return 1;
  }

  else
  {
    v12 = (v16[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v12;
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir4TypeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v15 = 0;
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v15;
  *(v8 + 16) = v15 & 1;
  v10 = *(a1 + 32);
  v11 = **(a1 + 24);
  if (v11 + (v9 >> 1) <= v10[1])
  {
    v13 = v9 >> 1;
    *(v8 + 24) = *v10 + v11;
    *(v8 + 32) = v13;
    *(v8 + 8) = a2;
    **(a1 + 24) += v13;
    return 1;
  }

  else
  {
    v12 = (v16[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  return v12;
}

uint64_t anonymous namespace::EncodingReader::parseBytes(_anonymous_namespace_::EncodingReader *this, size_t __n, unsigned __int8 *__dst)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = __n;
  v5 = *(this + 2);
  if (*this + *(this + 1) - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    *(this + 2) += __n;
    return 1;
  }

  else
  {
    v8 = *this + *(this + 1) - v5;
    v6 = (v10[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  return v6;
}

uint64_t anonymous namespace::EncodingReader::parseMultiByteVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = __clz(__rbit32(*a2));
  v5[0] = *a2;
  {
    return 0;
  }

  *a2 = v5[0] >> (v3 + 1);
  return 1;
}

BOOL resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(void **a1, uint64_t a2, unsigned int a3, unint64_t a4, _OWORD *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[0] = "string";
  v8[1] = 6;
  v7 = a4;
  if (a3 <= a4)
  {
    v5 = (v9[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v5;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, void **a2, const char **a3, uint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 257;
  emitDiag(a2, 2, &v13, &v16);
  if (v16)
  {
    mlir::Diagnostic::operator<<<9ul>(v17, "invalid ");
    v7 = *a3;
    v8 = a3[1];
    v15 = 261;
    v13 = v7;
    v14 = v8;
    mlir::Diagnostic::operator<<(v17, &v13);
    mlir::Diagnostic::operator<<<9ul>(v17, " index: ");
    v9 = *a4;
    LODWORD(v13) = 5;
    v14 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
    v11 = v18 + 24 * v19;
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++v19;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v16);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
}

BOOL parseEntry<llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,std::unique_ptr<anonymous namespace::BytecodeDialect>*>(void ***a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  {
    return 0;
  }

  v10[0] = "dialect";
  v10[1] = 7;
  v9 = v8;
  if (a2[1] <= v8)
  {
    v6 = (v11[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  else
  {
    *a3 = *a2 + 8 * v8;
    return 1;
  }

  return v6;
}

void anonymous namespace::DialectReader::emitError(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_::DialectReader *this@<X0>, const char **a3@<X1>)
{
  v8[25] = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 5) + 24);
  v6[16] = 257;
  emitDiag(v5, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<(v8, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v7);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
}

uint64_t anonymous namespace::DialectReader::getDialectVersion(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v7, a2, a3, v8);
  if (Key == -1)
  {
    v11 = *(v7 + 8);
  }

  else
  {
    v11 = Key;
  }

  v12 = *v7 + 8 * v11;
  {
    return 0;
  }

  else
  {
    return *(*(*v12 + 8) + 56);
  }
}

BOOL anonymous namespace::DialectReader::readOptionalAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v9 = 0;
  {
    return 0;
  }

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  *a2 = v7;
  return v7 != 0;
}

uint64_t anonymous namespace::DialectReader::readSignedVarInt(_anonymous_namespace_::EncodingReader **this, unint64_t *a2)
{
  v4 = 0;
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void anonymous namespace::DialectReader::readAPIntWithKnownWidth(_anonymous_namespace_::DialectReader *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a2 <= 8)
  {
    LOBYTE(v14) = 0;
    {
      v6 = v14;
LABEL_7:
      *(a3 + 8) = a2;
      *a3 = v6;
      v7 = 1;
LABEL_9:
      *(a3 + 16) = v7;
      return;
    }

    goto LABEL_8;
  }

  if (a2 <= 0x40)
  {
    v14 = 0;
    {
      v6 = -(v14 & 1) ^ (v14 >> 1);
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  v13 = 0;
  {
    v8 = v13;
    v14 = v16;
    v15 = 0x400000000;
    llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v14, v13);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        v10 = v14;
        {
          break;
        }

        *&v10[v9] = -(*&v10[v9] & 1) ^ (*&v10[v9] >> 1);
        v9 += 8;
        if (!--v8)
        {
          goto LABEL_16;
        }
      }

      *a3 = 0;
      *(a3 + 16) = 0;
    }

    else
    {
LABEL_16:
      v12 = a2;
      llvm::APInt::initFromArray(&v11, v14, v15);
      *(a3 + 8) = v12;
      *a3 = v11;
      *(a3 + 16) = 1;
    }

    if (v14 != v16)
    {
      free(v14);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

void anonymous namespace::DialectReader::readAPFloatWithKnownSemantics(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 88))(&v6);
  if (v8)
  {
    llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v9, a2, &v6);
    if (v9 == &llvm::semPPCDoubleDouble)
    {
      v5 = v10;
      *a3 = &llvm::semPPCDoubleDouble;
      *(a3 + 8) = v5;
      v9 = &llvm::semBogus;
      v10 = 0;
    }

    else
    {
      *a3 = &llvm::semBogus;
      llvm::detail::IEEEFloat::operator=(a3, &v9);
    }

    *(a3 + 24) = 1;
    llvm::APFloat::Storage::~Storage(&v9);
    if ((v8 & 1) != 0 && v7 >= 0x41)
    {
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

uint64_t anonymous namespace::DialectReader::readBlob(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void anonymous namespace::DialectReader::readResourceHandle(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  v4 = *(this + 5);
  v10 = 0;
  {
    v12[0] = "resource handle";
    v12[1] = 15;
    v11 = v10;
    if (v10 < *(v3 + 8))
    {
      v5 = *v3 + 24 * v10;
      v6 = *v5;
      v7 = *(v5 + 8);
LABEL_7:
      *a2 = v6;
      *(a2 + 8) = v7;
      v9 = 1;
      goto LABEL_8;
    }

    v8 = v13[200];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    if (v8 != 1)
    {
      v6 = 0;
      *&v7 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_7;
    }
  }

  v9 = 0;
  *a2 = 0;
LABEL_8:
  *(a2 + 24) = v9;
}

uint64_t anonymous namespace::BytecodeDialect::load(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    v7 = (a1 + 24);
    Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32), a4);
    if (Dialect)
    {
      v9 = Dialect;
      *a1 = Dialect;
      *(a1 + 8) = 1;
      v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(Dialect);
      if (v10)
      {
        v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v9);
      }

      *(a1 + 16) = v10;
    }

    else
    {
      if (*(*a3 + 40) != 1)
      {
        v27[0] = "dialect '";
        v28 = 259;
        (*(*a2 + 16))(&v30, a2, v27);
        v22 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v30, v7);
        v21 = v22;
        if (*v22)
        {
          LODWORD(v29[0]) = 3;
          v29[1] = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
          v29[2] = 154;
          v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v22 + 3), v29, 1);
          v24 = v21[3] + 24 * *(v21 + 8);
          v25 = *v23;
          *(v24 + 16) = *(v23 + 16);
          *v24 = v25;
          ++*(v21 + 8);
        }

        goto LABEL_20;
      }

      *a1 = 0;
      *(a1 + 8) = 1;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        v27[0] = *(a1 + 40);
        v27[1] = v11;
        v13 = *(a2 + 48);
        v14 = *(*(a2 + 40) + 24);
        v27[2] = v27[0];
        v27[3] = v14;
        v30 = &unk_286EA02A0;
        v15 = *(a2 + 24);
        v31 = *(a2 + 8);
        v32 = v15;
        v33 = v27;
        v34 = v13;
        (*(*v12 + 56))(v29);
        v16 = v29[0];
        v29[0] = 0;
        v17 = *(a1 + 56);
        *(a1 + 56) = v16;
        if (v17)
        {
          (*(*v17 + 8))(v17);
          v18 = v29[0];
          v29[0] = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }

          v16 = *(a1 + 56);
        }

        if (!v16)
        {
          v19 = 0;
          return v19 & 1;
        }

        goto LABEL_15;
      }

      v27[0] = "dialect '";
      v28 = 259;
      (*(*a2 + 16))(&v30, a2, v27);
      v20 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v30, v7);
      v21 = v20;
      if (*v20)
      {
        mlir::Diagnostic::operator<<<71ul>((v20 + 1), "' does not implement the bytecode interface, but found a version entry");
      }

LABEL_20:
      v19 = *(v21 + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
      return v19 & 1;
    }
  }

LABEL_15:
  v19 = 1;
  return v19 & 1;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(uint64_t a1)
{
  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID();
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((a1 + 48), &v4);
  result = 0;
  if (v2)
  {
    if (v2 != *(a1 + 48) + 16 * *(a1 + 64))
    {
      return *(v2 + 8);
    }
  }

  return result;
}

BOOL anonymous namespace::AttrTypeReader::parseAttribute(_anonymous_namespace_::AttrTypeReader *a1, _anonymous_namespace_::EncodingReader *this, uint64_t **a3)
{
  v9 = 0;
  {
    return 0;
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t *anonymous namespace::AttrTypeReader::resolveAttribute(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a2;
  if (*(this + 8) <= a2)
  {
    v16 = *(this + 17);
    LOWORD(v34) = 257;
    emitDiag(v16, 2, &v31, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<9ul>(v40, "invalid ");
      if (v39)
      {
        LOWORD(v34) = 261;
        v31 = "Attribute";
        v32 = 9;
        mlir::Diagnostic::operator<<(v40, &v31);
        if (v39)
        {
          mlir::Diagnostic::operator<<<9ul>(v40, " index: ");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v39, &v30);
LABEL_18:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    return 0;
  }

  v5 = *(this + 3) + 40 * a2;
  result = *v5;
  if (*v5)
  {
    return result;
  }

  v7 = *(this + 17);
  v27 = *(v5 + 24);
  v28 = v27;
  v29 = v7;
  if (*(v5 + 16) == 1)
  {
    v8 = *(this + 2);
    v9 = *(this + 18);
    v31 = &unk_286EA02A0;
    v32 = this;
    v33 = *this;
    v34 = v8;
    v35 = &v27;
    v36 = v9;
    {
      return 0;
    }

    v10 = *(this + 19);
    v11 = *(v10 + 56);
    if (v11)
    {
      v12 = *(v10 + 48);
      v13 = 8 * v11;
      while (((*(**v12 + 16))(*v12, &v31, *(*(v5 + 8) + 24), *(*(v5 + 8) + 32), v5) & 1) != 0)
      {
        if (*v5)
        {
          goto LABEL_29;
        }

        v27 = *(v5 + 24);
        v28 = v27;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v14 = *(v5 + 8);
    v15 = *(v14 + 16);
    if (v15)
    {
      result = (*(*v15 + 16))(v15, &v31);
      *v5 = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v31 = "Attribute";
  v32 = 9;
  v22 = 0;
  v23 = 0;
  {
    return 0;
  }

  v38 = 0;
  v17 = *(***(this + 17) + 32);
  v18 = v22;
  v19 = v23;
  result = mlir::parseAttribute(v22, v23, v17, 0, &v38, 1);
  *v5 = result;
  if (result)
  {
    v20 = v38;
    if (v38 == v19)
    {
LABEL_29:
      if (v28 == v27 + *(&v27 + 1))
      {
        return *v5;
      }

      v26 = 1283;
      v22 = "unexpected trailing bytes after ";
      v24 = "Attribute";
      v25 = 9;
      v31 = &v22;
      *&v33 = " entry";
      LOWORD(v34) = 770;
      goto LABEL_18;
    }

    if (v19 < v38)
    {
      v20 = v19;
    }

    v37[0] = &v18[v20];
    v37[1] = (v19 - v20);
LABEL_28:
    v21 = v40[192];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    if (v21)
    {
      return 0;
    }

    goto LABEL_29;
  }

  return result;
}

void anonymous namespace::EncodingReader::emitError<llvm::Twine>(uint64_t a1, void **a2, const char **a3)
{
  v7[25] = *MEMORY[0x277D85DE8];
  v5[16] = 257;
  emitDiag(a2, 2, v5, &v6);
  if (v6)
  {
    mlir::Diagnostic::operator<<(v7, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v6);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
}

void anonymous namespace::EncodingReader::emitError<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, void **a2, const char **a3)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v7 = 257;
  emitDiag(a2, 2, v6, &v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<10ul>(v9, "dialect '");
    v7 = 261;
    v5 = a3[1];
    v6[0] = *a3;
    v6[1] = v5;
    mlir::Diagnostic::operator<<(v9, v6);
    mlir::Diagnostic::operator<<<44ul>(v9, "' does not implement the bytecode interface");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void anonymous namespace::EncodingReader::emitError<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, void **a2, const char **a3, const char **a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v12 = 257;
  emitDiag(a2, 2, &v10, &v13);
  if (v13)
  {
    mlir::Diagnostic::operator<<<33ul>(v14, "trailing characters found after ");
    v7 = *a3;
    v8 = a3[1];
    v12 = 261;
    v10 = v7;
    v11 = v8;
    mlir::Diagnostic::operator<<(v14, &v10);
    mlir::Diagnostic::operator<<<19ul>(v14, " assembly format: ");
    v12 = 261;
    v9 = a4[1];
    v10 = *a4;
    v11 = v9;
    mlir::Diagnostic::operator<<(v14, &v10);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
}

BOOL anonymous namespace::AttrTypeReader::parseType(_anonymous_namespace_::AttrTypeReader *a1, _anonymous_namespace_::EncodingReader *this, uint64_t *a3)
{
  v9 = 0;
  {
    return 0;
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t anonymous namespace::AttrTypeReader::resolveType(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a2;
  if (*(this + 22) <= a2)
  {
    v16 = *(this + 17);
    LOWORD(v34) = 257;
    emitDiag(v16, 2, &v31, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<9ul>(v40, "invalid ");
      if (v39)
      {
        LOWORD(v34) = 261;
        v31 = "Type";
        v32 = 4;
        mlir::Diagnostic::operator<<(v40, &v31);
        if (v39)
        {
          mlir::Diagnostic::operator<<<9ul>(v40, " index: ");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v39, &v30);
LABEL_18:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    return 0;
  }

  v5 = *(this + 10) + 40 * a2;
  result = *v5;
  if (*v5)
  {
    return result;
  }

  v7 = *(this + 17);
  v27 = *(v5 + 24);
  v28 = v27;
  v29 = v7;
  if (*(v5 + 16) == 1)
  {
    v8 = *(this + 2);
    v9 = *(this + 18);
    v31 = &unk_286EA02A0;
    v32 = this;
    v33 = *this;
    v34 = v8;
    v35 = &v27;
    v36 = v9;
    {
      return 0;
    }

    v10 = *(this + 19);
    v11 = *(v10 + 120);
    if (v11)
    {
      v12 = *(v10 + 112);
      v13 = 8 * v11;
      while (((*(**v12 + 16))(*v12, &v31, *(*(v5 + 8) + 24), *(*(v5 + 8) + 32), v5) & 1) != 0)
      {
        if (*v5)
        {
          goto LABEL_29;
        }

        v27 = *(v5 + 24);
        v28 = v27;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v14 = *(v5 + 8);
    v15 = *(v14 + 16);
    if (v15)
    {
      result = (*(*v15 + 24))(v15, &v31);
      *v5 = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v31 = "Type";
  v32 = 4;
  v22 = 0;
  v23 = 0;
  {
    return 0;
  }

  v38 = 0;
  v17 = *(***(this + 17) + 32);
  v18 = v22;
  v19 = v23;
  result = mlir::parseType(v22, v23, v17, &v38, 1);
  *v5 = result;
  if (result)
  {
    v20 = v38;
    if (v38 == v19)
    {
LABEL_29:
      if (v28 == v27 + *(&v27 + 1))
      {
        return *v5;
      }

      v26 = 1283;
      v22 = "unexpected trailing bytes after ";
      v24 = "Type";
      v25 = 4;
      v31 = &v22;
      *&v33 = " entry";
      LOWORD(v34) = 770;
      goto LABEL_18;
    }

    if (v19 < v38)
    {
      v20 = v19;
    }

    v37[0] = &v18[v20];
    v37[1] = (v19 - v20);
LABEL_28:
    v21 = v40[192];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    if (v21)
    {
      return 0;
    }

    goto LABEL_29;
  }

  return result;
}

BOOL anonymous namespace::EncodingReader::parseByte<BOOL>(uint64_t a1, BOOL *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v5[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::parseByte<mlir::AsmResourceEntryKind>(uint64_t a1, _DWORD *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v5[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[46],llvm::StringRef &,char const(&)[2]>(uint64_t a1, void **a2, const char **a3)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v7 = 257;
  emitDiag(a2, 2, v6, &v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<46ul>(v9, "unexpected trailing bytes in resource entry '");
    v7 = 261;
    v5 = a3[1];
    v6[0] = *a3;
    v6[1] = v5;
    mlir::Diagnostic::operator<<(v9, v6);
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 4) + 24);
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

double anonymous namespace::ParsedResourceEntry::parseAsString@<D0>(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 2)
  {
    __src[0] = 0;
    __src[1] = 0;
    {
      if (__src[0])
      {
        v5 = __src[1];
        if (__src[1] >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (__src[1] >= 0x17)
        {
          operator new();
        }

        HIBYTE(v13) = __src[1];
        if (__src[1])
        {
          memmove(&__dst, __src[0], __src[1]);
        }

        *(&__dst + v5) = 0;
      }

      else
      {
        __dst = 0uLL;
        v13 = 0;
      }

      result = *&__dst;
      *a2 = __dst;
      *(a2 + 16) = v13;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v6 = *(*(this + 4) + 24);
    v11 = 257;
    emitDiag(v6, 2, __src, &__dst);
    if (__dst)
    {
      mlir::Diagnostic::operator<<<47ul>(&__dst + 8, "expected a string resource entry, but found a ");
      if (__dst)
      {
        v7 = *(this + 6);
        v8 = qword_25D0A02C0[v7];
        v9 = (&off_2799BECA0)[v7];
        v11 = 261;
        __src[0] = v9;
        __src[1] = v8;
        mlir::Diagnostic::operator<<(&__dst + 8, __src);
        if (__dst)
        {
          mlir::Diagnostic::operator<<<15ul>(&__dst + 8, " entry instead");
        }
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
  }

  return result;
}

void *mlir::UnmanagedAsmResourceBlob::allocateWithAlign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v10, a5);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a1 + 24, v10);
  *(a1 + 56) = 0;
  return llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(v10);
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

void std::vector<mlir::Value>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(a1, v10);
      }

      std::vector<mlir::Value>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

BOOL mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(uint64_t a1, void ***a2, uint64_t **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  {
    return 0;
  }

  v5 = v11;
  v12[0] = v11;
  if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(v12))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  if (v6)
  {
    return 1;
  }

  {
    *&llvm::getTypeName<mlir::LocationAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LocationAttr>();
    *(&llvm::getTypeName<mlir::LocationAttr>(void)::Name + 1) = v9;
  }

  v10 = llvm::getTypeName<mlir::LocationAttr>(void)::Name;
  v7 = (v13 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  return v7;
}

uint64_t mlir::BytecodeReader::Impl::parseUseListOrderForRange(mlir::BytecodeReader::Impl *this, _anonymous_namespace_::EncodingReader *a2, unint64_t a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = 1;
  v20 = 1;
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  {
    v6 = v20;
    if (v20)
    {
LABEL_4:
      v7 = 0;
      while (1)
      {
        v19 = 0;
        {
          goto LABEL_32;
        }

        v18 = 0;
        {
          goto LABEL_32;
        }

        v8 = v18;
        v9 = v18 >> 1;
        v18 >>= 1;
        v30 = v32;
        v31 = 0x400000000;
        if (v8 >= 2)
        {
          while (1)
          {
            v26 = 0;
            {
              break;
            }

            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v30, v26);
            if (!--v9)
            {
              v10 = v19;
              v26 = v28;
              v27 = 0x400000000;
              if (v31)
              {
                llvm::SmallVectorImpl<unsigned int>::operator=(&v26, &v30);
              }

              goto LABEL_14;
            }
          }

          *this = 0;
          *(this + 24) = 0;
          if (v30 != v32)
          {
            free(v30);
          }

          goto LABEL_35;
        }

        v10 = v19;
        v26 = v28;
        v27 = 0x400000000;
LABEL_14:
        v29 = v8 & 1;
        v24 = 0;
        v11 = v23;
        if ((llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v21, v23, v10, &v24) & 1) == 0)
        {
          break;
        }

LABEL_22:
        if (v26 != v28)
        {
          free(v26);
        }

        if (v30 != v32)
        {
          free(v30);
        }

        if (++v7 == v6)
        {
          v14 = v21;
          v15 = v22;
          v16 = v23;
          goto LABEL_34;
        }
      }

      v12 = v24;
      v25 = v24;
      v13 = v22;
      if (4 * v22 + 4 >= 3 * v11)
      {
        v11 *= 2;
      }

      else if (v11 + ~v22 - HIDWORD(v22) > v11 >> 3)
      {
LABEL_17:
        LODWORD(v22) = v13 + 1;
        if (*v12 != -1)
        {
          --HIDWORD(v22);
        }

        *v12 = v10;
        *(v12 + 8) = v12 + 24;
        *(v12 + 16) = 0x400000000;
        if (v27)
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v12 + 8, &v26);
        }

        *(v12 + 40) = v29;
        goto LABEL_22;
      }

      llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(&v21, v11);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v21, v23, v10, &v25);
      v13 = v22;
      v12 = v25;
      goto LABEL_17;
    }

    v16 = 0;
    v14 = 0;
    v15 = 0;
LABEL_34:
    *this = v14;
    v21 = 0;
    v22 = 0;
    *(this + 1) = v15;
    *(this + 4) = v16;
    v23 = 0;
    *(this + 24) = 1;
  }

  else
  {
LABEL_32:
    *this = 0;
    *(this + 24) = 0;
  }

LABEL_35:
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(&v21);
  return MEMORY[0x25F891030](v21, 8);
}

BOOL mlir::BytecodeReader::Impl::defineValues(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v37[0] = a3;
  v37[1] = a4;
  v4 = *(a1 + 688);
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v6 = (*(v5 - 4) + a4);
  v7 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v7 >= v6)
  {
    if (a4)
    {
      v19 = 0;
      v20 = (a1 + 832);
      v21 = a4;
      do
      {
        v22 = mlir::ValueRange::dereference_iterator(v37, v19);
        v23 = *(v5 - 4);
        v24 = *(v4 - 56);
        v25 = *(v24 + 8 * v23);
        *(v24 + 8 * v23) = v22;
        if (v25)
        {
          v26 = 0;
          v27 = *(v25 + 8) & 7;
          v28 = v27 == 7;
          if (v27 == 7)
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

          if (!v28)
          {
            v30 = *(v29 + 8) & 7;
            if (v30 == 6)
            {
              v26 = (v29 + 24 * *(v29 + 16) + 120);
            }

            else
            {
              v26 = (v29 + 16 * v30 + 16);
            }
          }

          v38 = v22;
          mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, &v38);
          if (v26 != v20)
          {
            v31 = v26[1];
            if (v31 != v20)
            {
              llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(v20, v20, v26[2] + 32, v26, v31);
            }
          }

          LODWORD(v23) = *(v5 - 4);
        }

        ++v19;
        *(v5 - 4) = v23 + 1;
      }

      while (v21 != v19);
    }

    return 1;
  }

  else
  {
    v35 = 257;
    emitDiag(a2, 2, &v33, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<81ul>(v39, "value index range was outside of the expected range for the parent region, got [");
      v8 = *(v5 - 4);
      v33 = 5;
      v34 = v8;
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v33, 1);
      v10 = v40 + 24 * v41;
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++v41;
      mlir::Diagnostic::operator<<<3ul>(v39, ", ");
      v33 = 5;
      v34 = v6;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v33, 1);
      v13 = v40 + 24 * v41;
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++v41;
      mlir::Diagnostic::operator<<<30ul>(v39, "), but the maximum index was ");
      v33 = 5;
      v34 = v7 - 1;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v33, 1);
      v16 = v40 + 24 * v41;
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++v41;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v33, &v38);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    v18 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  return v18;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::try_emplace<mlir::BytecodeReader::Impl::UseListOrderStorage const&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a2, *(a2 + 4), *a3, &v14);
  v9 = v14;
  v10 = *(a2 + 4);
  if (result)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v12 = *(a2 + 2);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_12;
  }

  if (v10 + ~v12 - *(a2 + 3) <= v10 >> 3)
  {
LABEL_12:
    llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a2, v10);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a2, *(a2 + 4), *a3, &v15);
    v12 = *(a2 + 2);
    v9 = v15;
  }

  *(a2 + 2) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 3);
  }

  *v9 = *a3;
  *(v9 + 8) = v9 + 24;
  result = v9 + 8;
  *(v9 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    result = llvm::SmallVectorImpl<unsigned int>::operator=(result, a4);
  }

  *(v9 + 40) = *(a4 + 32);
  v10 = *(a2 + 4);
  v11 = 1;
LABEL_10:
  v13 = *a2 + 48 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, void **a2, const char **a3, uint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 257;
  emitDiag(a2, 2, &v13, &v16);
  if (v16)
  {
    mlir::Diagnostic::operator<<<29ul>(v17, "expected attribute of type: ");
    v7 = *a3;
    v8 = a3[1];
    v15 = 261;
    v13 = v7;
    v14 = v8;
    mlir::Diagnostic::operator<<(v17, &v13);
    mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
    v9 = *a4;
    LODWORD(v13) = 0;
    v14 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
    v11 = v18 + 24 * v19;
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++v19;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v16);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 48 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 48 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 48 * v10 - 48;
      v13 = vdupq_n_s64(v12 / 0x30);
      v14 = result + 12;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 24) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 12) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = -1;
          *(v14 + 12) = -1;
        }

        v11 += 4;
        v14 += 24;
      }

      while (((v12 / 0x30 + 4) & 0xFFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 48 * v3;
      v18 = (v4 + 24);
      do
      {
        v19 = *(v18 - 6);
        if (v19 <= 0xFFFFFFFD)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v19, &v29);
          v20 = v29;
          *v29 = *(v18 - 6);
          *(v20 + 1) = v20 + 6;
          *(v20 + 2) = 0x400000000;
          if (*(v18 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v20 + 2), (v18 - 16));
          }

          *(v20 + 40) = v18[16];
          ++*(a1 + 8);
          v21 = *(v18 - 2);
          if (v18 != v21)
          {
            free(v21);
          }
        }

        v18 += 48;
        v17 -= 48;
      }

      while (v17);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 48 * v22 - 48;
    v25 = vdupq_n_s64(v24 / 0x30);
    v26 = result + 12;
    do
    {
      v27 = vdupq_n_s64(v23);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_25D0A0500)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 24) = -1;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 12) = -1;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_25D0A04F0)))).i32[1])
      {
        *v26 = -1;
        *(v26 + 12) = -1;
      }

      v23 += 4;
      v26 += 24;
    }

    while (((v24 / 0x30 + 4) & 0xFFFFFFFFFFFFFFCLL) != v23);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 48 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 24) <= 0xFFFFFFFD)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 48;
      v2 -= 48;
    }

    while (v2);
  }
}

uint64_t mlir::Diagnostic::operator<<<81ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 48 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 48 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 48 * v10 - 48;
      v13 = vdupq_n_s64(v12 / 0x30);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[6] = -4096;
        }

        v11 += 2;
        result += 12;
      }

      while (((v12 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 48 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          *v25 = *(v15 - 3);
          v18[1] = v18 + 3;
          v18[2] = 0x400000000;
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v18 + 1), (v15 - 16));
          }

          *(v18 + 40) = v15[16];
          ++*(a1 + 8);
          v19 = *(v15 - 2);
          if (v15 != v19)
          {
            free(v19);
          }
        }

        v15 += 48;
        v16 -= 48;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 48 * v20 - 48;
    v23 = vdupq_n_s64(v22 / 0x30);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[6] = -4096;
      }

      v21 += 2;
      result += 12;
    }

    while (((v22 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::BytecodeReader::Impl::materialize(uint64_t a1, void *a2)
{
  std::vector<mlir::BytecodeReader::Impl::ValueScope>::emplace_back<>((a1 + 680));
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](&v9, (a2[1] + 24));
  v4 = a2[1];
  v6 = *v4;
  v5 = v4[1];
  *(v6 + 8) = v5;
  *v5 = v6;
  --*(a1 + 40);
  std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v4 + 2);
  operator delete(v4);
  *a2 = -8192;
  *(a1 + 56) = vadd_s32(*(a1 + 56), 0x1FFFFFFFFLL);
  while (v9 != v10)
  {
    if ((mlir::BytecodeReader::Impl::parseRegions(a1, &v9, v10 - 16) & 1) == 0)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = 1;
LABEL_6:
  v12 = &v9;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__destroy_vector::operator()[abi:nn200100](&v12);
  return v7;
}

uint64_t std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(void *a1)
{
  v2 = a1[6];
  if (v2 != a1 + 8)
  {
    free(v2);
  }

  result = a1[4];
  a1[4] = 0;
  if (result)
  {

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::list<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v2 + 2);

  operator delete(v2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation *>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::BytecodeReader::Impl::Impl(uint64_t a1, uint64_t a2, void **a3, char a4, _OWORD *a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x100000000;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x100000000;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x100000000;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v9 = **a3;
  v10 = v9[77];
  v11 = v9[66];
  if (!v11)
  {
    v12 = v9[48];
    v17 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v17);
  }

  v16 = v11;
  mlir::OperationName::OperationName(&v17, "builtin.unrealized_conversion_cast", 0x22, *(**v10 + 32));
  mlir::OperationState::OperationState((a1 + 872), v10, v17, 0, 0, &v16 + 2, 1, v13, 0, 0, 0, 0, 0, 0);
  v14 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v14;
  *(a1 + 1208) = a6;
  return a1;
}

void mlir::BytecodeReader::Impl::~Impl(mlir::BytecodeReader::Impl *this)
{
  mlir::OperationState::~OperationState((this + 872));
  mlir::Block::~Block(this + 100);
  mlir::Block::~Block(this + 91);
  MEMORY[0x25F891030](*(this + 88), 8);
  v2 = *(this + 85);
  if (v2)
  {
    v3 = *(this + 86);
    v4 = *(this + 85);
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](v3);
      }

      while (v3 != v2);
      v4 = *(this + 85);
    }

    *(this + 86) = v2;
    operator delete(v4);
  }

  v5 = *(this + 77);
  if (v5 != this + 632)
  {
    free(v5);
  }

  v6 = *(this + 67);
  if (v6 != this + 552)
  {
    free(v6);
  }

  v7 = *(this + 132);
  v8 = *(this + 64);
  if (v7)
  {
    v9 = (v8 + 24);
    v10 = 48 * v7;
    do
    {
      if ((*(v9 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v11 = *(v9 - 2);
        if (v9 != v11)
        {
          free(v11);
        }
      }

      v9 += 6;
      v10 -= 48;
    }

    while (v10);
    v8 = *(this + 64);
  }

  MEMORY[0x25F891030](v8, 8);
  if (*(this + 125))
  {
    v12 = *(this + 124);
    if (v12)
    {
      v13 = 0;
      v14 = 8 * v12;
      do
      {
        v15 = *(*(this + 61) + v13);
        if (v15 != -8 && v15 != 0)
        {
          if (*(v15 + 31) < 0)
          {
            operator delete(*(v15 + 8));
          }

          MEMORY[0x25F891030](v15, 8);
        }

        v13 += 8;
      }

      while (v14 != v13);
    }
  }

  free(*(this + 61));
  v17 = *(this + 53);
  if (v17 != this + 440)
  {
    free(v17);
  }

  v18 = *(this + 45);
  if (v18 != this + 376)
  {
    free(v18);
  }

  if (*(this + 87))
  {
    v19 = *(this + 86);
    if (v19)
    {
      v20 = 0;
      v21 = 8 * v19;
      do
      {
        v22 = *(*(this + 42) + v20);
        if (v22 != -8 && v22 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v20 += 8;
      }

      while (v21 != v20);
    }
  }

  free(*(this + 42));
  v24 = *(this + 34);
  v25 = *(this + 70);
  if (v25)
  {
    v26 = -8 * v25;
    v27 = &v24[8 * v25 - 8];
    do
    {
      v26 += 8;
    }

    while (v26);
    v24 = *(this + 34);
  }

  if (v24 != this + 288)
  {
    free(v24);
  }

  v28 = *(this + 21);
  if (v28 != this + 184)
  {
    free(v28);
  }

  v29 = *(this + 14);
  if (v29 != this + 128)
  {
    free(v29);
  }

  MEMORY[0x25F891030](*(this + 6), 8);
  if (*(this + 5))
  {
    v30 = *(this + 4);
    v31 = *(*(this + 3) + 8);
    v32 = *v30;
    *(v32 + 8) = v31;
    *v31 = v32;
    *(this + 5) = 0;
    if (v30 != (this + 24))
    {
      do
      {
        v33 = *(v30 + 1);
        std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v30 + 2);
        operator delete(v30);
        v30 = v33;
      }

      while (v33 != (this + 24));
    }
  }
}

void std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 16;
        std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2 != a1 + 7)
  {
    free(v2);
  }

  result = a1[3];
  a1[3] = 0;
  if (result)
  {

    JUMPOUT(0x25F891040);
  }

  return result;
}

__n128 std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 40) = a1 + 56;
  v6 = a1 + 40;
  *(a1 + 48) = 0x600000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::Block *>::operator=(v6, a2 + 40);
  }

  result = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__int128 *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>,mlir::BytecodeReader::Impl::RegionReadState*>(__int128 *result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(a3, v6);
      v6 += 8;
      a3 += 128;
    }

    while (v6 != a2);
    do
    {
      result = std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](v5);
      v5 += 8;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<mlir::BytecodeReader::Impl::RegionReadState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100]((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<anonymous namespace::BytecodeDialect>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::BytecodeDialect *)>::callback_fn<mlir::BytecodeReader::Impl::parseDialectSection(llvm::ArrayRef<unsigned char>)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v13 = 0uLL;
  if (*(v3 + 248) > 4uLL)
  {
    v8 = a1[1];
    v14 = 0;
    {
      return 0;
    }

    v9 = v14;
    if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v8[3], *(v3 + 536), *(v3 + 544), v14 >> 1, &v13))
    {
      return 0;
    }

    v6 = v9 & 1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  v10 = *(v3 + 368);
  v11 = v6 | (v5 << 8);
  if (v10 >= *(v3 + 372))
  {
  }

  else
  {
    v12 = *(v3 + 360) + 48 * v10;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = a2;
    *(v12 + 24) = v13;
    *(v12 + 40) = v11;
    ++*(v3 + 368);
  }

  return 1;
}

__n128 llvm::SmallVectorTemplateBase<anonymous namespace::BytecodeOperationName,true>::growAndEmplaceBack<anonymous namespace::BytecodeDialect *&,llvm::StringRef &,std::optional<BOOL> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v13[0] = 0;
  v13[8] = 0;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v13;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= v13 && v7 + 48 * v6 > v13)
    {
      v12 = &v13[-v7];
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 48);
      v7 = *a1;
      v8 = &v12[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 48);
      v7 = *a1;
      v8 = v13;
    }
  }

  v9 = v7 + 48 * *(a1 + 8);
  result = *v8;
  v11 = *(v8 + 2);
  *(v9 + 16) = *(v8 + 1);
  *(v9 + 32) = v11;
  *v9 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::doFind<void const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v5 = (a1 + 48 * v4);
  v6 = *v5;
  if (*v5 != a3)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = (a1 + 48 * (v8 & v3));
      v6 = *v5;
      if (*v5 == a3)
      {
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

void llvm::SmallVectorImpl<std::pair<unsigned int,unsigned long long>>::append<std::pair<unsigned int,unsigned long long> const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(unint64_t result, _DWORD *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *(v8 + 8);
        if (v82 > v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 4);
          *(a2 - 4) = v84;
          *(v8 + 8) = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v140 = *(v8 + 16);
          v141 = *(v8 + 32);
          *(v8 + 16) = v141;
          *(v8 + 32) = v140;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 16) = v142;
            goto LABEL_187;
          }

LABEL_188:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_186;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_186:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_187:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_188;
        }
      }

      v151 = *(a2 - 1);
      if (v151 > v93)
      {
        v152 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v152;
        *(v8 + 40) = v151;
        *(a2 - 1) = v93;
        v153 = *(v8 + 40);
        v154 = *(v8 + 24);
        if (v153 > v154)
        {
          v155 = *(v8 + 16);
          v156 = *(v8 + 32);
          *(v8 + 16) = v156;
          *(v8 + 32) = v155;
          *(v8 + 24) = v153;
          *(v8 + 40) = v154;
          v157 = *(v8 + 8);
          if (v153 > v157)
          {
            v158 = *v8;
            *v8 = v156;
            *(v8 + 16) = v158;
            *(v8 + 8) = v153;
            *(v8 + 24) = v157;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = *(v99 + 3);
            v101 = *(v99 + 1);
            v99 = v95;
            if (v100 > v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = v8 + v103;
                *(v104 + 16) = *(v8 + v103);
                *(v104 + 24) = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 <= *(v104 - 8))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v143 = (v8 + 24);
        do
        {
          v144 = *(v7 + 24);
          v145 = *(v7 + 8);
          v7 = v95;
          if (v144 > v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 2) = *(v147 - 6);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 > *(v148 - 4));
            *(v147 - 2) = v146;
            *v147 = v144;
          }

          v95 = (v7 + 16);
          v143 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          v108 = v107;
          if (v106 >= v107)
          {
            v109 = (2 * v107) | 1;
            v110 = v8 + 16 * v109;
            if (2 * v108 + 2 < v9)
            {
              v111 = *(v110 + 8) > *(v110 + 24);
              v110 += 16 * v111;
              if (v111)
              {
                v109 = 2 * v108 + 2;
              }
            }

            v112 = v8 + 16 * v108;
            v113 = *(v110 + 8);
            v114 = *(v112 + 8);
            if (v113 <= v114)
            {
              v115 = *v112;
              do
              {
                v116 = v112;
                v112 = v110;
                *v116 = *v110;
                *(v116 + 8) = v113;
                if (v106 < v109)
                {
                  break;
                }

                v117 = (2 * v109) | 1;
                v110 = v8 + 16 * v117;
                v118 = 2 * v109 + 2;
                if (v118 < v9)
                {
                  result = *(v110 + 24);
                  v111 = *(v110 + 8) > result;
                  v110 += 16 * v111;
                  if (v111)
                  {
                    v117 = v118;
                  }
                }

                v113 = *(v110 + 8);
                v109 = v117;
              }

              while (v113 <= v114);
              *v112 = v115;
              *(v112 + 8) = v114;
            }
          }

          v107 = v108 - 1;
        }

        while (v108);
        do
        {
          v119 = 0;
          v120 = *v8;
          v121 = *(v8 + 8);
          v122 = v8;
          do
          {
            v123 = v122 + 16 * v119;
            v124 = v123 + 16;
            v125 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v9)
            {
              v119 = v125;
            }

            else
            {
              v126 = *(v123 + 24);
              result = *(v123 + 40);
              v127 = v123 + 32;
              if (v126 <= result)
              {
                v119 = v125;
              }

              else
              {
                v124 = v127;
              }
            }

            *v122 = *v124;
            *(v122 + 8) = *(v124 + 8);
            v122 = v124;
          }

          while (v119 <= ((v9 - 2) >> 1));
          if (v124 == a2 - 4)
          {
            *v124 = v120;
            *(v124 + 8) = v121;
          }

          else
          {
            *v124 = *(a2 - 4);
            *(v124 + 8) = *(a2 - 1);
            *(a2 - 4) = v120;
            *(a2 - 1) = v121;
            v128 = (v124 - v8 + 16) >> 4;
            v111 = v128 < 2;
            v129 = v128 - 2;
            if (!v111)
            {
              v130 = v129 >> 1;
              v131 = v8 + 16 * (v129 >> 1);
              v132 = *(v131 + 8);
              v133 = *(v124 + 8);
              if (v132 > v133)
              {
                v134 = *v124;
                do
                {
                  v135 = v124;
                  v124 = v131;
                  *v135 = *v131;
                  *(v135 + 8) = v132;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = v8 + 16 * v130;
                  v132 = *(v131 + 8);
                }

                while (v132 > v133);
                *v124 = v134;
                *(v124 + 8) = v133;
              }
            }
          }

          a2 -= 4;
          v111 = v9-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        *(v8 + 8) = v12;
        *(v10 + 8) = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 > v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 > v28)
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v8 + 24) = v30;
          goto LABEL_39;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        *(v8 + 24) = v28;
        *(v10 - 8) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 8) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = *(v10 + 24);
      v39 = *(v8 + 40);
      v40 = *(a2 - 5);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v42;
          *(v10 + 24) = v40;
          *(a2 - 5) = v38;
          v43 = *(v10 + 24);
          v44 = *(v8 + 40);
          if (v43 > v44)
          {
            v45 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v45;
            *(v8 + 40) = v43;
            *(v10 + 24) = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 32);
        if (v40 > v38)
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v41;
          *(v8 + 40) = v40;
          goto LABEL_48;
        }

        *(v8 + 32) = *(v10 + 16);
        *(v10 + 16) = v41;
        *(v8 + 40) = v38;
        *(v10 + 24) = v39;
        v46 = *(a2 - 5);
        if (v46 > v39)
        {
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v41;
          *(v10 + 24) = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = *(v10 + 8);
      v48 = *(v10 - 8);
      v49 = *(v10 + 24);
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 16);
          *v10 = v51;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 8) = v49;
            *(v10 + 8) = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v50;
          *(v10 - 8) = v49;
          *(v10 + 24) = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 8) = v47;
        *(v10 + 8) = v48;
        if (v49 > v48)
        {
          v70 = *(v10 + 16);
          *v10 = v70;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 8);
      *(v8 + 8) = v48;
      *(v10 + 8) = v53;
      goto LABEL_57;
    }

    v15 = *(v8 + 8);
    v16 = *(v10 + 8);
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v22;
        *(v8 + 8) = v11;
        *(a2 - 1) = v15;
        v23 = *(v8 + 8);
        v24 = *(v10 + 8);
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          *(v10 + 8) = v23;
          *(v8 + 8) = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 4);
      *(a2 - 4) = v17;
      *(v10 + 8) = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    *(v10 + 8) = v15;
    *(v8 + 8) = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v17;
      *(v8 + 8) = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v54 = *v8;
    if (a4)
    {
      v55 = *(v8 + 8);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = *(v8 + v56 + 24);
        v56 += 16;
      }

      while (v57 > v55);
      v58 = v8 + v56;
      v59 = a2;
      if (v56 == 16)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 4;
          v63 = *(v62 - 1);
          v62 -= 4;
          if (v63 > v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 4;
          v61 = *(v59 - 1);
          v59 -= 4;
        }

        while (v61 <= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 8);
          *(v8 + 8) = *(v64 + 8);
          *(v64 + 8) = v66;
          do
          {
            v67 = *(v8 + 24);
            v8 += 16;
          }

          while (v67 > v55);
          do
          {
            v68 = *(v64 - 8);
            v64 -= 16;
          }

          while (v68 <= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v7, (v8 - 16));
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(v7, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = *(v8 + 8);
      if (*(v8 - 8) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v55 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v55 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v55 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v55 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v55 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
    }
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v136 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v136;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v137 = *(v8 + 24);
      v138 = *(v8 + 8);
      if (v137 > v138)
      {
        v139 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v139;
        *(v8 + 8) = v137;
        *(v8 + 24) = v138;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v150 = *(a2 - 1);
      if (v150 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v150;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = *(a3 + 1);
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      *(a2 + 1) = v7;
      *(a3 + 1) = v5;
      v10 = *(a2 + 1);
      v11 = *(result + 1);
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        *(result + 1) = v10;
        *(a2 + 1) = v11;
        v5 = *(a3 + 1);
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
LABEL_9:
      *(a3 + 1) = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    *(result + 1) = v5;
    *(a2 + 1) = v6;
    v5 = *(a3 + 1);
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = *(a4 + 1);
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    *(a3 + 1) = v13;
    *(a4 + 1) = v5;
    v15 = *(a3 + 1);
    v16 = *(a2 + 1);
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      *(a2 + 1) = v15;
      *(a3 + 1) = v16;
      v18 = *(a2 + 1);
      v19 = *(result + 1);
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        *(result + 1) = v18;
        *(a2 + 1) = v19;
      }
    }
  }

  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 8);
      v8 = *(a2 - 1);
      if (v6 <= v7)
      {
        if (v8 > v6)
        {
          v22 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 4);
          *(a2 - 4) = v22;
          *(a1 + 24) = v8;
          *(a2 - 1) = v6;
          v23 = *(a1 + 24);
          v24 = *(a1 + 8);
          if (v23 > v24)
          {
            v25 = *a1;
            *a1 = *(a1 + 16);
            *(a1 + 16) = v25;
            *(a1 + 8) = v23;
            *(a1 + 24) = v24;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v8 <= v6)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v9;
        *(a1 + 8) = v6;
        *(a1 + 24) = v7;
        v32 = *(a2 - 1);
        if (v32 <= v7)
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v9;
        *(a1 + 24) = v32;
      }

      else
      {
        *a1 = *(a2 - 4);
        *(a2 - 4) = v9;
        *(a1 + 8) = v8;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
      return 1;
    }

    v16 = (a1 + 24);
    v17 = *(a1 + 24);
    v19 = (a1 + 8);
    v18 = *(a1 + 8);
    v20 = *(a1 + 40);
    if (v17 <= v18)
    {
      if (v20 > v17)
      {
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v20;
        *(a1 + 40) = v17;
        if (v20 <= v18)
        {
LABEL_49:
          v20 = v17;
          goto LABEL_50;
        }

        v31 = *a1;
        *a1 = v30;
        *(a1 + 16) = v31;
LABEL_48:
        *v19 = v20;
        *v16 = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v21 = *a1;
      if (v20 > v17)
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v21;
LABEL_47:
        v16 = (a1 + 40);
        v17 = v18;
        goto LABEL_48;
      }

      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
      *(a1 + 8) = v17;
      *(a1 + 24) = v18;
      if (v20 > v18)
      {
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v21;
        v19 = (a1 + 24);
        goto LABEL_47;
      }
    }

LABEL_50:
    v42 = *(a2 - 1);
    if (v42 > v20)
    {
      v43 = *(a1 + 32);
      *(a1 + 32) = *(a2 - 4);
      *(a2 - 4) = v43;
      *(a1 + 40) = v42;
      *(a2 - 1) = v20;
      v44 = *(a1 + 40);
      v45 = *(a1 + 24);
      if (v44 > v45)
      {
        v46 = *(a1 + 16);
        v47 = *(a1 + 32);
        *(a1 + 16) = v47;
        *(a1 + 32) = v46;
        *(a1 + 24) = v44;
        *(a1 + 40) = v45;
        v48 = *(a1 + 8);
        if (v44 > v48)
        {
          v49 = *a1;
          *a1 = v47;
          *(a1 + 16) = v49;
          *(a1 + 8) = v44;
          *(a1 + 24) = v48;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *(a1 + 8);
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v5;
      *(a1 + 8) = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = *(a1 + 24);
  v12 = (a1 + 8);
  v11 = *(a1 + 8);
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  if (v10 > v11)
  {
    v15 = *a1;
    if (v13 <= v10)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v15;
      *(a1 + 8) = v10;
      *(a1 + 24) = v11;
      if (v13 <= v11)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v15;
      v12 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v15;
    }

    goto LABEL_33;
  }

  if (v13 > v10)
  {
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    *(a1 + 16) = v27;
    *(a1 + 32) = v26;
    *(a1 + 24) = v13;
    *(a1 + 40) = v10;
    if (v13 > v11)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 16) = v28;
      v14 = (a1 + 24);
LABEL_33:
      *v12 = v13;
      *v14 = v11;
    }
  }

LABEL_34:
  v33 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = (a1 + 32);
  while (1)
  {
    v37 = *(v33 + 1);
    if (v37 > *(v36 + 1))
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 48) = *(a1 + v39 + 32);
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= *(v40 + 24))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 4 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 4;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 4 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 4 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset(result, 255, 4 * v10);
    }

    if (v3)
    {
      v11 = 4 * v3;
      v12 = v4;
      do
      {
        v13 = *v12;
        if (*v12 <= 0xFFFFFFFD)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v13, &v15);
          *v15 = *v12;
          ++*(a1 + 8);
        }

        ++v12;
        v11 -= 4;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    return memset(result, 255, 4 * v14);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v8 = a2;
  v3 = *a1;
  v2 = a1[1];
  v4 = (*v2)++;
  v7 = v4;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3 + 704, &v8, &v7, v6);
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v6 = a1 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 32 * *(a1 + 40) + 64;
  v7 = v6 + 24 * (v3 & 0x7FFFFF);
  while (1)
  {
    v8 = *(v6 + 8);
    if (v8 != v6)
    {
      break;
    }

LABEL_10:
    v6 += 24;
    if (v6 == v7)
    {
      return 1;
    }
  }

  while (1)
  {
    v9 = *(v8 + 8);
    for (i = *(v8 + 32); i != v8 + 24; i = *(i + 8))
    {
      result = mlir::detail::walk<mlir::ForwardIterator>(i, a2, a3);
      if (!result)
      {
        return result;
      }
    }

    result = a2(a3, v8 - 8);
    if (!result)
    {
      return result;
    }

    v8 = v9;
    if (v9 == v6)
    {
      goto LABEL_10;
    }
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = a2 - 16;
  if (v2)
  {
    v4 = (a2 - 16);
  }

  else
  {
    v4 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = *a1;
  for (i = (a2 - 16); ; i -= 2)
  {
    v9 = v4;
    if (!v6)
    {
      goto LABEL_11;
    }

    v10 = *(a2 - 8) & 7;
    v11 = v3;
    v12 = v6;
    if (v10 != 6)
    {
      v13 = (5 - v10);
      v9 = i;
      v12 = v6 - v13;
      if (v6 <= v13)
      {
        goto LABEL_11;
      }

      v11 = v3 - 16 * v13;
    }

    v9 = (v11 - 24 * v12);
LABEL_11:
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v7, v9) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

mlir::BytecodeReader::Impl *std::unique_ptr<mlir::BytecodeReader::Impl>::reset[abi:nn200100](mlir::BytecodeReader::Impl **a1, mlir::BytecodeReader::Impl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::BytecodeReader::Impl::~Impl(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::~ConvertCoreToExec(mlir::ODIE::Compiler::_anonymous_namespace_::ConvertCoreToExec *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::ConvertCoreToExecBase<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::func::FuncDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(a2);
}

void mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(mlir::ODIE::Compiler::_anonymous_namespace_::ConvertCoreToExec *this, uint64_t a2, const llvm::Twine *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(***(v4 + 24) + 32);
  v67 = "3500.27.2";
  LOWORD(v71) = 259;
  v6 = mlir::StringAttr::get(v5, &v67, a3);
  if (*(v6 + 24))
  {
    mlir::Operation::setAttr(v4, "coreml.odie-version", 0x13, v6);
  }

  LOWORD(v71) = 257;
  v8 = mlir::StringAttr::get(v5, &v67, v7);
  if (*(v8 + 24))
  {
    mlir::Operation::setAttr(v4, "coreml.odie-build", 0x11, v8);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0x800000000;
  v28 = &v32;
  v29 = 4;
  v30 = 0;
  v31 = 1;
  v9 = *(this + 5);
  v67 = &v33;
  if (HIDWORD(v34))
  {
    __p = 0;
    v52 = 0;
    v53 = 0;
    v68 = 0;
    v72 = 0;
    v73 = 1;
    v71 = 0;
    v69 = 0;
    v70 = 0;
    v67 = &unk_286E79D28;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v67);
    if (v34)
    {
        ;
      }
    }

    else
    {
      i = v33;
    }

    v12 = &v33[v34];
    if (i != v12)
    {
      v14 = *i;
      v13 = i + 1;
      llvm::raw_ostream::operator<<(&v67, v14 + 1, *v14);
      while (!*v13 || *v13 + 1 == 0)
      {
        ++v13;
      }

      while (v13 != v12)
      {
        if ((v70 - v71) > 1)
        {
          *v71++ = 8236;
        }

        else
        {
          llvm::raw_ostream::write(&v67, ", ", 2uLL);
        }

        v16 = *v13++;
        llvm::raw_ostream::operator<<(&v67, v16 + 1, *v16);
        while (!*v13 || *v13 + 1 == 0)
        {
          ++v13;
        }
      }
    }

    v18 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
    std::operator+<char>();
    WORD4(v38) = 260;
    v36 = &v81;
    emitDiag(v18, 1, &v36, v80);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v80);
    if ((v83[7] & 0x80000000) != 0)
    {
      operator delete(v81);
    }

    llvm::raw_ostream::~raw_ostream(&v67);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p);
    }
  }

  mlir::TypeConverter::TypeConverter(&v67);
  v36 = &unk_286EA0418;
  *&__src = &v67;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::emplace_back<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(&v68, &v36);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v78);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v79);
  std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA0460;
  *&__src = &v67;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v77, &v36);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v78);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v79);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA04A8;
  *&__src = &v67;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v77, &v36);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v78);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v79);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA04F0;
  *&__src = &v67;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v77, &v36);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v78);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v79);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA0538;
  *&__src = &v67;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(v77, &v36);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(v78);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(v79);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA0580;
  LOBYTE(__src) = 0;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(&v75, &v36);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](&v36);
  v36 = &unk_286EA0580;
  LOBYTE(__src) = 0;
  *&v38 = &v36;
  llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(&v76, &v36);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](&v36);
  v52 = 0;
  v53 = 0;
  __p = &unk_286E99B78;
  v54 = 0;
  v60 = 0;
  v59 = 0;
  v55 = v57;
  v56 = 0;
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  v61 = 0x1000000000;
  v62 = 0;
  v63 = 0;
  v64 = 0x2800000000;
  v65 = 0;
  v66 = v5;
  v81 = "builtin";
  v82 = 7;
  v36 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v36, &v81, v83);
  mlir::ConversionTarget::setDialectAction(&__p, v36, __src, 0);
  if (v36 != &__src + 8)
  {
    free(v36);
  }

  v81 = "exec";
  v82 = 4;
  v36 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v36, &v81, v83);
  mlir::ConversionTarget::setDialectAction(&__p, v36, __src, 0);
  if (v36 != &__src + 8)
  {
    free(v36);
  }

  v50[0] = &unk_286EA05C8;
  v50[1] = &v67;
  v50[3] = v50;
  mlir::ConversionTarget::addDynamicallyLegalDialect<>(&__p, v50, "scf", 3);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v50);
  v49[0] = &unk_286EA0610;
  v49[1] = &v67;
  v49[3] = v49;
  mlir::ConversionTarget::addDynamicallyLegalDialect<>(&__p, v49, "func", 4);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v49);
  mlir::OperationName::OperationName(&v81, "builtin.unrealized_conversion_cast", 0x22, v66);
  v36 = v81;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v52, &v36) = 0;
  v81 = "coreml";
  v82 = 6;
  v36 = &__src + 8;
  *&__src = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v36, &v81, v83);
  mlir::ConversionTarget::setDialectAction(&__p, v36, __src, 2uLL);
  if (v36 != &__src + 8)
  {
    free(v36);
  }

  mlir::OperationName::OperationName(&v81, "coreml.llo.class", 0x10, v66);
  v36 = v81;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v52, &v36) = 0;
  mlir::OperationName::OperationName(&v81, "coreml.llo.func", 0xF, v66);
  v36 = v81;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v52, &v36) = 0;
  mlir::OperationName::OperationName(&v81, "coreml.module", 0xD, v66);
  v36 = v81;
  *llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](&v52, &v36) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v19 = *(this + 5);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v36 = v20;
  v36 = *(this + 6);
  mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(&v36);
  __src = 0u;
  v38 = 0u;
  v36 = v5;
  v39 = v41;
  v40 = 0x600000000;
  v41[6] = 0;
  v41[7] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0x2800000000;
  v46 = 0;
  v47 = 0;
  v48 = 0x2800000000;
  operator new();
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_2>(llvm::StringMapImpl **a1, uint64_t a2)
{
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(a2 + 48) + 32))(*(a2 + 48), v4);
  if (result)
  {
    v6 = *a1;
    v13 = *(a2 + 48);
    v7 = mlir::OperationName::stripDialect(&v13);
    v9 = v8;
    v12 = llvm::xxh3_64bits(v7, v8, v10, v11);
    return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v6, v7, v9, v12);
  }

  return result;
}

uint64_t mlir::OperationName::stripDialect(mlir::OperationName *this)
{
  v2 = *(*(*this + 8) + 16);
  v5 = 46;
  llvm::StringRef::split(&v2, &v5, 1uLL, &v3);
  return v4;
}

mlir::TypeConverter *mlir::TypeConverter::TypeConverter(mlir::TypeConverter *this)
{
  *this = &unk_286EA03F8;
  *(this + 1) = this + 24;
  *(this + 2) = 0x400000000;
  *(this + 19) = this + 168;
  *(this + 20) = 0x200000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x200000000;
  *(this + 39) = this + 328;
  *(this + 40) = 0x200000000;
  *(this + 49) = this + 408;
  *(this + 50) = 0x200000000;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  return this;
}

void mlir::TypeConverter::~TypeConverter(mlir::TypeConverter *this)
{
  mlir::TypeConverter::~TypeConverter(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286EA03F8;
  v2 = *(this + 65);
  pthread_rwlock_destroy(v2);
  free(v2);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(this + 496);
  MEMORY[0x25F891030](*(this + 62), 8);
  MEMORY[0x25F891030](*(this + 59), 8);
  llvm::SmallVector<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,2u>::~SmallVector(this + 392);
  llvm::SmallVector<std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>,2u>::~SmallVector(this + 312);
  llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(this + 232);
  llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(this + 152);
  llvm::SmallVector<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,4u>::~SmallVector(this + 8);
}

uint64_t *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::init(uint64_t *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((16 * v4), 8uLL);
    *v2 = result;
    v2[1] = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 2;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::init(uint64_t *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((40 * v4), 8uLL);
    *v2 = result;
    v2[1] = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = 40 * v5 - 40;
      v8 = vdupq_n_s64(v7 / 0x28);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *result = -4096;
        }

        if (v9.i8[4])
        {
          result[5] = -4096;
        }

        v6 += 2;
        result += 10;
      }

      while (((v7 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::emplace_back<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(a1, a2);
  }

  else
  {
    std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    v4 = (*(a1 + 8) + 1);
    *(a1 + 8) = v4;
    return *a1 + 32 * v4 - 32;
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::clear(uint64_t *result)
{
  if (result[1])
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(result);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::clear(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return;
  }

  v2 = *(a1 + 16);
  if (v2 <= 4 * *(a1 + 8) || v2 < 0x41)
  {
    if (!v2)
    {
LABEL_15:
      *(a1 + 8) = 0;
      return;
    }

    v3 = 40 * v2;
    v4 = *a1 + 24;
    while (1)
    {
      v5 = *(v4 - 24);
      if (v5 == -8192)
      {
        goto LABEL_13;
      }

      if (v5 != -4096)
      {
        break;
      }

LABEL_14:
      v4 += 40;
      v3 -= 40;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v6 = *(v4 - 16);
    if (v4 != v6)
    {
      free(v6);
    }

LABEL_13:
    *(v4 - 24) = -4096;
    goto LABEL_14;
  }

  llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(a1);
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v9);
  std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](v5 + 32 * *(a1 + 8), a2);
  llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::moveElementsForGrow(a1, v5);
  v6 = v9;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  return v5 + 32 * v7 - 32;
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::moveElementsForGrow(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = 32 * v2;
    do
    {
      result = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](a2, v5);
      a2 += 32;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(v4 + 8);
    if (v7)
    {
      v8 = *v4;
      v9 = -32 * v7;
      result = v8 + 32 * v7 - 32;
      do
      {
        result = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](result) - 32;
        v9 += 32;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result[1] = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x25F891030](*result, 8);

    return llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::init(v1, v5);
  }

  return result;
}

void llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(a1);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == *(a1 + 16))
  {
    *(a1 + 8) = 0;
    if (v4)
    {
      v5 = 0;
      v6 = *a1;
      v7 = (40 * v4 - 40) / 0x28;
      v8 = vdupq_n_s64(v7);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *v6 = -4096;
        }

        if (v9.i8[4])
        {
          v6[5] = -4096;
        }

        v5 += 2;
        v6 += 10;
      }

      while (((v7 + 2) & 0xFFFFFFFFFFFFFFELL) != v5);
    }
  }

  else
  {
    MEMORY[0x25F891030](*a1, 8);

    llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::init(a1, v4);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 40 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 40;
      v2 -= 40;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE3__5EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSH_15SmallVectorImplIS5_EEEEEE4typeEOSD_EUlS5_SM_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SM_EESO_E4typeESR_EUlS5_SM_E_NS_9allocatorISV_EESN_E7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0418;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE3__5EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSH_15SmallVectorImplIS5_EEEEEE4typeEOSD_EUlS5_SM_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SM_EESO_E4typeESR_EUlS5_SM_E_NS_9allocatorISV_EESN_EclEOS5_SM_(uint64_t a1, void ***a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    v19 = 0;
    v20 = 0;
    return v19 | (v20 << 8);
  }

  v5 = *v3;
  v6 = *(*v3 + 17);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id)
  {
    goto LABEL_14;
  }

  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  if (v8 || v6 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    goto LABEL_14;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v5 + 8, v11))
  {
    goto LABEL_14;
  }

  v22 = *(*v3 + 17);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_14;
  }

  if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = v3;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_27;
    }

    v25 = v24[4];
    if (!v25)
    {
      goto LABEL_28;
    }

    v36 = *(*v25 + 136);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
    {
      goto LABEL_28;
    }

    if (v36 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
LABEL_27:
      v25 = 0;
LABEL_28:
      v26 = 0;
      goto LABEL_29;
    }

    v37 = v25[10];
    if (v37 == 3)
    {
      v26 = 0;
LABEL_63:
LABEL_29:
      v28 = v24[1];
      v27 = v24[2];
      v29 = *(*v24 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v38 = 3;
      }

      else
      {
        if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          v30 = 0;
LABEL_48:
          if (v25)
          {
            v39 = *v25;
            v40 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
            v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
          }

          else
          {
            v41 = 0;
          }

          v35 = mlir::MemRefType::get(v28, v27, v30, v25, v41, v26);
          goto LABEL_52;
        }

        v38 = 1;
      }

      v30 = v24[v38];
      goto LABEL_48;
    }

    v42 = *(**v25 + 32);
    if (v37 == 1)
    {
      v43 = "IOSurface";
    }

    else
    {
      if (v37 != 2)
      {
        v44 = 0;
        v43 = "";
        goto LABEL_62;
      }

      v43 = "MTLBuffer";
    }

    v44 = 9;
LABEL_62:
    v46 = 261;
    v45[0] = v43;
    v45[1] = v44;
    v26 = mlir::StringAttr::get(v42, v45, v13);
    goto LABEL_63;
  }

  if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
  {
    v35 = mlir::TypeConverter::convertType(*(a1 + 8), v3[1]);
  }

  else
  {
    if (v22 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      goto LABEL_14;
    }

    v31 = v3[1];
    v32 = *(*v31 + 136);
    if (v32 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_14;
    }

    v34 = mlir::TypeConverter::convertType(*(a1 + 8), v31);
    v35 = mlir::ODIE::Compiler::Exec::AsyncMemRefType::get(*(**v34 + 32), v34[1], v34[2], v34[3], v34[4], v34[5], v34[6]);
  }

LABEL_52:
  v3 = v35;
  if (!v35)
  {
    v19 = 0;
    goto LABEL_15;
  }

LABEL_14:
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v3);
  v19 = 1;
LABEL_15:
  v20 = 1;
  return v19 | (v20 << 8);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::convertTensorEncoding(uint64_t a1, int a2, void *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v22 = v24;
  v23 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v22, 0, a2);
  v5 = a3[6];
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = &v6[4 * *(v5 + 16)];
    v19 = v21;
    v20 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v19, v6, v7);
    llvm::SmallVectorImpl<int>::operator=(&v22, &v19);
    if (v19 != v21)
    {
      free(v19);
    }
  }

  v8 = a3[1];
  v9 = *(**a3 + 32);
  v10 = v22;
  v11 = v23;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v18, a1, &v19);
  v16 = mlir::ODIE::Compiler::Exec::MemoryLayoutAttr::get(v9, v10, v11, v8, v12, v13, v14, v15, v19, v20);
  if (v19 != v21)
  {
    free(v19);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return v16;
}

void llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = a3 - a2 + v7;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  v9 = a3 - v4;
  if (a3 != v4)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = (*a1 + 4 * v7 + 8);
    do
    {
      v13 = vdupq_n_s64(v10);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 2) = v4;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
      {
        *v12 = v4 + 2;
        v12[1] = v4 + 3;
      }

      v10 += 4;
      LODWORD(v4) = v4 + 4;
      v12 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

char *llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::emplace_back<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::growAndEmplaceBack<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(a1, a2);
  }

  else
  {
    result = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    ++*(a1 + 8);
  }

  return result;
}

char *llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::growAndEmplaceBack<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>(char **a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 2);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 32, &v16);
  std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](&v5[32 * *(a1 + 2)], a2);
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v5;
    do
    {
      v9 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](v9, v6) + 32;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = -32 * v10;
      v12 = &v6[32 * v10 - 32];
      do
      {
        v12 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](v12) - 32;
        v11 += 32;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v16;
  if (v6 != v4)
  {
    free(v6);
  }

  *a1 = v5;
  v14 = (*(a1 + 2) + 1);
  *(a1 + 2) = v14;
  *(a1 + 3) = v13;
  return &v5[32 * v14 - 32];
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseResourceElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0460;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseResourceElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_6 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    return 0;
  }

  v9 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v3 + 24);
  v15 = *(v3 + 40);
  return mlir::DenseResourceElementsAttr::get(v10, v13, &v14) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA04A8;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::DenseElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_7 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = *(*v3 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    return 0;
  }

  v10 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    v14 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v11, v14, *(v3 + 32), *(v3 + 40)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::StringAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA04F0;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::TensorType,mlir::StringAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_8 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(**a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 0;
  }

  v9 = mlir::TypeConverter::convertType(*(a1 + 8), v6);
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v13, *(v3 + 16), *(v3 + 24)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::RankedTensorType,mlir::ElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0538;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)> mlir::TypeConverter::wrapTypeAttributeConversion<mlir::RankedTensorType,mlir::ElementsAttr,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&)::{lambda(mlir::Type,mlir::Attribute)#1},std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_9 &&>,mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  v6 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(*a3);
  v7 = v6;
  v9 = v8;
  if (!v6)
  {
    return 0;
  }

  v10 = v3[4];
  if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    return 0;
  }

  v11 = *(**(**v6 + 32) + 616);
  v17 = mlir::TypeConverter::convertType(*(a1 + 8), v3);
  v12 = mlir::BaseMemRefType::operator mlir::ShapedType(&v17);
  v14 = v13;
  v15 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(*(**v7 + 32), v3[1], v3[2]);
  v16 = mlir::ODIE::Compiler::materializeSourceConversion(v11, v7, v9, v12, v14, v15, v10);
  if (v16)
  {
    return v16 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    return 4;
  }
}

char *llvm::SmallVectorImpl<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::emplace_back<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(a1, a2);
  }

  else
  {
    result = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](*a1 + 32 * v3, a2);
    ++*(a1 + 8);
  }

  return result;
}

char *llvm::SmallVectorTemplateBase<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(char **a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 2);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 32, &v16);
  std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](&v5[32 * *(a1 + 2)], a2);
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v5;
    do
    {
      v9 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](v9, v6) + 32;
      v6 += 32;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = -32 * v10;
      v12 = &v6[32 * v10 - 32];
      do
      {
        v12 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](v12) - 32;
        v11 += 32;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v16;
  if (v6 != v4)
  {
    free(v6);
  }

  *a1 = v5;
  v14 = (*(a1 + 2) + 1);
  *(a1 + 2) = v14;
  *(a1 + 3) = v13;
  return &v5[32 * v14 - 32];
}

uint64_t std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::allocator>,mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA0580;
  *(a2 + 8) = *(result + 8);
  return result;
}

char *std::__function::__func<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&>(mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_10 const&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::allocator>,mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::operator()(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    return 0;
  }

  v6 = *a5;
  v8 = *a4;
  v7 = a4[1];
  v14 = *a3;
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::UnrealizedConversionCastOp>(a2, *(**v6 + 32));
  v15[0] = v6;
  v15[1] = v9;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::UnrealizedConversionCastOp::build(a2, v15, &v14 + 2, 1, v8, v7, 0, 0);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a2, v10);
  v11 = *(*(v10 + 6) + 16);
  v12 = v10 - 16;
  mlir::OperationState::~OperationState(v15);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    return v12;
  }

  else
  {
    return -16;
  }
}

uint64_t std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](uint64_t a1)
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

void mlir::ConversionTarget::addDynamicallyLegalDialect<>(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = *MEMORY[0x277D85DE8];
  __src[0] = a3;
  __src[1] = a4;
  v7 = v9;
  v8 = 0x200000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v7, __src, &v7);
  mlir::ConversionTarget::setDialectAction(a1, v7, v8, 1uLL);
  mlir::ConversionTarget::setLegalityCallback(a1, v7, v8, a2);
  if (v7 != v9)
  {
    free(v7);
  }
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA05C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA0610;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1,std::allocator<mlir::ODIE::Compiler::anonymous namespace::ConvertCoreToExec::runOnOperation(void)::$_1>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = *(*(v2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v6 = *(*(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 72) + 8);
    v7 = *(v6 + 16);
    v9 = *(v6 + 8);
    v8 = *(v6 + 12);
    v11[0] = v7;
    v11[1] = v9;
    v11[2] = v7 + 8 * v9;
    v11[3] = v8;
    isLegal = _ZN4llvm6all_ofIRNS_6detail12concat_rangeIKN4mlir4TypeEJNS_8ArrayRefIS4_EES7_EEEZNKS3_13TypeConverter7isLegalIS8_EENSt3__19enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISE_PNS3_9OperationEEE5valueEbE4typeEOSE_EUlS4_E_EEbSJ_T0_(v11, v3);
  }

  else
  {
    isLegal = mlir::TypeConverter::isLegal(*(a1 + 8), v2);
  }

  return isLegal | 0x100u;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::anonymous namespace::OutputIntentsCache::OutputIntentsCache(mlir::Operation *)::{lambda(mlir::Operation *)#1}>(mlir::Operation **a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (v3[48] == 1 && v2 != v3)
  {
    free(v2);
  }
}

void mlir::ODIE::Compiler::anonymous namespace::OutputIntentsCache::getIntents(mlir::ODIE::Compiler::_anonymous_namespace_::OutputIntentsCache *this, mlir::Operation *a2, uint64_t a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = a3;
  v7 = (a2 + 24);
  v6 = *(a2 + 3);
  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v10 = (v6 + 72 * v9);
    v11 = *v10;
    if (*v10 == a3)
    {
LABEL_3:
      if (v10 != (v6 + 72 * v8))
      {
        *this = this + 16;
        *(this + 1) = 0x600000000;
        if (*(v10 + 4))
        {
          llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(this, (v10 + 1));
        }

        *(this + 64) = 1;
        return;
      }
    }

    else
    {
      v12 = 1;
      while (v11 != -4096)
      {
        v13 = v9 + v12++;
        v9 = v13 & (v8 - 1);
        v10 = (v6 + 72 * v9);
        v11 = *v10;
        if (*v10 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(a3);
  if (v14)
  {
    (*(v15 + 8))(v15, v14, a2);
    if (*(this + 64) == 1)
    {
      v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v21);

      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v16, this);
    }
  }

  else
  {
    v17 = *(a3 + 36);
    v18 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a3 + 24) + 32), 0);
    v22[0] = v23;
    v22[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v22, v17, v18);
    v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v21);
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v19, v22);
    v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](v7, &v21);
    *this = this + 16;
    *(this + 1) = 0x600000000;
    if (*(v20 + 2))
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(this, v20);
    }

    *(this + 64) = 1;
    if (v22[0] != v23)
    {
      free(v22[0]);
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = (v5 + 3);
  v5[2] = 0x600000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 72 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 9;
        v16 -= 72;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 72 * v21 - 72;
    v24 = vdupq_n_s64(v23 / 0x48);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[9] = -4096;
      }

      v22 += 2;
      result += 18;
    }

    while (((v23 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

void mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern::~FuncReturnPattern(mlir::ODIE::Compiler::_anonymous_namespace_::FuncReturnPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::func::ReturnOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::func::ReturnOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::func::ReturnOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(a4 + 8, *(**v8 + 32));
  v14[0] = v8;
  v14[1] = v9;
  v15[0] = v16;
  v15[1] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v15, v6, 0, v6, v7);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert((a4 + 8), v10);
  v11 = *(*(v10 + 6) + 16);
  mlir::OperationState::~OperationState(v14);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  (*(*a4 + 8))(a4, a2, v12);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::FuncReturnPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::FuncReturnPattern]";
  v6 = 124;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>::~DefaultConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v27 = v9;
  v28 = 0;
  v29 = v9;
  v30 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v23, &v27);
  if (mlir::TypeConverter::convertTypes(v7, v23[0], v23[1], &v24))
  {
    v10 = *(a3 + 40);
    v11 = *(a3 + 48);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v13 = *(AttrDictionary + 8);
    v14 = *(AttrDictionary + 16);
    v15 = *(a2 + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>((a4 + 1), *(**v15 + 32));
    v27 = v15;
    v28 = v16;
    v29 = &v31;
    v30 = 0x400000000;
    v32 = v34;
    v33 = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[8] = 4;
    v35[9] = v36;
    v35[10] = 0x100000000;
    v36[1] = v37;
    v36[2] = 0x100000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v37[4] = 0;
    v37[6] = 0;
    mlir::scf::YieldOp::build((a4 + 1), &v27, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25, v10, v11, v13, v14);
    v17 = mlir::Operation::create(&v27);
    mlir::OpBuilder::insert((a4 + 1), v17);
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v27);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    (*(*a4 + 8))(a4, a2, v19);
    v20 = 1;
  }

  else
  {
    v27 = "Failed to convert output types";
    v31 = 259;
    v23[0] = &v27;
    v21 = a4[2];
    if (v21 && v21[2] == 1)
    {
      (*(*v21 + 88))(v21, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::YieldOp &>(mlir::scf::YieldOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v23);
    }

    v20 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::YieldOp,mlir::scf::YieldOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::DefaultConversionPattern<mlir::scf::YieldOp, mlir::scf::YieldOp>]";
  v6 = 171;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>::~DefaultConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v27 = v9;
  v28 = 0;
  v29 = v9;
  v30 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v23, &v27);
  if (mlir::TypeConverter::convertTypes(v7, v23[0], v23[1], &v24))
  {
    v10 = *(a3 + 40);
    v11 = *(a3 + 48);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v13 = *(AttrDictionary + 8);
    v14 = *(AttrDictionary + 16);
    v15 = *(a2 + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>((a4 + 1), *(**v15 + 32));
    v27 = v15;
    v28 = v16;
    v29 = &v31;
    v30 = 0x400000000;
    v32 = v34;
    v33 = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[8] = 4;
    v35[9] = v36;
    v35[10] = 0x100000000;
    v36[1] = v37;
    v36[2] = 0x100000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v37[4] = 0;
    v37[6] = 0;
    mlir::scf::ConditionOp::build((a4 + 1), &v27, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25, v10, v11, v13, v14);
    v17 = mlir::Operation::create(&v27);
    mlir::OpBuilder::insert((a4 + 1), v17);
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v27);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    (*(*a4 + 8))(a4, a2, v19);
    v20 = 1;
  }

  else
  {
    v27 = "Failed to convert output types";
    v31 = 259;
    v23[0] = &v27;
    v21 = a4[2];
    if (v21 && v21[2] == 1)
    {
      (*(*v21 + 88))(v21, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ConditionOp &>(mlir::scf::ConditionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v23);
    }

    v20 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v20;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::DefaultConversionPattern<mlir::scf::ConditionOp,mlir::scf::ConditionOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::DefaultConversionPattern<mlir::scf::ConditionOp, mlir::scf::ConditionOp>]";
  v6 = 179;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::IfOpPattern::~IfOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::IfOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::IfOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v27 = v9;
  v28 = 0;
  v29 = v9;
  v30 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v23, &v27);
  if (mlir::TypeConverter::convertTypes(v7, v23[0], v23[1], &v24))
  {
    v10 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v13 = *(v10 + 24);
    v11 = v10 + 24;
    v12 = v13;
    if (v13)
    {
      v14 = v12 == v11;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    v16 = *(a2 + 24);
    v17 = *(a3 + 40);
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
    v19 = v17 & 6;
    if (v19 || !v18)
    {
      if (v19 == 2)
      {
        if (v18)
        {
          v18 = v18[3];
        }
      }
    }

    else
    {
      v18 = *v18;
    }

    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>((a4 + 1), *(**v16 + 32));
    v27 = v16;
    v28 = v21;
    v29 = &v31;
    v30 = 0x400000000;
    v32 = v34;
    v33 = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[8] = 4;
    v35[9] = v36;
    v35[10] = 0x100000000;
    v36[1] = v37;
    v36[2] = 0x100000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v37[4] = 0;
    v37[6] = 0;
    mlir::scf::IfOp::build((a4 + 1), &v27, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25, v18, v15);
  }

  v27 = "Failed to convert output types";
  v31 = 259;
  v23[0] = &v27;
  v20 = a4[2];
  if (v20 && v20[2] == 1)
  {
    (*(*v20 + 88))(v20, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::IfOp &>(mlir::scf::IfOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v23);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::IfOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::IfOpPattern]";
  v6 = 118;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern::~WhileOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::WhileOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  v7 = *(a1 + 96);
  v8 = *(a2 + 36);
  v9 = (a2 - 16);
  if (!v8)
  {
    v9 = 0;
  }

  v20 = v9;
  v21 = 0;
  v22 = v9;
  v23 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v16, &v20);
  if (mlir::TypeConverter::convertTypes(v7, v16[0], v16[1], &v17))
  {
    v10 = *(a2 + 24);
    v12 = *(a3 + 40);
    v11 = *(a3 + 48);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>((a4 + 1), *(**v10 + 32));
    v20 = v10;
    v21 = v13;
    v22 = &v24;
    v23 = 0x400000000;
    v25 = v27;
    v26 = 0x400000000;
    v27[4] = v28;
    v27[5] = 0x400000000;
    v28[8] = 4;
    v28[9] = v29;
    v28[10] = 0x100000000;
    v29[1] = v30;
    v29[2] = 0x100000000;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v30[4] = 0;
    v30[6] = 0;
    mlir::scf::WhileOp::build((a4 + 1), &v20, v17 & 0xFFFFFFFFFFFFFFF9 | 2, v18, v12, v11, 0, 0);
  }

  v20 = "Failed to convert output types";
  v24 = 259;
  v16[0] = &v20;
  v14 = a4[2];
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v16);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::WhileOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::WhileOpPattern]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::ExtractPattern::~ExtractPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ExtractPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ExtractPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::TypeConverter::convertType(*(a1 + 96), (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = *(a2 + 24);
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, *(**v9 + 32));
  if ((v11 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "exec.load";
    v19[3] = 9;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  v21[0] = v9;
  v21[1] = v10;
  v21[2] = v22;
  v21[3] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  mlir::ODIE::Compiler::Exec::LoadOp::build(a4 + 8, v21, &v16 + 2, 1, v7, v8, 0, 0);
  v12 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert((a4 + 8), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v21);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  (*(*a4 + 8))(a4, a2, v14);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ExtractPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ExtractPattern]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::CreateTokenPattern::~CreateTokenPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CreateTokenPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CreateTokenPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CreateTokenPattern]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::CallOpPattern::~CallOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CallOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 80), *(a3 + 88), &v13);
  v8 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v8;
  v10[4] = *(a3 + 64);
  v9 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v9;
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CallOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v39 = a2;
  v52 = v54;
  v53 = 0x600000000;
  v8 = *(a2 + 36);
  if (v8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v8, 8);
    LODWORD(v8) = *(a2 + 36);
  }

  v9 = *(a1 + 96);
  v10 = (a2 - 16);
  if (!v8)
  {
    v10 = 0;
  }

  v43 = v10;
  v44 = 0;
  v45[0] = v10;
  v45[1] = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v48, &v43);
  if (mlir::TypeConverter::convertTypes(v9, v48, v49, &v52))
  {
    if (v51)
    {
      AttrDictionary = mlir::Operation::getAttrDictionary(a2);
      v13 = *(AttrDictionary + 8);
      v12 = *(AttrDictionary + 16);
      v43 = v45;
      v44 = 0x400000000;
      v47 = 0;
      dictionaryAttrSort<false>(v13, v12, &v43);
      v47 = 4;
      v14 = &unk_27FC18158;
      v15 = 64;
      do
      {
        mlir::NamedAttrList::erase(&v43, *(v14 - 1), *v14);
        v14 += 2;
        v15 -= 16;
      }

      while (v15);
      ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v39);
      v19 = v39;
      if (ResolvedCallee)
      {
        v20 = ResolvedCallee;
        if (*(*(v39 + 16 * ((*(v39 + 44) >> 23) & 1) + 88) + 8))
        {
          v21 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ResolvedCallee, v17, v18);
          mlir::NamedAttrList::set(&v43, "callee", 6, v21);
          v19 = v39;
          if (*(*(v39 + 16 * ((*(v39 + 44) >> 23) & 1) + 88) + 8) == 1)
          {
            v22 = *(a4 + 8);
            v42 = 261;
            v41[0] = "coreml.cpu_launch";
            v41[1] = 17;
            v23 = mlir::StringAttr::get(v22, v41, v18);
            v20 = mlir::SymbolRefAttr::get(v23, 0, 0, v24);
            v19 = v39;
          }
        }

        v25 = v19;
        while (1)
        {
          v26 = *(v25 + 16);
          if (!v26)
          {
            break;
          }

          v27 = *(v26 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (!v27)
          {
            break;
          }

          v25 = *(v27 + 16);
          if (!v25 || *(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
          {
            goto LABEL_32;
          }
        }

        v25 = 0;
LABEL_32:
        v33 = *(v19 + 24);
        v34 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(v20, v17, v18);
        v36 = *(v35 + 36);
        if (v36)
        {
          v37 = (v35 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
        }

        else
        {
          v37 = 4;
        }

        mlir::ConversionPatternRewriter::replaceOp(a4, v39, v37, v36);
      }

      v31 = *(v39 + 24);
      v42 = 259;
      v40 = v41;
      v41[0] = "failed to convert parametric call";
      v32 = *(a4 + 16);
      if (v32 && v32[2] == 1)
      {
        (*(*v32 + 88))(v32, v31, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v40);
      }

      if (v43 != v45)
      {
        free(v43);
      }
    }

    else
    {
      v43 = "failed to calculate output intents";
      v46 = 259;
      v41[0] = &v43;
      v30 = *(a4 + 16);
      if (v30 && v30[2] == 1)
      {
        (*(*v30 + 88))(v30, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CallOp &>(mlir::ODIE::Compiler::CoreML::CallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v41);
      }
    }

    if (v51 == 1 && v48 != &v50)
    {
      free(v48);
    }
  }

  else
  {
    v28 = *(a2 + 24);
    v43 = "failed to convert result types";
    v46 = 259;
    v48 = &v43;
    v29 = *(a4 + 16);
    if (v29 && v29[2] == 1)
    {
      (*(*v29 + 88))(v29, v28, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v48);
    }
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CallOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 80), *(a3 + 88), &v15);
  v8 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v8;
  v12[4] = *(a3 + 64);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v10 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v10;
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::emitCallOp(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11, unsigned int *a12, unint64_t *a13, unint64_t a14, uint64_t a15)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v22 = mlir::ArrayAttr::get(*(a15 + 8), a11, a12);
  v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a15 + 8, *(**a2 + 32));
  v30[0] = a2;
  v30[1] = v23;
  v30[2] = v31;
  v30[3] = 0x400000000;
  v31[4] = v32;
  v31[5] = 0x400000000;
  v32[4] = v33;
  v32[5] = 0x400000000;
  v33[8] = 4;
  v33[9] = v34;
  v33[10] = 0x100000000;
  v34[1] = v35;
  v34[2] = 0x100000000;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v35[4] = 0;
  v35[6] = 0;
  mlir::ODIE::Compiler::Exec::CallOp::build((a15 + 8), v30, a5, a6, a3, a4, a7, a8, v27 & 0xFFFFFFFFFFFFFFF9, v28, v22, 0);
  v24 = mlir::Operation::create(v30);
  mlir::OpBuilder::insert((a15 + 8), v24);
  if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(v30);
  mlir::Operation::setAttrs(v25, a13, a14);
  if (v27 != &v29)
  {
    free(v27);
  }

  return v25;
}

void mlir::ODIE::Compiler::anonymous namespace::getOutParams(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t *a15, unint64_t a16, uint64_t a17)
{
  v21 = a17;
  v90[8] = *MEMORY[0x277D85DE8];
  v81[0] = a11;
  v81[1] = a12;
  if (a14)
  {
    v24 = a13;
    v25 = 8 * a14;
    v26 = 8 * a14;
    while (*(*v24 + 8) == 2)
    {
      v24 += 8;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    v78 = v80;
    v79 = 0x600000000;
    if (a7)
    {
      v29 = 0;
      while (1)
      {
        v30 = mlir::TypeRange::dereference_iterator(a6, v29);
        {
          break;
        }

        if (a7 == ++v29)
        {
          goto LABEL_15;
        }
      }

      if (a7 > HIDWORD(v79))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, a7, 8);
      }

      v75 = v77;
      v76 = 0x600000000;
      if (a7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, a7, 8);
      }

      v31 = 0;
      do
      {
        v32 = mlir::TypeRange::dereference_iterator(a6, v31);
        v33 = *(***(a2 + 24) + 32);
        v82 = v32;
        v34 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v33, &v82);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v75, v34);
        ++v31;
      }

      while (a7 != v31);
      v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, *(**a3 + 32));
      if ((v36 & 1) == 0)
      {
        v74 = 1283;
        v73[2] = "exec.infer_type";
        v73[3] = 15;
        v72 = 259;
        llvm::operator+(v73, &v71, &v82);
        llvm::report_fatal_error(&v82, 1);
      }

      v67 = a3;
      v82 = a3;
      v83 = v35;
      v84 = v86;
      v85 = 0x400000000;
      v86[4] = v87;
      v86[5] = 0x400000000;
      v87[4] = v88;
      v87[5] = 0x400000000;
      v88[8] = 4;
      v88[9] = v89;
      v88[10] = 0x100000000;
      v89[1] = v90;
      v89[2] = 0x100000000;
      v90[2] = 0;
      v90[1] = 0;
      v90[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v90[4] = 0;
      v90[6] = 0;
      mlir::ODIE::Compiler::Exec::InferTypeOp::build((a17 + 8), &v82, v75 & 0xFFFFFFFFFFFFFFF9 | 2, v76, a9, a10, a4, a5);
      v37 = mlir::Operation::create(&v82);
      mlir::OpBuilder::insert((a17 + 8), v37);
      v38 = *(*(v37 + 6) + 16);
      mlir::OperationState::~OperationState(&v82);
      if (v38 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id)
      {
        v37 = 0;
      }

      mlir::Operation::setAttrs(v37, a15, a16);
      v39 = *(v37 + 9);
      if (v39)
      {
        v40 = v37 - 16;
      }

      else
      {
        v40 = 0;
      }

      if (v39)
      {
        v41 = 0;
        v42 = v39 - 1;
        if (a7 - 1 < v42)
        {
          v42 = a7 - 1;
        }

        v43 = v42 + 1;
        v44 = v40;
        while (1)
        {
          v45 = mlir::TypeRange::dereference_iterator(a6, v41);
          v46 = v40;
          if (v41)
          {
            v47 = *(v37 - 1) & 7;
            v48 = v37 - 16;
            v49 = v41;
            if (v47 == 6)
            {
              goto LABEL_36;
            }

            v50 = (5 - v47);
            v46 = v44;
            v49 = v41 - v50;
            if (v41 > v50)
            {
              break;
            }
          }

LABEL_37:
          {
            v51 = v46;
          }

          else
          {
            v51 = 0;
          }

          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v78, v51);
          ++v41;
          v44 -= 16;
          if (v43 == v41)
          {
            goto LABEL_41;
          }
        }

        v48 = &v40[-16 * v50];
LABEL_36:
        v46 = &v48[-24 * v49];
        goto LABEL_37;
      }

LABEL_41:
      if (v75 != v77)
      {
        free(v75);
      }

      v21 = a17;
      a3 = v67;
      v25 = 8 * a14;
    }

    else
    {
LABEL_15:
      llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v78, a7);
    }

    *a1 = (a1 + 2);
    a1[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(a1, a14);
    v52 = v78;
    if (a7)
    {
      v53 = *(a1 + 2);
      if (v53)
      {
        if (v79)
        {
          v64 = 0;
          v66 = v21;
          v54 = 0;
          v55 = 0;
          v68 = 8 * v79 - 8;
          v69 = 8 * v53 - 8;
          v70 = *a1;
          v56 = a7 - 1;
          do
          {
            v57 = v52;
            v58 = &v52[v54];
            v59 = mlir::TypeRange::dereference_iterator(a6, v55);
            v82 = a13 + v54;
            v83 = v59;
            v84 = (v70 + v54);
            v85 = v58;
            v60 = *(*(a13 + v54) + 8);
            if (v60 == 1)
            {
              v62 = mlir::ValueRange::dereference_iterator(v81, v64++);
            }

            else
            {
              if (v60 == 2)
              {
                v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>((v66 + 8), a3, &v83);
              }

              else
              {
                v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>((v66 + 8), a3, &v83, v58);
              }

              v62 = v61 - 16;
            }

            v52 = v57;
            *(v70 + v54) = v62;
            if (v25 - 8 == v54)
            {
              break;
            }

            if (v56 == v55)
            {
              break;
            }

            if (v69 == v54)
            {
              break;
            }

            ++v55;
            v63 = v68 == v54;
            v54 += 8;
          }

          while (!v63);
          v52 = v78;
        }
      }
    }

    if (v52 != v80)
    {
      free(v52);
    }
  }

  else
  {
LABEL_5:
    *a1 = (a1 + 2);
    a1[1] = 0x600000000;
    if (a7 < 7)
    {
      if (!a7)
      {
        return;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, a7, 8);
    }

    v27 = 0;
    do
    {
      v82 = mlir::TypeRange::dereference_iterator(a6, v27);
      v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>((a17 + 8), a3, &v82);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, v28 - 16);
      ++v27;
    }

    while (a7 != v27);
  }
}

BOOL mlir::ODIE::Compiler::anonymous namespace::isTypeDynamic(uint64_t *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    return 0;
  }

  v1 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (!v1)
  {
    return 1;
  }

  v3 = v1;
  v4 = v2;
  if (!(*(v2 + 16))(v2, v1))
  {
    return 1;
  }

  v5 = (*(v4 + 24))(v4, v3);
  if (!v6)
  {
    return 0;
  }

  v7 = 8 * v6 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8 == 0x8000000000000000;
    v10 = v8 == 0x8000000000000000 || v7 == 0;
    v7 -= 8;
  }

  while (!v10);
  return v9;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::ODIE::Compiler::Exec::AllocOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CallOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CallOpPattern]";
  v6 = 120;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern::~CoreGraphPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreGraphPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v11, a2);
  v11[13] = v9;
  v11[14] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v11, a2);
  v11[13] = a3;
  v11[14] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[15] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v11, a2);
  v11[13] = v9;
  v11[14] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[15] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::GraphOpGenericAdaptorBase(v11, a2);
  v11[13] = a3;
  v11[14] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v16);
  v8 = *(a3 + 96);
  v9 = *(a3 + 80);
  v12[4] = *(a3 + 64);
  v12[5] = v9;
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v11 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v11;
  v13 = v8;
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  (*(*a1 + 88))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v76[8] = *MEMORY[0x277D85DE8];
  if (v57)
  {
    if (*(*(*((*(*(a2 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      mlir::SymbolTable::remove(*(a1 + 120), a2);
    }

    v6 = a2;
    do
    {
      v7 = v6;
      v8 = *(v6 + 16);
      v6 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v6 = *(v6 + 16);
        v9 = *(v6 + 48);
      }

      else
      {
        v9 = MEMORY[0x30];
      }
    }

    while (*(v9 + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v53 = a4;
    v54 = a2;
    *(a4 + 3) = v8;
    v10 = (a4 + 24);
    v11 = (v10 - 2);
    v10[1] = v7;
    v12 = *(a1 + 120);
    v13 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16) + 8);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v16 = *(AttrDictionary + 8);
    v15 = *(AttrDictionary + 16);
    v58[0] = v59;
    v58[1] = 0x400000000;
    v60 = 0;
    dictionaryAttrSort<false>(v16, v15, v58);
    v60 = 4;
    v20 = v54;
    v21 = *(v54 + 48);
    v22 = *(v21 + 104);
    if (v22)
    {
      v23 = *(v21 + 96);
      v24 = 8 * v22;
      do
      {
        v17 = *v23;
        v25 = *(*(v54 + 48) + 96);
        if (*v23 != *v25 && v17 != v25[6])
        {
          mlir::NamedAttrList::erase(v58, v17);
        }

        ++v23;
        v24 -= 8;
      }

      while (v24);
      v20 = v54;
    }

    v50 = *(v20 + 24);
    ModuleSymbolRef = mlir::ODIE::Compiler::CoreML::GraphOp::getModuleSymbolRef(&v54, v17, v18, v19);
    v29 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ModuleSymbolRef, v27, v28);
    v30 = *(v13 + 16);
    v31 = *(v13 + 8);
    v49 = *(v13 + 12);
    v51 = v29;
    v69[0] = v29;
    v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((v12 + 8), v69);
    if (!v32 || (v33 = *(v32 + 8)) == 0 || *(*(v33 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v34 = (v30 + 8 * v31) & 0xFFFFFFFFFFFFFFF9;
      v65 = &v67;
      v66 = 0x600000000;
      v35 = v64;
      v63[0] = v64;
      v63[1] = 0x600000000;
      if (v31)
      {
        v36 = 0;
        v37 = v30 & 0xFFFFFFFFFFFFFFF9;
        do
        {
          v38 = mlir::TypeRange::dereference_iterator(v37 | 2, v36);
          v39 = *(*v38 + 136);
          if (v39 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
          {
            v40 = v38;
            if (v39 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v38 == 0)
            {
              v42 = &v65;
            }

            else
            {
              v42 = v63;
            }

            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v42, v40);
          }

          ++v36;
        }

        while (v31 != v36);
        v35 = v63[0];
      }

      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v65, __src, __src + 8 * v62);
      v44 = *v11;
      v69[0] = (v65 & 0xFFFFFFFFFFFFFFF9 | 2);
      v69[1] = v66;
      *&v68 = __src & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v68 + 1) = v62;
      v45 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v44, v69, &v68);
      v46 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(v11, *(**v50 + 32));
      v69[0] = v50;
      v69[1] = v46;
      v69[2] = &v70;
      v69[3] = 0x400000000;
      *v71 = v73;
      v72 = 0x400000000;
      v73[4] = v74;
      v73[5] = 0x400000000;
      v74[8] = 4;
      v74[9] = v75;
      v74[10] = 0x100000000;
      v75[1] = v76;
      v75[2] = 0x100000000;
      v76[2] = 0;
      v76[1] = 0;
      v76[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v76[4] = 0;
      v76[6] = 0;
      mlir::func::FuncOp::build(v11, v69, *(v51 + 2), *(v51 + 3), v45, 0, 0, v47, 0, 0);
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    mlir::Operation::setAttr(v33, "exec.coreml_model", 0x11, *(**(v53 + 1) + 608));
    mlir::Region::takeBody((((v33 + 64 + 16 * ((*(v33 + 44) >> 23) & 1) + ((*(v33 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v33 + 40)), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
    mlir::ConversionPatternRewriter::eraseOp(v53, a2);
  }

  v69[0] = "failed to generate output intents";
  v70 = 259;
  v58[0] = v69;
  v43 = *(a4 + 2);
  if (v43 && v43[2] == 1)
  {
    (*(*v43 + 88))(v43, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::GraphOp &>(mlir::ODIE::Compiler::CoreML::GraphOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v58);
  }

  if (v57 == 1 && v55 != &v56)
  {
    free(v55);
  }

  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GraphOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 104), *(a3 + 112), &v18);
  v8 = *(a3 + 80);
  v14[4] = *(a3 + 64);
  v14[5] = v8;
  v9 = *(a3 + 96);
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v11 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v11;
  v15 = v9;
  v16 = v18 & 0xFFFFFFFFFFFFFFF9;
  v17 = v19;
  v12 = (*(*a1 + 104))(a1, a2, v14, a4);
  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v10, *a3, *(a3 + 8));
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

void mlir::ODIE::Compiler::anonymous namespace::convertTokenResultTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a1, a2, 0, a2, a3);
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      if (*(**v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v10 = v7 + 1;
        *v8 = mlir::TypeRange::dereference_iterator(a4, v7);
        v7 = v10;
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(mlir::ODIE::Compiler::CoreML::CreateTokenOp *a1, uint64_t a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  Token = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(a1, *(**a2 + 32));
  v8[0] = a2;
  v8[1] = Token;
  v8[2] = v9;
  v8[3] = 0x400000000;
  v9[4] = v10;
  v9[5] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[8] = 4;
  v11[9] = v12;
  v11[10] = 0x100000000;
  v12[1] = v13;
  v12[2] = 0x100000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v13[4] = 0;
  v13[6] = 0;
  mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(a1, v8, v5);
  v6 = mlir::Operation::create(v8);
  mlir::OpBuilder::insert(a1, v6);
  if (*(*(v6 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id)
  {
    v6 = 0;
  }

  mlir::OperationState::~OperationState(v8);
  return v6;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.create_token";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>,unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::LookupBucketFor<unsigned long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>,unsigned long,mlir::Attribute,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,mlir::Attribute>>::LookupBucketFor<unsigned long>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 2;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -1;
      }

      if (v28.i8[4])
      {
        *v27 = -1;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}