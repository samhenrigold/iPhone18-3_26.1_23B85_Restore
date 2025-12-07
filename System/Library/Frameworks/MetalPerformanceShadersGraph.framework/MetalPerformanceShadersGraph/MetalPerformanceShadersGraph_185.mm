void mlir::anec::Padding::getZinIrUnitInfo(mlir::anec::Padding *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v45[6] = *MEMORY[0x1E69E9840];
  v5 = operator new(0xE8uLL);
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 27) = 0;
  *(v5 + 28) = 0;
  *(v5 + 9) = -1;
  *(v5 + 138) = 0u;
  *v5 = &unk_1F5B33D70;
  *(v5 + 156) = 0u;
  *(v5 + 172) = 0u;
  *(v5 + 188) = 0;
  *(v5 + 25) = 0;
  *(v5 + 112) = 0;
  *(v5 + 26) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v5, 44, a2, 0, 0);
  v43 = v45;
  v44 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v7 + 16 * v8 - 16), *(*(*(*this + 48) + 96) + 8));
  mlir::getValues<unsigned long>(v9, &v43);
  AttrDictionary = v42;
  v41 = 0x300000000;
  v38 = mlir::Operation::getAttrDictionary(*this);
  v10 = mlir::ArrayAttr::getValue(&v38);
  v38 = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&v38);
  v38 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v10 + 32), (v11 + 16 * v12), *(*(*(*this + 48) + 96) + 16));
  mlir::getListOfPairs<unsigned long long>(&v38, &AttrDictionary);
  v13 = (AttrDictionary + 16 * v41);
  *(v5 + 156) = vuzp1q_s32(v13[-1], v13[-2]);
  *(v5 + 180) = vmovn_s64(v13[-3]);
  v14 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v37[0] = v14;
  v37[1] = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(v37);
  v16 = AttrDictionary;
  if (v17 == 5)
  {
    *(v5 + 172) = vmovn_s64(*(AttrDictionary + v41 - 4));
  }

  *(v5 + 188) = vmovn_s64(*v16);
  if (v44)
  {
    v18 = 0;
    v19 = v43;
    v20 = 8 * v44;
    do
    {
      if (v19[v18] != 8)
      {
        v38 = 0;
        DimFromIndex = mlir::anec::getDimFromIndex(v18, v44);
        if ((DimFromIndex & 0x100000000) != 0)
        {
          v21 = dword_1E0999A44[DimFromIndex];
        }

        else
        {
          v21 = 5;
        }

        LODWORD(v38) = v21;
        HIDWORD(v38) = dword_1E0999A24[v19[v18]];
        std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v5 + 200), &v38);
      }

      v18 = (v18 + 1);
      v20 -= 8;
    }

    while (v20);
  }

  v38 = mlir::Operation::getAttrDictionary(*this);
  v23 = mlir::ArrayAttr::getValue(&v38);
  v38 = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&v38);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v23, (v24 + 16 * v25 - 32), **(*(*this + 48) + 96));
  v26 = mlir::FloatAttr::getValue(&v38, &__p);
  v27 = v39[0];
  v29 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v29 == v27)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, v39, v28);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, v39);
  }

  v30 = v36;
  if (v36 < 0x41)
  {
    v31 = a3;
    if (__p < 0x10000)
    {
      *(v5 + 112) = __p;
    }

    else
    {
      *(v5 + 112) = -1;
    }

    goto LABEL_28;
  }

  v32 = v30 - llvm::APInt::countLeadingZerosSlowCase(&__p);
  v33 = __p;
  if (v32 <= 0x40)
  {
    v31 = a3;
    if (*__p < 0x10000uLL)
    {
      *(v5 + 112) = *__p;
    }

    else
    {
      *(v5 + 112) = -1;
    }

    goto LABEL_27;
  }

  *(v5 + 112) = -1;
  v31 = a3;
  if (v33)
  {
LABEL_27:
    operator delete[](v33);
  }

LABEL_28:
  if (v29 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  *v31 = v5;
  if (AttrDictionary != v42)
  {
    free(AttrDictionary);
  }

  if (v43 != v45)
  {
    free(v43);
  }
}

uint64_t *mlir::anec::Padding::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t *a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 32), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(a2, &AttrDictionary);
}

BOOL mlir::anec::Padding::addOpToNetwork(mlir::anec::Padding *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Padding::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Padding::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v84 = *MEMORY[0x1E69E9840];
  v71 = v73;
  v72 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v10, &v71);
  v69[0] = v70;
  v69[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getListOfPairs<unsigned long long>(buffer, v69);
  ANECPadLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v15 = mlir::ArrayAttr::getValue(buffer);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v14, (v15 + 16 * v16 - 32), **(*(*a1 + 6) + 96));
  v17 = mlir::FloatAttr::getValue(buffer, &__p);
  v18 = v75[0];
  v20 = llvm::APFloatBase::PPCDoubleDouble(v17);
  if (v20 == v18)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, v75, v19);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, v75);
  }

  v21 = v61;
  if (v61 >= 0x41)
  {
    if (v21 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
    {
      _H0 = *__p;
      __asm { FCVT            S0, H0 }

      if (*__p >> 16)
      {
        _S0 = NAN;
      }

      v59 = LODWORD(_S0);
    }

    else
    {
      v59 = -8192;
      if (!__p)
      {
        goto LABEL_15;
      }
    }

    operator delete[](__p);
    goto LABEL_15;
  }

  if (__p < 0x10000)
  {
    _H0 = __p;
    __asm { FCVT            S0, H0 }

    v59 = _S0;
  }

  else
  {
    v59 = -8192;
  }

LABEL_15:
  if (v20 != v75[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v75);
    v30 = v72;
    if (v72)
    {
      goto LABEL_17;
    }

LABEL_23:
    v38 = 0;
    goto LABEL_24;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
  v30 = v72;
  if (!v72)
  {
    goto LABEL_23;
  }

LABEL_17:
  v31 = 0;
  v32 = 0;
  v33 = v71;
  do
  {
    if (v33[v31] != 8)
    {
      v33 = v71;
      v35 = *(&off_1E86D3980 + *(v71 + v31));
      v36 = v69[0];
      v37 = &v58[3 * v32];
      *v37 = ANECDimension;
      v37[1] = v35;
      v37[2] = vmovn_s64(v36[v31]);
      v30 = v72;
      ++v32;
    }

    ++v31;
  }

  while (v31 < v30);
  v38 = v32;
LABEL_24:
  v57 = v38;
  v67[0] = v68;
  v67[1] = 0x100000000;
  *buffer = 1;
  __p = 0;
  ANECUnitValidatorCreate();
  v55 = 0;
  v56 = 0;
  if (ANECValidatePadLayer())
  {
    v39 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v62, "Invalid configuration", 21);
    std::stringbuf::str();
    __p = *MEMORY[0x1E69E54D8];
    v40 = *(MEMORY[0x1E69E54D8] + 72);
    *(&__p + *(__p - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v62 = v40;
    v63 = MEMORY[0x1E69E5548] + 16;
    if (v65 < 0)
    {
      operator delete(v64[7].__locale_);
    }

    v63 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v64);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v66);
    v54 = 260;
    v53 = &v51;
    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v42 = v80;
      if (v80)
      {
        v43 = v81;
        v44 = v80;
        if (v81 != v80)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = v80;
        }

        v81 = v42;
        operator delete(v44);
      }

      v45 = v78;
      if (v78)
      {
        v46 = v79;
        v47 = v78;
        if (v79 != v78)
        {
          do
          {
            v49 = *--v46;
            v48 = v49;
            *v46 = 0;
            if (v49)
            {
              operator delete[](v48);
            }
          }

          while (v46 != v45);
          v47 = v78;
        }

        v79 = v45;
        operator delete(v47);
      }

      if (v76 != &v77)
      {
        free(v76);
      }
    }

    if (v52 < 0)
    {
      operator delete(v51);
    }
  }

  else
  {
    v41 = 1;
  }

  ANECUnitValidatorDelete();
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  if (v69[0] != v70)
  {
    free(v69[0]);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  return v41;
}

uint64_t mlir::anec::MatMul::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x1E69E9840];
  v54 = a6;
  LOBYTE(v55) = 0;
  v56 = 0;
  v57 = a7;
  v58 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v54);
    if (v56 == 1)
    {
      v56 = 0;
    }

    mlir::OperationName::OperationName(&v55, "anec.matmul", 11, Context);
    v56 = 1;
    a1 = v15;
  }

  v59 = a4;
  v60 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::MatMulAdaptor::verify(&v54, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v49[0] = v20;
  v49[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v48[0] = v22;
  v48[1] = v21;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v24 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
  mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v26 = v25;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v25);
  v28 = mlir::anec::getIndexFromDim(2, v26);
  v30 = v29;
  v31 = 1;
  v32 = mlir::anec::getIndexFromDim(1, v26);
  v33 = mlir::anec::getIndexFromDim(3, v26);
  v34 = mlir::anec::getIndexFromDim(4, v26);
  v50 = v53;
  v35 = *(ArgAttrsAttr + 8 * IndexFromDim);
  v52 = 5;
  if (v35 == 1)
  {
    v36 = v24;
  }

  else
  {
    v36 = ArgAttrsAttr;
  }

  v53[0] = *(v36 + 8 * IndexFromDim);
  if (v30)
  {
    v53[1] = *(ArgAttrsAttr + 8 * v28);
    v31 = 2;
  }

  v37 = *(ArgAttrsAttr + 8 * v33);
  v53[v31] = *(ArgAttrsAttr + 8 * v32);
  if (v37 == 1)
  {
    v38 = v24;
  }

  else
  {
    v38 = ArgAttrsAttr;
  }

  v53[v31 + 1] = *(v38 + 8 * v33);
  v39 = (v31 + 2);
  v51 = v39;
  v40 = *(v24 + 8 * v34);
  if (v39 >= v52)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v39 + 1, 8);
    LODWORD(v39) = v51;
  }

  *(v50 + v39) = v40;
  v41 = ++v51;
  v42 = v50;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v44 = mlir::MemRefType::get(v42, v41, isSplat, 0, 0, 0);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v47 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
    v44 = v47;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (v50 != v53)
  {
    free(v50);
  }

  return 1;
}

uint64_t mlir::anec::MatMulAdaptor::verify(mlir::anec::MatMulAdaptor *this, Location a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = *this;
  Value = mlir::AffineMapAttr::getValue(&v18);
  if (Value == mlir::DictionaryAttr::end(&v18))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
    {
      v5 = *(Value + 1);
    }

    Value = (Value + 16);
  }

  while (Value != mlir::DictionaryAttr::end(&v18));
  if (!v5)
  {
    return 1;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v16[0] = v5;
    v19[0] = mlir::AffineMapAttr::getValue(v16);
    if (mlir::Type::isF16(v19))
    {
      return 1;
    }
  }

  v16[0] = "'anec.matmul' op attribute 'bias' failed to satisfy constraint: 16-bit float attribute";
  v17 = 259;
  mlir::emitError(a2.var0.var0, v16, v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            operator delete[](v14);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

void mlir::anec::MatMul::getZinIrUnitInfo(mlir::anec::MatMul *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33D98;
  *(v6 + 1) = 0;
  v6[80] = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 18, a2, 0, 0);
  v6[80] = 0;
  mlir::anec::MatMul::getBias(&v24, this);
  if (v26 == 1)
  {
    v8 = v25[0];
    v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
    if (v9 == v8)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v25);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v25);
    }

    v6[80] = 1;
    if (*(*this + 36))
    {
      v10 = *this - 16;
    }

    else
    {
      v10 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
    if (mlir::Type::isF16(&ElementTypeOrSelf))
    {
      mlir::anec::MatMul::getBias(&v24, this);
      _S0 = llvm::APFloat::convertToFloat(&v24, v12, v13, v14);
      __asm { FCVT            H0, S0 }

      *(v6 + 41) = LOWORD(_S0);
    }

    else
    {
      if (!mlir::Type::isSignedInteger(&ElementTypeOrSelf, 8))
      {
        mlir::Type::isUnsignedInteger(&ElementTypeOrSelf, 8);
      }

      mlir::anec::MatMul::getBias(&v24, this);
      v6[82] = llvm::APFloat::convertToFloat(&v24, v20, v21, v22);
    }

    if (v26 == 1)
    {
      if (v9 == v25[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v25);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v25);
      }
    }
  }

  *a3 = v6;
}

void mlir::anec::MatMul::getBias(uint64_t *__return_ptr a1@<X8>, mlir::Operation **this@<X0>)
{
  v9 = *MEMORY[0x1E69E9840];
  BiasAttr = mlir::anec::MatMul::getBiasAttr(this);
  if (BiasAttr)
  {
    Value = mlir::FloatAttr::getValue(&v7, &BiasAttr);
    v4 = v8.n128_u64[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v5 == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 1), &v8);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 1), &v8);
    }

    *(a1 + 32) = 1;
    if (v5 == v8.n128_u64[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v8);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }
}

BOOL mlir::anec::MatMul::addOpToNetwork(mlir::anec::MatMul *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::MatMul::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::MatMul::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  ANECMatrixMultLayerDescInitialize();
  if (*(*a1 + 9))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v33[0] = v8;
  v33[1] = v9;
  mlir::anec::MatMul::getBias(buffer, a1);
  v34[0] = v47;
  if (v47 == 1)
  {
    v11 = v45[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v45);
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v33);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v35 = *(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8 * IndexFromDim);
  v42[0] = v43;
  v42[1] = 0x100000000;
  *buffer = 1;
  v36[0] = 0;
  ANECUnitValidatorCreate();
  v31 = 0;
  v32 = 0;
  if (ANECValidateMatrixMultLayer())
  {
    v15 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v37, "Invalid configuration", 21);
    std::stringbuf::str();
    v36[0] = *MEMORY[0x1E69E54D8];
    v16 = *(MEMORY[0x1E69E54D8] + 72);
    *(v36 + *(v36[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v37 = v16;
    v38 = MEMORY[0x1E69E5548] + 16;
    if (v40 < 0)
    {
      operator delete(v39[7].__locale_);
    }

    v38 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v39);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v41);
    v30 = 260;
    v29 = &v27;
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v18 = v51;
      if (v51)
      {
        v19 = v52;
        v20 = v51;
        if (v52 != v51)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = v51;
        }

        v52 = v18;
        operator delete(v20);
      }

      v21 = v49;
      if (v49)
      {
        v22 = v50;
        v23 = v49;
        if (v50 != v49)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              operator delete[](v24);
            }
          }

          while (v22 != v21);
          v23 = v49;
        }

        v50 = v21;
        operator delete(v23);
      }

      if (v46 != &v48)
      {
        free(v46);
      }
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  else
  {
    v17 = 1;
  }

  ANECUnitValidatorDelete();
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  return v17;
}

uint64_t mlir::anec::Flatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = a6;
  LOBYTE(v54) = 0;
  v55 = 0;
  v56 = a7;
  v57 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v53);
    if (v55 == 1)
    {
      v55 = 0;
    }

    mlir::OperationName::OperationName(&v54, "anec.flatten", 12, Context);
    v55 = 1;
    a1 = v15;
  }

  v58 = a4;
  v59 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::FlattenAdaptor::verify(&v53, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v46[0] = v20;
  v46[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v24 = (v22 + 8 * v23);
  v50 = v52;
  v51 = 0x500000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v25, 8);
    v26 = v51;
    if (v24 == ArgAttrsAttr)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26 = 0;
  if (v24 != ArgAttrsAttr)
  {
LABEL_16:
    memcpy(v50 + 8 * v26, ArgAttrsAttr, v24 - ArgAttrsAttr);
    v26 = v51;
  }

LABEL_17:
  LODWORD(v51) = v26 + ((v24 - ArgAttrsAttr) >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v28);
  if ((v30 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::FlattenAdaptor::verify(v45, v61);
  }

  v31 = IndexFromDim;
  mlir::anec::getAllDims(&v47);
  v32 = v47;
  if (!v48)
  {
    goto LABEL_28;
  }

  v33 = 4 * v48;
  do
  {
    v35 = *v32;
    mlir::CallableOpInterface::getArgAttrsAttr(v46);
    v37 = mlir::anec::getIndexFromDim(v35, v36);
    if (v35 == 2)
    {
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else if (v35 >= 2)
    {
LABEL_20:
      v34 = v50;
      *(v50 + v31) *= *(v50 + v37);
      v34[v37] = 1;
    }

    ++v32;
    v33 -= 4;
  }

  while (v33);
  v32 = v47;
LABEL_28:
  if (v32 != &v49)
  {
    free(v32);
  }

  v39 = v50;
  v40 = v51;
  isSplat = mlir::ElementsAttr::isSplat(v46);
  v42 = mlir::MemRefType::get(v39, v40, isSplat, 0, 0, 0);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v44 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v43 + 1, 8);
    v42 = v44;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v50 != v52)
  {
    free(v50);
  }

  return 1;
}

uint64_t mlir::anec::FlattenAdaptor::verify(mlir::anec::FlattenAdaptor *this, Location a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v27[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isSignlessInteger(v27, 64))
        {
          v26 = v14;
          if (mlir::IntegerAttr::getInt(&v26) == 1)
          {
            return 1;
          }

          v25 = v14;
          if (mlir::IntegerAttr::getInt(&v25) == 2)
          {
            return 1;
          }
        }
      }

      v22[0] = "'anec.flatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
      v23 = 259;
      mlir::emitError(a2.var0.var0, v22, v27);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }

      if (v35 == 1)
      {
        if (v34 != &v35)
        {
          free(v34);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v33;
          v17 = __p;
          if (v33 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v33 = v15;
          operator delete(v17);
        }

        v9 = v30;
        if (!v30)
        {
          goto LABEL_45;
        }

        v18 = v31;
        v11 = v30;
        if (v31 == v30)
        {
LABEL_44:
          v31 = v9;
          operator delete(v11);
LABEL_45:
          if (v28 != &v29)
          {
            free(v28);
          }

          return v5;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v18 != v9);
LABEL_43:
        v11 = v30;
        goto LABEL_44;
      }

      return v5;
    }
  }

  v22[0] = "'anec.flatten' op requires attribute 'flatten_mode'";
  v23 = 259;
  mlir::emitError(a2.var0.var0, v22, v27);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v33;
      v8 = __p;
      if (v33 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v33 = v6;
      operator delete(v8);
    }

    v9 = v30;
    if (!v30)
    {
      goto LABEL_45;
    }

    v10 = v31;
    v11 = v30;
    if (v31 == v30)
    {
      goto LABEL_44;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_43;
  }

  return v5;
}

uint64_t mlir::anec::Flatten::getZinIrUnitInfo@<X0>(mlir::anec::Flatten *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33DB8;
  *(v6 + 1) = 0;
  *(v6 + 20) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 11, a2, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*this + 48) + 96));
  result = mlir::IntegerAttr::getInt(&AttrDictionary);
  if (result == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v6 + 20) = v11;
  *a3 = v6;
  return result;
}

uint64_t mlir::anec::Flatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

BOOL mlir::anec::Flatten::addOpToNetwork(mlir::anec::Flatten *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Flatten::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Flatten::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v68 = *MEMORY[0x1E69E9840];
  ANECFlattenLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  Int = mlir::IntegerAttr::getInt(buffer);
  *buffer = xmmword_1E86D3878;
  *v60 = unk_1E86D3888;
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  v11 = std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v50, &v51, v57, v45, buffer);
  if (!*v11)
  {
    v12 = v11;
    v13 = operator new(0x30uLL);
    v13[2] = *buffer;
    v14 = v57[0];
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = v14;
    *v12 = v13;
    if (*v50)
    {
      v50 = *v50;
      v15 = *v12;
    }

    else
    {
      v15 = v13;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v51, v15);
    ++v52;
  }

  v16 = std::__tree<std::__value_type<ZinIrDimension,__CFString const*>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,__CFString const*>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,__CFString const*>>>::__find_equal<ZinIrDimension>(&v50, &v51, v57, v45, v60);
  if (!*v16)
  {
    v17 = v16;
    v18 = operator new(0x30uLL);
    v18[2] = *v60;
    v19 = v57[0];
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v19;
    *v17 = v18;
    if (*v50)
    {
      v50 = *v50;
      v20 = *v17;
    }

    else
    {
      v20 = v18;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v51, v20);
    ++v52;
  }

  if (Int == 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  if (!v51)
  {
    goto LABEL_21;
  }

  v22 = &v51;
  v23 = v51;
  do
  {
    if (*(v23 + 8) >= v21)
    {
      v22 = v23;
    }

    v23 = v23[*(v23 + 8) < v21];
  }

  while (v23);
  if (v22 == &v51 || v21 < *(v22 + 8))
  {
LABEL_21:
    v22 = &v51;
  }

  v24 = v22[5];
  std::__tree<unsigned long long>::destroy(&v50, v51);
  v49 = v24;
  v57[0] = v58;
  v57[1] = 0x100000000;
  v25 = 1;
  *buffer = 1;
  v50 = 0;
  ANECUnitValidatorCreate();
  v47 = 0;
  v48 = 0;
  if (ANECValidateFlattenLayer())
  {
    v26 = *a1;
    v28 = v47;
    v27 = v48;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v50);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, "Invalid configuration", 21);
    if (v28)
    {
      if (v27)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, " for the following reasons: ", 28);
        v29 = *v27;
        if (*v27)
        {
          v30 = 0;
          do
          {
            v31 = v29 - 1;
            CFStringGetCString(v27[v30 + 1], buffer, 512, 0x8000100u);
            v32 = strlen(buffer);
            v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, buffer, v32);
            if (v30 == v31)
            {
              v34 = "";
            }

            else
            {
              v34 = ", ";
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, v34, 2 * (v30++ != v31));
            v29 = *v27;
          }

          while (*v27 > v30);
        }
      }
    }

    std::stringbuf::str();
    v50 = *MEMORY[0x1E69E54D8];
    v35 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v50 + *(v50 - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v52 = v35;
    v53 = MEMORY[0x1E69E5548] + 16;
    if (v55 < 0)
    {
      operator delete(v54[7].__locale_);
    }

    v53 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v54);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v56);
    LOWORD(v54[0].__locale_) = 260;
    v50 = v45;
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v36 = v64;
      if (v64)
      {
        v37 = v65;
        v38 = v64;
        if (v65 != v64)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v64;
        }

        v65 = v36;
        operator delete(v38);
      }

      v39 = v62;
      if (v62)
      {
        v40 = v63;
        v41 = v62;
        if (v63 != v62)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v40 != v39);
          v41 = v62;
        }

        v63 = v39;
        operator delete(v41);
      }

      if (v60[1] != &v61)
      {
        free(v60[1]);
      }
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }
  }

  ANECUnitValidatorDelete();
  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  return v25;
}

uint64_t mlir::anec::Unflatten::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = a6;
  LOBYTE(v50) = 0;
  v51 = 0;
  v52 = a7;
  v53 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v49);
    if (v51 == 1)
    {
      v51 = 0;
    }

    mlir::OperationName::OperationName(&v50, "anec.unflatten", 14, Context);
    v51 = 1;
    a1 = v15;
  }

  v54 = a4;
  v55 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::UnflattenAdaptor::verify(&v49, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v44[0] = v20;
  v44[1] = v19;
  v46 = v48;
  v47 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v49);
  v22 = mlir::DictionaryAttr::end(&v49);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 16), **(v50 + 96));
  mlir::getValues<long long>(v23, &v46);
  v24 = v46;
  if (v47)
  {
    v25 = (v47 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = v25 + 1;
      v27 = (v25 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v28 = (v46 + 8 * v27);
      v29 = v46 + 8;
      v30 = 1;
      v31 = v27;
      v32 = 1;
      do
      {
        v30 *= *(v29 - 1);
        v32 *= *v29;
        v29 += 2;
        v31 -= 2;
      }

      while (v31);
      v33 = v32 * v30;
      if (v26 == v27)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v33 = 1;
      v28 = v46;
    }

    do
    {
      v35 = *v28++;
      v33 *= v35;
    }

    while (v28 != (v46 + 8 * v47));
  }

  else
  {
    v33 = 1;
  }

LABEL_21:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v44);
  v45 = mlir::ShapedType::getNumElements(ArgAttrsAttr, v37) / v33;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v46, v24, &v45);
  v38 = v46;
  v39 = v47;
  isSplat = mlir::ElementsAttr::isSplat(v44);
  v41 = mlir::MemRefType::get(v38, v39, isSplat, 0, 0, 0);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v43 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v42 + 1, 8);
    v41 = v43;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
  if (v46 != v48)
  {
    free(v46);
  }

  return 1;
}

uint64_t mlir::anec::UnflattenAdaptor::verify(mlir::anec::UnflattenAdaptor *this, Location a2)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v46 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v46); i != mlir::DictionaryAttr::end(&v46); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (1)
      {
        if (i == mlir::DictionaryAttr::end(&v46))
        {
          v44[0] = "'anec.unflatten' op requires attribute 'flatten_mode'";
          v45 = 259;
          mlir::emitError(a2.var0.var0, v44, v47);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v5;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v53;
            v17 = __p;
            if (v53 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v53 = v15;
            operator delete(v17);
          }

          v9 = v50;
          if (!v50)
          {
            goto LABEL_88;
          }

          v18 = v51;
          v11 = v50;
          if (v51 == v50)
          {
            goto LABEL_87;
          }

          do
          {
            v20 = *--v18;
            v19 = v20;
            *v18 = 0;
            if (v20)
            {
              operator delete[](v19);
            }
          }

          while (v18 != v9);
          goto LABEL_86;
        }

        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          break;
        }

        i = (i + 16);
      }

      v21 = *(i + 1);
      if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v44[0] = *(i + 1), v47[0] = mlir::AffineMapAttr::getValue(v44), mlir::Type::isSignlessInteger(v47, 64)) && ((v42[0] = v21, mlir::IntegerAttr::getInt(v42) == 1) || (v56[0] = v21, mlir::IntegerAttr::getInt(v56) == 2)))
      {
        if (!v14)
        {
          return 1;
        }

        if (mlir::DenseIntElementsAttr::classof(v14))
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
          v44[0] = v14;
          v44[1] = v22;
          Type = mlir::ElementsAttr::getType(v44);
          v24 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v47[0] = v24;
          v47[1] = Type;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v47);
          v56[0] = 3;
          if (v26 == 1 && *ArgAttrsAttr == v56[0])
          {
            v41 = v14;
            v42[0] = mlir::ArrayAttr::getValue(&v41);
            v42[1] = v27;
            isSplat = mlir::ElementsAttr::isSplat(v42);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }

        v44[0] = "'anec.unflatten' op attribute 'destination_size' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v45 = 259;
        mlir::emitError(a2.var0.var0, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v53;
          v36 = __p;
          if (v53 != __p)
          {
            do
            {
              v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v53 = v34;
          operator delete(v36);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v37 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v37 != v9);
      }

      else
      {
        v44[0] = "'anec.unflatten' op attribute 'flatten_mode' failed to satisfy constraint: valid FlattenMode";
        v45 = 259;
        mlir::emitError(a2.var0.var0, v44, v47);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v55 != 1)
        {
          return v5;
        }

        if (v54 != &v55)
        {
          free(v54);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v53;
          v30 = __p;
          if (v53 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v53 = v28;
          operator delete(v30);
        }

        v9 = v50;
        if (!v50)
        {
          goto LABEL_88;
        }

        v31 = v51;
        v11 = v50;
        if (v51 == v50)
        {
          goto LABEL_87;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v31 != v9);
      }

LABEL_86:
      v11 = v50;
      goto LABEL_87;
    }
  }

  v44[0] = "'anec.unflatten' op requires attribute 'destination_size'";
  v45 = 259;
  mlir::emitError(a2.var0.var0, v44, v47);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v53;
      v8 = __p;
      if (v53 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v53 = v6;
      operator delete(v8);
    }

    v9 = v50;
    if (v50)
    {
      v10 = v51;
      v11 = v50;
      if (v51 != v50)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_86;
      }

LABEL_87:
      v51 = v9;
      operator delete(v11);
    }

LABEL_88:
    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v5;
}

BOOL mlir::anec::Unflatten::verifyAttributesWithFamily(mlir::Block ***a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = (*(*((*a1)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v4 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 9);
  v8 = v4 - 2;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (mlir::anec::verifyCompatibilityWithUnflatten(v5, v6, v10, v11))
  {
    if (a2 > 1)
    {
      return 1;
    }

    if (*(*a1 + 9))
    {
      v21 = (*a1 - 2);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    v44[0] = v22;
    v44[1] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v44);
    IndexFromDim = mlir::anec::getIndexFromDim(4, v24);
    if (v26)
    {
      v43 = *(mlir::CallableOpInterface::getArgAttrsAttr(v44) + 8 * IndexFromDim);
      if ((v43 - 65) <= 0xFFFFFFFFFFFFFFC0)
      {
        v37[0] = "output width dimension size = {0} failed to satisfy constraint: 2 <= size <= 64";
        v37[1] = 79;
        v37[2] = &v40;
        v37[3] = 1;
        LOBYTE(v38) = 1;
        v39[0] = &unk_1F5B17218;
        v39[1] = &v43;
        v40 = v39;
        v41[0] = v37;
        v42 = 263;
        mlir::OpState::emitOpError(a1, v41, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          if (v54 != &v55)
          {
            free(v54);
          }

          v27 = v52;
          if (v52)
          {
            v28 = v53;
            v29 = v52;
            if (v53 != v52)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = v52;
            }

            v53 = v27;
            operator delete(v29);
          }

          v16 = v50;
          if (!v50)
          {
            goto LABEL_66;
          }

          v30 = v51;
          v18 = v50;
          if (v51 == v50)
          {
LABEL_65:
            v51 = v16;
            operator delete(v18);
LABEL_66:
            if (v48 != &v49)
            {
              free(v48);
            }

            return v12;
          }

          do
          {
            v32 = *--v30;
            v31 = v32;
            *v30 = 0;
            if (v32)
            {
              operator delete[](v31);
            }
          }

          while (v30 != v16);
LABEL_64:
          v18 = v50;
          goto LABEL_65;
        }

        return v12;
      }

      v46 = *((*a1)[9] + 3);
      DefiningOp = mlir::Value::getDefiningOp(&v46);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
      {
        return 1;
      }

      v41[0] = *((*a1)[9] + 3);
      v34 = mlir::Value::getDefiningOp(v41);
      if (!v34)
      {
LABEL_60:
        v37[0] = "must be preceded by a convolution or a sequence of convolution, goc, and neuron activation for A12/A13 class ANEs";
        v38 = 259;
        mlir::OpState::emitOpError(a1, v37, &v46);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        if (v46)
        {
          mlir::InFlightDiagnostic::report(&v46);
        }

        if (v55 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v47);
        }

        return v12;
      }

      v22 = v34;
      v37[0] = v34;
      {
LABEL_57:
        if ((*(**(v22 + 48) + 32))(*(v22 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::NeuronOpTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::NeuronOpTrait>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if ((*(v22 + 46) & 0x80) != 0 && *(v22 + 68) == 1)
          {
            v12 = 1;
            v45 = 1;
            v46 = &v45;
            v47 = v37;
            mlir::detail::enumerate<mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>,mlir::detail::RecursivePatternTraitMatcher<mlir::OpTrait::anec::NeuronOpTrait,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcher<mlir::anec::GOC,mlir::detail::op_matcher<mlir::anec::Convolution>,mlir::detail::AnyValueMatcher,mlir::detail::AnyValueMatcher> &)#1}>(v36, &v46);
            if (v45)
            {
              return v12;
            }
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    mlir::anec::Unflatten::verifyAttributesWithFamily();
    goto LABEL_57;
  }

  v37[0] = "failed: input/output shapes are incompatible with unflatten op, (NxCx1x1) -> (NxCxHxW)";
  v38 = 259;
  mlir::OpState::emitOpError(a1, v37, &v46);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
  if (v46)
  {
    mlir::InFlightDiagnostic::report(&v46);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v13 = v52;
    if (v52)
    {
      v14 = v53;
      v15 = v52;
      if (v53 != v52)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = v52;
      }

      v53 = v13;
      operator delete(v15);
    }

    v16 = v50;
    if (!v50)
    {
      goto LABEL_66;
    }

    v17 = v51;
    v18 = v50;
    if (v51 == v50)
    {
      goto LABEL_65;
    }

    do
    {
      v20 = *--v17;
      v19 = v20;
      *v17 = 0;
      if (v20)
      {
        operator delete[](v19);
      }
    }

    while (v17 != v16);
    goto LABEL_64;
  }

  return v12;
}

void mlir::anec::Unflatten::getZinIrUnitInfo(mlir::Operation **this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 10) = 0;
  *v6 = &unk_1F5B33DD8;
  *(v6 + 1) = 0;
  *(v6 + 11) = 0;
  v7 = *this;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 12, a2, 0, 0);
  v18[0] = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(v18);
  v18[0] = mlir::Operation::getAttrDictionary(v7);
  v9 = mlir::ArrayAttr::getValue(v18);
  v18[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v9 + 16 * v10), *(*(*(v7 + 6) + 96) + 8));
  if (mlir::IntegerAttr::getInt(v18) == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v6 + 20) = v11;
  v18[0] = v19;
  v18[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14 - 16), **(*(*this + 6) + 96));
  mlir::getValues<long long>(v15, v18);
  v16 = v18[0];
  *(v6 + 23) = *v18[0];
  *(v6 + 22) = v16[1];
  *(v6 + 21) = v16[2];
  *a3 = v6;
  if (v16 != v19)
  {
    free(v16);
  }
}

uint64_t mlir::anec::Unflatten::getFlattenMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::Unflatten::getDestinationSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
}

BOOL mlir::anec::Unflatten::addOpToNetwork(mlir::Operation **a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Unflatten::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Reshape::getZinIrUnitInfo@<X0>(mlir::anec::Reshape *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *v6 = &unk_1F5B33DF8;
  *(v6 + 1) = 0;
  *(v6 + 72) = xmmword_1E0999980;
  v7 = vdupq_n_s64(1uLL);
  *(v6 + 88) = v7;
  *(v6 + 104) = v7;
  v8 = operator new(0x14uLL);
  *(v6 + 16) = v8 + 5;
  *(v6 + 17) = v8 + 5;
  v8[4] = 4;
  *v8 = *(&xmmword_1E09999F8 + 8);
  *(v6 + 15) = v8;
  *(v6 + 8) = 22;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 22, a2, 0, 0);
  if (*(*this + 36))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v25[0] = v10;
  v25[1] = v11;
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v12);
  *(v6 + 10) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * IndexFromDim);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v15 = mlir::anec::getIndexFromDim(2, v14);
  if (v16)
  {
    v17 = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v15);
  }

  else
  {
    v17 = 1;
  }

  *(v6 + 14) = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v19 = mlir::anec::getIndexFromDim(1, v18);
  *(v6 + 11) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v19);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v21 = mlir::anec::getIndexFromDim(3, v20);
  *(v6 + 12) = *(mlir::CallableOpInterface::getArgAttrsAttr(v25) + 8 * v21);
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v23 = mlir::anec::getIndexFromDim(4, v22);
  result = mlir::CallableOpInterface::getArgAttrsAttr(v25);
  *(v6 + 13) = *(result + 8 * v23);
  *a3 = v6;
  return result;
}

BOOL mlir::anec::Reshape::addOpToNetwork(mlir::anec::Reshape *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Reshape::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Reshape::verifyWithANEC(mlir::Block ***a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v84 = *MEMORY[0x1E69E9840];
  ANECReshapeLayerDescInitialize();
  v61 = *a2;
  mlir::CallableOpInterface::getArgAttrsAttr(&v61);
  if (v7 >= 1)
  {
    v8 = 0;
    while (1)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v61);
      DimFromIndex = mlir::anec::getDimFromIndex(v8, v9);
      if ((DimFromIndex & 0x100000000) == 0)
      {
        goto LABEL_67;
      }

      v11 = DimFromIndex;
      v12 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v61) + 8 * v8);
      if (v12 > mlir::anec::getMaximumDimSize(v11))
      {
        break;
      }

      v8 = (v8 + 1);
      mlir::CallableOpInterface::getArgAttrsAttr(&v61);
      if (v8 >= v13)
      {
        goto LABEL_6;
      }
    }

    v17 = *a1;
    v67[0] = "failed: input tensor dimensions are not supported on ANEs.";
    LOWORD(v70[0].__locale_) = 259;
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if ((v83[0] & 1) == 0)
    {
      return v18;
    }

    if (v82 != v83)
    {
      free(v82);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v81;
      v21 = __p;
      if (v81 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v81 = v19;
      operator delete(v21);
    }

    v22 = v78;
    if (v78)
    {
      v23 = v79;
      v24 = v78;
      if (v79 != v78)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v23 != v22);
        v24 = v78;
      }

      v79 = v22;
      operator delete(v24);
    }

    v54 = v76;
    if (v76 == v77)
    {
      return v18;
    }

LABEL_61:
    free(v54);
    return v18;
  }

LABEL_6:
  if (*(*a1 + 9))
  {
    v14 = (*a1 - 2);
  }

  else
  {
    v14 = 0;
  }

  v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v60[0] = v15;
  v60[1] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(v60);
  v28 = v27;
  IndexFromDim = mlir::anec::getIndexFromDim(2, v27);
  if (v30)
  {
    v31 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * IndexFromDim);
  }

  else
  {
    v31 = 1;
  }

  v32 = mlir::anec::getIndexFromDim(0, v28);
  if ((v33 & 1) == 0 || (v34 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * v32), v35 = mlir::anec::getIndexFromDim(1, v28), (v36 & 1) == 0) || (v37 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * v35), v38 = mlir::anec::getIndexFromDim(3, v28), (v39 & 1) == 0) || (v40 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * v38), v41 = mlir::anec::getIndexFromDim(4, v28), (v42 & 1) == 0))
  {
LABEL_67:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v43 = *(mlir::CallableOpInterface::getArgAttrsAttr(v60) + 8 * v41);
  v62 = v34;
  v63 = v37;
  v64 = v40;
  v65 = v43;
  v66 = v31;
  v73[0] = v74;
  v73[1] = 0x100000000;
  v18 = 1;
  *buffer = 1;
  v67[0] = 0;
  ANECUnitValidatorCreate();
  v58 = 0;
  v59 = 0;
  if (ANECValidateReshapeLayer())
  {
    v44 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v67);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v68, "Invalid configuration", 21);
    std::stringbuf::str();
    v67[0] = *MEMORY[0x1E69E54D8];
    v45 = *(MEMORY[0x1E69E54D8] + 72);
    *(v67 + *(v67[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v68 = v45;
    v69 = MEMORY[0x1E69E5548] + 16;
    if (v71 < 0)
    {
      operator delete(v70[7].__locale_);
    }

    v69 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v70);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v72);
    LOWORD(v70[0].__locale_) = 260;
    v67[0] = &v56;
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v83[0] == 1)
    {
      if (v82 != v83)
      {
        free(v82);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v81;
        v48 = __p;
        if (v81 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v81 = v46;
        operator delete(v48);
      }

      v49 = v78;
      if (v78)
      {
        v50 = v79;
        v51 = v78;
        if (v79 != v78)
        {
          do
          {
            v53 = *--v50;
            v52 = v53;
            *v50 = 0;
            if (v53)
            {
              operator delete[](v52);
            }
          }

          while (v50 != v49);
          v51 = v78;
        }

        v79 = v49;
        operator delete(v51);
      }

      if (v76 != v77)
      {
        free(v76);
      }
    }

    if (v57 < 0)
    {
      operator delete(v56);
    }
  }

  ANECUnitValidatorDelete();
  v54 = v73[0];
  if (v73[0] != v74)
  {
    goto LABEL_61;
  }

  return v18;
}

unint64_t mlir::anec::Reshape::fold(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v24[0] = v8;
  v24[1] = v9;
  if (!mlir::CallOpInterface::getArgOperands(v24))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  if (v11)
  {
    v12 = 8 * v11;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v13 = **(a2 + 40);
  if (!v13)
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v22 = 0;
    v23 = 0;
    return 0;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
  v22 = v13;
  v23 = v14;
  Type = mlir::ElementsAttr::getType(&v22);
  v16 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v21[0] = v16;
  v21[1] = Type;
  *&v25 = mlir::CallableOpInterface::getArgAttrsAttr(v24);
  *(&v25 + 1) = v17;
  v26 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v21);
  v19 = mlir::ShapedType::cloneWith(v21, &v25, isSplat);
  return mlir::reshapeElementsAttr(v22, v23, v19, v20) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::anec::Reshape::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, unint64_t, unint64_t))
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v11[0] = v5;
  v11[1] = v6;
  v13[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
  {
    return 0;
  }

  v13[0] = *(*(a1 + 72) + 24);
  v10 = *(*(mlir::Value::getDefiningOp(v13) + 72) + 24);
  v12 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a2 + 1), *(a1 + 24), v11, &v10) - 16;
  v8 = 1;
  mlir::ValueRange::ValueRange(v13, &v12, 1uLL);
  (**a2)(a2, a1, v13[0], v13[1]);
  return v8;
}

BOOL mlir::anec::Concat::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x1E69E9840];
  v58 = a6;
  LOBYTE(v59) = 0;
  v60 = 0;
  v61 = a7;
  v62 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(&v59, "anec.concat", 11, Context);
    v60 = 1;
    a1 = v15;
  }

  v63 = a4;
  v64 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::ConcatAdaptor::verify(&v58, v18) & 1) == 0)
  {
    v24.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v24, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v51[0] = v20;
  v51[1] = v19;
  mlir::CallableOpInterface::getArgAttrsAttr(v51);
  Value = mlir::AffineMapAttr::getValue(&v58);
  v22 = mlir::DictionaryAttr::end(&v58);
  v49[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v22, **(v59 + 96));
  mlir::IntegerAttr::getValue(&__p, v49);
  if (v53 > 0x40)
  {
    v23 = *__p;
    operator delete[](__p);
    v50 = v23;
    if (v23 < 0)
    {
LABEL_26:
      __p = "failed: Axis value {0} is out of bounds for input operands";
      v53 = 58;
      v54[0] = &v57;
      v54[1] = 1;
      v55 = 1;
      v56[0] = &unk_1F5B17218;
      v56[1] = &v50;
      v57 = v56;
      v34.var0.var0 = a3;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v34, &__p);
    }
  }

  else
  {
    v23 = __p;
    v50 = __p;
    if ((__p & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }
  }

  if (a10)
  {
    v26 = 0;
    while (1)
    {
      v27 = mlir::TypeRange::dereference_iterator(a9, v26);
      v28 = v27;
      if (v27)
      {
        v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
      }

      __p = v28;
      v53 = v27;
      mlir::CallableOpInterface::getArgAttrsAttr(&__p);
      if (v23 >= v29)
      {
        goto LABEL_26;
      }

      if (a10 == ++v26)
      {
        v30 = 0;
        for (i = 0; i != a10; ++i)
        {
          v32 = mlir::TypeRange::dereference_iterator(a9, i);
          v33 = v32;
          if (v32)
          {
            v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
          }

          __p = v33;
          v53 = v32;
          v30 += *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8 * v23);
        }

        goto LABEL_28;
      }
    }
  }

  v30 = 0;
LABEL_28:
  v35 = mlir::TypeRange::dereference_iterator(a9, 0);
  v36 = v35;
  if (v35)
  {
    v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
  }

  v49[0] = v36;
  v49[1] = v35;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v38 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v40 = (v38 + 8 * v39);
  __p = v54;
  v53 = 0x500000000;
  v41 = (v40 - ArgAttrsAttr) >> 3;
  if (v41 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v54, v41, 8);
    v42 = v53;
    v43 = __p;
    if (v40 == ArgAttrsAttr)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v42 = 0;
  v43 = v54;
  if (v40 != ArgAttrsAttr)
  {
LABEL_34:
    memcpy(&v43[v42], ArgAttrsAttr, v40 - ArgAttrsAttr);
    v42 = v53;
    v43 = __p;
  }

LABEL_35:
  v44 = (v42 + ((v40 - ArgAttrsAttr) >> 3));
  LODWORD(v53) = v42 + ((v40 - ArgAttrsAttr) >> 3);
  v43[v23] = v30;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  v46 = mlir::MemRefType::get(v43, v44, isSplat, 0, 0, 0);
  v47 = *(a11 + 8);
  if (v47 >= *(a11 + 12))
  {
    v48 = v46;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v47 + 1, 8);
    v46 = v48;
    LODWORD(v47) = *(a11 + 8);
  }

  *(*a11 + 8 * v47) = v46;
  ++*(a11 + 8);
  if (__p != v54)
  {
    free(__p);
  }

  return 1;
}

uint64_t mlir::anec::ConcatAdaptor::verify(mlir::anec::ConcatAdaptor *this, Location a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v31); i != mlir::DictionaryAttr::end(&v31); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (i == mlir::DictionaryAttr::end(&v31))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        do
        {
          if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
          {
            v15 = *(i + 1);
          }

          i = (i + 16);
        }

        while (i != mlir::DictionaryAttr::end(&v31));
      }

      if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v29[0] = v14, v32[0] = mlir::AffineMapAttr::getValue(v29), mlir::Type::isUnsignedInteger(v32, 64)))
      {
        if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          return 1;
        }

        v29[0] = "'anec.concat' op attribute 'interleave' failed to satisfy constraint: unit attribute";
        v30 = 259;
        mlir::emitError(a2.var0.var0, v29, v32);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
        if (v32[0])
        {
          mlir::InFlightDiagnostic::report(v32);
        }

        if (v40 == 1)
        {
          if (v39 != &v40)
          {
            free(v39);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v38;
            v18 = __p;
            if (v38 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v38 = v16;
            operator delete(v18);
          }

          v9 = v35;
          if (v35)
          {
            v19 = v36;
            v11 = v35;
            if (v36 == v35)
            {
              goto LABEL_65;
            }

            do
            {
              v21 = *--v19;
              v20 = v21;
              *v19 = 0;
              if (v21)
              {
                operator delete[](v20);
              }
            }

            while (v19 != v9);
LABEL_64:
            v11 = v35;
            goto LABEL_65;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v29[0] = "'anec.concat' op attribute 'axis' failed to satisfy constraint: 64-bit unsigned integer attribute";
        v30 = 259;
        mlir::emitError(a2.var0.var0, v29, v32);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
        if (v32[0])
        {
          mlir::InFlightDiagnostic::report(v32);
        }

        if (v40 == 1)
        {
          if (v39 != &v40)
          {
            free(v39);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v38;
            v24 = __p;
            if (v38 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v38 = v22;
            operator delete(v24);
          }

          v9 = v35;
          if (v35)
          {
            v25 = v36;
            v11 = v35;
            if (v36 != v35)
            {
              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_64;
            }

LABEL_65:
            v36 = v9;
            operator delete(v11);
          }

          goto LABEL_66;
        }
      }

      return v5;
    }
  }

  v29[0] = "'anec.concat' op requires attribute 'axis'";
  v30 = 259;
  mlir::emitError(a2.var0.var0, v29, v32);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v38;
      v8 = __p;
      if (v38 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v38 = v6;
      operator delete(v8);
    }

    v9 = v35;
    if (v35)
    {
      v10 = v36;
      v11 = v35;
      if (v36 == v35)
      {
        goto LABEL_65;
      }

      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          operator delete[](v12);
        }
      }

      while (v10 != v9);
      goto LABEL_64;
    }

LABEL_66:
    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v5;
}

uint64_t mlir::anec::Concat::getZinIrUnitInfo@<X0>(mlir::Operation **this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33E18;
  *(v6 + 1) = 0;
  *(v6 + 20) = 2;
  v6[84] = 0;
  *(v6 + 8) = 3;
  v7 = *this;
  v20 = v7;
  mlir::anec::fillZinIrCommonInfo(v7, v6, 3, a2, 0, 0);
  v8 = (*(*(*(v7 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v19[0] = v8;
  v19[1] = v9;
  Axis = mlir::anec::Concat::getAxis(&v20);
  mlir::CallableOpInterface::getArgAttrsAttr(v19);
  DimFromIndex = mlir::anec::getDimFromIndex(Axis, v11);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v13 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v13 = 5;
  }

  *(v6 + 20) = v13;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v15 + 16 * v16), *(*(*(v7 + 6) + 96) + 8));
  if (result)
  {
    v18 = *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  }

  else
  {
    v18 = 0;
  }

  v6[84] = v18;
  *a3 = v6;
  return result;
}

void *mlir::anec::Concat::getAxis(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

BOOL mlir::anec::Concat::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  ANECConcatLayerDescInitialize();
  Axis = mlir::anec::Concat::getAxis(a1);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  InterleaveAttr = mlir::anec::Concat::getInterleaveAttr(a1);
  v10 = MEMORY[0x1E695E4D0];
  if (!InterleaveAttr)
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  v28 = *v10;
  v35[0] = v36;
  v35[1] = 0x100000000;
  v11 = 1;
  *buffer = 1;
  v29[0] = 0;
  ANECUnitValidatorCreate();
  v25 = 0;
  v26 = 0;
  if (ANECValidateConcatLayer())
  {
    v12 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, "Invalid configuration", 21);
    std::stringbuf::str();
    v29[0] = *MEMORY[0x1E69E54D8];
    v13 = *(MEMORY[0x1E69E54D8] + 72);
    *(v29 + *(v29[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v30 = v13;
    v31 = MEMORY[0x1E69E5548] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v34);
    LOWORD(v32[0].__locale_) = 260;
    v29[0] = &v23;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v14 = v42;
      if (v42)
      {
        v15 = v43;
        v16 = v42;
        if (v43 != v42)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = v42;
        }

        v43 = v14;
        operator delete(v16);
      }

      v17 = v40;
      if (v40)
      {
        v18 = v41;
        v19 = v40;
        if (v41 != v40)
        {
          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              operator delete[](v20);
            }
          }

          while (v18 != v17);
          v19 = v40;
        }

        v41 = v17;
        operator delete(v19);
      }

      if (v38 != &v39)
      {
        free(v38);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }
  }

  ANECUnitValidatorDelete();
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  return v11;
}

BOOL mlir::anec::Concat::addOpToNetwork(mlir::Operation **a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Concat::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::InstanceNorm::inferPromotedReturnTypes(mlir::Float16Type *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v12 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v20[0] = v12;
  v20[1] = v13;
  *&v21 = mlir::ElementsAttr::isSplat(v20);
  if (mlir::Type::isF16(&v21))
  {
    v15 = v20[0];
  }

  else
  {
    v16 = mlir::Float16Type::get(a1, v14);
    LOBYTE(v21) = 0;
    v22 = 0;
    v15 = mlir::ShapedType::cloneWith(v20, &v21, v16);
  }

  v17 = *(a11 + 8);
  if (v17 >= *(a11 + 12))
  {
    v19 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v17 + 1, 8);
    v15 = v19;
    v17 = *(a11 + 8);
  }

  *(*a11 + 8 * v17) = v15;
  ++*(a11 + 8);
  return 1;
}

void mlir::anec::InstanceNorm::getZinIrUnitInfo(mlir::anec::InstanceNorm *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v35[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x80uLL);
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 28) = 1065353216;
  *(v6 + 30) = 730643660;
  *v6 = &unk_1F5B33E38;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 25, a2, 0, 0);
  v7 = *this;
  v8 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *this;
  }

  else
  {
    v9 = 0;
  }

  v29[0] = v8;
  v29[1] = v9;
  v33 = v35;
  v34 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12 - 16), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v13, &v33);
  if (v34)
  {
    v14 = v33;
    v15 = 8 * v34;
    do
    {
      v17 = *v14;
      mlir::CallableOpInterface::getArgAttrsAttr(v29);
      DimFromIndex = mlir::anec::getDimFromIndex(v17, v18);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v16 = 5;
      }

      LODWORD(AttrDictionary) = v16;
      std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(v6 + 20, &AttrDictionary, &AttrDictionary);
      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v20 + 16), (v21 + 16 * v22), *(*(*(*this + 48) + 96) + 8));
  mlir::FloatAttr::getValue(&AttrDictionary, &v30);
  v27 = llvm::APFloat::convertToFloat(&AttrDictionary, v23, v24, v25);
  if (v27 < 0.00000011921)
  {
    v27 = 0.00000011921;
  }

  *(v6 + 30) = v27;
  v28 = v32[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v26) == v28)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v32);
  }

  *a3 = v6;
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t *mlir::anec::InstanceNorm::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t *a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 8));
  return mlir::FloatAttr::getValue(a2, &AttrDictionary);
}

BOOL mlir::anec::InstanceNorm::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  ANECInstanceNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v42[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9 - 16), **(*(*a1 + 6) + 96));
  v42[1] = mlir::DenseElementsAttr::getNumElements(v42);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::ArrayAttr::getValue(buffer);
  v44[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v10 + 16), (v11 + 16 * v12), *(*(*(*a1 + 6) + 96) + 8));
  mlir::FloatAttr::getValue(buffer, v44);
  v17 = llvm::APFloat::convertToFloat(buffer, v13, v14, v15);
  if (v17 < 0.00000011921)
  {
    v17 = 0.00000011921;
  }

  *&v43[10] = v17;
  v18 = v54;
  if (llvm::APFloatBase::PPCDoubleDouble(v16) == v18)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v54);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v54);
  }

  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v20 = v19;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v42[0], 0);
  v21 = v42[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v42);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v44, v21, NumElements);
  if (v55 != v45)
  {
    v34 = v43;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v50);
      v35 = v51;
      if (v51 >= 0x41)
      {
        if (v35 - llvm::APInt::countLeadingZerosSlowCase(&v50) <= 0x40)
        {
          v36 = *v50;
        }

        else
        {
          v36 = -1;
        }
      }

      else
      {
        v36 = v50;
      }

      if (v51 >= 0x41 && v50)
      {
        operator delete[](v50);
      }

      ++v55;
      ++v34;
    }

    while (v55 != v45);
  }

  v23 = 1;
  *buffer = 1;
  v44[0] = 0;
  ANECUnitValidatorCreate();
  v50 = v52;
  v51 = 0x100000000;
  v40 = 0;
  v41 = 0;
  if (ANECValidateInstanceNormLayer())
  {
    v24 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v44);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, "Invalid configuration", 21);
    std::stringbuf::str();
    v44[0] = *MEMORY[0x1E69E54D8];
    v25 = *(MEMORY[0x1E69E54D8] + 72);
    *(v44 + *(v44[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v45 = v25;
    v46 = MEMORY[0x1E69E5548] + 16;
    if (v48 < 0)
    {
      operator delete(v47[7].__locale_);
    }

    v46 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v47);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v49);
    LOWORD(v47[0].__locale_) = 260;
    v44[0] = &v38;
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v26 = v60;
      if (v60)
      {
        v27 = v61;
        v28 = v60;
        if (v61 != v60)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = v60;
        }

        v61 = v26;
        operator delete(v28);
      }

      v29 = v58;
      if (v58)
      {
        v30 = v59;
        v31 = v58;
        if (v59 != v58)
        {
          do
          {
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              operator delete[](v32);
            }
          }

          while (v30 != v29);
          v31 = v58;
        }

        v59 = v29;
        operator delete(v31);
      }

      if (v56 != &v57)
      {
        free(v56);
      }
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }
  }

  if (v50 != v52)
  {
    free(v50);
  }

  ANECUnitValidatorDelete();
  return v23;
}

BOOL mlir::anec::InstanceNorm::addOpToNetwork(mlir::anec::InstanceNorm *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::InstanceNorm::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

void mlir::anec::LayerNorm::getZinIrUnitInfo(mlir::anec::LayerNorm *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v35[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x88uLL);
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 6) = 0u;
  *(v6 + 28) = 1065353216;
  *(v6 + 30) = 730643660;
  *v6 = &unk_1F5B33EA8;
  *(v6 + 16) = 1;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 28, a2, 0, 0);
  v7 = *this;
  v8 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *this;
  }

  else
  {
    v9 = 0;
  }

  v29[0] = v8;
  v29[1] = v9;
  v33 = v35;
  v34 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12 - 16), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v13, &v33);
  if (v34)
  {
    v14 = v33;
    v15 = 8 * v34;
    do
    {
      v17 = *v14;
      mlir::CallableOpInterface::getArgAttrsAttr(v29);
      DimFromIndex = mlir::anec::getDimFromIndex(v17, v18);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v16 = 5;
      }

      LODWORD(AttrDictionary) = v16;
      std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(v6 + 20, &AttrDictionary, &AttrDictionary);
      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v20 + 16), (v21 + 16 * v22), *(*(*(*this + 48) + 96) + 8));
  mlir::FloatAttr::getValue(&AttrDictionary, &v30);
  v27 = llvm::APFloat::convertToFloat(&AttrDictionary, v23, v24, v25);
  if (v27 < 0.00000011921)
  {
    v27 = 0.00000011921;
  }

  *(v6 + 30) = v27;
  v28 = v32[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v26) == v28)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v32);
  }

  *a3 = v6;
  if (v33 != v35)
  {
    free(v33);
  }
}

BOOL mlir::anec::LayerNorm::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  ANECLayerNormLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v33[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9 - 16), **(*(*a1 + 6) + 96));
  v33[1] = mlir::DenseElementsAttr::getNumElements(v33);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v11 = v10;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v33[0], 0);
  v12 = v33[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v33);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v35, v12, NumElements);
  if (v45 != v36)
  {
    v25 = &v34;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v41);
      v26 = v42;
      if (v42 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v41) <= 0x40)
        {
          v27 = *v41;
        }

        else
        {
          v27 = -1;
        }
      }

      else
      {
        v27 = v41;
      }

      if (v42 >= 0x41 && v41)
      {
        operator delete[](v41);
      }

      ++v45;
      ++v25;
    }

    while (v45 != v36);
  }

  v14 = 1;
  *buffer = 1;
  v35[0] = 0;
  ANECUnitValidatorCreate();
  v41 = v43;
  v42 = 0x100000000;
  v31 = 0;
  v32 = 0;
  if (ANECValidateLayerNormLayer())
  {
    v15 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "Invalid configuration", 21);
    std::stringbuf::str();
    v35[0] = *MEMORY[0x1E69E54D8];
    v16 = *(MEMORY[0x1E69E54D8] + 72);
    *(v35 + *(v35[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v36 = v16;
    v37 = MEMORY[0x1E69E5548] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v40);
    LOWORD(v38[0].__locale_) = 260;
    v35[0] = &v29;
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v17 = v50;
      if (v50)
      {
        v18 = v51;
        v19 = v50;
        if (v51 != v50)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v50;
        }

        v51 = v17;
        operator delete(v19);
      }

      v20 = v48;
      if (v48)
      {
        v21 = v49;
        v22 = v48;
        if (v49 != v48)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

      if (v46 != &v47)
      {
        free(v46);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }
  }

  if (v41 != v43)
  {
    free(v41);
  }

  ANECUnitValidatorDelete();
  return v14;
}

BOOL mlir::anec::LayerNorm::addOpToNetwork(mlir::anec::LayerNorm *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::LayerNorm::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::verifyANECBatchNormOp(uint64_t a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v55[0] = v4;
  v55[1] = v5;
  v56[0] = mlir::ElementsAttr::isSplat(v55);
  if (mlir::Type::isF16(v56))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v55);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
    if (v9)
    {
      v10 = *(mlir::CallableOpInterface::getArgAttrsAttr(v55) + 8 * IndexFromDim);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v11 = *(a1 + 68);
        v12 = v11 - 1;
        if (v11 == 1)
        {
          return 1;
        }

        v13 = *(a1 + 72) + 32;
      }

      else
      {
        v12 = -1;
        v13 = 32;
      }

      for (i = (v13 + 24); ; i += 4)
      {
        v15 = *i;
        mlir::CallableOpInterface::getArgAttrsAttr(v55);
        v17 = mlir::anec::getIndexFromDim(1, v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v17;
        v20 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v20)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        else
        {
          v21 = 0;
        }

        v52[0] = v20;
        v52[1] = v21;
        if (*(mlir::CallableOpInterface::getArgAttrsAttr(v52) + 8 * v19) != v10)
        {
          v53[0] = "failed: the parameters of batch norm must equal to the channel size\n";
          v54 = 259;
          mlir::Operation::emitOpError(a1, v53, v56);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
          if (v56[0])
          {
            mlir::InFlightDiagnostic::report(v56);
          }

          if (v64)
          {
            if (v63 != &v64)
            {
              free(v63);
            }

            v44 = __p;
            if (__p)
            {
              v45 = v62;
              v46 = __p;
              if (v62 != __p)
              {
                do
                {
                  v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                }

                while (v45 != v44);
                v46 = __p;
              }

              v62 = v44;
              operator delete(v46);
            }

            v47 = v59;
            if (v59)
            {
              v48 = v60;
              v49 = v59;
              if (v60 != v59)
              {
                do
                {
                  v51 = *--v48;
                  v50 = v51;
                  *v48 = 0;
                  if (v51)
                  {
                    operator delete[](v50);
                  }
                }

                while (v48 != v47);
                v49 = v59;
              }

              v60 = v47;
              operator delete(v49);
            }

            v42 = v57;
            if (v57 != v58)
            {
              goto LABEL_73;
            }
          }

          return v6;
        }

        if (!--v12)
        {
          return 1;
        }
      }

      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, v56);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v62;
        v38 = __p;
        if (v62 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v62 = v36;
        operator delete(v38);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v39 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          operator delete[](v40);
        }
      }

      while (v39 != v25);
    }

    else
    {
      v53[0] = "failed: can not find channel axis of batch norm op\n";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, v56);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v62;
        v32 = __p;
        if (v62 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v62 = v30;
        operator delete(v32);
      }

      v25 = v59;
      if (!v59)
      {
        goto LABEL_72;
      }

      v33 = v60;
      v27 = v59;
      if (v60 == v59)
      {
        goto LABEL_71;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          operator delete[](v34);
        }
      }

      while (v33 != v25);
    }

    goto LABEL_70;
  }

  v53[0] = "failed: the output type of batch normalization must be FP16 \n";
  v54 = 259;
  mlir::Operation::emitOpError(a1, v53, v56);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 != 1)
  {
    return v6;
  }

  if (v63 != &v64)
  {
    free(v63);
  }

  v22 = __p;
  if (__p)
  {
    v23 = v62;
    v24 = __p;
    if (v62 != __p)
    {
      do
      {
        v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
      }

      while (v23 != v22);
      v24 = __p;
    }

    v62 = v22;
    operator delete(v24);
  }

  v25 = v59;
  if (v59)
  {
    v26 = v60;
    v27 = v59;
    if (v60 == v59)
    {
      goto LABEL_71;
    }

    do
    {
      v29 = *--v26;
      v28 = v29;
      *v26 = 0;
      if (v29)
      {
        operator delete[](v28);
      }
    }

    while (v26 != v25);
LABEL_70:
    v27 = v59;
LABEL_71:
    v60 = v25;
    operator delete(v27);
  }

LABEL_72:
  v42 = v57;
  if (v57 != v58)
  {
LABEL_73:
    free(v42);
  }

  return v6;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::Operation **a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v46 = *a1;
  v47 = a2;
  if (a2)
  {
    v7 = operator new(0xE8uLL);
    *(v7 + 1) = 0;
    *(v7 + 8) = 0;
    *(v7 + 1) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 9) = -1;
    *v7 = &unk_1F5B33EE0;
    v7[80] = 0;
    *(v7 + 84) = -1;
    *(v7 + 12) = -1;
    v7[112] = 0;
    *(v7 + 26) = 0;
    *(v7 + 116) = -1;
    *(v7 + 16) = -1;
    v7[152] = 0;
    *(v7 + 34) = 0;
    v7[184] = 0;
    v7[192] = 0;
    v7[224] = 0;
    mlir::anec::fillZinIrCommonInfo(v4, v7, 63, a2, 1uLL, 1u);
    v45[0] = &v47;
    v45[1] = a3;
    v45[2] = &v46;
    if ((v7[184] & 1) == 0)
    {
      v7[184] = 1;
    }

    v7[152] = 0;
    *(v7 + 156) = -1;
    *(v7 + 21) = -1;
    *(v7 + 44) = 0;
    if ((v7[224] & 1) == 0)
    {
      v7[224] = 1;
    }

    v7[192] = 0;
    *(v7 + 196) = -1;
    *(v7 + 26) = -1;
    *(v7 + 54) = 0;
    if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v45, *(*(*a1 + 9) + 56), (v7 + 80)) & 1) != 0 && (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v45, *(*(*a1 + 9) + 88), (v7 + 112)))
    {
      if ((v7[184] & 1) == 0)
      {
        goto LABEL_65;
      }

      if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v45, *(*(*a1 + 9) + 120), (v7 + 152)))
      {
        if (v7[224])
        {
          if (mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v45, *(*(*a1 + 9) + 152), (v7 + 192)))
          {
            AttrDictionary = mlir::Operation::getAttrDictionary(v46);
            Value = mlir::ArrayAttr::getValue(&AttrDictionary);
            AttrDictionary = mlir::Operation::getAttrDictionary(v46);
            v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
            v43[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(v46 + 6) + 96));
            mlir::FloatAttr::getValue(&AttrDictionary, v43);
            *(v7 + 36) = llvm::APFloat::convertToFloat(&AttrDictionary, v11, v12, v13);
            v14 = v49[0];
            if (llvm::APFloatBase::PPCDoubleDouble(v15) == v14)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v49);
            }

            v34 = v47;
            v35 = operator new(0xC8uLL);
            v36 = v35;
            *(v35 + 1) = 0;
            *(v35 + 2) = 0;
            *v35 = &unk_1F5B2E830;
            v37 = v35 + 24;
            *(v35 + 3) = &unk_1F5B2E868;
            if (v7[31] < 0)
            {
              std::string::__init_copy_ctor_external((v35 + 32), *(v7 + 1), *(v7 + 2));
            }

            else
            {
              *(v35 + 2) = *(v7 + 8);
              *(v35 + 6) = *(v7 + 3);
            }

            *(v36 + 14) = 17;
            *(v36 + 3) = &unk_1F5B34308;
            *(v36 + 8) = v7;
            v36[72] = 0;
            *(v36 + 10) = 0;
            *(v36 + 11) = v36 + 104;
            *(v36 + 12) = 0x100000000;
            *(v36 + 17) = v36 + 152;
            *(v36 + 18) = 0x300000000;
            *&v42 = v37;
            *(&v42 + 1) = v36;
            mlir::anec::ANECIRNetwork::AddUnit(v34, &v42);
            v38 = *(&v42 + 1);
            if (*(&v42 + 1))
            {
              if (!atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v38->__on_zero_shared)(v38);
                std::__shared_weak_count::__release_weak(v38);
              }
            }

            return 1;
          }

          goto LABEL_14;
        }

LABEL_65:
        std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(v39, v40, v41);
      }
    }

LABEL_14:
    v43[0] = "failed: can not serialize the mean/variance/gamma/beta for batch norm \n";
    v44 = 259;
    mlir::Operation::emitOpError(v46, v43, &AttrDictionary);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v56;
        v19 = __p;
        if (v56 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v56 = v17;
        operator delete(v19);
      }

      v20 = v53;
      if (v53)
      {
        v21 = v54;
        v22 = v53;
        if (v54 != v53)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v21 != v20);
          v22 = v53;
        }

        v54 = v20;
        operator delete(v22);
      }

      if (v50 != &v52)
      {
        free(v50);
      }
    }

    (*(*v7 + 8))(v7);
    return v16;
  }

  AttrDictionary = "network should not be nullptr";
  v51 = 259;
  mlir::OpState::emitError(a1, &AttrDictionary, v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v25 = v64;
    if (v64)
    {
      v26 = v65;
      v27 = v64;
      if (v65 != v64)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = v64;
      }

      v65 = v25;
      operator delete(v27);
    }

    v28 = v62;
    if (v62)
    {
      v29 = v63;
      v30 = v62;
      if (v63 != v62)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            operator delete[](v31);
          }
        }

        while (v29 != v28);
        v30 = v62;
      }

      v63 = v28;
      operator delete(v30);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return 0;
}

uint64_t mlir::anec::BatchNorm::addOpToNetwork(mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  {
    return 0;
  }

  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
  v18[0] = v5;
  v18[1] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(v18);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v20;
  *(a3 + 4) = v21;
  *(a3 + 16) = v10;
  *(a3 + 8) = *(mlir::CallableOpInterface::getArgAttrsAttr(v18) + 8 * IndexFromDim);
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v22[0] = v11;
  v22[1] = v12;
  isSplat = mlir::ElementsAttr::isSplat(v22);
  v15 = *(*isSplat + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v16 = 4;
    }

    else if (v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_24;
  }

  v23 = isSplat;
  Width = mlir::IntegerType::getWidth(&v23);
  if (Width != 16)
  {
    if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(&v23) == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (mlir::IntegerType::getSignedness(&v23) != 1)
  {
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 3;
LABEL_24:
  *(a3 + 24) = v16;
  return 1;
}

uint64_t mlir::anec::CropResize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x1E69E9840];
  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = a7;
  v64 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "anec.crop_resize", 16, Context);
    v62 = 1;
    a1 = v15;
  }

  v65 = a4;
  v66 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::CropResizeAdaptor::verify(&v60, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v54[0] = v20;
  v54[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v24 = (v22 + 8 * v23);
  v57 = v59;
  v58 = 0x500000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 < 6)
  {
    v26 = 0;
    if (v24 == ArgAttrsAttr)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v25, 8);
  v26 = v58;
  if (v24 != ArgAttrsAttr)
  {
LABEL_16:
    memcpy(v57 + 8 * v26, ArgAttrsAttr, v24 - ArgAttrsAttr);
    v26 = v58;
  }

LABEL_17:
  LODWORD(v58) = v26 + ((v24 - ArgAttrsAttr) >> 3);
  v55[0] = v56;
  v55[1] = 0x200000000;
  Value = mlir::AffineMapAttr::getValue(&v60);
  v29 = mlir::DictionaryAttr::end(&v60);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v29 - 48), *(*(v61 + 96) + 40));
  mlir::getValues<long long>(v30, v55);
  mlir::CallableOpInterface::getArgAttrsAttr(v54);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v31);
  if ((v33 & 1) == 0 || (v34 = IndexFromDim, mlir::CallableOpInterface::getArgAttrsAttr(v54), v36 = mlir::anec::getIndexFromDim(4, v35), (v37 & 1) == 0) || (v38 = v55[0], v39 = v57, *(v57 + v34) = *v55[0], v39[v36] = v38[1], mlir::CallableOpInterface::getArgAttrsAttr(v54), v41 = mlir::anec::getIndexFromDim(0, v40), (v42 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v43 = v41;
  v44 = mlir::TypeRange::dereference_iterator(a9, 1);
  v45 = v44;
  if (v44)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
  }

  v53[0] = v45;
  v53[1] = v44;
  v46 = mlir::CallableOpInterface::getArgAttrsAttr(v53);
  v47 = v57;
  *(v57 + v43) = *(v46 + 8 * v43);
  v48 = v58;
  isSplat = mlir::ElementsAttr::isSplat(v54);
  v50 = mlir::MemRefType::get(v47, v48, isSplat, 0, 0, 0);
  v51 = *(a11 + 8);
  if (v51 >= *(a11 + 12))
  {
    v52 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v51 + 1, 8);
    v50 = v52;
    LODWORD(v51) = *(a11 + 8);
  }

  *(*a11 + 8 * v51) = v50;
  ++*(a11 + 8);
  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  return 1;
}

uint64_t mlir::anec::CropResizeAdaptor::verify(mlir::anec::CropResizeAdaptor *this, Location a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v85); i != mlir::DictionaryAttr::end(&v85); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v85))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v85))
            {
              v82 = "'anec.crop_resize' op requires attribute 'coordinate_mode'";
              v84 = 259;
              mlir::emitError(a2.var0.var0, &v82, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v98 != 1)
              {
                return v5;
              }

              if (v97 != &v98)
              {
                free(v97);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v96;
                v24 = __p;
                if (v96 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v96 = v22;
                operator delete(v24);
              }

              v9 = v93;
              if (!v93)
              {
                goto LABEL_85;
              }

              v25 = v94;
              v11 = v93;
              if (v94 == v93)
              {
                goto LABEL_84;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_83;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v85))
          {
            v29 = 0;
            while (mlir::CallGraphNode::getCallableRegion(i) != *(*(*(this + 1) + 96) + 32))
            {
              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
              {
                v29 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                goto LABEL_67;
              }
            }

            v37 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v82 = "'anec.crop_resize' op requires attribute 'output_dims'";
                v84 = 259;
                mlir::emitError(a2.var0.var0, &v82, &Value);
                v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                if (Value)
                {
                  mlir::InFlightDiagnostic::report(&Value);
                }

                if (v98 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v90);
                }

                return v5;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 40))
              {
                break;
              }

              i = (i + 16);
            }

            v38 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'padding_modes'";
                goto LABEL_170;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 48))
              {
                break;
              }

              i = (i + 16);
            }

            v40 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_method'";
                goto LABEL_170;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 56))
              {
                break;
              }

              i = (i + 16);
            }

            v79 = *(i + 1);
            while (1)
            {
              if (i == mlir::DictionaryAttr::end(&v85))
              {
                v39 = "'anec.crop_resize' op requires attribute 'sampling_mode'";
                goto LABEL_170;
              }

              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 64))
              {
                break;
              }

              i = (i + 16);
            }

            v41 = *(i + 1);
            if (!v38)
            {
              goto LABEL_173;
            }

            if (!mlir::DenseIntElementsAttr::classof(v38))
            {
              goto LABEL_161;
            }

            v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v38 + 8);
            v82 = v38;
            v83 = v42;
            Type = mlir::ElementsAttr::getType(&v82);
            v44 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            Value = v44;
            v90 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            v88 = 2;
            if (v46 == 1 && *ArgAttrsAttr == v88 && (v80 = v38, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v47, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
LABEL_173:
              if (!v29)
              {
                goto LABEL_126;
              }

              if (!mlir::DenseIntElementsAttr::classof(v29))
              {
                goto LABEL_162;
              }

              v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
              v82 = v29;
              v83 = v48;
              v49 = mlir::ElementsAttr::getType(&v82);
              v50 = v49;
              if (v49)
              {
                v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
              }

              Value = v50;
              v90 = v49;
              v51 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v88 = 2;
              if (v52 == 1 && *v51 == v88 && (v80 = v29, v86 = mlir::ArrayAttr::getValue(&v80), v87 = v53, isSplat = mlir::ElementsAttr::isSplat(&v86), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_126:
                if (v21 && (mlir::anec::BoxCoordinateModeAttr::classof(v21) & 1) == 0)
                {
                  v39 = "'anec.crop_resize' op attribute 'box_coordinate_mode' failed to satisfy constraint: valid BoxCoordinateMode";
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_174;
                  }

                  v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                  v82 = v28;
                  v83 = v54;
                  v55 = mlir::ElementsAttr::getType(&v82);
                  v56 = v55;
                  if (v55)
                  {
                    v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
                  }

                  Value = v56;
                  v90 = v55;
                  v57 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                  v86 = 5;
                  if (v58 == 1 && *v57 == v86 && (v88 = v28, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_0>(&v88) & 1) != 0))
                  {
LABEL_174:
                    if (!v37)
                    {
                      goto LABEL_175;
                    }

                    v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                    v82 = v37;
                    v83 = v59;
                    v60 = mlir::ElementsAttr::getType(&v82);
                    v61 = v60;
                    if (v60)
                    {
                      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                    }

                    Value = v61;
                    v90 = v60;
                    v62 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    v86 = 5;
                    if (v63 == 1 && *v62 == v86 && (v88 = v37, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                    {
LABEL_175:
                      if (!v41)
                      {
                        goto LABEL_176;
                      }

                      v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v41 + 8);
                      v82 = v41;
                      v83 = v64;
                      v65 = mlir::ElementsAttr::getType(&v82);
                      v66 = v65;
                      if (v65)
                      {
                        v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
                      }

                      Value = v66;
                      v90 = v65;
                      v67 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v86 = 5;
                      if (v68 == 1 && *v67 == v86 && (v88 = v41, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v88) & 1) != 0))
                      {
LABEL_176:
                        if (!v79)
                        {
                          goto LABEL_177;
                        }

                        v69 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v79 + 8);
                        v82 = v79;
                        v83 = v69;
                        v70 = mlir::ElementsAttr::getType(&v82);
                        v71 = v70;
                        if (v70)
                        {
                          v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
                        }

                        Value = v71;
                        v90 = v70;
                        v72 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                        v86 = 5;
                        if (v73 == 1 && *v72 == v86 && (v88 = v79, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v88) & 1) != 0))
                        {
LABEL_177:
                          if (!v40)
                          {
                            goto LABEL_178;
                          }

                          v74 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v40 + 8);
                          v82 = v40;
                          v83 = v74;
                          v75 = mlir::ElementsAttr::getType(&v82);
                          v76 = v75;
                          if (v75)
                          {
                            v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
                          }

                          Value = v76;
                          v90 = v75;
                          v77 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                          v86 = 5;
                          if (v78 == 1 && *v77 == v86 && (v88 = v40, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_4>(&v88) & 1) != 0))
                          {
LABEL_178:
                            if (!v14)
                            {
                              return 1;
                            }

                            if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
                            {
                              v82 = v14;
                              Value = mlir::AffineMapAttr::getValue(&v82);
                              if (mlir::Type::isF16(&Value))
                              {
                                return 1;
                              }
                            }

                            v39 = "'anec.crop_resize' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
                          }

                          else
                          {
                            v39 = "'anec.crop_resize' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
                          }
                        }

                        else
                        {
                          v39 = "'anec.crop_resize' op attribute 'sampling_method' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {5}";
                        }
                      }

                      else
                      {
                        v39 = "'anec.crop_resize' op attribute 'sampling_mode' failed to satisfy constraint: SamplingGridMode elements attribute of shape {5}";
                      }
                    }

                    else
                    {
                      v39 = "'anec.crop_resize' op attribute 'normalized_range' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {5}";
                    }
                  }

                  else
                  {
                    v39 = "'anec.crop_resize' op attribute 'coordinate_mode' failed to satisfy constraint: CoordinateMode elements attribute of shape {5}";
                  }
                }
              }

              else
              {
LABEL_162:
                v39 = "'anec.crop_resize' op attribute 'crop_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
              }
            }

            else
            {
LABEL_161:
              v39 = "'anec.crop_resize' op attribute 'output_dims' failed to satisfy constraint: ui64 elements attribute of shape {2}";
            }

LABEL_170:
            v82 = v39;
            v84 = 259;
            mlir::emitError(a2.var0.var0, &v82, &Value);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            return v5;
          }

LABEL_67:
          v82 = "'anec.crop_resize' op requires attribute 'normalized_range'";
          v84 = 259;
          mlir::emitError(a2.var0.var0, &v82, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v98 != 1)
          {
            return v5;
          }

          if (v97 != &v98)
          {
            free(v97);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v96;
            v32 = __p;
            if (v96 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v96 = v30;
            operator delete(v32);
          }

          v9 = v93;
          if (!v93)
          {
            goto LABEL_85;
          }

          v33 = v94;
          v11 = v93;
          if (v94 == v93)
          {
            goto LABEL_84;
          }

          do
          {
            v35 = *--v33;
            v34 = v35;
            *v33 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v33 != v9);
          goto LABEL_83;
        }

        i = (i + 16);
      }

      v82 = "'anec.crop_resize' op requires attribute 'box_coordinate_mode'";
      v84 = 259;
      mlir::emitError(a2.var0.var0, &v82, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v98 != 1)
      {
        return v5;
      }

      if (v97 != &v98)
      {
        free(v97);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v96;
        v17 = __p;
        if (v96 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v96 = v15;
        operator delete(v17);
      }

      v9 = v93;
      if (!v93)
      {
        goto LABEL_85;
      }

      v18 = v94;
      v11 = v93;
      if (v94 == v93)
      {
        goto LABEL_84;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_83:
      v11 = v93;
      goto LABEL_84;
    }
  }

  v82 = "'anec.crop_resize' op requires attribute 'background_value'";
  v84 = 259;
  mlir::emitError(a2.var0.var0, &v82, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v96;
      v8 = __p;
      if (v96 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v96 = v6;
      operator delete(v8);
    }

    v9 = v93;
    if (v93)
    {
      v10 = v94;
      v11 = v93;
      if (v94 != v93)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_83;
      }

LABEL_84:
      v94 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v91 != &v92)
    {
      free(v91);
    }
  }

  return v5;
}

void mlir::anec::CropResize::getZinIrUnitInfo(mlir::anec::CropResize *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = operator new(0xC8uLL);
  v5[8] = 0u;
  v5[9] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  *(v5 + 9) = -1;
  *(v5 + 138) = 0u;
  *v5 = &unk_1F5B33F00;
  *(v5 + 20) = 0;
  *(v5 + 39) = 5;
  *(v5 + 21) = 0;
  *(v5 + 22) = 0;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  *(v5 + 184) = v6;
  mlir::anec::fillZinIrCommonInfo(*this, v5, 46, a2, 0, 0);
  v85[0] = v86;
  v85[1] = 0x500000000;
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&v87);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v8 + 16 * v9 - 80), *(*(*(*this + 48) + 96) + 16));
  mlir::getValues<unsigned long>(v10, v85);
  v83[0] = v84;
  v83[1] = 0x500000000;
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(&v87);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 48), (v12 + 16 * v13 - 64), *(*(*(*this + 48) + 96) + 32));
  mlir::getValues<unsigned long>(v14, v83);
  v81[0] = v82;
  v81[1] = 0x500000000;
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v15 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v16 = mlir::ArrayAttr::getValue(&v87);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v15 + 80), (v16 + 16 * v17 - 32), *(*(*(*this + 48) + 96) + 48));
  mlir::getValues<unsigned long>(v18, v81);
  v79[0] = v80;
  v79[1] = 0x500000000;
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v19 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(&v87);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 96), (v20 + 16 * v21 - 16), *(*(*(*this + 48) + 96) + 56));
  mlir::getValues<unsigned long>(v22, v79);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v23 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&v87);
  __p = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v23, (v24 + 16 * v25 - 112), **(*(*this + 48) + 96));
  v26 = mlir::FloatAttr::getValue(&v87, &__p);
  v27 = *(&v87 + 1);
  v29 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v29 == v27)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, (&v87 + 8), v28);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, (&v87 + 8));
  }

  v30 = v77;
  if (v77 < 0x41)
  {
    if (__p >= 0xFFFF)
    {
      LOWORD(v31) = -1;
    }

    else
    {
      LOWORD(v31) = __p;
    }

    goto LABEL_15;
  }

  if (v30 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    if (*__p >= 0xFFFFuLL)
    {
      LOWORD(v31) = -1;
    }

    else
    {
      v31 = *__p;
    }

    goto LABEL_14;
  }

  LOWORD(v31) = -1;
  if (__p)
  {
LABEL_14:
    operator delete[](__p);
  }

LABEL_15:
  if (v29 == *(&v87 + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v87 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v87 + 8));
  }

  v32 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  *&v87 = v32;
  *(&v87 + 1) = v33;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v35 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v36 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v35 + 16), (v36 + 16 * v37 - 96), *(*(*(*this + 48) + 96) + 8));
  *(v5 + 39) = mlir::IntegerAttr::getInt(&v87);
  v38 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v38)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  *&v87 = v38;
  *(&v87 + 1) = v39;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  v41 = v40;
  __p = v78;
  v77 = 0x500000000;
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v42 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v43 = mlir::ArrayAttr::getValue(&v87);
  v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v42 + 112), (v43 + 16 * v44), *(*(*(*this + 48) + 96) + 64));
  mlir::getValues<unsigned long>(v45, &__p);
  if (v41)
  {
    for (i = 0; i != v41; i = (i + 1))
    {
      DimFromIndex = mlir::anec::getDimFromIndex(i, v41);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v47 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v47 = 5;
      }

      *&v87 = v47;
      DWORD1(v87) = *(__p + i);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v5 + 10), &v87);
    }
  }

  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v49 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v50 = mlir::ArrayAttr::getValue(&v87);
  CropDimsAttr = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v49 + 64), (v50 + 16 * v51 - 48), *(*(*(*this + 48) + 96) + 40));
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v87);
  v74 = v87;
  *&v75 = v88 + 1;
  *(&v75 + 1) = *(&v88 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v74, &v87);
  v52 = DWORD2(v87);
  if (DWORD2(v87) >= 0x41)
  {
    v53 = v52 - llvm::APInt::countLeadingZerosSlowCase(&v87);
    v54 = v87;
    if (v53 <= 0x40)
    {
      v55 = *v87;
      if (*v87 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v55) = 0x7FFFFFFF;
      }

      *(v5 + 46) = v55;
    }

    else
    {
      *(v5 + 46) = 0x7FFFFFFF;
      if (!v54)
      {
        goto LABEL_41;
      }
    }

    operator delete[](v54);
    goto LABEL_41;
  }

  if (v87 >> 31)
  {
    *(v5 + 46) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 46) = v87;
  }

LABEL_41:
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v56 = mlir::ArrayAttr::getValue(&v87);
  *&v87 = mlir::Operation::getAttrDictionary(*this);
  v57 = mlir::ArrayAttr::getValue(&v87);
  CropDimsAttr = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v56 + 64), (v57 + 16 * v58 - 48), *(*(*(*this + 48) + 96) + 40));
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v87);
  v74 = v87;
  v75 = v88;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v74, &v87);
  v59 = DWORD2(v87);
  if (DWORD2(v87) >= 0x41)
  {
    v60 = v59 - llvm::APInt::countLeadingZerosSlowCase(&v87);
    v61 = v87;
    if (v60 <= 0x40)
    {
      v62 = *v87;
      if (*v87 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v62) = 0x7FFFFFFF;
      }

      *(v5 + 47) = v62;
    }

    else
    {
      *(v5 + 47) = 0x7FFFFFFF;
      if (!v61)
      {
        goto LABEL_52;
      }
    }

    operator delete[](v61);
    goto LABEL_52;
  }

  if (v87 >> 31)
  {
    *(v5 + 47) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 47) = v87;
  }

LABEL_52:
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(this);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v87);
  v74 = v87;
  *&v75 = v88 + 1;
  *(&v75 + 1) = *(&v88 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v74, &v87);
  v63 = DWORD2(v87);
  if (DWORD2(v87) >= 0x41)
  {
    v64 = v63 - llvm::APInt::countLeadingZerosSlowCase(&v87);
    v65 = v87;
    if (v64 <= 0x40)
    {
      v66 = *v87;
      if (*v87 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v66) = 0x7FFFFFFF;
      }

      *(v5 + 48) = v66;
    }

    else
    {
      *(v5 + 48) = 0x7FFFFFFF;
      if (!v65)
      {
        goto LABEL_63;
      }
    }

    operator delete[](v65);
    goto LABEL_63;
  }

  if (v87 >> 31)
  {
    *(v5 + 48) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 48) = v87;
  }

LABEL_63:
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(this);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&CropDimsAttr, &v87);
  v74 = v87;
  v75 = v88;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v74, &v87);
  v67 = DWORD2(v87);
  if (DWORD2(v87) >= 0x41)
  {
    v69 = v67 - llvm::APInt::countLeadingZerosSlowCase(&v87);
    v70 = v87;
    if (v69 <= 0x40)
    {
      v71 = *v87;
      if (*v87 >= 0x7FFFFFFFuLL)
      {
        LODWORD(v71) = 0x7FFFFFFF;
      }

      *(v5 + 49) = v71;
      v68 = a3;
    }

    else
    {
      *(v5 + 49) = 0x7FFFFFFF;
      v68 = a3;
      if (!v70)
      {
        goto LABEL_74;
      }
    }

    operator delete[](v70);
    goto LABEL_74;
  }

  v68 = a3;
  if (v87 >> 31)
  {
    *(v5 + 49) = 0x7FFFFFFF;
  }

  else
  {
    *(v5 + 49) = v87;
  }

LABEL_74:
  *v68 = v5;
  if (__p != v78)
  {
    free(__p);
  }

  if (v79[0] != v80)
  {
    free(v79[0]);
  }

  if (v81[0] != v82)
  {
    free(v81[0]);
  }

  if (v83[0] != v84)
  {
    free(v83[0]);
  }

  if (v85[0] != v86)
  {
    free(v85[0]);
  }
}

uint64_t mlir::anec::CropResize::getCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::CropResize::getNormalizedRange(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 64), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::CropResize::getPaddingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 80), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 48));
}

uint64_t mlir::anec::CropResize::getSamplingMethod(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 96), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 56));
}

uint64_t *mlir::anec::CropResize::getBackgroundValue@<X0>(mlir::Operation **this@<X0>, uint64_t *a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 112), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(a2, &AttrDictionary);
}

void mlir::anec::anonymous namespace::fillZinIrTextureInfo(uint64_t a1, void *a2, void *a3, void *a4, void *a5, __int16 a6, unsigned int a7)
{
  if (a7)
  {
    v12 = 0;
    v13 = a7;
    do
    {
      DimFromIndex = mlir::anec::getDimFromIndex(v12, v13);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v14 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v14 = 5;
      }

      v21 = 0;
      v20 = v14;
      v15 = dword_1E0999A18[*(*a2 + 8 * v12)];
      LODWORD(v21) = *(*a3 + 8 * v12) != 0;
      HIDWORD(v21) = v15;
      std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](a1 + 80, &v20);
      v19 = 0;
      v19 = __PAIR64__(dword_1E0999A24[*(*a4 + 8 * v12)], v14);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 104, &v19);
      v18 = 0;
      v18 = __PAIR64__(*(*a5 + 8 * v12) != 0, v14);
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 128, &v18);
      v12 = (v12 + 1);
    }

    while (v13 != v12);
  }

  *(a1 + 152) = a6;
}

uint64_t mlir::anec::CropResize::getBoxCoordinateMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 96), *(*(*(*this + 6) + 96) + 8));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::CropResize::getSamplingMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 64));
}

uint64_t mlir::anec::CropResize::getOutputDims(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 40));
}

BOOL mlir::anec::CropResize::addOpToNetwork(mlir::anec::CropResize *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::CropResize::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::CropResize::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v135 = *MEMORY[0x1E69E9840];
  ANECCropResizeLayerDescInitialize();
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v8 = v7;
  IndexFromDim = mlir::anec::getIndexFromDim(3, v7);
  if ((v10 & 1) == 0 || (v11 = IndexFromDim, v12 = mlir::anec::getIndexFromDim(4, v8), (v13 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v122 = v124;
  v124[0] = v11;
  v124[1] = v12;
  v123 = 0x200000002;
  v118 = &ANECDimension;
  v121 = 0;
  ANECDimension = 0;
  v119 = 0x200000002;
  v116[0] = v117;
  v116[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v15 = mlir::ArrayAttr::getValue(buffer);
  v17 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 112), (v15 + 16 * v16), *(*(*(*a1 + 6) + 96) + 64));
  mlir::getValues<unsigned long>(v17, v116);
  v114[0] = v115;
  v114[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::ArrayAttr::getValue(buffer);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v18 + 96), (v19 + 16 * v20 - 16), *(*(*(*a1 + 6) + 96) + 56));
  mlir::getValues<unsigned long>(v21, v114);
  v112[0] = v113;
  v112[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v23 = mlir::ArrayAttr::getValue(buffer);
  v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v22 + 80), (v23 + 16 * v24 - 32), *(*(*(*a1 + 6) + 96) + 48));
  mlir::getValues<unsigned long>(v25, v112);
  v110[0] = v111;
  v110[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v26 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v27 = mlir::ArrayAttr::getValue(buffer);
  v29 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v26 + 32), (v27 + 16 * v28 - 80), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v29, v110);
  v108[0] = v109;
  v108[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v30 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v31 = mlir::ArrayAttr::getValue(buffer);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v30 + 48), (v31 + 16 * v32 - 64), *(*(*(*a1 + 6) + 96) + 32));
  mlir::getValues<unsigned long>(v33, v108);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v34 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v35 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v34 + 16), (v35 + 16 * v36 - 96), *(*(*(*a1 + 6) + 96) + 8));
  v72 = *(&off_1E86D38D0 + mlir::IntegerAttr::getInt(buffer));
  v73 = *v118;
  v37 = *v122;
  v74 = *(&off_1E86D3950 + *(v116[0] + *v122));
  v77 = *v118;
  if (*(v114[0] + v37))
  {
    v38 = @"NearestNeighbor";
  }

  else
  {
    v38 = @"Linear";
  }

  v78 = v38;
  v81 = *v118;
  v82 = *(&off_1E86D3980 + *(v112[0] + v37));
  v85 = *v118;
  v87 = *(&off_1E86D39C0 + *(v110[0] + v37));
  if (*(v108[0] + v37))
  {
    v39 = @"RangeMinusOneToOne";
  }

  else
  {
    v39 = @"RangeZeroToOne";
  }

  v86 = v39;
  v75 = *(v118 + 1);
  v40 = *(v122 + 1);
  v76 = *(&off_1E86D3950 + *(v116[0] + v40));
  v79 = *(v118 + 1);
  if (*(v114[0] + v40))
  {
    v41 = @"NearestNeighbor";
  }

  else
  {
    v41 = @"Linear";
  }

  v80 = v41;
  v83 = *(v118 + 1);
  v84 = *(&off_1E86D3980 + *(v112[0] + v40));
  v88 = *(v118 + 1);
  v90 = *(&off_1E86D39C0 + *(v110[0] + v40));
  if (*(v108[0] + v40))
  {
    v42 = @"RangeMinusOneToOne";
  }

  else
  {
    v42 = @"RangeZeroToOne";
  }

  v89 = v42;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v43 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v44 = mlir::ArrayAttr::getValue(buffer);
  v96[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v43, (v44 + 16 * v45 - 112), **(*(*a1 + 6) + 96));
  mlir::FloatAttr::getValue(buffer, v96);
  v91 = llvm::APFloat::convertToFloat(buffer, v46, v47, v48);
  v49 = v126[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v50) == v49)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v126);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v126);
  }

  v106[0] = v107;
  v106[1] = 0xC00000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v51 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v52 = mlir::ArrayAttr::getValue(buffer);
  v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v51 + 64), (v52 + 16 * v53 - 48), *(*(*(*a1 + 6) + 96) + 40));
  mlir::getValues<unsigned int>(v54, v106);
  v93 = *v106[0];
  v92 = *(v106[0] + 1);
  v104[0] = v105;
  v104[1] = 0xC00000000;
  CropDimsAttr = mlir::anec::CropResize::getCropDimsAttr(a1);
  mlir::getValues<unsigned int>(CropDimsAttr, v104);
  v95 = *v104[0];
  v94 = *(v104[0] + 1);
  v102[0] = v103;
  v102[1] = 0x100000000;
  v56 = 1;
  *buffer = 1;
  v96[0] = 0;
  ANECUnitValidatorCreate();
  v70 = 0;
  v71 = 0;
  if (ANECValidateCropResizeLayer())
  {
    v67 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v96);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v97, "Invalid configuration", 21);
    std::stringbuf::str();
    v96[0] = *MEMORY[0x1E69E54D8];
    v57 = *(MEMORY[0x1E69E54D8] + 72);
    *(v96 + *(v96[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v97 = v57;
    v98 = MEMORY[0x1E69E5548] + 16;
    if (v100 < 0)
    {
      operator delete(v99[7].__locale_);
    }

    v98 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v99);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v101);
    LOWORD(v99[0].__locale_) = 260;
    v96[0] = &v68;
    v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v134 == 1)
    {
      if (v133 != &v134)
      {
        free(v133);
      }

      v58 = v131;
      if (v131)
      {
        v59 = v132;
        v60 = v131;
        if (v132 != v131)
        {
          do
          {
            v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
          }

          while (v59 != v58);
          v60 = v131;
        }

        v132 = v58;
        operator delete(v60);
      }

      v61 = v129;
      if (v129)
      {
        v62 = v130;
        v63 = v129;
        if (v130 != v129)
        {
          do
          {
            v65 = *--v62;
            v64 = v65;
            *v62 = 0;
            if (v65)
            {
              operator delete[](v64);
            }
          }

          while (v62 != v61);
          v63 = v129;
        }

        v130 = v61;
        operator delete(v63);
      }

      if (v127 != &v128)
      {
        free(v127);
      }
    }

    if (v69 < 0)
    {
      operator delete(v68);
    }
  }

  ANECUnitValidatorDelete();
  if (v102[0] != v103)
  {
    free(v102[0]);
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  if (v106[0] != v107)
  {
    free(v106[0]);
  }

  if (v108[0] != v109)
  {
    free(v108[0]);
  }

  if (v110[0] != v111)
  {
    free(v110[0]);
  }

  if (v112[0] != v113)
  {
    free(v112[0]);
  }

  if (v114[0] != v115)
  {
    free(v114[0]);
  }

  if (v116[0] != v117)
  {
    free(v116[0]);
  }

  if (v118 != &ANECDimension)
  {
    free(v118);
  }

  if (v122 != v124)
  {
    free(v122);
  }

  return v56;
}

void mlir::getValues<unsigned int>(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a1, NumElements);
  for (; v13 != v11; ++v13)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &__p);
    if (v9 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v6 = *p_p;
    v7 = *(a2 + 8);
    if (v7 >= *(a2 + 12))
    {
      llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + 4 * v7) = v6;
      ++*(a2 + 8);
    }

    if (v9 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

uint64_t mlir::anec::GatherND::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a6;
  LOBYTE(v60) = 0;
  v61 = 0;
  v62 = a7;
  v63 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(&v60, "anec.gather_nd", 14, Context);
    v61 = 1;
    a1 = v15;
  }

  v64 = a4;
  v65 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::GatherNDAdaptor::verify(&v59, v18) & 1) == 0)
  {
    v36.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v36, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v50[0] = v20;
  v50[1] = v19;
  v21 = mlir::TypeRange::dereference_iterator(a9, 1);
  v22 = v21;
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  v49[0] = v22;
  v49[1] = v21;
  mlir::CallableOpInterface::getArgAttrsAttr(v50);
  v24 = v23;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v23);
  if ((v26 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::GatherNDAdaptor::verify(v48, v67);
  }

  v27 = IndexFromDim;
  v56 = v58;
  v57 = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v59);
  v29 = mlir::DictionaryAttr::end(&v59);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v29, **(v60 + 96));
  mlir::getValues<unsigned long>(v30, &v56);
  v31 = *(mlir::CallableOpInterface::getArgAttrsAttr(v49) + 8 * v27);
  v32 = v57;
  v53 = v55;
  v54 = 0x500000000;
  if (!v24)
  {
    goto LABEL_18;
  }

  if (v24 < 6)
  {
    v33 = 0;
    v34 = v24;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v24, 8);
    v33 = v54;
    v34 = v24 - v54;
    if (v24 == v54)
    {
      LODWORD(v54) = v24;
LABEL_22:
      v38 = 0;
      v39 = v31 / v32;
      do
      {
        v41 = *(mlir::CallableOpInterface::getArgAttrsAttr(v50) + 8 * v38);
        v40 = v39;
        if (v27 != v38)
        {
          v40 = *(mlir::CallableOpInterface::getArgAttrsAttr(v49) + 8 * v38);
        }

        if (v57)
        {
          v42 = 8 * v57;
          v43 = v56;
          while (*v43 != v38)
          {
            ++v43;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v43 = v56;
        }

        if (v43 == (v56 + 8 * v57))
        {
LABEL_23:
          if (v41 > v40)
          {
            v40 = v41;
          }
        }

        v35 = v53;
        *(v53 + v38++) = v40;
      }

      while (v38 != v24);
      LODWORD(v24) = v54;
      goto LABEL_37;
    }
  }

  bzero(v53 + 8 * v33, 8 * v34);
  LODWORD(v54) = v24;
  if (v24 >= 1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v35 = v53;
LABEL_37:
  *&v51 = v35;
  *(&v51 + 1) = v24;
  v52 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v50);
  v45 = mlir::ShapedType::cloneWith(v50, &v51, isSplat);
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    v47 = v45;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
    v45 = v47;
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v45;
  ++*(a11 + 8);
  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return 1;
}

uint64_t mlir::anec::GatherNDAdaptor::verify(mlir::anec::GatherNDAdaptor *this, Location a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v33); i != mlir::DictionaryAttr::end(&v33); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v31[0] = v14;
        v31[1] = v15;
        Type = mlir::ElementsAttr::getType(v31);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v34[0] = v17;
        v34[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v34);
        if (v18 == 1 && mlir::hasUniqueValues(v14))
        {
          v30 = v14;
          if (mlir::DenseElementsAttr::getNumElements(&v30))
          {
            v27 = v14;
            v28[0] = mlir::ArrayAttr::getValue(&v27);
            v28[1] = v19;
            isSplat = mlir::ElementsAttr::isSplat(v28);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v31[0] = "'anec.gather_nd' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 1";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v34);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
        }

        v9 = v37;
        if (!v37)
        {
          goto LABEL_48;
        }

        v23 = v38;
        v11 = v37;
        if (v38 == v37)
        {
LABEL_47:
          v38 = v9;
          operator delete(v11);
LABEL_48:
          if (v35 != &v36)
          {
            free(v35);
          }

          return v5;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v23 != v9);
LABEL_46:
        v11 = v37;
        goto LABEL_47;
      }

      return v5;
    }
  }

  v31[0] = "'anec.gather_nd' op requires attribute 'axes'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v34);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v40;
      v8 = __p;
      if (v40 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v40 = v6;
      operator delete(v8);
    }

    v9 = v37;
    if (!v37)
    {
      goto LABEL_48;
    }

    v10 = v38;
    v11 = v37;
    if (v38 == v37)
    {
      goto LABEL_47;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_46;
  }

  return v5;
}

void mlir::anec::GatherND::getZinIrUnitInfo(mlir::anec::GatherND *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0xB8uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 138) = 0u;
  *v6 = &unk_1F5B33F28;
  *(v6 + 1) = 0;
  *(v6 + 20) = 0;
  *(v6 + 21) = 0;
  *(v6 + 22) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 39, a2, 0, 0);
  v16 = v18;
  v17 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*this + 48) + 96));
  mlir::getValues<unsigned long>(v10, &v16);
  v11 = v16;
  if (v17)
  {
    v12 = 8 * v17;
    do
    {
      v13 = 5;
      DimFromIndex = mlir::anec::getDimFromIndex(*v11, 5uLL);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v13 = dword_1E0999A44[DimFromIndex];
      }

      LODWORD(AttrDictionary) = v13;
      std::vector<ZinIrDimension>::push_back[abi:nn200100]((v6 + 160), &AttrDictionary);
      ++v11;
      v12 -= 8;
    }

    while (v12);
    v11 = v16;
  }

  *a3 = v6;
  if (v11 != v18)
  {
    free(v11);
  }
}

void std::vector<ZinIrDimension>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 >> 62)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = a2;
      v12 = operator new(4 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * (v7 >> 2)];
    *v13 = *a2;
    v5 = v13 + 4;
    memcpy(v12, v6, v7);
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = &v12[4 * v10];
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

BOOL mlir::anec::GatherND::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  ANECGatherLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v33[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  v33[1] = mlir::DenseElementsAttr::getNumElements(v33);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v11 = v10;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v33[0], 0);
  v12 = v33[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v33);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v35, v12, NumElements);
  if (v45 != v36)
  {
    v25 = &v34;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v41);
      v26 = v42;
      if (v42 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v41) <= 0x40)
        {
          v27 = *v41;
        }

        else
        {
          v27 = -1;
        }
      }

      else
      {
        v27 = v41;
      }

      if (v42 >= 0x41 && v41)
      {
        operator delete[](v41);
      }

      ++v45;
      ++v25;
    }

    while (v45 != v36);
  }

  v14 = 1;
  *buffer = 1;
  v35[0] = 0;
  ANECUnitValidatorCreate();
  v41 = v43;
  v42 = 0x100000000;
  v31 = 0;
  v32 = 0;
  if (ANECValidateGatherLayer())
  {
    v15 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "Invalid configuration", 21);
    std::stringbuf::str();
    v35[0] = *MEMORY[0x1E69E54D8];
    v16 = *(MEMORY[0x1E69E54D8] + 72);
    *(v35 + *(v35[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v36 = v16;
    v37 = MEMORY[0x1E69E5548] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v40);
    LOWORD(v38[0].__locale_) = 260;
    v35[0] = &v29;
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v17 = v50;
      if (v50)
      {
        v18 = v51;
        v19 = v50;
        if (v51 != v50)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v50;
        }

        v51 = v17;
        operator delete(v19);
      }

      v20 = v48;
      if (v48)
      {
        v21 = v49;
        v22 = v48;
        if (v49 != v48)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              operator delete[](v23);
            }
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

      if (v46 != &v47)
      {
        free(v46);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }
  }

  if (v41 != v43)
  {
    free(v41);
  }

  ANECUnitValidatorDelete();
  return v14;
}

BOOL mlir::anec::GatherND::addOpToNetwork(mlir::anec::GatherND *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::GatherND::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::ArgMinMax::inferPromotedReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = *MEMORY[0x1E69E9840];
  v56 = a6;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = a7;
  v60 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(&v57, "anec.arg_min_max", 16, Context);
    v58 = 1;
  }

  v61 = a4;
  v62 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::ArgMinMaxAdaptor::verify(&v56, v18) & 1) == 0)
  {
    v35.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v35, "Failed to verify adaptor");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v47[0] = v20;
  v47[1] = v19;
  v53 = v55;
  v54 = 0x600000000;
  Value = mlir::AffineMapAttr::getValue(&v56);
  v22 = mlir::DictionaryAttr::end(&v56);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v22 - 64), **(v57 + 96));
  mlir::getValues<long long>(v23, &v53);
  if (v54)
  {
    v24 = v53;
    v25 = 8 * v54;
    while (1)
    {
      v26 = *v24;
      mlir::CallableOpInterface::getArgAttrsAttr(v47);
      if (v27 <= v26)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v44 = v47[0];
    v45 = *(a11 + 8);
    if (v45 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v45 + 1, 8);
      LODWORD(v45) = *(a11 + 8);
    }

    *(*a11 + 8 * v45) = v44;
    ++*(a11 + 8);
    goto LABEL_31;
  }

LABEL_15:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v47);
  v29 = mlir::CallableOpInterface::getArgAttrsAttr(v47);
  v31 = (v29 + 8 * v30);
  v50 = v52;
  v51 = 0x600000000;
  v32 = (v31 - ArgAttrsAttr) >> 3;
  if (v32 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v32, 8);
    v33 = v51;
    v34 = v50;
    if (v31 == ArgAttrsAttr)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v33 = 0;
  v34 = v52;
  if (v31 != ArgAttrsAttr)
  {
LABEL_20:
    memcpy(&v34[8 * v33], ArgAttrsAttr, v31 - ArgAttrsAttr);
    v33 = v51;
    v34 = v50;
  }

LABEL_21:
  v37 = v33 + ((v31 - ArgAttrsAttr) >> 3);
  LODWORD(v51) = v33 + ((v31 - ArgAttrsAttr) >> 3);
  if (v54)
  {
    v38 = v53;
    v39 = 8 * v54;
    do
    {
      v40 = *v38++;
      *&v34[8 * v40] = 1;
      v39 -= 8;
    }

    while (v39);
  }

  v41 = mlir::IntegerType::get(this, 0x10u, 2u);
  *&v48 = v34;
  *(&v48 + 1) = v37;
  v49 = 1;
  v42 = mlir::ShapedType::cloneWith(v47, &v48, v41);
  v43 = *(a11 + 8);
  if (v43 >= *(a11 + 12))
  {
    v46 = v42;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v43 + 1, 8);
    v42 = v46;
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v42;
  ++*(a11 + 8);
  if (v50 != v52)
  {
    free(v50);
  }

LABEL_31:
  if (v53 != v55)
  {
    free(v53);
  }

  return 1;
}

uint64_t mlir::anec::ArgMinMaxAdaptor::verify(mlir::anec::ArgMinMaxAdaptor *this, Location a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v75); i != mlir::DictionaryAttr::end(&v75); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v75))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v75))
          {
            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v75))
              {
                if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
                {
                  v36 = *(i + 1);
                  while (1)
                  {
                    if (i == mlir::DictionaryAttr::end(&v75))
                    {
                      v72 = "'anec.arg_min_max' op requires attribute 'stride_values'";
                      v74 = 259;
                      mlir::emitError(a2.var0.var0, &v72, &v77);
                      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                      if (v77)
                      {
                        mlir::InFlightDiagnostic::report(&v77);
                      }

                      if (v86 == 1)
                      {
                        mlir::Diagnostic::~Diagnostic(&v78);
                      }

                      return v5;
                    }

                    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 32))
                    {
                      break;
                    }

                    i = (i + 16);
                  }

                  v37 = *(i + 1);
                  if (!v14)
                  {
                    goto LABEL_106;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_129;
                  }

                  v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v72 = v14;
                  v73 = v38;
                  Type = mlir::ElementsAttr::getType(&v72);
                  v40 = Type;
                  if (Type)
                  {
                    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                  }

                  v77 = v40;
                  v78 = Type;
                  mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                  if (v41)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                    v76[0] = v14;
                    v76[1] = v42;
                    v43 = mlir::ElementsAttr::getType(v76);
                    v44 = v43;
                    if (v43)
                    {
                      v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                    }

                    Value = v44;
                    v71 = v43;
                    mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    if (v45 != 1)
                    {
                      goto LABEL_129;
                    }
                  }

                  if (mlir::hasUniqueValues(v14) && (v69 = v14, mlir::DenseElementsAttr::getNumElements(&v69)) && (v66 = v14, v67[0] = mlir::ArrayAttr::getValue(&v66), v67[1] = v46, isSplat = mlir::ElementsAttr::isSplat(v67), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_106:
                    if (v28 && !llvm::CastInfo<mlir::anec::ArgMinMaxModeAttr,mlir::Attribute const,void>::isPossible(v28))
                    {
                      v65 = "'anec.arg_min_max' op attribute 'mode' failed to satisfy constraint: valid ArgMinMaxMode";
                    }

                    else
                    {
                      if (!v21)
                      {
                        goto LABEL_137;
                      }

                      if (!mlir::DenseIntElementsAttr::classof(v21))
                      {
                        goto LABEL_130;
                      }

                      v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                      v72 = v21;
                      v73 = v47;
                      v48 = mlir::ElementsAttr::getType(&v72);
                      v49 = v48;
                      if (v48)
                      {
                        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
                      }

                      v77 = v49;
                      v78 = v48;
                      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                      v76[0] = 2;
                      if (v51 == 1 && *ArgAttrsAttr == v76[0] && (v69 = v21, Value = mlir::ArrayAttr::getValue(&v69), v71 = v52, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                      {
LABEL_137:
                        if (!v37)
                        {
                          goto LABEL_138;
                        }

                        if (!mlir::DenseIntElementsAttr::classof(v37))
                        {
                          goto LABEL_132;
                        }

                        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v37 + 8);
                        v72 = v37;
                        v73 = v53;
                        v54 = mlir::ElementsAttr::getType(&v72);
                        v55 = v54;
                        if (v54)
                        {
                          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
                        }

                        v77 = v55;
                        v78 = v54;
                        v56 = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                        v76[0] = 2;
                        if (v57 == 1 && *v56 == v76[0] && (v69 = v37, Value = mlir::ArrayAttr::getValue(&v69), v71 = v58, v67[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v67, 64)))
                        {
LABEL_138:
                          if (!v36)
                          {
                            return 1;
                          }

                          if (mlir::DenseIntElementsAttr::classof(v36))
                          {
                            v59 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v36 + 8);
                            v72 = v36;
                            v73 = v59;
                            v60 = mlir::ElementsAttr::getType(&v72);
                            v61 = v60;
                            if (v60)
                            {
                              v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
                            }

                            v77 = v61;
                            v78 = v60;
                            v62 = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
                            v76[0] = 4;
                            if (v63 == 1 && *v62 == v76[0])
                            {
                              v69 = v36;
                              Value = mlir::ArrayAttr::getValue(&v69);
                              v71 = v64;
                              v67[0] = mlir::ElementsAttr::isSplat(&Value);
                              if (mlir::Type::isUnsignedInteger(v67, 64))
                              {
                                return 1;
                              }
                            }
                          }

                          v65 = "'anec.arg_min_max' op attribute 'pad_values' failed to satisfy constraint: ui64 elements attribute of shape {4}";
                        }

                        else
                        {
LABEL_132:
                          v65 = "'anec.arg_min_max' op attribute 'stride_values' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                        }
                      }

                      else
                      {
LABEL_130:
                        v65 = "'anec.arg_min_max' op attribute 'kernel_size' failed to satisfy constraint: ui64 elements attribute of shape {2}";
                      }
                    }
                  }

                  else
                  {
LABEL_129:
                    v65 = "'anec.arg_min_max' op attribute 'axes' failed to satisfy constraint: ui64 unique not empty elements attribute of ranks 0/1";
                  }

                  v72 = v65;
                  v74 = 259;
                  mlir::emitError(a2.var0.var0, &v72, &v77);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
                  return v5;
                }

                i = (i + 16);
              }

              v72 = "'anec.arg_min_max' op requires attribute 'pad_values'";
              v74 = 259;
              mlir::emitError(a2.var0.var0, &v72, &v77);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
              if (v77)
              {
                mlir::InFlightDiagnostic::report(&v77);
              }

              if (v86 != 1)
              {
                return v5;
              }

              if (v85 != &v86)
              {
                free(v85);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v84;
                v31 = __p;
                if (v84 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v84 = v29;
                operator delete(v31);
              }

              v9 = v81;
              if (!v81)
              {
                goto LABEL_83;
              }

              v32 = v82;
              v11 = v81;
              if (v82 == v81)
              {
                goto LABEL_82;
              }

              do
              {
                v34 = *--v32;
                v33 = v34;
                *v32 = 0;
                if (v34)
                {
                  operator delete[](v33);
                }
              }

              while (v32 != v9);
              goto LABEL_81;
            }

            i = (i + 16);
          }

          v72 = "'anec.arg_min_max' op requires attribute 'mode'";
          v74 = 259;
          mlir::emitError(a2.var0.var0, &v72, &v77);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }

          if (v86 != 1)
          {
            return v5;
          }

          if (v85 != &v86)
          {
            free(v85);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v84;
            v24 = __p;
            if (v84 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v84 = v22;
            operator delete(v24);
          }

          v9 = v81;
          if (!v81)
          {
            goto LABEL_83;
          }

          v25 = v82;
          v11 = v81;
          if (v82 == v81)
          {
            goto LABEL_82;
          }

          do
          {
            v27 = *--v25;
            v26 = v27;
            *v25 = 0;
            if (v27)
            {
              operator delete[](v26);
            }
          }

          while (v25 != v9);
          goto LABEL_81;
        }

        i = (i + 16);
      }

      v72 = "'anec.arg_min_max' op requires attribute 'kernel_size'";
      v74 = 259;
      mlir::emitError(a2.var0.var0, &v72, &v77);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v86 != 1)
      {
        return v5;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v84;
        v17 = __p;
        if (v84 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v84 = v15;
        operator delete(v17);
      }

      v9 = v81;
      if (!v81)
      {
        goto LABEL_83;
      }

      v18 = v82;
      v11 = v81;
      if (v82 == v81)
      {
        goto LABEL_82;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_81:
      v11 = v81;
      goto LABEL_82;
    }
  }

  v72 = "'anec.arg_min_max' op requires attribute 'axes'";
  v74 = 259;
  mlir::emitError(a2.var0.var0, &v72, &v77);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v84;
      v8 = __p;
      if (v84 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v84 = v6;
      operator delete(v8);
    }

    v9 = v81;
    if (v81)
    {
      v10 = v82;
      v11 = v81;
      if (v82 != v81)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_81;
      }

LABEL_82:
      v82 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v79 != &v80)
    {
      free(v79);
    }
  }

  return v5;
}

void mlir::anec::ArgMinMax::getZinIrUnitInfo(mlir::anec::ArgMinMax *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x80uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33F50;
  *(v6 + 1) = 0;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(v6 + 5) = v7;
  *(v6 + 13) = 0;
  *(v6 + 14) = 0;
  *(v6 + 12) = 0;
  *(v6 + 30) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 15, a2, 0, 0);
  v8 = *this;
  v9 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *this;
  }

  else
  {
    v10 = 0;
  }

  v38[0] = v9;
  v38[1] = v10;
  v46[0] = v47;
  v46[1] = 0x600000000;
  v44[0] = mlir::Operation::getAttrDictionary(v8);
  Value = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(v44);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 64), **(*(*this + 48) + 96));
  mlir::getValues<long long>(v14, v46);
  v15 = *v46[0];
  mlir::CallableOpInterface::getArgAttrsAttr(v38);
  DimFromIndex = mlir::anec::getDimFromIndex(v15, v16);
  if ((DimFromIndex & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v18 = DimFromIndex;
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v19 = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::ArrayAttr::getValue(v44);
  v44[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 32), (v20 + 16 * v21 - 32), *(*(*(*this + 48) + 96) + 16));
  Int = mlir::IntegerAttr::getInt(v44);
  if (Int)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (Int)
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  if (v18 != 1)
  {
    v23 = v24;
  }

  *(v6 + 30) = v23;
  v44[0] = v45;
  v44[1] = 0x600000000;
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::ArrayAttr::getValue(v42);
  v42[0] = mlir::Operation::getAttrDictionary(*this);
  v26 = mlir::ArrayAttr::getValue(v42);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 16), (v26 + 16 * v27 - 48), *(*(*(*this + 48) + 96) + 8));
  mlir::getValues<long long>(v28, v44);
  *(v6 + 10) = vmovn_s64(*v44[0]);
  if (v18 == 3 || (*(v6 + 20) = 1, v18 != 4))
  {
    *(v6 + 21) = 1;
  }

  v42[0] = v43;
  v42[1] = 0x600000000;
  v40[0] = mlir::Operation::getAttrDictionary(*this);
  v29 = mlir::ArrayAttr::getValue(v40);
  v40[0] = mlir::Operation::getAttrDictionary(*this);
  v30 = mlir::ArrayAttr::getValue(v40);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 64), (v30 + 16 * v31), *(*(*(*this + 48) + 96) + 32));
  mlir::getValues<long long>(v32, v42);
  *(v6 + 11) = vmovn_s64(*v42[0]);
  v40[0] = v41;
  v40[1] = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v33 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v34 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v33 + 48), (v34 + 16 * v35 - 16), *(*(*(*this + 48) + 96) + 24));
  mlir::getValues<long long>(v36, v40);
  v37 = v40[0];
  *(v6 + 6) = vuzp1q_s32(*(v40[0] + 1), *v40[0]);
  *a3 = v6;
  if (v37 != v41)
  {
    free(v37);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }
}

uint64_t mlir::anec::ArgMinMax::getAxes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 64), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::ArgMinMax::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 16));
  return mlir::IntegerAttr::getInt(&AttrDictionary);
}

uint64_t mlir::anec::ArgMinMax::getKernelSize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::ArgMinMax::getStrideValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 64), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
}

uint64_t mlir::anec::ArgMinMax::getPadValues(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
}

BOOL mlir::anec::ArgMinMax::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v68 = *a2;
  v101 = v103;
  v102 = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9 - 64), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v10, &v101);
  if (v102 < 3)
  {
    v21 = *v101;
    mlir::CallableOpInterface::getArgAttrsAttr(&v68);
    DimFromIndex = mlir::anec::getDimFromIndex(v21, v22);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v33 = DimFromIndex;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v34 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v35 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v34 + 32), (v35 + 16 * v36 - 32), *(*(*(*a1 + 6) + 96) + 16));
      Int = mlir::IntegerAttr::getInt(buffer);
      v38 = @"SpatialArgMin";
      v39 = @"SpatialArgMax";
      if (v33 == 1)
      {
        v38 = @"ChannelArgMin";
        v39 = @"ChannelArgMax";
      }

      if (Int == 1)
      {
        v38 = v39;
      }

      v69 = v38;
      v99[0] = v100;
      v99[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v40 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v41 = mlir::ArrayAttr::getValue(buffer);
      v43 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v40 + 16), (v41 + 16 * v42 - 48), *(*(*(*a1 + 6) + 96) + 8));
      mlir::getValues<unsigned long>(v43, v99);
      v12 = 1;
      v71 = 1;
      v70 = vextq_s8(*v99[0], *v99[0], 8uLL);
      v97[0] = v98;
      v97[1] = 0x600000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v44 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v45 = mlir::ArrayAttr::getValue(buffer);
      v47 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v44 + 64), (v45 + 16 * v46), *(*(*(*a1 + 6) + 96) + 32));
      mlir::getValues<unsigned long>(v47, v97);
      v74 = 1;
      v73 = *v97[0];
      v72 = *(v97[0] + 1);
      v95[0] = v96;
      v95[1] = 0xC00000000;
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v48 = mlir::ArrayAttr::getValue(buffer);
      *buffer = mlir::Operation::getAttrDictionary(*a1);
      v49 = mlir::ArrayAttr::getValue(buffer);
      v51 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v48 + 48), (v49 + 16 * v50 - 16), *(*(*(*a1 + 6) + 96) + 24));
      mlir::getValues<int>(v51, v95);
      v79 = 0;
      v80 = 0;
      v77 = *v95[0];
      v78 = *(v95[0] + 1);
      v75 = *(v95[0] + 2);
      v76 = *(v95[0] + 3);
      *buffer = 1;
      v81 = 0;
      ANECUnitValidatorCreate();
      v92[0] = v93;
      v92[1] = 0x100000000;
      v66 = 0;
      v67 = 0;
      if (ANECValidateArgMinMaxLayer())
      {
        v63 = *a1;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v81);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v83, "Invalid configuration", 21);
        std::stringbuf::str();
        v81 = *MEMORY[0x1E69E54D8];
        v52 = *(MEMORY[0x1E69E54D8] + 72);
        *(&v81 + *(v81 - 3)) = *(MEMORY[0x1E69E54D8] + 64);
        v83 = v52;
        v84 = MEMORY[0x1E69E5548] + 16;
        if (v90 < 0)
        {
          operator delete(v89[2]);
        }

        v84 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v85);
        std::iostream::~basic_iostream();
        MEMORY[0x1E12E5AA0](&v91);
        LOWORD(v85.__locale_) = 260;
        v81 = &v64;
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
        if (*buffer)
        {
          mlir::InFlightDiagnostic::report(buffer);
        }

        if (v112[0] == 1)
        {
          if (v111 != v112)
          {
            free(v111);
          }

          v53 = __p;
          if (__p)
          {
            v54 = v110;
            v55 = __p;
            if (v110 != __p)
            {
              do
              {
                v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
              }

              while (v54 != v53);
              v55 = __p;
            }

            v110 = v53;
            operator delete(v55);
          }

          v56 = v107;
          if (v107)
          {
            v57 = v108;
            v58 = v107;
            if (v108 != v107)
            {
              do
              {
                v60 = *--v57;
                v59 = v60;
                *v57 = 0;
                if (v60)
                {
                  operator delete[](v59);
                }
              }

              while (v57 != v56);
              v58 = v107;
            }

            v108 = v56;
            operator delete(v58);
          }

          if (v105 != v106)
          {
            free(v105);
          }
        }

        if (v65 < 0)
        {
          operator delete(v64);
        }
      }

      if (v92[0] != v93)
      {
        free(v92[0]);
      }

      ANECUnitValidatorDelete();
      if (v95[0] != v96)
      {
        free(v95[0]);
      }

      if (v97[0] != v98)
      {
        free(v97[0]);
      }

      v61 = v99[0];
      if (v99[0] != v100)
      {
LABEL_61:
        free(v61);
      }
    }

    else
    {
      v24 = *a1;
      v25 = v101;
      mlir::CallableOpInterface::getArgAttrsAttr(&v68);
      v81 = "failed: found axis ({0}) incompatible with rank of tensor input ({1}). ArgMin/Max is supported only on Channel or Spatial dimensions.";
      v82 = 133;
      v83 = v89;
      v84 = 2;
      LOBYTE(v85.__locale_) = 1;
      v86 = &unk_1F5B17218;
      v87 = v25;
      v88[0] = &unk_1F5B17290;
      v88[1] = v26;
      v89[0] = &v86;
      v89[1] = v88;
      v94 = 263;
      v92[0] = &v81;
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v112[0] == 1)
      {
        if (v111 != v112)
        {
          free(v111);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v110;
          v29 = __p;
          if (v110 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v110 = v27;
          operator delete(v29);
        }

        v16 = v107;
        if (v107)
        {
          v30 = v108;
          v18 = v107;
          if (v108 == v107)
          {
            goto LABEL_59;
          }

          do
          {
            v32 = *--v30;
            v31 = v32;
            *v30 = 0;
            if (v32)
            {
              operator delete[](v31);
            }
          }

          while (v30 != v16);
          goto LABEL_58;
        }

LABEL_60:
        v61 = v105;
        if (v105 == v106)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    v11 = *a1;
    v81 = "failed: a maximum of two axes can be handled by the operation, but found {0}";
    v82 = 76;
    v83 = v88;
    v84 = 1;
    LOBYTE(v85.__locale_) = 1;
    v86 = &unk_1F5B2E980;
    v87 = v102;
    v88[0] = &v86;
    v94 = 263;
    v92[0] = &v81;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v112[0] == 1)
    {
      if (v111 != v112)
      {
        free(v111);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v110;
        v15 = __p;
        if (v110 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v110 = v13;
        operator delete(v15);
      }

      v16 = v107;
      if (v107)
      {
        v17 = v108;
        v18 = v107;
        if (v108 == v107)
        {
          goto LABEL_59;
        }

        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
LABEL_58:
        v18 = v107;
LABEL_59:
        v108 = v16;
        operator delete(v18);
        goto LABEL_60;
      }

      goto LABEL_60;
    }
  }

LABEL_62:
  if (v101 != v103)
  {
    free(v101);
  }

  return v12;
}

BOOL mlir::anec::ArgMinMax::addOpToNetwork(mlir::anec::ArgMinMax *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::ArgMinMax::getZinIrUnitInfo(a1, a2, v22);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}