BOOL mlir::anec::GOC::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  ANECGOCLayerDescInitialize();
  *buffer = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(buffer);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  {
    v36 = DefiningOp;
    DefiningOp = v36;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    *buffer = *(*(*a1 + 72) + 88);
    v8 = mlir::Value::getDefiningOp(buffer);
    if (v8)
    {
      {
        v37 = v8;
        v8 = v37;
      }

      if ((*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        v48[0] = v49;
        v48[1] = 0x100000000;
        v9 = 1;
        *buffer = 1;
        v42[0] = 0;
        ANECUnitValidatorCreate();
        v40 = 0;
        v41 = 0;
        if (ANECValidateGOCLayer())
        {
          v10 = *a1;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v42);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v43, "Invalid configuration", 21);
          std::stringbuf::str();
          v42[0] = *MEMORY[0x1E69E54D8];
          v11 = *(MEMORY[0x1E69E54D8] + 72);
          *(v42 + *(v42[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
          v43 = v11;
          v44 = MEMORY[0x1E69E5548] + 16;
          if (v46 < 0)
          {
            operator delete(v45[7].__locale_);
          }

          v44 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v45);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12E5AA0](&v47);
          LOWORD(v45[0].__locale_) = 260;
          v42[0] = &v38;
          v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
          if (*buffer)
          {
            mlir::InFlightDiagnostic::report(buffer);
          }

          if (v58[0] == 1)
          {
            if (v57 != v58)
            {
              free(v57);
            }

            v12 = v55;
            if (v55)
            {
              v13 = v56;
              v14 = v55;
              if (v56 != v55)
              {
                do
                {
                  v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
                }

                while (v13 != v12);
                v14 = v55;
              }

              v56 = v12;
              operator delete(v14);
            }

            v15 = v53;
            if (v53)
            {
              v16 = v54;
              v17 = v53;
              if (v54 != v53)
              {
                do
                {
                  v27 = *--v16;
                  v26 = v27;
                  *v16 = 0;
                  if (v27)
                  {
                    operator delete[](v26);
                  }
                }

                while (v16 != v15);
                v17 = v53;
              }

              v54 = v15;
              operator delete(v17);
            }

            if (v51 != v52)
            {
              free(v51);
            }
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }
        }

        ANECUnitValidatorDelete();
        v34 = v48[0];
        if (v48[0] == v49)
        {
          return v9;
        }

LABEL_63:
        free(v34);
        return v9;
      }
    }

    v42[0] = "failed: bias operand must be a constant";
    LOWORD(v45[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v42, buffer);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v58[0] == 1)
    {
      if (v57 != v58)
      {
        free(v57);
      }

      v28 = v55;
      if (v55)
      {
        v29 = v56;
        v30 = v55;
        if (v56 != v55)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v55;
        }

        v56 = v28;
        operator delete(v30);
      }

      v21 = v53;
      if (v53)
      {
        v31 = v54;
        v23 = v53;
        if (v54 == v53)
        {
          goto LABEL_61;
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

        while (v31 != v21);
        goto LABEL_60;
      }

      goto LABEL_62;
    }
  }

  else
  {
LABEL_25:
    v42[0] = "failed: scale operand must be a constant";
    LOWORD(v45[0].__locale_) = 259;
    mlir::OpState::emitOpError(a1, v42, buffer);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v58[0] == 1)
    {
      if (v57 != v58)
      {
        free(v57);
      }

      v18 = v55;
      if (v55)
      {
        v19 = v56;
        v20 = v55;
        if (v56 != v55)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = v55;
        }

        v56 = v18;
        operator delete(v20);
      }

      v21 = v53;
      if (v53)
      {
        v22 = v54;
        v23 = v53;
        if (v54 == v53)
        {
          goto LABEL_61;
        }

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
LABEL_60:
        v23 = v53;
LABEL_61:
        v54 = v21;
        operator delete(v23);
      }

LABEL_62:
      v34 = v51;
      if (v51 == v52)
      {
        return v9;
      }

      goto LABEL_63;
    }
  }

  return v9;
}

uint64_t mlir::anec::GOC::addOpToNetwork(mlir::anec **a1, void *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  __p.__r_.__value_.__r.__words[0] = *(*(*a1 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  v7 = mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, DefiningOp);
  v9 = v8;
  __p.__r_.__value_.__r.__words[0] = *(*(*a1 + 9) + 88);
  v10 = mlir::Value::getDefiningOp(&__p);
  v11 = mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, v10);
  v13 = v12;
  mlir::anec::computeOpKeyString(&__p, *a1);
  v14 = operator new(0xE0uLL);
  *v14 = &unk_1F5B2E868;
  v15 = (v14 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v16 = 0;
    *&v15->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v14 + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *(v14 + 8) = 2;
  *(v14 + 5) = 0;
  v14[48] = 0;
  *(v14 + 7) = @"GOC";
  *(v14 + 8) = v14 + 80;
  *(v14 + 9) = 0x100000000;
  *(v14 + 14) = v14 + 128;
  *(v14 + 15) = 0x300000000;
  *v14 = &unk_1F5B34338;
  *(v14 + 22) = 0x8000000080000000;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 108) = 0;
  v17 = operator new(0x20uLL);
  v17->__shared_owners_ = 0;
  v17->__vftable = &unk_1F5B2E918;
  v17->__shared_weak_owners_ = 0;
  v17[1].__vftable = v14;
  if (v16)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(*(*a1 + 9) + 56);
  v57.__r_.__value_.__r.__words[0] = &v59;
  v59 = 0;
  __p.__r_.__value_.__r.__words[0] = v18;
  v19 = mlir::Value::getDefiningOp(&__p);
  if (v19 && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v57, v19) && mlir::DenseElementsAttr::isSplat(&v59))
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v59, &__p);
    if (llvm::APFloat::convertToDouble(&__p.__r_.__value_.__l.__data_, v20, v21, v22) == 1.0)
    {
      v26 = llvm::APFloatBase::PPCDoubleDouble(v23);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
      v26 = llvm::APFloatBase::PPCDoubleDouble(v23);
      if (v26 == size)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&v57, &__p.__r_.__value_.__r.__words[1], v25);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&v57, &__p.__r_.__value_.__r.__words[1]);
      }

      if (LODWORD(v57.__r_.__value_.__r.__words[1]) > 0x40)
      {
        v53 = v57.__r_.__value_.__r.__words[0];
        *(v14 + 45) = *v57.__r_.__value_.__l.__data_;
        *(v14 + 26) = 2;
        operator delete[](v53);
      }

      else
      {
        if (LODWORD(v57.__r_.__value_.__r.__words[1]))
        {
          v52 = ((v57.__r_.__value_.__r.__words[0] << -v57.__r_.__value_.__s.__data_[8]) >> -v57.__r_.__value_.__s.__data_[8]);
        }

        else
        {
          v52 = 0;
        }

        *(v14 + 45) = v52;
        *(v14 + 26) = 2;
      }
    }

    if (v26 == __p.__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p.__r_.__value_.__r.__words[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&__p.__r_.__value_.__r.__words[1]);
    }
  }

  else
  {
    *(v14 + 24) = v7;
    *(v14 + 26) = v9;
  }

  v58 = 0;
  v27 = *(*(*a1 + 9) + 88);
  v57.__r_.__value_.__r.__words[0] = &v58;
  __p.__r_.__value_.__r.__words[0] = v27;
  v28 = mlir::Value::getDefiningOp(&__p);
  if (v28 && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v57, v28) && mlir::DenseElementsAttr::isSplat(&v58))
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v58, &__p);
    if (llvm::APFloat::convertToDouble(&__p.__r_.__value_.__l.__data_, v29, v30, v31) == 0.0)
    {
      v35 = llvm::APFloatBase::PPCDoubleDouble(v32);
    }

    else
    {
      v33 = __p.__r_.__value_.__l.__size_;
      v35 = llvm::APFloatBase::PPCDoubleDouble(v32);
      if (v35 == v33)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&v57, &__p.__r_.__value_.__r.__words[1], v34);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&v57, &__p.__r_.__value_.__r.__words[1]);
      }

      if (LODWORD(v57.__r_.__value_.__r.__words[1]) > 0x40)
      {
        v55 = v57.__r_.__value_.__r.__words[0];
        *(v14 + 44) = *v57.__r_.__value_.__l.__data_;
        *(v14 + 25) = 2;
        operator delete[](v55);
      }

      else
      {
        if (LODWORD(v57.__r_.__value_.__r.__words[1]))
        {
          v54 = ((v57.__r_.__value_.__r.__words[0] << -v57.__r_.__value_.__s.__data_[8]) >> -v57.__r_.__value_.__s.__data_[8]);
        }

        else
        {
          v54 = 0;
        }

        *(v14 + 44) = v54;
        *(v14 + 25) = 2;
      }
    }

    if (v35 == __p.__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p.__r_.__value_.__r.__words[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&__p.__r_.__value_.__r.__words[1]);
    }
  }

  else
  {
    *(v14 + 23) = v11;
    *(v14 + 25) = v13;
  }

  v36 = *(*(*a1 + 9) + 24);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v57))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v57))
    {
      v37 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v57);
      if (v37)
      {
        if (*(v37 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v37[5], v37[6]);
        }

        else
        {
          __p = *(v37 + 5);
        }

        v61 = 1;
        std::string::operator=(&v57, &__p);
        if (v61 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_29;
      }
    }

    else
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    abort();
  }

LABEL_29:
  ANECIRDataType = mlir::anec::getANECIRDataType(v36);
  if ((ANECIRDataType & 0x100000000) == 0)
  {
LABEL_41:
    v45 = 0;
    goto LABEL_42;
  }

  mlir::anec::ANECIRUnit::AddInput(v14, &v57, ANECIRDataType);
  if (*(*a1 + 9))
  {
    v39 = *a1 - 16;
  }

  else
  {
    v39 = 0;
  }

  v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v39, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8))
  {
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    goto LABEL_41;
  }

  v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8);
  __p.__r_.__value_.__r.__words[0] = v40;
  __p.__r_.__value_.__l.__size_ = v41;
  if (!v40)
  {
    goto LABEL_41;
  }

  v42 = *(*a1 + 9) ? *a1 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  v44 = mlir::anec::getANECIRDataType(NextResultAtOffset);
  if ((v44 & 0x100000000) == 0)
  {
    goto LABEL_41;
  }

  v47 = v44;
  v48 = *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8);
  v49 = *(v14 + 30);
  if (v49 >= *(v14 + 31))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v14 + 112), v14 + 128, v49 + 1, 16);
    LODWORD(v49) = *(v14 + 30);
  }

  v50 = (*(v14 + 14) + 16 * v49);
  *v50 = v47;
  v50[1] = v48;
  ++*(v14 + 30);
  *&v56 = v14;
  *(&v56 + 1) = v17;
  v45 = 1;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  mlir::anec::ANECIRNetwork::AddUnit(a2, &v56);
  v51 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    if (!atomic_fetch_add((*(&v56 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v45 = 1;
  }

LABEL_42:
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  return v45;
}

void mlir::anec::ANECIRUnit::AddInput(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v12 = a3;
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  p_p = &__p;
  if (v5 >= *(a1 + 76))
  {
    if (v6 <= &__p && v6 + 32 * v5 > &__p)
    {
      v10 = &__p - v6;
      llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(a1 + 64, v5 + 1);
      v6 = *(a1 + 64);
      p_p = &v10[v6];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(a1 + 64, v5 + 1);
      v6 = *(a1 + 64);
      p_p = &__p;
    }
  }

  v8 = v6 + 32 * *(a1 + 72);
  v9 = *&p_p->__r_.__value_.__l.__data_;
  *(v8 + 16) = *(&p_p->__r_.__value_.__l + 2);
  *v8 = v9;
  p_p->__r_.__value_.__l.__size_ = 0;
  p_p->__r_.__value_.__r.__words[2] = 0;
  p_p->__r_.__value_.__r.__words[0] = 0;
  *(v8 + 24) = p_p[1].__r_.__value_.__l.__data_;
  ++*(a1 + 72);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::GOC::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v13 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (!DefiningOp)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v5 = *(*(DefiningOp + 48) + 16);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
    {
      break;
    }

    v12[0] = *(*(DefiningOp + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v12);
    if (!DefiningOp)
    {
      goto LABEL_6;
    }
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
LABEL_6:
    v6 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }

    v12[0] = v6;
    v12[1] = v7;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v12);
    mlir::ShapedType::getNumElements(ArgAttrsAttr, v9);
    v10 = *a1;
    isSplat = mlir::ElementsAttr::isSplat(v12);
  }
}

uint64_t mlir::anec::GOC::fold(uint64_t a1, uint64_t a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v4) <= 7)
  {
    v8 = *(*(a2 + 40) + 8);
    if (mlir::DenseFPElementsAttr::classof(v8))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v24 = v9;
    v10 = *(*(a2 + 40) + 16);
    if (mlir::DenseFPElementsAttr::classof(v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = v11;
    if (!v9 || !mlir::DenseElementsAttr::isSplat(&v24))
    {
      return 0;
    }

    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v24, v25);
    v15 = llvm::APFloat::convertToFloat(v25, v12, v13, v14);
    v16 = v26[0];
    v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
    if (v18 == v16)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v26);
    }

    result = 0;
    if (v15 == 1.0)
    {
      if (v11)
      {
        if (mlir::DenseElementsAttr::isSplat(&v23))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v23, v25);
          v22 = llvm::APFloat::convertToFloat(v25, v19, v20, v21);
          if (v18 == v26[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
            if (v22 != 0.0)
            {
              return 0;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v26);
            if (v22 != 0.0)
            {
              return 0;
            }
          }

          return *(*(*a1 + 72) + 24) | 4;
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::anec::Softmax::mutateOpForReshapeSwap(mlir::Operation **a1, const void *a2, uint64_t a3)
{
  v80[5] = *MEMORY[0x1E69E9840];
  v6 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v78 = v6;
  v79 = v7;
  mlir::CallableOpInterface::getArgAttrsAttr(&v78);
  v9 = v8;
  v78 = v80;
  v79 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v13, &v78);
  v14 = v79;
  if (v79)
  {
    v15 = v78;
    v16 = (v79 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v17 = v78;
    if (v16 <= 2)
    {
      goto LABEL_9;
    }

    v18 = v16 + 1;
    v19 = vdupq_n_s64(v9);
    v17 = v78 + 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v20 = (v78 + 16);
    v21 = vdupq_n_s64(5uLL);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = vaddq_s64(vsubq_s64(*v20, v19), v21);
      v20[-1] = vaddq_s64(vsubq_s64(v20[-1], v19), v21);
      *v20 = v23;
      v20 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v24 = &v15[8 * v14];
      do
      {
        *v17 = *v17 - v9 + 5;
        v17 += 8;
      }

      while (v17 != v24);
    }
  }

  v25 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  v72 = v25;
  v73 = v26;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v72);
  v29 = v27;
  AttrDictionary = v77;
  v76 = 0x500000000;
  v30 = (8 * v27) >> 3;
  if (v30 < 6)
  {
    v31 = 0;
    v32 = 8 * v27;
    if (!v27)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v77, v30, 8);
  v31 = v76;
  v32 = 8 * v29;
  if (v29)
  {
LABEL_18:
    memcpy(AttrDictionary + 8 * v31, ArgAttrsAttr, v32);
    v31 = v76;
  }

LABEL_19:
  v33 = v31 + (v32 >> 3);
  LODWORD(v76) = v33;
  if (v33 < 5)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&AttrDictionary, AttrDictionary, 5 - v33, 1uLL);
  }

  v72 = v74;
  v73 = 0x500000000;
  v34 = (8 * a3) >> 3;
  if (v34 < 6)
  {
    v35 = 0;
    v36 = 8 * a3;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v34, 8);
  v35 = v73;
  v36 = 8 * a3;
  if (a3)
  {
LABEL_25:
    memcpy(v72 + 8 * v35, a2, v36);
    v35 = v73;
  }

LABEL_26:
  v37 = v35 + (v36 >> 3);
  LODWORD(v73) = v37;
  if (v37 <= 4)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v72, v72, 5 - v37, 1uLL);
  }

  if (!v79)
  {
    v39 = 0;
    v40 = 4;
    goto LABEL_40;
  }

  v38 = (v79 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v38 > 2)
  {
    v42 = v38 + 1;
    v43 = (v38 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v41 = (v78 + 8 * v43);
    v44 = (v78 + 16);
    v45 = vdupq_n_s64(4uLL);
    v46 = 0uLL;
    v47 = v43;
    v48 = v45;
    v49 = 0uLL;
    do
    {
      v50 = v44[-1];
      v45 = vbslq_s8(vcgtq_s64(v45, v50), v50, v45);
      v48 = vbslq_s8(vcgtq_s64(v48, *v44), *v44, v48);
      v46 = vbslq_s8(vcgtq_s64(v46, v50), v46, v50);
      v49 = vbslq_s8(vcgtq_s64(v49, *v44), v49, *v44);
      v44 += 2;
      v47 -= 4;
    }

    while (v47);
    v51 = vbslq_s8(vcgtq_s64(v48, v45), v45, v48);
    v52 = vextq_s8(v51, v51, 8uLL).u64[0];
    v40 = vbsl_s8(vcgtd_s64(v52, v51.i64[0]), *v51.i8, v52);
    v53 = vbslq_s8(vcgtq_s64(v46, v49), v46, v49);
    v54 = vextq_s8(v53, v53, 8uLL).u64[0];
    v39 = vbsl_s8(vcgtd_s64(v53.i64[0], v54), *v53.i8, v54);
    if (v42 == v43)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v39 = 0;
    v40 = 4;
    v41 = v78;
  }

  do
  {
    v56 = *v41++;
    v55 = v56;
    if (*&v56 < *&v40)
    {
      v40 = v55;
    }

    if (*&v39 <= *&v55)
    {
      v39 = v55;
    }
  }

  while (v41 != (v78 + 8 * v79));
LABEL_40:
  memset_pattern16(&v68, &unk_1E096FAE0, 0x20uLL);
  v57 = AttrDictionary;
  v58 = v68;
  if (v76 && v73)
  {
    v59 = 0;
    v60 = v70;
    v61 = v71;
    v62 = v69;
    v63 = 8 * v73 - 8;
    v64 = 8 * v76 - 8;
    do
    {
      if (v59 >= *&v40)
      {
        if (v59 > *&v39)
        {
          v60 *= *(AttrDictionary + v59);
          v70 = v60;
          v61 *= *(v72 + v59);
          v71 = v61;
        }
      }

      else
      {
        v58 *= *(AttrDictionary + v59);
        v68 = v58;
        v62 *= *(v72 + v59);
        v69 = v62;
      }

      if (!v64)
      {
        break;
      }

      ++v59;
      v65 = v63;
      v63 -= 8;
      v64 -= 8;
    }

    while (v65);
  }

  else
  {
    v62 = v69;
    v60 = v70;
    v61 = v71;
  }

  if (v72 != v74)
  {
    free(v72);
    v57 = AttrDictionary;
  }

  if (v57 != v77)
  {
    free(v57);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  return v58 == v62 && v60 == v61;
}

void mlir::getValues<long long>(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v11, a1, NumElements);
  for (i = v13; i != v11[2]; i = ++v13)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &__p);
    v6 = v10;
    if (v10 > 0x40)
    {
      v7 = *__p;
    }

    else if (v10)
    {
      v7 = (__p << -v10) >> -v10;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v7);
      if (v10 < 0x41)
      {
        continue;
      }
    }

    else
    {
      *(*a2 + 8 * v8) = v7;
      *(a2 + 8) = v8 + 1;
      if (v6 < 0x41)
      {
        continue;
      }
    }

    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t mlir::anec::Softmax::getAxes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::Softmax::getZinIrUnitInfo@<X0>(mlir::anec::Softmax *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x80uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 5) = 0u;
  *v6 = &unk_1F5B33C28;
  *(v6 + 1) = 0;
  *(v6 + 6) = 0u;
  *(v6 + 28) = 1065353216;
  v6[120] = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 24, a2, 0, 0);
  if (*(*this + 36))
  {
    v7 = *this - 16;
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

  v29[0] = v8;
  v29[1] = v9;
  v26[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v26);
  v26[0] = mlir::Operation::getAttrDictionary(*this);
  v11 = mlir::ArrayAttr::getValue(v26);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12), **(*(*this + 48) + 96));
  v28 = v13;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v26, v13, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v28);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v24, v13, NumElements);
  for (; v27 != v25; ++v27)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v26, &__p);
    if (v23 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v17 = *p_p;
    mlir::CallableOpInterface::getArgAttrsAttr(v29);
    DimFromIndex = mlir::anec::getDimFromIndex(v17, v18);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v20 = dword_1E0999A44[DimFromIndex];
    }

    else
    {
      v20 = 5;
    }

    v21 = v20;
    std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(v6 + 20, &v21, &v21);
    if (v23 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  result = mlir::anec::Concat::getInterleaveAttr(this);
  v6[120] = result != 0;
  *a3 = v6;
  return result;
}

BOOL mlir::anec::Softmax::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  ANECSoftmaxLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v35[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  v35[1] = mlir::DenseElementsAttr::getNumElements(v35);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v11 = v10;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v35[0], 0);
  v12 = v35[0];
  NumElements = mlir::DenseElementsAttr::getNumElements(v35);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v37, v12, NumElements);
  if (v47 != v38)
  {
    v25 = &v36;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v43);
      v26 = v44;
      if (v44 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v43) <= 0x40)
        {
          v27 = *v43;
        }

        else
        {
          v27 = -1;
        }
      }

      else
      {
        v27 = v43;
      }

      if (v44 >= 0x41 && v43)
      {
        operator delete[](v43);
      }

      ++v47;
      ++v25;
    }

    while (v47 != v38);
  }

  v43 = v45;
  v44 = 0x100000000;
  *buffer = 1;
  v37[0] = 0;
  ANECUnitValidatorCreate();
  v33 = 0;
  v34 = 0;
  if (ANECValidateSoftmaxLayer())
  {
    v14 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v37);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v38, "Invalid configuration", 21);
    std::stringbuf::str();
    v37[0] = *MEMORY[0x1E69E54D8];
    v15 = *(MEMORY[0x1E69E54D8] + 72);
    *(v37 + *(v37[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v38 = v15;
    v39 = MEMORY[0x1E69E5548] + 16;
    if (v41 < 0)
    {
      operator delete(v40[7].__locale_);
    }

    v39 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v40);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v42);
    v32 = 260;
    v31 = &v29;
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v17 = v52;
      if (v52)
      {
        v18 = v53;
        v19 = v52;
        if (v53 != v52)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = v52;
        }

        v53 = v17;
        operator delete(v19);
      }

      v20 = v50;
      if (v50)
      {
        v21 = v51;
        v22 = v50;
        if (v51 != v50)
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
          v22 = v50;
        }

        v51 = v20;
        operator delete(v22);
      }

      if (v48 != &v49)
      {
        free(v48);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }
  }

  else
  {
    v16 = 1;
  }

  ANECUnitValidatorDelete();
  if (v43 != v45)
  {
    free(v43);
  }

  return v16;
}

uint64_t mlir::anec::anonymous namespace::getANECDimension(mlir::anec::_anonymous_namespace_ *this, unint64_t a2)
{
  DimFromIndex = mlir::anec::getDimFromIndex(this, a2);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v3 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v3 = 5;
  }

  if ((atomic_load_explicit(_MergedGlobals_49, memory_order_acquire) & 1) == 0)
  {
  }

  v4 = qword_1EE17CA50;
  if (qword_1EE17CA50)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 32);
        if (v3 >= v7)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_13;
        }
      }

      if (v7 >= v3)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = &qword_1EE17CA50;
    v6 = &qword_1EE17CA50;
LABEL_13:
    v8 = v6;
    v6 = operator new(0x30uLL);
    *(v6 + 8) = v3;
    v6[5] = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = v6;
    if (*qword_1EE17CA48)
    {
      qword_1EE17CA48 = *qword_1EE17CA48;
      v9 = *v5;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(qword_1EE17CA50, v9);
    ++qword_1EE17CA58;
  }

  return v6[5];
}

BOOL mlir::anec::Softmax::addOpToNetwork(mlir::anec::Softmax *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Softmax::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::spaceTransformInferReturnTypesCommon(mlir *a1, Location a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8)
{
  v54[5] = *MEMORY[0x1E69E9840];
  v49[0] = a3;
  v49[1] = a4;
  if (a3)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
    mlir::CallableOpInterface::getArgAttrsAttr(v49);
    v12 = v11;
    v52 = v54;
    v53 = 0x500000000;
    IndexFromDim = mlir::anec::getIndexFromDim(0, v11);
    v14 = mlir::anec::getIndexFromDim(1, v12);
    v15 = mlir::anec::getIndexFromDim(3, v12);
    v16 = mlir::anec::getIndexFromDim(4, v12);
    v17 = *(ArgAttrsAttr + 8 * IndexFromDim);
    v18 = *(ArgAttrsAttr + 8 * v14);
    v19 = *(ArgAttrsAttr + 8 * v15);
    v20 = *(ArgAttrsAttr + 8 * v16);
    v50[0] = v51;
    v50[1] = 0x300000000;
    mlir::getValues<unsigned long>(a5, v50);
    v21 = *v50[0];
    v22 = *(v50[0] + 1);
    if (*v50[0] <= 1)
    {
      v21 = 1;
    }

    if (v22 <= 1)
    {
      v22 = 1;
    }

    if (*(v50[0] + 2) <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v50[0] + 2);
    }

    v24 = v22 * v21 * v23;
    if (a7)
    {
      v25 = v19 / v22;
      v26 = v24 * v18;
      v27 = v24 * v17;
      if (a6)
      {
        v28 = v26;
      }

      else
      {
        v17 = v27;
        v28 = v18;
      }

      v29 = v20 / v21;
    }

    else
    {
      v25 = v22 * v19;
      v29 = v21 * v20;
      if (a6)
      {
        v28 = v18 / v24;
      }

      else
      {
        v17 /= v24;
        v28 = v18;
      }
    }

    v31 = v53;
    if (v53 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v53 + 1, 8);
      v31 = v53;
    }

    *(v52 + v31) = v17;
    v32 = v53 + 1;
    LODWORD(v53) = v53 + 1;
    if (v12 == 5)
    {
      v33 = mlir::anec::getIndexFromDim(2, 5uLL);
      if ((v34 & 1) == 0)
      {
        v37 = 0;
LABEL_40:
        if (v50[0] != v51)
        {
          free(v50[0]);
        }

        if (v52 != v54)
        {
          free(v52);
        }

        return v37;
      }

      v35 = *(ArgAttrsAttr + 8 * v33);
      if (a7)
      {
        v36 = v35 / v23;
      }

      else
      {
        v36 = v35 * v23;
      }

      v38 = v53;
      if (v53 >= HIDWORD(v53))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v53 + 1, 8);
        v38 = v53;
      }

      *(v52 + v38) = v36;
      v32 = v53 + 1;
      LODWORD(v53) = v53 + 1;
    }

    if (v32 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v32 + 1, 8);
      v32 = v53;
    }

    *(v52 + v32) = v28;
    v39 = (v53 + 1);
    LODWORD(v53) = v39;
    if (v39 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v39 + 1, 8);
      LODWORD(v39) = v53;
    }

    *(v52 + v39) = v25;
    v40 = (v53 + 1);
    LODWORD(v53) = v40;
    if (v40 >= HIDWORD(v53))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v40 + 1, 8);
      LODWORD(v40) = v53;
    }

    *(v52 + v40) = v29;
    LODWORD(v53) = v53 + 1;
    v41 = v53;
    v42 = v52;
    isSplat = mlir::ElementsAttr::isSplat(v49);
    v44 = mlir::MemRefType::get(v42, v41, isSplat, 0, 0, 0);
    v45 = *(a8 + 8);
    if (v45 >= *(a8 + 12))
    {
      v46 = v44;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a8, (a8 + 16), v45 + 1, 8);
      v44 = v46;
      LODWORD(v45) = *(a8 + 8);
    }

    *(*a8 + 8 * v45) = v44;
    ++*(a8 + 8);
    v37 = 1;
    goto LABEL_40;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a1, a2, "Expected a ShapedType for my input!");
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrChannelToSpaceUnitInfo,mlir::anec::ChannelToSpace>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, int32x2_t **a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *v6[8].i8 = 0u;
  *v6[10].i8 = 0u;
  *v6[4].i8 = 0u;
  *v6[6].i8 = 0u;
  *v6->i8 = 0u;
  *v6[2].i8 = 0u;
  v6[9] = -1;
  *v6 = &unk_1F5B33C48;
  v6[10] = 0x100000001;
  v6[11].i32[0] = 1;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  v6[10] = vmovn_s64(*v16[0]);
  v6[11].i32[0] = v14;
  v6[9] = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::ChannelToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.channel_to_space", 21, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::ChannelToSpaceAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 1, 0, a11);
}

uint64_t mlir::anec::ChannelToSpaceAdaptor::verify(mlir::anec::ChannelToSpaceAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.channel_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.channel_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::ChannelToSpace::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  ANECChannelToSpaceLayerDescInitialize();
  v38[0] = v39;
  v38[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v10, v38);
  v11 = *(v38[0] + 2);
  v28 = *v38[0];
  v29 = v11;
  v36[0] = v37;
  v36[1] = 0x100000000;
  v12 = 1;
  *buffer = 1;
  v30[0] = 0;
  ANECUnitValidatorCreate();
  v26 = 0;
  v27 = 0;
  if (ANECValidateChannelToSpaceLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "Invalid configuration", 21);
    std::stringbuf::str();
    v30[0] = *MEMORY[0x1E69E54D8];
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    *(v30 + *(v30[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v31 = v14;
    v32 = MEMORY[0x1E69E5548] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v35);
    LOWORD(v33[0].__locale_) = 260;
    v30[0] = &v24;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v15 = v45;
      if (v45)
      {
        v16 = v46;
        v17 = v45;
        if (v46 != v45)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v45;
        }

        v46 = v15;
        operator delete(v17);
      }

      v18 = v43;
      if (v43)
      {
        v19 = v44;
        v20 = v43;
        if (v44 != v43)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v43;
        }

        v44 = v18;
        operator delete(v20);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  ANECUnitValidatorDelete();
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  return v12;
}

BOOL mlir::anec::ChannelToSpace::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrChannelToSpaceUnitInfo,mlir::anec::ChannelToSpace>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (v6[3].i8[7] < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *&v6[1], *&v6[2]);
    }

    else
    {
      v7 = *v6[1].i8;
      *(v3 + 6) = v6[3];
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelShuffleUnitInfo,mlir::anec::PixelShuffle>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33C68;
  *(v6 + 1) = 0;
  *(v6 + 10) = 0x100000001;
  *(v6 + 22) = 1;
  *(v6 + 8) = 31;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  *(v6 + 10) = vmovn_s64(*v16[0]);
  *(v6 + 22) = v14;
  *(v6 + 9) = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::PixelShuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.pixel_shuffle", 18, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::PixelShuffleAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 1, 0, a11);
}

uint64_t mlir::anec::PixelShuffleAdaptor::verify(mlir::anec::PixelShuffleAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_shuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_shuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::PixelShuffle::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  ANECPixelShuffleLayerDescInitialize();
  v38[0] = v39;
  v38[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v10, v38);
  v11 = *(v38[0] + 2);
  v28 = *v38[0];
  v29 = v11;
  v36[0] = v37;
  v36[1] = 0x100000000;
  v12 = 1;
  *buffer = 1;
  v30[0] = 0;
  ANECUnitValidatorCreate();
  v26 = 0;
  v27 = 0;
  if (ANECValidatePixelShuffleLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "Invalid configuration", 21);
    std::stringbuf::str();
    v30[0] = *MEMORY[0x1E69E54D8];
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    *(v30 + *(v30[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v31 = v14;
    v32 = MEMORY[0x1E69E5548] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v35);
    LOWORD(v33[0].__locale_) = 260;
    v30[0] = &v24;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v15 = v45;
      if (v45)
      {
        v16 = v46;
        v17 = v45;
        if (v46 != v45)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v45;
        }

        v46 = v15;
        operator delete(v17);
      }

      v18 = v43;
      if (v43)
      {
        v19 = v44;
        v20 = v43;
        if (v44 != v43)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v43;
        }

        v44 = v18;
        operator delete(v20);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  ANECUnitValidatorDelete();
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  return v12;
}

BOOL mlir::anec::PixelShuffle::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelShuffleUnitInfo,mlir::anec::PixelShuffle>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelUnshuffleUnitInfo,mlir::anec::PixelUnshuffle>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, int32x2_t **a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *v6[8].i8 = 0u;
  *v6[10].i8 = 0u;
  *v6[4].i8 = 0u;
  *v6[6].i8 = 0u;
  *v6->i8 = 0u;
  *v6[2].i8 = 0u;
  v6[9] = -1;
  *v6 = &unk_1F5B33C88;
  v6[10] = 0x100000001;
  v6[11].i32[0] = 1;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  v6[10] = vmovn_s64(*v16[0]);
  v6[11].i32[0] = v14;
  v6[9] = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::PixelUnshuffle::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.pixel_unshuffle", 20, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::PixelUnshuffleAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 1, 1, a11);
}

uint64_t mlir::anec::PixelUnshuffleAdaptor::verify(mlir::anec::PixelUnshuffleAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.pixel_unshuffle' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.pixel_unshuffle' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::PixelUnshuffle::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v49 = *MEMORY[0x1E69E9840];
  ANECPixelUnshuffleLayerDescInitialize();
  v38[0] = v39;
  v38[1] = 0x300000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v10, v38);
  v11 = *(v38[0] + 2);
  v28 = *v38[0];
  v29 = v11;
  v36[0] = v37;
  v36[1] = 0x100000000;
  v12 = 1;
  *buffer = 1;
  v30[0] = 0;
  ANECUnitValidatorCreate();
  v26 = 0;
  v27 = 0;
  if (ANECValidatePixelUnshuffleLayer())
  {
    v13 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v30);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "Invalid configuration", 21);
    std::stringbuf::str();
    v30[0] = *MEMORY[0x1E69E54D8];
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    *(v30 + *(v30[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v31 = v14;
    v32 = MEMORY[0x1E69E5548] + 16;
    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    v32 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v33);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v35);
    LOWORD(v33[0].__locale_) = 260;
    v30[0] = &v24;
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v15 = v45;
      if (v45)
      {
        v16 = v46;
        v17 = v45;
        if (v46 != v45)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v45;
        }

        v46 = v15;
        operator delete(v17);
      }

      v18 = v43;
      if (v43)
      {
        v19 = v44;
        v20 = v43;
        if (v44 != v43)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v43;
        }

        v44 = v18;
        operator delete(v20);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  ANECUnitValidatorDelete();
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  return v12;
}

BOOL mlir::anec::PixelUnshuffle::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrPixelUnshuffleUnitInfo,mlir::anec::PixelUnshuffle>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (v6[3].i8[7] < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *&v6[1], *&v6[2]);
    }

    else
    {
      v7 = *v6[1].i8;
      *(v3 + 6) = v6[3];
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToChannelUnitInfo,mlir::anec::SpaceToChannel>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, int32x2_t **a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *v6[8].i8 = 0u;
  *v6[10].i8 = 0u;
  *v6[4].i8 = 0u;
  *v6[6].i8 = 0u;
  *v6->i8 = 0u;
  *v6[2].i8 = 0u;
  v6[9] = -1;
  *v6 = &unk_1F5B33CA8;
  v6[10] = 0x100000001;
  v6[11].i32[0] = 1;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  v6[10] = vmovn_s64(*v16[0]);
  v6[11].i32[0] = v14;
  v6[9] = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::SpaceToChannel::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.space_to_channel", 21, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::SpaceToChannelAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 1, 1, a11);
}

uint64_t mlir::anec::SpaceToChannelAdaptor::verify(mlir::anec::SpaceToChannelAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_channel' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_channel' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::SpaceToChannel::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  ANECSpaceToChannelLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v10, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, __p);
  v11 = __p[1];
  if (LODWORD(__p[1]) < 0x41)
  {
    v12 = __p[0];
    goto LABEL_8;
  }

  if (v11 - llvm::APInt::countLeadingZerosSlowCase(__p) <= 0x40)
  {
    v12 = *__p[0];
    goto LABEL_7;
  }

  v12 = -1;
  if (__p[0])
  {
LABEL_7:
    operator delete[](__p[0]);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v16, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v17 = v53;
  if (v53 < 0x41)
  {
    v18 = v52;
    goto LABEL_15;
  }

  if (v17 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v18 = *v52;
    goto LABEL_14;
  }

  v18 = -1;
  if (v52)
  {
LABEL_14:
    operator delete[](v52);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::ArrayAttr::getValue(buffer);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v19, (v20 + 16 * v21), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v22, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v23 = v53;
  if (v53 < 0x41)
  {
    v24 = v52;
    goto LABEL_22;
  }

  if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v24 = *v52;
    goto LABEL_21;
  }

  v24 = -1;
  if (v52)
  {
LABEL_21:
    operator delete[](v52);
  }

LABEL_22:
  v43 = v12;
  v44 = v18;
  v45 = v24;
  v52 = v54;
  v53 = 0x100000000;
  *buffer = 1;
  __p[0] = 0;
  ANECUnitValidatorCreate();
  v41 = 0;
  v42 = 0;
  if (ANECValidateSpaceToChannelLayer())
  {
    v25 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "Invalid configuration", 21);
    std::stringbuf::str();
    __p[0] = *MEMORY[0x1E69E54D8];
    v26 = *(MEMORY[0x1E69E54D8] + 72);
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v47 = v26;
    v48 = (MEMORY[0x1E69E5548] + 16);
    if (v50 < 0)
    {
      operator delete(v49[7].__locale_);
    }

    v48 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v51);
    v40 = 260;
    v39 = &v37;
    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
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

      v28 = v60;
      if (v60)
      {
        v29 = v61;
        v30 = v60;
        if (v61 != v60)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v60;
        }

        v61 = v28;
        operator delete(v30);
      }

      v31 = v58;
      if (v58)
      {
        v32 = v59;
        v33 = v58;
        if (v59 != v58)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v32 != v31);
          v33 = v58;
        }

        v59 = v31;
        operator delete(v33);
      }

      if (v56[1] != &v57)
      {
        free(v56[1]);
      }
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {
    v27 = 1;
  }

  ANECUnitValidatorDelete();
  if (v52 != v54)
  {
    free(v52);
  }

  return v27;
}

BOOL mlir::anec::SpaceToChannel::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToChannelUnitInfo,mlir::anec::SpaceToChannel>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (v6[3].i8[7] < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *&v6[1], *&v6[2]);
    }

    else
    {
      v7 = *v6[1].i8;
      *(v3 + 6) = v6[3];
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrBatchToSpaceUnitInfo,mlir::anec::BatchToSpace>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33CC8;
  *(v6 + 1) = 0;
  *(v6 + 10) = 0x100000001;
  *(v6 + 22) = 1;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  *(v6 + 10) = vmovn_s64(*v16[0]);
  *(v6 + 22) = v14;
  *(v6 + 9) = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::BatchToSpace::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.batch_to_space", 19, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::BatchToSpaceAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 0, 0, a11);
}

uint64_t mlir::anec::BatchToSpaceAdaptor::verify(mlir::anec::BatchToSpaceAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.batch_to_space' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.batch_to_space' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::BatchToSpace::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  ANECBatchToSpaceLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v10, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, __p);
  v11 = __p[1];
  if (LODWORD(__p[1]) < 0x41)
  {
    v12 = __p[0];
    goto LABEL_8;
  }

  if (v11 - llvm::APInt::countLeadingZerosSlowCase(__p) <= 0x40)
  {
    v12 = *__p[0];
    goto LABEL_7;
  }

  v12 = -1;
  if (__p[0])
  {
LABEL_7:
    operator delete[](__p[0]);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v16, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v17 = v53;
  if (v53 < 0x41)
  {
    v18 = v52;
    goto LABEL_15;
  }

  if (v17 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v18 = *v52;
    goto LABEL_14;
  }

  v18 = -1;
  if (v52)
  {
LABEL_14:
    operator delete[](v52);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::ArrayAttr::getValue(buffer);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v19, (v20 + 16 * v21), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v22, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v23 = v53;
  if (v53 < 0x41)
  {
    v24 = v52;
    goto LABEL_22;
  }

  if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v24 = *v52;
    goto LABEL_21;
  }

  v24 = -1;
  if (v52)
  {
LABEL_21:
    operator delete[](v52);
  }

LABEL_22:
  v43 = v12;
  v44 = v18;
  v45 = v24;
  v52 = v54;
  v53 = 0x100000000;
  *buffer = 1;
  __p[0] = 0;
  ANECUnitValidatorCreate();
  v41 = 0;
  v42 = 0;
  if (ANECValidateBatchToSpaceLayer())
  {
    v25 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "Invalid configuration", 21);
    std::stringbuf::str();
    __p[0] = *MEMORY[0x1E69E54D8];
    v26 = *(MEMORY[0x1E69E54D8] + 72);
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v47 = v26;
    v48 = (MEMORY[0x1E69E5548] + 16);
    if (v50 < 0)
    {
      operator delete(v49[7].__locale_);
    }

    v48 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v51);
    v40 = 260;
    v39 = &v37;
    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
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

      v28 = v60;
      if (v60)
      {
        v29 = v61;
        v30 = v60;
        if (v61 != v60)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v60;
        }

        v61 = v28;
        operator delete(v30);
      }

      v31 = v58;
      if (v58)
      {
        v32 = v59;
        v33 = v58;
        if (v59 != v58)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v32 != v31);
          v33 = v58;
        }

        v59 = v31;
        operator delete(v33);
      }

      if (v56[1] != &v57)
      {
        free(v56[1]);
      }
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {
    v27 = 1;
  }

  ANECUnitValidatorDelete();
  if (v52 != v54)
  {
    free(v52);
  }

  return v27;
}

BOOL mlir::anec::BatchToSpace::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrBatchToSpaceUnitInfo,mlir::anec::BatchToSpace>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

void mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToBatchUnitInfo,mlir::anec::SpaceToBatch>(mlir::Operation *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x60uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33CE8;
  *(v6 + 1) = 0;
  *(v6 + 10) = 0x100000001;
  *(v6 + 22) = 1;
  v7 = *(*(a1 + 6) + 16);
  if (a1 && v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
  {
    v8 = 36;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
  {
    v8 = 37;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
  {
    v8 = 31;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
  {
    v8 = 32;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
  {
    v8 = 34;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
  {
    v8 = 35;
  }

  else
  {
    v8 = 0;
  }

  mlir::anec::fillZinIrCommonInfo(a1, v6, v8, a2, 0, 0);
  v16[0] = v17;
  v16[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(a1 + 6) + 96));
  mlir::getValues<unsigned long>(v12, v16);
  v13 = v16[0];
  v14 = *(v16[0] + 2);
  *(v6 + 10) = vmovn_s64(*v16[0]);
  *(v6 + 22) = v14;
  *(v6 + 9) = 0;
  *a3 = v6;
  if (v13 != v17)
  {
    free(v13);
  }
}

BOOL mlir::anec::SpaceToBatch::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v22 = 0;
  }

  v31 = a6;
  LOBYTE(v32) = 0;
  v33 = 0;
  v34 = a7;
  v35 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(&v32, "anec.space_to_batch", 19, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  v24 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v25.var0.var0 = a2;
  }

  else
  {
    v25.var0.var0 = v24;
  }

  if ((mlir::anec::SpaceToBatchAdaptor::verify(&v31, v25) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  v27 = mlir::DictionaryAttr::end(&v31);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v27, **(v32 + 96));
  v29.var0.var0 = a3;
  return mlir::anec::spaceTransformInferReturnTypesCommon(a2, v29, v21, v22, v28, 0, 1, a11);
}

uint64_t mlir::anec::SpaceToBatchAdaptor::verify(mlir::anec::SpaceToBatchAdaptor *this, Location a2)
{
  v44 = *MEMORY[0x1E69E9840];
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

        v35[0] = v17;
        v35[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
        v34 = 3;
        if (v19 == 1 && *ArgAttrsAttr == v34)
        {
          v28 = v14;
          v29[0] = mlir::ArrayAttr::getValue(&v28);
          v29[1] = v20;
          isSplat = mlir::ElementsAttr::isSplat(v29);
          if (mlir::Type::isUnsignedInteger(&isSplat, 64))
          {
            return 1;
          }
        }
      }

      v31[0] = "'anec.space_to_batch' op attribute 'factors' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v32 = 259;
      mlir::emitError(a2.var0.var0, v31, v35);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v41;
          v23 = __p;
          if (v41 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v41 = v21;
          operator delete(v23);
        }

        v9 = v38;
        if (!v38)
        {
          goto LABEL_47;
        }

        v24 = v39;
        v11 = v38;
        if (v39 == v38)
        {
LABEL_46:
          v39 = v9;
          operator delete(v11);
LABEL_47:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v5;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            operator delete[](v25);
          }
        }

        while (v24 != v9);
LABEL_45:
        v11 = v38;
        goto LABEL_46;
      }

      return v5;
    }
  }

  v31[0] = "'anec.space_to_batch' op requires attribute 'factors'";
  v32 = 259;
  mlir::emitError(a2.var0.var0, v31, v35);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v41;
      v8 = __p;
      if (v41 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v41 = v6;
      operator delete(v8);
    }

    v9 = v38;
    if (!v38)
    {
      goto LABEL_47;
    }

    v10 = v39;
    v11 = v38;
    if (v39 == v38)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  return v5;
}

BOOL mlir::anec::SpaceToBatch::verifyWithANEC(mlir::Operation **a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  ANECSpaceToBatchLayerDescInitialize();
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(buffer, v10, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, __p);
  v11 = __p[1];
  if (LODWORD(__p[1]) < 0x41)
  {
    v12 = __p[0];
    goto LABEL_8;
  }

  if (v11 - llvm::APInt::countLeadingZerosSlowCase(__p) <= 0x40)
  {
    v12 = *__p[0];
    goto LABEL_7;
  }

  v12 = -1;
  if (__p[0])
  {
LABEL_7:
    operator delete[](__p[0]);
  }

LABEL_8:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::ArrayAttr::getValue(buffer);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v13, (v14 + 16 * v15), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v16, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 1);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v17 = v53;
  if (v53 < 0x41)
  {
    v18 = v52;
    goto LABEL_15;
  }

  if (v17 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v18 = *v52;
    goto LABEL_14;
  }

  v18 = -1;
  if (v52)
  {
LABEL_14:
    operator delete[](v52);
  }

LABEL_15:
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::ArrayAttr::getValue(buffer);
  v22 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v19, (v20 + 16 * v21), **(*(*a1 + 6) + 96));
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v22, 0);
  *buffer = *__p;
  v56[1] = v48;
  v56[0] = (v47 + 2);
  mlir::DenseElementsAttr::IntElementIterator::operator*(buffer, &v52);
  v23 = v53;
  if (v53 < 0x41)
  {
    v24 = v52;
    goto LABEL_22;
  }

  if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v52) <= 0x40)
  {
    v24 = *v52;
    goto LABEL_21;
  }

  v24 = -1;
  if (v52)
  {
LABEL_21:
    operator delete[](v52);
  }

LABEL_22:
  v43 = v12;
  v44 = v18;
  v45 = v24;
  v52 = v54;
  v53 = 0x100000000;
  *buffer = 1;
  __p[0] = 0;
  ANECUnitValidatorCreate();
  v41 = 0;
  v42 = 0;
  if (ANECValidateSpaceToBatchLayer())
  {
    v25 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v47, "Invalid configuration", 21);
    std::stringbuf::str();
    __p[0] = *MEMORY[0x1E69E54D8];
    v26 = *(MEMORY[0x1E69E54D8] + 72);
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
    v47 = v26;
    v48 = (MEMORY[0x1E69E5548] + 16);
    if (v50 < 0)
    {
      operator delete(v49[7].__locale_);
    }

    v48 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v51);
    v40 = 260;
    v39 = &v37;
    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
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

      v28 = v60;
      if (v60)
      {
        v29 = v61;
        v30 = v60;
        if (v61 != v60)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v60;
        }

        v61 = v28;
        operator delete(v30);
      }

      v31 = v58;
      if (v58)
      {
        v32 = v59;
        v33 = v58;
        if (v59 != v58)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v32 != v31);
          v33 = v58;
        }

        v59 = v31;
        operator delete(v33);
      }

      if (v56[1] != &v57)
      {
        free(v56[1]);
      }
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {
    v27 = 1;
  }

  ANECUnitValidatorDelete();
  if (v52 != v54)
  {
    free(v52);
  }

  return v27;
}

BOOL mlir::anec::SpaceToBatch::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::spaceTransformGetZinIrUnitInfo<ZinIrSpaceToBatchUnitInfo,mlir::anec::SpaceToBatch>(*a1, a2, v23);
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v23[0];
    v23[0] = 0;
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
    *&v20 = v5;
    *(&v20 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v17 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v29;
        v11 = __p;
        if (v29 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v29 = v9;
        operator delete(v11);
      }

      v12 = v26;
      if (v26)
      {
        v13 = v27;
        v14 = v26;
        if (v27 != v26)
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
          v14 = v26;
        }

        v27 = v12;
        operator delete(v14);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::Resize::inferPromotedReturnTypes(mlir::UnknownLoc *a1, AttributeStorage *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v108 = *MEMORY[0x1E69E9840];
  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v21 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v86[0] = v21;
  v86[1] = v19;
  v91 = a6;
  LOBYTE(v92) = 0;
  v93 = 0;
  v94 = a7;
  v95 = a8;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v91);
    if (v93 == 1)
    {
      v93 = 0;
    }

    mlir::OperationName::OperationName(&v92, "anec.resize", 11, Context);
    v93 = 1;
  }

  v96 = a4;
  v97 = a5;
  v23 = mlir::UnknownLoc::get(a1, v20);
  if (a3)
  {
    v24.var0.var0 = a2;
  }

  else
  {
    v24.var0.var0 = v23;
  }

  if ((mlir::anec::ResizeAdaptor::verify(&v91, v24) & 1) == 0)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v86);
  v26 = v25;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v86);
  v88 = v90;
  v89 = 0x500000000;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v26);
  v29 = mlir::anec::getIndexFromDim(1, v26);
  v30 = mlir::anec::getIndexFromDim(3, v26);
  v31 = mlir::anec::getIndexFromDim(4, v26);
  v84 = *(ArgAttrsAttr + 8 * IndexFromDim);
  v85 = *(ArgAttrsAttr + 8 * v29);
  v83 = *(ArgAttrsAttr + 8 * v30);
  v32 = *(ArgAttrsAttr + 8 * v31);
  Value = mlir::AffineMapAttr::getValue(&v91);
  v34 = mlir::DictionaryAttr::end(&v91);
  v35 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v34 - 16), *(*(v92 + 96) + 24));
  if (v35)
  {
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v87 = v36;
  mlir::FloatAttr::getValue(&__p, &v87);
  v41 = llvm::APFloat::convertToFloat(&__p, v38, v39, v40);
  v42 = v99[0];
  v44 = llvm::APFloatBase::PPCDoubleDouble(v43);
  if (v44 == v42)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v99);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v99);
  }

  v45 = mlir::AffineMapAttr::getValue(&v91);
  v46 = mlir::DictionaryAttr::end(&v91);
  v47 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v45 + 48), (v46 - 16), *(*(v92 + 96) + 32));
  if (v47)
  {
    if (*(*v47 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  v87 = v48;
  mlir::FloatAttr::getValue(&__p, &v87);
  v52 = llvm::APFloat::convertToFloat(&__p, v49, v50, v51);
  if (v44 == v99[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v99);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v99);
  }

  if (v41 == -1.0 && v52 == -1.0)
  {
    v54 = mlir::AffineMapAttr::getValue(&v91);
    v55 = mlir::DictionaryAttr::end(&v91);
    v87 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v54, (v55 - 48), **(v92 + 96));
    mlir::IntegerAttr::getValue(&__p, &v87);
    if (LODWORD(v99[0]) > 0x40)
    {
      v56 = *__p;
      operator delete[](__p);
    }

    else
    {
      v56 = __p;
    }

    v58 = mlir::AffineMapAttr::getValue(&v91);
    v59 = mlir::DictionaryAttr::end(&v91);
    v87 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v58 + 48), v59, *(*(v92 + 96) + 40));
    mlir::IntegerAttr::getValue(&__p, &v87);
    if (LODWORD(v99[0]) > 0x40)
    {
      v57 = *__p;
      operator delete[](__p);
    }

    else
    {
      v57 = __p;
    }
  }

  else
  {
    if (v41 == -1.0 || v41 <= 0.0 || v52 == -1.0 || v52 <= 0.0)
    {
      if (a3)
      {
        mlir::emitError(&__p, a2, v53);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__p, "scale_factor_x and scale_factor_y must be >= 0.0f");
        v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v107 == 1)
        {
          if (v106 != &v107)
          {
            free(v106);
          }

          v74 = v104;
          if (v104)
          {
            v75 = v105;
            v76 = v104;
            if (v105 != v104)
            {
              do
              {
                v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
              }

              while (v75 != v74);
              v76 = v104;
            }

            v105 = v74;
            operator delete(v76);
          }

          v77 = v102;
          if (v102)
          {
            v78 = v103;
            v79 = v102;
            if (v103 != v102)
            {
              do
              {
                v81 = *--v78;
                v80 = v81;
                *v78 = 0;
                if (v81)
                {
                  operator delete[](v80);
                }
              }

              while (v78 != v77);
              v79 = v102;
            }

            v103 = v77;
            operator delete(v79);
          }

          if (v100 != &v101)
          {
            free(v100);
          }
        }
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_56;
    }

    v57 = vcvtms_s32_f32(v41 * v32);
    v56 = vcvtms_s32_f32(v52 * v83);
  }

  v60 = v89;
  if (v89 >= HIDWORD(v89))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v89 + 1, 8);
    v60 = v89;
  }

  *(v88 + v60) = v84;
  LODWORD(v89) = v89 + 1;
  v61 = mlir::anec::getIndexFromDim(2, v26);
  v62 = v89;
  if (v63)
  {
    v64 = *(ArgAttrsAttr + 8 * v61);
    if (v89 >= HIDWORD(v89))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v89 + 1, 8);
      v62 = v89;
    }

    *(v88 + v62) = v64;
    v62 = v89 + 1;
    LODWORD(v89) = v89 + 1;
  }

  if (v62 >= HIDWORD(v89))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v62 + 1, 8);
    v62 = v89;
  }

  *(v88 + v62) = v85;
  v65 = (v89 + 1);
  LODWORD(v89) = v65;
  if (v65 >= HIDWORD(v89))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v65 + 1, 8);
    LODWORD(v65) = v89;
  }

  *(v88 + v65) = v56;
  v66 = (v89 + 1);
  LODWORD(v89) = v66;
  if (v66 >= HIDWORD(v89))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v66 + 1, 8);
    LODWORD(v66) = v89;
  }

  *(v88 + v66) = v57;
  LODWORD(v89) = v89 + 1;
  v67 = v89;
  v68 = v88;
  isSplat = mlir::ElementsAttr::isSplat(v86);
  v70 = mlir::MemRefType::get(v68, v67, isSplat, 0, 0, 0);
  v71 = *(a11 + 8);
  if (v71 >= *(a11 + 12))
  {
    v82 = v70;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v71 + 1, 8);
    v70 = v82;
    LODWORD(v71) = *(a11 + 8);
  }

  *(*a11 + 8 * v71) = v70;
  ++*(a11 + 8);
  v37 = 1;
LABEL_56:
  if (v88 != v90)
  {
    free(v88);
  }

  return v37;
}

uint64_t mlir::anec::ResizeAdaptor::verify(mlir::anec::ResizeAdaptor *this, Location a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v54 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v54); i != mlir::DictionaryAttr::end(&v54); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v54))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v54))
            {
              v51 = "'anec.resize' op requires attribute 'sampling_modes'";
              v53 = 259;
              mlir::emitError(a2.var0.var0, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v65 != 1)
              {
                return v5;
              }

              if (v64 != &v65)
              {
                free(v64);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v63;
                v24 = __p;
                if (v63 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v63 = v22;
                operator delete(v24);
              }

              v9 = v60;
              if (!v60)
              {
                goto LABEL_87;
              }

              v25 = v61;
              v11 = v60;
              if (v61 == v60)
              {
                goto LABEL_86;
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
              goto LABEL_85;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i = (i + 16);
          }

          v28 = *(i + 1);
          if (i != mlir::DictionaryAttr::end(&v54))
          {
            v29 = 0;
            v30 = 0;
            while (mlir::CallGraphNode::getCallableRegion(i) != *(*(*(this + 1) + 96) + 40))
            {
              if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
              {
                v29 = *(i + 1);
              }

              else if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 32))
              {
                v30 = *(i + 1);
              }

              i = (i + 16);
              if (i == mlir::DictionaryAttr::end(&v54))
              {
                goto LABEL_69;
              }
            }

            v38 = *(i + 1);
            if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v14, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isUnsignedInteger(&Value, 64)))
            {
              if (!v38 || *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v51 = v38, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isUnsignedInteger(&Value, 64)))
              {
                if (!v29 || *(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v29, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isF32(&Value)))
                {
                  if (!v30 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v51 = v30, Value = mlir::AffineMapAttr::getValue(&v51), mlir::Type::isF32(&Value)))
                  {
                    if (!v21)
                    {
                      goto LABEL_127;
                    }

                    v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                    v51 = v21;
                    v52 = v39;
                    Type = mlir::ElementsAttr::getType(&v51);
                    v41 = Type;
                    if (Type)
                    {
                      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
                    }

                    Value = v41;
                    v57 = Type;
                    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                    v55 = 2;
                    if (v43 == 1 && *ArgAttrsAttr == v55 && (v50 = v21, (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_1>(&v50) & 1) != 0))
                    {
LABEL_127:
                      if (!v28)
                      {
                        return 1;
                      }

                      v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
                      v51 = v28;
                      v52 = v44;
                      v45 = mlir::ElementsAttr::getType(&v51);
                      v46 = v45;
                      if (v45)
                      {
                        v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
                      }

                      Value = v46;
                      v57 = v45;
                      v47 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
                      v55 = 2;
                      if (v48 == 1 && *v47 == v55)
                      {
                        v50 = v28;
                        if (llvm::all_of<mlir::DenseIntElementsAttr,mlir::anec::CropResizeAdaptor::verify(mlir::Location)::$_2>(&v50))
                        {
                          return 1;
                        }
                      }

                      v49 = "'anec.resize' op attribute 'sampling_modes' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}";
                    }

                    else
                    {
                      v49 = "'anec.resize' op attribute 'sampling_methods' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}";
                    }
                  }

                  else
                  {
                    v49 = "'anec.resize' op attribute 'scale_factor_y' failed to satisfy constraint: 32-bit float attribute";
                  }
                }

                else
                {
                  v49 = "'anec.resize' op attribute 'scale_factor_x' failed to satisfy constraint: 32-bit float attribute";
                }
              }

              else
              {
                v49 = "'anec.resize' op attribute 'width' failed to satisfy constraint: 64-bit unsigned integer attribute";
              }

              v51 = v49;
              v53 = 259;
              mlir::emitError(a2.var0.var0, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            }

            else
            {
              v51 = "'anec.resize' op attribute 'height' failed to satisfy constraint: 64-bit unsigned integer attribute";
              v53 = 259;
              mlir::emitError(a2.var0.var0, &v51, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v65 == 1)
              {
                mlir::Diagnostic::~Diagnostic(&v57);
              }
            }

            return v5;
          }

LABEL_69:
          v51 = "'anec.resize' op requires attribute 'width'";
          v53 = 259;
          mlir::emitError(a2.var0.var0, &v51, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v65 != 1)
          {
            return v5;
          }

          if (v64 != &v65)
          {
            free(v64);
          }

          v31 = __p;
          if (__p)
          {
            v32 = v63;
            v33 = __p;
            if (v63 != __p)
            {
              do
              {
                v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
              }

              while (v32 != v31);
              v33 = __p;
            }

            v63 = v31;
            operator delete(v33);
          }

          v9 = v60;
          if (!v60)
          {
            goto LABEL_87;
          }

          v34 = v61;
          v11 = v60;
          if (v61 == v60)
          {
            goto LABEL_86;
          }

          do
          {
            v36 = *--v34;
            v35 = v36;
            *v34 = 0;
            if (v36)
            {
              operator delete[](v35);
            }
          }

          while (v34 != v9);
          goto LABEL_85;
        }

        i = (i + 16);
      }

      v51 = "'anec.resize' op requires attribute 'sampling_methods'";
      v53 = 259;
      mlir::emitError(a2.var0.var0, &v51, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v65 != 1)
      {
        return v5;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v63;
        v17 = __p;
        if (v63 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v63 = v15;
        operator delete(v17);
      }

      v9 = v60;
      if (!v60)
      {
        goto LABEL_87;
      }

      v18 = v61;
      v11 = v60;
      if (v61 == v60)
      {
        goto LABEL_86;
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
LABEL_85:
      v11 = v60;
      goto LABEL_86;
    }
  }

  v51 = "'anec.resize' op requires attribute 'height'";
  v53 = 259;
  mlir::emitError(a2.var0.var0, &v51, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v63;
      v8 = __p;
      if (v63 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v63 = v6;
      operator delete(v8);
    }

    v9 = v60;
    if (v60)
    {
      v10 = v61;
      v11 = v60;
      if (v61 != v60)
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
        goto LABEL_85;
      }

LABEL_86:
      v61 = v9;
      operator delete(v11);
    }

LABEL_87:
    if (v58 != &v59)
    {
      free(v58);
    }
  }

  return v5;
}

void mlir::anec::Resize::getZinIrUnitInfo(mlir::anec::Resize *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v6 = operator new(0xD0uLL);
  *(v6 + 1) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 138) = 0u;
  *v6 = &unk_1F5B33D08;
  *(v6 + 1) = 0;
  *(v6 + 156) = 0x100000001;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v6 + 164) = _D0;
  *(v6 + 22) = 0;
  *(v6 + 23) = 0;
  *(v6 + 24) = 0;
  v6[200] = 0;
  *(v6 + 8) = 41;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 41, a2, 0, 0);
  *(v6 + 39) = mlir::anec::Resize::getHeight(this);
  *(v6 + 40) = mlir::anec::Resize::getWidth(this);
  ScaleFactorXAttr = mlir::anec::Resize::getScaleFactorXAttr(this);
  mlir::FloatAttr::getValue(&v41, &ScaleFactorXAttr);
  *(v6 + 41) = llvm::APFloat::convertToFloat(&v41, v12, v13, v14);
  v15 = v42;
  v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
  if (v17 == v15)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v42);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v42);
  }

  ScaleFactorXAttr = mlir::anec::Resize::getScaleFactorYAttr(this);
  mlir::FloatAttr::getValue(&v41, &ScaleFactorXAttr);
  *(v6 + 42) = llvm::APFloat::convertToFloat(&v41, v18, v19, v20);
  if (v17 == v42)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v42);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v42);
  }

  v41 = v43;
  v42 = 0x200000000;
  ScaleFactorXAttr = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&ScaleFactorXAttr);
  ScaleFactorXAttr = mlir::Operation::getAttrDictionary(*this);
  v22 = mlir::ArrayAttr::getValue(&ScaleFactorXAttr);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v22 + 16 * v23 - 32), *(*(*(*this + 48) + 96) + 8));
  mlir::getValues<unsigned long>(v24, &v41);
  if (v42)
  {
    v25 = v41;
    v26 = 8 * v42;
    v27 = 3;
    do
    {
      LODWORD(ScaleFactorXAttr) = v27;
      v28 = *v25++;
      HIDWORD(ScaleFactorXAttr) = v28;
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v6 + 128), &ScaleFactorXAttr);
      ++v27;
      v26 -= 8;
    }

    while (v26);
  }

  ScaleFactorXAttr = v40;
  v39 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v29 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v30 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v32 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v29 + 32), (v30 + 16 * v31 - 16), *(*(*(*this + 48) + 96) + 16));
  mlir::getValues<unsigned long>(v32, &ScaleFactorXAttr);
  v33 = ScaleFactorXAttr;
  if (v39)
  {
    v34 = 8 * v39;
    v35 = 3;
    do
    {
      LODWORD(AttrDictionary) = v35;
      v36 = *v33++;
      HIDWORD(AttrDictionary) = v36;
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v6 + 176), &AttrDictionary);
      ++v35;
      v34 -= 8;
    }

    while (v34);
    v33 = ScaleFactorXAttr;
  }

  *a3 = v6;
  if (v33 != v40)
  {
    free(v33);
  }

  if (v41 != v43)
  {
    free(v41);
  }
}

void *mlir::anec::Resize::getHeight(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

void *mlir::anec::Resize::getWidth(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

uint64_t mlir::anec::Resize::getSamplingMethods(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::Resize::getSamplingModes(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
}

BOOL mlir::anec::Resize::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v90 = *MEMORY[0x1E69E9840];
  ANECResizeLayerDescInitialize();
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v8 = v7;
  IndexFromDim = mlir::anec::getIndexFromDim(3, v7);
  if ((v10 & 1) == 0 || (v11 = IndexFromDim, v12 = mlir::anec::getIndexFromDim(4, v8), (v13 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v77 = v79;
  v79[0] = v11;
  v79[1] = v12;
  v78 = 0x200000002;
  v73 = &ANECDimension;
  v76 = 0;
  ANECDimension = 0;
  v74 = 0x200000002;
  v71[0] = v72;
  v71[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v15 = mlir::ArrayAttr::getValue(buffer);
  v17 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v15 + 16 * v16 - 16), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v17, v71);
  v69[0] = v70;
  v69[1] = 0x600000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v19 = mlir::ArrayAttr::getValue(buffer);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v18 + 16), (v19 + 16 * v20 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v21, v69);
  v57 = *v73;
  v58 = *(&off_1E86D3950 + *v71[0]);
  v53 = *v73;
  if (*v69[0])
  {
    v22 = @"NearestNeighbor";
  }

  else
  {
    v22 = @"Linear";
  }

  v54 = v22;
  v59 = *(v73 + 1);
  v60 = *(&off_1E86D3950 + *(v71[0] + 1));
  v55 = *(v73 + 1);
  if (*(v69[0] + 1))
  {
    v23 = @"NearestNeighbor";
  }

  else
  {
    v23 = @"Linear";
  }

  v56 = v23;
  Width = mlir::anec::Resize::getWidth(a1);
  Height = mlir::anec::Resize::getHeight(a1);
  v61[0] = mlir::anec::Resize::getScaleFactorXAttr(a1);
  mlir::FloatAttr::getValue(buffer, v61);
  v51 = llvm::APFloat::convertToFloat(buffer, v24, v25, v26);
  v27 = v81[0];
  v29 = llvm::APFloatBase::PPCDoubleDouble(v28);
  if (v29 == v27)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v81);
  }

  v61[0] = mlir::anec::Resize::getScaleFactorYAttr(a1);
  mlir::FloatAttr::getValue(buffer, v61);
  v52 = llvm::APFloat::convertToFloat(buffer, v30, v31, v32);
  if (v29 == v81[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v81);
  }

  v67[0] = v68;
  v67[1] = 0x100000000;
  v33 = 1;
  *buffer = 1;
  v61[0] = 0;
  ANECUnitValidatorCreate();
  v47 = 0;
  v48 = 0;
  if (ANECValidateResizeLayer())
  {
    v34 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v61);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v62, "Invalid configuration", 21);
    std::stringbuf::str();
    v61[0] = *MEMORY[0x1E69E54D8];
    v35 = *(MEMORY[0x1E69E54D8] + 72);
    *(v61 + *(v61[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v62 = v35;
    v63 = MEMORY[0x1E69E5548] + 16;
    if (v65 < 0)
    {
      operator delete(v64[7].__locale_);
    }

    v63 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v64);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v66);
    LOWORD(v64[0].__locale_) = 260;
    v61[0] = &v45;
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v36 = v86;
      if (v86)
      {
        v37 = v87;
        v38 = v86;
        if (v87 != v86)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v86;
        }

        v87 = v36;
        operator delete(v38);
      }

      v39 = v84;
      if (v84)
      {
        v40 = v85;
        v41 = v84;
        if (v85 != v84)
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
          v41 = v84;
        }

        v85 = v39;
        operator delete(v41);
      }

      if (v82 != &v83)
      {
        free(v82);
      }
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }
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

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  if (v73 != &ANECDimension)
  {
    free(v73);
  }

  if (v77 != v79)
  {
    free(v77);
  }

  return v33;
}

BOOL mlir::anec::Resize::addOpToNetwork(mlir::anec::Resize *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Resize::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::InputView::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = *MEMORY[0x1E69E9840];
  v70 = a6;
  LOBYTE(v71) = 0;
  v72 = 0;
  v73 = a7;
  v74 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v70);
    if (v72 == 1)
    {
      v72 = 0;
    }

    mlir::OperationName::OperationName(&v71, "anec.input_view", 15, Context);
    v72 = 1;
    a1 = v15;
  }

  v75 = a4;
  v76 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::InputViewAdaptor::verify(&v70, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v53[0] = v20;
  v53[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v53);
  v23 = v22;
  Value = mlir::AffineMapAttr::getValue(&v70);
  v25 = mlir::DictionaryAttr::end(&v70);
  v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v25 - 48), **(v71 + 96));
  mlir::IntegerAttr::getValue(&__p, &v54);
  if (v56 > 0x40)
  {
    v26 = *__p;
    operator delete[](__p);
  }

  else
  {
    v26 = __p;
  }

  v52 = v26;
  if (v26 >= v23)
  {
    __p = "'anec.input_view' op attribute 'dimension = {0}' is not consistent with input rank size = {1}";
    v56 = 93;
    v57 = &v64;
    v58 = 2;
    v59 = 1;
    v60 = &unk_1F5B2E950;
    v61 = &v52;
    v62 = &unk_1F5B2E980;
    v63 = v23;
    v64 = &v60;
    v65 = &v62;
    v31.var0.var0 = a3;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v31, &__p);
  }

  v28 = mlir::AffineMapAttr::getValue(&v70);
  v29 = mlir::DictionaryAttr::end(&v70);
  v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v28 + 16), (v29 - 32), *(*(v71 + 96) + 8));
  mlir::IntegerAttr::getValue(&__p, &v54);
  if (v56 > 0x40)
  {
    v30 = *__p;
    operator delete[](__p);
  }

  else
  {
    v30 = __p;
  }

  v51 = v30;
  v32 = mlir::AffineMapAttr::getValue(&v70);
  v33 = mlir::DictionaryAttr::end(&v70);
  v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v32 + 32), (v33 - 16), *(*(v71 + 96) + 16));
  mlir::IntegerAttr::getValue(&__p, &v54);
  if (v56 > 0x40)
  {
    v34 = *__p;
    operator delete[](__p);
  }

  else
  {
    v34 = __p;
  }

  v54 = v34;
  Step = mlir::anec::detail::InputViewGenericAdaptorBase::getStep(&v70);
  v50 = Step;
  v36 = *(ArgAttrsAttr + 8 * v52);
  v49 = v36;
  if (Step < 1)
  {
    if (v34 != v36)
    {
      __p = "'anec.input_view' with negative stride must have size {0} that equals the size of tensor {1} at dimension {2}";
      v56 = 109;
      v57 = &v66;
      v58 = 3;
      v59 = 1;
      v60 = &unk_1F5B2E950;
      v61 = &v54;
      v62 = &unk_1F5B17218;
      v63 = &v49;
      v64 = &unk_1F5B2E950;
      v65 = &v52;
      v66 = &v60;
      v67 = &v62;
      v68[0] = &v64;
      v47.var0.var0 = a3;
      return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v47, &__p);
    }
  }

  else if (v30 + (v34 - 1) * Step + 1 > v36)
  {
    __p = "'anec.input_view' with offset {0}, size {1} and stride {2} is out of bounds for dimension {3} of size {4}";
    v56 = 105;
    v57 = v69;
    v58 = 5;
    v59 = 1;
    v60 = &unk_1F5B2E950;
    v61 = &v51;
    v62 = &unk_1F5B2E950;
    v63 = &v54;
    v64 = &unk_1F5B17218;
    v65 = &v50;
    v66 = &unk_1F5B2E950;
    v67 = &v52;
    v68[0] = &unk_1F5B17218;
    v68[1] = &v49;
    v69[0] = &v60;
    v69[1] = &v62;
    v69[2] = &v64;
    v69[3] = &v66;
    v69[4] = v68;
    v37.var0.var0 = a3;
    return mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v37, &__p);
  }

  LODWORD(v38) = 0;
  v39 = 0;
  __p = &v57;
  v56 = 0x500000000;
  v40 = 8 * v23;
  do
  {
    if (v39 == v52)
    {
      v41 = &v54;
    }

    else
    {
      v41 = ArgAttrsAttr;
    }

    v42 = *v41;
    if (v38 >= HIDWORD(v56))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, &v57, v38 + 1, 8);
      LODWORD(v38) = v56;
    }

    *(__p + v38) = v42;
    v38 = (v56 + 1);
    LODWORD(v56) = v56 + 1;
    ++v39;
    ArgAttrsAttr += 8;
    v40 -= 8;
  }

  while (v40);
  v43 = __p;
  isSplat = mlir::ElementsAttr::isSplat(v53);
  v45 = mlir::MemRefType::get(v43, v38, isSplat, 0, 0, 0);
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    v48 = v45;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
    v45 = v48;
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v45;
  ++*(a11 + 8);
  if (__p != &v57)
  {
    free(__p);
  }

  return 1;
}

uint64_t mlir::anec::InputViewAdaptor::verify(mlir::anec::InputViewAdaptor *this, Location a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v40); i != mlir::DictionaryAttr::end(&v40); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      while (i != mlir::DictionaryAttr::end(&v40))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = *(i + 1);
          while (i != mlir::DictionaryAttr::end(&v40))
          {
            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              v28 = *(i + 1);
              while (i != mlir::DictionaryAttr::end(&v40))
              {
                if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 24))
                {
                  v36 = *(i + 1);
                  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v14, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                  {
                    if (!v21 || *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v21, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                    {
                      if (!v28 || *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v38[0] = v28, Value = mlir::AffineMapAttr::getValue(v38), mlir::Type::isUnsignedInteger(&Value, 64)))
                      {
                        if (!v36)
                        {
                          return 1;
                        }

                        if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                        {
                          v38[0] = v36;
                          Value = mlir::AffineMapAttr::getValue(v38);
                          if (mlir::Type::isSignedInteger(&Value, 64))
                          {
                            return 1;
                          }
                        }

                        v37 = "'anec.input_view' op attribute 'step' failed to satisfy constraint: 64-bit signed integer attribute";
                      }

                      else
                      {
                        v37 = "'anec.input_view' op attribute 'size' failed to satisfy constraint: 64-bit unsigned integer attribute";
                      }
                    }

                    else
                    {
                      v37 = "'anec.input_view' op attribute 'offset' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    }

                    v38[0] = v37;
                    v39 = 259;
                    mlir::emitError(a2.var0.var0, v38, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
                  }

                  else
                  {
                    v38[0] = "'anec.input_view' op attribute 'dimension' failed to satisfy constraint: 64-bit unsigned integer attribute";
                    v39 = 259;
                    mlir::emitError(a2.var0.var0, v38, &Value);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
                    if (Value)
                    {
                      mlir::InFlightDiagnostic::report(&Value);
                    }

                    if (v50 == 1)
                    {
                      mlir::Diagnostic::~Diagnostic(&v42);
                    }
                  }

                  return v5;
                }

                i = (i + 16);
              }

              v38[0] = "'anec.input_view' op requires attribute 'step'";
              v39 = 259;
              mlir::emitError(a2.var0.var0, v38, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v50 != 1)
              {
                return v5;
              }

              if (v49 != &v50)
              {
                free(v49);
              }

              v29 = __p;
              if (__p)
              {
                v30 = v48;
                v31 = __p;
                if (v48 != __p)
                {
                  do
                  {
                    v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
                  }

                  while (v30 != v29);
                  v31 = __p;
                }

                v48 = v29;
                operator delete(v31);
              }

              v9 = v45;
              if (!v45)
              {
                goto LABEL_83;
              }

              v32 = v46;
              v11 = v45;
              if (v46 == v45)
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

          v38[0] = "'anec.input_view' op requires attribute 'size'";
          v39 = 259;
          mlir::emitError(a2.var0.var0, v38, &Value);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v50 != 1)
          {
            return v5;
          }

          if (v49 != &v50)
          {
            free(v49);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v48;
            v24 = __p;
            if (v48 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v48 = v22;
            operator delete(v24);
          }

          v9 = v45;
          if (!v45)
          {
            goto LABEL_83;
          }

          v25 = v46;
          v11 = v45;
          if (v46 == v45)
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

      v38[0] = "'anec.input_view' op requires attribute 'offset'";
      v39 = 259;
      mlir::emitError(a2.var0.var0, v38, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v50 != 1)
      {
        return v5;
      }

      if (v49 != &v50)
      {
        free(v49);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v48;
        v17 = __p;
        if (v48 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v48 = v15;
        operator delete(v17);
      }

      v9 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v18 = v46;
      v11 = v45;
      if (v46 == v45)
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
      v11 = v45;
      goto LABEL_82;
    }
  }

  v38[0] = "'anec.input_view' op requires attribute 'dimension'";
  v39 = 259;
  mlir::emitError(a2.var0.var0, v38, &Value);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v48;
      v8 = __p;
      if (v48 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v48 = v6;
      operator delete(v8);
    }

    v9 = v45;
    if (v45)
    {
      v10 = v46;
      v11 = v45;
      if (v46 != v45)
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
      v46 = v9;
      operator delete(v11);
    }

LABEL_83:
    if (v43 != &v44)
    {
      free(v43);
    }
  }

  return v5;
}

uint64_t mlir::anec::detail::InputViewGenericAdaptorBase::getStep(mlir::anec::detail::InputViewGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v8 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), v3, *(*(*(this + 1) + 96) + 24));
  mlir::IntegerAttr::getValue(&__p, &v8);
  if (v7 > 0x40)
  {
    v4 = *__p;
    operator delete[](__p);
  }

  else if (v7)
  {
    return (__p << -v7) >> -v7;
  }

  else
  {
    return 0;
  }

  return v4;
}

BOOL mlir::anec::InputView::addOpToNetwork(mlir::anec::InputView *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::InputView::getZinIrUnitInfo(v22, a1, a2);
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

uint64_t *mlir::anec::InputView::getZinIrUnitInfo@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::anec::InputView *this@<X0>, mlir::anec::ANECIRNetwork *a3@<X1>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33D30;
  *(v6 + 1) = 0;
  *(v6 + 5) = xmmword_1E0999970;
  v6[96] = 0;
  v6[152] = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 17, a3, 0, 0);
  v7 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v15[0] = v7;
  v15[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v15);
  v10 = v9;
  *(v6 + 20) = mlir::anec::InputView::getOffset(this);
  *(v6 + 21) = mlir::anec::InputView::getSize(this);
  Height = mlir::anec::Resize::getHeight(this);
  DimFromIndex = mlir::anec::getDimFromIndex(Height, v10);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    v13 = dword_1E0999A44[DimFromIndex];
  }

  else
  {
    v13 = 5;
  }

  *(v6 + 23) = v13;
  result = mlir::anec::InputView::getStep(this);
  *(v6 + 22) = result;
  *a1 = v6;
  return result;
}

BOOL mlir::anec::InputView::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  ANECInputViewLayerDescInitialize();
  Offset = mlir::anec::InputView::getOffset(a1);
  Size = mlir::anec::InputView::getSize(a1);
  Step = mlir::anec::InputView::getStep(a1);
  Height = mlir::anec::Resize::getHeight(a1);
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v30 = Offset;
  v31 = Size;
  v32 = Step;
  v40[0] = v41;
  v40[1] = 0x100000000;
  *buffer = 1;
  v34[0] = 0;
  ANECUnitValidatorCreate();
  v28 = 0;
  v29 = 0;
  if (ANECValidateInputViewLayer())
  {
    v12 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v34);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v35, "Invalid configuration", 21);
    std::stringbuf::str();
    v34[0] = *MEMORY[0x1E69E54D8];
    v13 = *(MEMORY[0x1E69E54D8] + 72);
    *(v34 + *(v34[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v35 = v13;
    v36 = MEMORY[0x1E69E5548] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v39);
    v27 = 260;
    v26 = &v24;
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v15 = v47;
      if (v47)
      {
        v16 = v48;
        v17 = v47;
        if (v48 != v47)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = v47;
        }

        v48 = v15;
        operator delete(v17);
      }

      v18 = v45;
      if (v45)
      {
        v19 = v46;
        v20 = v45;
        if (v46 != v45)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v45;
        }

        v46 = v18;
        operator delete(v20);
      }

      if (v43 != &v44)
      {
        free(v43);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }
  }

  else
  {
    v14 = 1;
  }

  ANECUnitValidatorDelete();
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return v14;
}

void *mlir::anec::InputView::getOffset(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

void *mlir::anec::InputView::getSize(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 <= 0x40)
  {
    return __p;
  }

  v5 = *__p;
  operator delete[](__p);
  return v5;
}

uint64_t mlir::anec::InputView::getStep(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  mlir::IntegerAttr::getValue(&__p, &v9);
  if (v8 > 0x40)
  {
    v5 = *__p;
    operator delete[](__p);
  }

  else if (v8)
  {
    return (__p << -v8) >> -v8;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::anec::Transpose::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = a6;
  LOBYTE(v48) = 0;
  v49 = 0;
  v50 = a7;
  v51 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v47);
    if (v49 == 1)
    {
      v49 = 0;
    }

    mlir::OperationName::OperationName(&v48, "anec.transpose", 14, Context);
    v49 = 1;
    a1 = v15;
  }

  v52 = a4;
  v53 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::TransposeAdaptor::verify(&v47, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v40[0] = v20;
  v40[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v40);
  v23 = v22;
  Value = mlir::AffineMapAttr::getValue(&v47);
  v25 = mlir::DictionaryAttr::end(&v47);
  v39 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v25, **(v48 + 96));
  v44 = v46;
  v45 = 0x500000000;
  v26 = (8 * v23) >> 3;
  if (v26 < 6)
  {
    v27 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v26, 8);
    v27 = v45;
  }

  if (v23)
  {
    memcpy(v44 + 8 * v27, ArgAttrsAttr, 8 * v23);
    v27 = v45;
  }

  LODWORD(v45) = v27 + v23;
  v41 = v43;
  v42 = 0x500000000;
  mlir::getListOfPairs<long long>(&v39, &v41);
  v29 = v44;
  if (v42)
  {
    v30 = v41;
    v31 = v41 + 16 * v42;
    do
    {
      v32 = *v30;
      v33 = *(v30 + 1);
      v30 += 16;
      v29[v33] = *(ArgAttrsAttr + v32);
    }

    while (v30 != v31);
  }

  v34 = v45;
  isSplat = mlir::ElementsAttr::isSplat(v40);
  v36 = mlir::MemRefType::get(v29, v34, isSplat, 0, 0, 0);
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v38 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    v36 = v38;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

uint64_t mlir::anec::TransposeAdaptor::verify(mlir::anec::TransposeAdaptor *this, Location a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v36); i != mlir::DictionaryAttr::end(&v36); i += 2)
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
        v34[0] = v14;
        v34[1] = v15;
        Type = mlir::ElementsAttr::getType(v34);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v37[0] = v17;
        v37[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v37);
        if (v18 == 2)
        {
          v32 = v14;
          Value = mlir::ArrayAttr::getValue(&v32);
          v20 = Value;
          if (Value)
          {
            Value = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Value + 8);
          }

          v33[0] = v20;
          v33[1] = Value;
          if (*(mlir::CallableOpInterface::getArgAttrsAttr(v33) + 8) == 2)
          {
            v29 = v14;
            v30[0] = mlir::ArrayAttr::getValue(&v29);
            v30[1] = v21;
            isSplat = mlir::ElementsAttr::isSplat(v30);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v34[0] = "'anec.transpose' op attribute 'transpose_list' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
      v35 = 259;
      mlir::emitError(a2.var0.var0, v34, v37);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v9 = v40;
        if (!v40)
        {
          goto LABEL_49;
        }

        v25 = v41;
        v11 = v40;
        if (v41 == v40)
        {
LABEL_48:
          v41 = v9;
          operator delete(v11);
LABEL_49:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v5;
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
LABEL_47:
        v11 = v40;
        goto LABEL_48;
      }

      return v5;
    }
  }

  v34[0] = "'anec.transpose' op requires attribute 'transpose_list'";
  v35 = 259;
  mlir::emitError(a2.var0.var0, v34, v37);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v43;
      v8 = __p;
      if (v43 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v43 = v6;
      operator delete(v8);
    }

    v9 = v40;
    if (!v40)
    {
      goto LABEL_49;
    }

    v10 = v41;
    v11 = v40;
    if (v41 == v40)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  return v5;
}

void *mlir::getListOfPairs<long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v18, *a1, 0);
  while (1)
  {
    v4 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v16, v4, NumElements);
    if (v19 == v17)
    {
      break;
    }

    v16 = v18;
    v17 = v19;
    *&v19 = v19 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v16, &v14);
    if (v15 > 0x40)
    {
      v7 = *v14;
    }

    else if (v15)
    {
      v7 = (v14 << -v15) >> -v15;
    }

    else
    {
      v7 = 0;
    }

    v11[0] = v18;
    v11[1] = v19;
    *&v19 = v19 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v11, &__p);
    if (v13 > 0x40)
    {
      v8 = *__p;
    }

    else if (v13)
    {
      v8 = (__p << -v13) >> -v13;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9 + 1, 16);
      v9 = *(a2 + 8);
    }

    v10 = (*a2 + 16 * v9);
    *v10 = v7;
    v10[1] = v8;
    ++*(a2 + 8);
    if (v13 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v15 >= 0x41)
    {
      if (v14)
      {
        operator delete[](v14);
      }
    }
  }

  return result;
}

void mlir::anec::Transpose::getZinIrUnitInfo(mlir::anec::Transpose *this@<X0>, mlir::anec::ANECIRNetwork *a2@<X1>, void *a3@<X8>)
{
  v29[10] = *MEMORY[0x1E69E9840];
  v6 = operator new(0x68uLL);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 8) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B33D50;
  *(v6 + 1) = 0;
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  mlir::anec::fillZinIrCommonInfo(*this, v6, 21, a2, 0, 0);
  v7 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v25[0] = v7;
  v25[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v10 = v9;
  v27 = v29;
  v28 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13), **(*(*this + 48) + 96));
  mlir::getListOfPairs<long long>(&AttrDictionary, &v27);
  if (v28)
  {
    v14 = v27;
    v15 = (v27 + 16 * v28);
    do
    {
      AttrDictionary = 0;
      DimFromIndex = mlir::anec::getDimFromIndex(*v14, v10);
      if ((DimFromIndex & 0x100000000) != 0)
      {
        v18 = dword_1E0999A44[DimFromIndex];
      }

      else
      {
        v18 = 5;
      }

      LODWORD(AttrDictionary) = v18;
      v19 = mlir::anec::getDimFromIndex(v14[1], v10);
      if ((v19 & 0x100000000) != 0)
      {
        v16 = dword_1E0999A44[v19];
      }

      else
      {
        v16 = 5;
      }

      HIDWORD(AttrDictionary) = v16;
      std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v6 + 80), &AttrDictionary);
      v14 += 2;
    }

    while (v14 != v15);
  }

  isSplat = mlir::ElementsAttr::isSplat(v25);
  v21 = *(*isSplat + 136);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    AttrDictionary = isSplat;
    Width = mlir::IntegerType::getWidth(&AttrDictionary);
    if (Width == 16)
    {
      if (mlir::IntegerType::getSignedness(&AttrDictionary) == 2)
      {
        v23 = 10;
      }

      else
      {
        v23 = 9;
      }
    }

    else if (Width == 8)
    {
      if (mlir::IntegerType::getSignedness(&AttrDictionary) == 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (v21 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v22 = 11;
    }

    else
    {
      v22 = 0;
    }

    if (v21 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v23 = 3;
    }

    else
    {
      v23 = v22;
    }
  }

  *(v6 + 17) = v23;
  *a3 = v6;
  if (v27 != v29)
  {
    free(v27);
  }
}

BOOL mlir::anec::Transpose::addOpToNetwork(mlir::anec::Transpose *a1, mlir::anec::ANECIRNetwork *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Transpose::getZinIrUnitInfo(a1, a2, v22);
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

BOOL mlir::anec::Transpose::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = v49;
  v48 = 0x500000000;
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::Operation::getAttrDictionary(*a1);
  v8 = mlir::ArrayAttr::getValue(buffer);
  *buffer = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(*a1 + 6) + 96));
  mlir::getListOfPairs<long long>(buffer, &v47);
  ANECTransposeLayerDescInitialize();
  v10 = v48;
  v11 = v47;
  if (!v48)
  {
LABEL_5:
    v13 = 1;
    if (v47 == v49)
    {
      return v13;
    }

LABEL_6:
    free(v11);
    return v13;
  }

  v12 = v47;
  while (*v12 == v12[1])
  {
    v12 += 2;
    if (v12 == (v47 + 16 * v48))
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 16 * v48;
  do
  {
    v17 = *(v47 + v15);
    mlir::CallableOpInterface::getArgAttrsAttr(a2);
    v20 = *(v47 + v15 + 8);
    mlir::CallableOpInterface::getArgAttrsAttr(a2);
    v23 = &v38[v15 / 8];
    v23[1] = ANECDimension;
    v23[2] = v22;
    v15 += 16;
  }

  while (v16 != v15);
  v38[0] = v10;
  v45[0] = v46;
  v45[1] = 0x100000000;
  v13 = 1;
  *buffer = 1;
  v39[0] = 0;
  ANECUnitValidatorCreate();
  v36 = 0;
  v37 = 0;
  if (ANECValidateTransposeLayer())
  {
    v24 = *a1;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v39);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, "Invalid configuration", 21);
    std::stringbuf::str();
    v39[0] = *MEMORY[0x1E69E54D8];
    v25 = *(MEMORY[0x1E69E54D8] + 72);
    *(v39 + *(v39[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v40 = v25;
    v41 = MEMORY[0x1E69E5548] + 16;
    if (v43 < 0)
    {
      operator delete(v42[7].__locale_);
    }

    v41 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v42);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v44);
    LOWORD(v42[0].__locale_) = 260;
    v39[0] = &v34;
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v26 = v55;
      if (v55)
      {
        v27 = v56;
        v28 = v55;
        if (v56 != v55)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = v55;
        }

        v56 = v26;
        operator delete(v28);
      }

      v29 = v53;
      if (v53)
      {
        v30 = v54;
        v31 = v53;
        if (v54 != v53)
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
          v31 = v53;
        }

        v54 = v29;
        operator delete(v31);
      }

      if (v51 != &v52)
      {
        free(v51);
      }
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }
  }

  ANECUnitValidatorDelete();
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  v11 = v47;
  if (v47 != v49)
  {
    goto LABEL_6;
  }

  return v13;
}

unint64_t mlir::anec::Transpose::fold(mlir::Operation **a1, uint64_t a2)
{
  v52[10] = *MEMORY[0x1E69E9840];
  v50 = v52;
  v51 = 0x500000000;
  v46[0] = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(v46);
  v46[0] = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::ArrayAttr::getValue(v46);
  v46[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*a1 + 6) + 96));
  mlir::getListOfPairs<unsigned long long>(v46, &v50);
  if (!v51)
  {
LABEL_5:
    v8 = *(*(*a1 + 9) + 24) | 4;
    goto LABEL_6;
  }

  v7 = v50;
  while (*v7 == *(v7 + 1))
  {
    v7 += 16;
    if (v7 == &v50[16 * v51])
    {
      goto LABEL_5;
    }
  }

  v10 = *(a2 + 40);
  if (*(*a1 + 9))
  {
    v11 = *a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v49[0] = v12;
  v49[1] = v13;
  v14 = *v10;
  if (!*v10)
  {
    v47 = 0;
    v48 = 0;
LABEL_26:
    v8 = 0;
    goto LABEL_6;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8))
  {
    v47 = 0;
    v48 = 0;
    goto LABEL_26;
  }

  v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
  v47 = v14;
  v48 = v15;
  if (!v14)
  {
    goto LABEL_26;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v18 = v17;
  v46[0] = mlir::CallOpInterface::getArgOperands(&v47);
  v46[1] = v19;
  isSplat = mlir::ElementsAttr::isSplat(v46);
  v21 = mlir::RankedTensorType::get(ArgAttrsAttr, v18, isSplat, 0);
  if (mlir::ElementsAttr::isSplat(&v47))
  {
    v22 = v47;
    v23 = v48;
    if (v21)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v24 = 0;
    }

    v8 = mlir::reshapeElementsAttr(v22, v23, v21, v24) & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_6;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v46, v47, v48);
  v45[0] = 0;
  v45[1] = 0;
  if (v21)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v25 = 0;
  }

  mlir::mps::CPUNDArray::tryMakeAliasedArray(v21, v25, v45, v44);
  mlir::CallableOpInterface::getArgAttrsAttr(v49);
  if (v26)
  {
    if (v26 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v27 = 8 * v26;
    v28 = operator new(8 * v26);
    bzero(v28, v27);
    v29 = &v28->i64[v27 / 8];
    if (v27 - 8 >= 0x18)
    {
      v33 = ((v27 - 8) >> 3) + 1;
      v30 = v33 & 0x3FFFFFFFFFFFFFFCLL;
      v31 = &v28->i64[v33 & 0x3FFFFFFFFFFFFFFCLL];
      v34 = xmmword_1E09700F0;
      v35 = v28 + 1;
      v36 = vdupq_n_s64(2uLL);
      v37 = vdupq_n_s64(4uLL);
      v38 = v33 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v35[-1] = v34;
        *v35 = vaddq_s64(v34, v36);
        v34 = vaddq_s64(v34, v37);
        v35 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v33 == v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v30 = 0;
      v31 = v28;
    }

    do
    {
      *v31++ = v30++;
    }

    while (v31 != v29);
LABEL_39:
    v32 = v28;
    goto LABEL_40;
  }

  v29 = 0;
  v32 = 0;
  v28 = 0;
LABEL_40:
  if (v51)
  {
    v39 = v50;
    v40 = &v50[16 * v51];
    do
    {
      v41 = *v39;
      v42 = *(v39 + 1);
      v39 += 16;
      v28->i64[v42] = v41;
    }

    while (v39 != v40);
  }

  mlir::mps::transpose(v46, v44, v32, (v29 - v32) >> 3);
  n128_u64 = v45[0]->n128_u64;
  if (!v45[0])
  {
    n128_u64 = mlir::mps::CPUNDArray::getElementsAttr(v44, 0, 0);
  }

  v8 = n128_u64 & 0xFFFFFFFFFFFFFFFBLL;
  if (v28)
  {
    operator delete(v28);
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v44);
  mlir::mps::CPUNDArray::~CPUNDArray(v46);
LABEL_6:
  if (v50 != v52)
  {
    free(v50);
  }

  return v8;
}

void *mlir::getListOfPairs<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v23, *a1, 0);
  v4 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v4, NumElements);
  for (i = v24; v24 != v22; i = v24)
  {
    v21 = v23;
    v22 = v24;
    *&v24 = i + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v21, &v19);
    if (v20 >= 0x41)
    {
      v10 = v19;
    }

    else
    {
      v10 = &v19;
    }

    v11 = *v10;
    v16[0] = v23;
    v16[1] = v24;
    *&v24 = v24 + 1;
    mlir::DenseElementsAttr::IntElementIterator::operator*(v16, &__p);
    if (v18 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v13 = *p_p;
    v14 = *(a2 + 8);
    if (v14 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v14 + 1, 16);
      v14 = *(a2 + 8);
    }

    v15 = (*a2 + 16 * v14);
    *v15 = v11;
    v15[1] = v13;
    ++*(a2 + 8);
    if (v18 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v20 >= 0x41)
    {
      if (v19)
      {
        operator delete[](v19);
      }
    }

    v8 = *a1;
    v9 = mlir::DenseElementsAttr::getNumElements(a1);
    result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v21, v8, v9);
  }

  return result;
}

uint64_t mlir::anec::Transpose::canonicalize(void *a1, uint64_t a2)
{
  v93[10] = *MEMORY[0x1E69E9840];
  v83 = a1;
  v91 = v93;
  v92 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(a1[6] + 96));
  mlir::getListOfPairs<unsigned long long>(&AttrDictionary, &v91);
  v7 = (*(*(a1[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  AttrDictionary = v7;
  v89 = v8;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
  if (v92)
  {
    v11 = (v92 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11 > 3)
    {
      v14 = v11 + 1;
      v15 = v14 & 3;
      if ((v14 & 3) == 0)
      {
        v15 = 4;
      }

      v16 = v14 - v15;
      v13 = &v91[16 * v16];
      v17 = vdupq_n_s64(v10);
      v18 = (v91 + 32);
      v19 = 0uLL;
      v20 = v17;
      v21 = 0uLL;
      do
      {
        v22 = v18 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v18);
        v17 = vbslq_s8(vcgtq_u64(v17, v23), v23, v17);
        v20 = vbslq_s8(vcgtq_u64(v20, v24), v24, v20);
        v19 = vbslq_s8(vcgtq_u64(v19, v23), v19, v23);
        v21 = vbslq_s8(vcgtq_u64(v21, v24), v21, v24);
        v18 += 8;
        v16 -= 4;
      }

      while (v16);
      v25 = vbslq_s8(vcgtq_u64(v20, v17), v17, v20);
      v26 = vextq_s8(v25, v25, 8uLL).u64[0];
      v10 = vbsl_s8(vcgtd_u64(v26, v25.u64[0]), *v25.i8, v26);
      v27 = vbslq_s8(vcgtq_u64(v19, v21), v19, v21);
      v25.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
      v12 = vbsl_s8(vcgtd_u64(v27.u64[0], v25.u64[0]), *v27.i8, *v25.i8);
    }

    else
    {
      v12 = 0;
      v13 = v91;
    }

    do
    {
      v29 = *v13;
      v13 += 16;
      v28 = v29;
      if (v29 < v10)
      {
        v10 = v28;
      }

      if (*&v12 <= v28)
      {
        v12 = v28;
      }
    }

    while (v13 != &v91[16 * v92]);
  }

  else
  {
    v12 = 0;
  }

  v30 = (ArgAttrsAttr + 8 * v10);
  v31 = ArgAttrsAttr + 8 * *&v12;
  if (v30 == (v31 + 8))
  {
    goto LABEL_32;
  }

  v32 = (*&v12 - v10) & 0x1FFFFFFFFFFFFFFFLL;
  if (v32 >= 3)
  {
    v35 = v32 + 1;
    v36 = (v32 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v34 = v30 + 8 * v36;
    v37 = v30 + 1;
    v38 = 0uLL;
    v39 = vdupq_n_s64(1uLL);
    v40 = v36;
    v41 = 0uLL;
    do
    {
      v38 = vsubq_s64(v38, vmvnq_s8(vceqq_s64(v37[-1], v39)));
      v41 = vsubq_s64(v41, vmvnq_s8(vceqq_s64(*v37, v39)));
      v37 += 2;
      v40 -= 4;
    }

    while (v40);
    v33 = vaddvq_s64(vaddq_s64(v41, v38));
    if (v35 == v36)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v33 = 0;
    v34 = ArgAttrsAttr + 8 * v10;
  }

  v42 = v34 - 8;
  do
  {
    v43 = *(v42 + 8);
    v42 += 8;
    if (v43 != 1)
    {
      ++v33;
    }
  }

  while (v42 != v31);
LABEL_28:
  if (v33 <= 1)
  {
LABEL_32:
    v86[0] = (*(a1 - 1) & 0xFFFFFFFFFFFFFFF8);
    v80 = *(a1[9] + 24);
    v46 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a2 + 8), a1[3], v86, &v80);
    (*(*a2 + 8))(a2, a1, v46);
    v45 = 1;
    goto LABEL_33;
  }

  AttrDictionary = *(a1[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&AttrDictionary);
  if (DefiningOp && *(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    AttrDictionary = &v90;
    v89 = 0x500000000;
    v48 = DefiningOp;
    v86[0] = mlir::Operation::getAttrDictionary(DefiningOp);
    v49 = mlir::ArrayAttr::getValue(v86);
    v86[0] = mlir::Operation::getAttrDictionary(v48);
    v50 = mlir::ArrayAttr::getValue(v86);
    v52 = v48;
    v86[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v49, (v50 + 16 * v51), **(*(v48 + 6) + 96));
    mlir::getListOfPairs<unsigned long long>(v86, &AttrDictionary);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    if (v89)
    {
      v53 = AttrDictionary;
      v54 = 16 * v89;
      do
      {
        v55 = *v53++;
        *v86 = v55;
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v80, v86) = *(&v55 + 1);
        v56 = v86[0];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v78, &v86[1]) = v56;
        v54 -= 16;
      }

      while (v54);
    }

    if (v92)
    {
      v57 = v91;
      v58 = &v91[16 * v92];
      do
      {
        *v86 = *v57;
        __src = v86[0];
        if (v79)
        {
          v60 = (v79 - 1) & (((0xBF58476D1CE4E5B9 * v86[0]) >> 31) ^ (484763065 * LODWORD(v86[0])));
          v61 = *(v78[0] + 2 * v60);
          if (v86[0] == v61)
          {
LABEL_44:
            if (v60 != v79)
            {
              __src = *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](v78, v86);
            }
          }

          else
          {
            v62 = 1;
            while (v61 != -1)
            {
              v63 = v60 + v62++;
              v60 = v63 & (v79 - 1);
              v61 = *(v78[0] + 2 * v60);
              if (v86[0] == v61)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v59 = v86[1];
        *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](&v80, &__src) = v59;
        v57 += 16;
      }

      while (v57 != v58);
    }

    v86[0] = v87;
    v86[1] = 0x500000000;
    if (!v81)
    {
      goto LABEL_65;
    }

    if (v82)
    {
      v64 = 16 * v82;
      v65 = v80;
      while (*v65 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v65 = (v65 + 16);
        v64 -= 16;
        if (!v64)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      v65 = v80;
    }

    v66 = (v80 + 16 * v82);
    if (v65 == v66)
    {
LABEL_65:
      v68 = 0;
    }

    else
    {
      do
      {
        v67 = *(v65 + 1);
        if (*v65 != v67)
        {
          __src = *v65;
          v85 = v67;
          llvm::SmallVectorImpl<long long>::insert<long long const*,void>(v86, v86[0] + 8 * LODWORD(v86[1]), &__src, v86);
        }

        do
        {
          v65 = (v65 + 16);
        }

        while (v65 != v66 && *v65 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v65 != v66);
      v68 = (LODWORD(v86[1]) >> 1);
    }

    __src = v68;
    v85 = 2;
    Context = mlir::Attribute::getContext((a1 + 3));
    v70 = mlir::IntegerType::get(Context, 0x40u, 2u);
    v71 = mlir::RankedTensorType::get(&__src, 2, v70, 0);
    if (v71)
    {
      v72 = v71;
      v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
      v71 = v72;
    }

    else
    {
      v73 = 0;
    }

    v77 = mlir::DenseElementsAttr::getFromRawBuffer(v71, v73, v86[0], 8 * LODWORD(v86[1]));
    v74 = a1[3];
    __src = *(*(v52 + 9) + 24);
    v75 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>((a2 + 8), v74, &__src, &v77);
    ParentFamily = mlir::anec::detail::VerifyAttributesWithFamilyInterfaceTrait<mlir::anec::Invert>::getParentFamily(&v83);
    {
      (*(*a2 + 8))(a2, v83, v75);
    }

    if (v86[0] != v87)
    {
      free(v86[0]);
    }

    llvm::deallocate_buffer(v78[0], (16 * v79));
  }

  v45 = 0;
LABEL_33:
  if (v91 != v93)
  {
    free(v91);
  }

  return v45;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v7 = 0;
    v8 = 1;
    while (v6 != -1)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 == -2;
      }

      if (v9)
      {
        v7 = v5;
      }

      v10 = v4 + v8++;
      v4 = v10 & v3;
      v5 = (*a1 + 16 * (v10 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v7)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v11 = *(a1 + 8);
  if (4 * v11 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v11 = *(v14 + 8);
    v5 = v15;
    goto LABEL_15;
  }

  if (v2 + ~v11 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v11 + 1;
  if (*v5 != -1)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

char *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

BOOL mlir::anec::Padding::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

    mlir::OperationName::OperationName(&v60, "anec.padding", 12, Context);
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

  if ((mlir::anec::PaddingAdaptor::verify(&v59, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v50[0] = v20;
  v50[1] = v19;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v50);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v50);
  v24 = (v22 + 8 * v23);
  v56 = v58;
  v57 = 0x500000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v25, 8);
    v26 = v57;
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
    memcpy(v56 + 8 * v26, ArgAttrsAttr, v24 - ArgAttrsAttr);
    v26 = v57;
  }

LABEL_17:
  LODWORD(v57) = v26 + ((v24 - ArgAttrsAttr) >> 3);
  v53 = v55;
  v54 = 0x500000000;
  v51[0] = v52;
  v51[1] = 0x500000000;
  Value = mlir::AffineMapAttr::getValue(&v59);
  v29 = mlir::DictionaryAttr::end(&v59);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v29 - 16), *(*(v60 + 96) + 8));
  mlir::getValues<long long>(v30, &v53);
  v31 = mlir::AffineMapAttr::getValue(&v59);
  v32 = mlir::DictionaryAttr::end(&v59);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 32), v32, *(*(v60 + 96) + 16));
  mlir::getValues<long long>(v33, v51);
  if (v54)
  {
    v34 = 0;
    v35 = 0;
    v36 = v53;
    v37 = 16 * v54;
    do
    {
      if (v36[v35] != 8)
      {
        v38 = v54;
        mlir::CallableOpInterface::getArgAttrsAttr(v50);
        ReferenceFormatIndex = mlir::anec::getReferenceFormatIndex(v35, v38, v39);
        if ((v41 & 1) == 0)
        {
          v47.var0.var0 = a3;
          v27 = mlir::emitOptionalError<char const(&)[66]>(a2, v47, "'anec.padding' op attributes are inconsistent with input rank");
          goto LABEL_27;
        }

        *(v56 + ReferenceFormatIndex) += *(v51[0] + v34 + 8) + *(v51[0] + v34);
      }

      v35 = (v35 + 1);
      v34 += 16;
    }

    while (v37 != v34);
  }

  v42 = v56;
  v43 = v57;
  isSplat = mlir::ElementsAttr::isSplat(v50);
  v45 = mlir::MemRefType::get(v42, v43, isSplat, 0, 0, 0);
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    v49 = v45;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v46 + 1, 8);
    v45 = v49;
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v45;
  ++*(a11 + 8);
  v27 = 1;
LABEL_27:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return v27;
}

uint64_t mlir::anec::PaddingAdaptor::verify(mlir::anec::PaddingAdaptor *this, Location a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v59 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v59); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v59))
    {
      *&v56 = "'anec.padding' op requires attribute 'background_value'";
      v58 = 259;
      mlir::emitError(a2.var0.var0, &v56, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v71 == 1)
      {
        if (v70 != &v71)
        {
          free(v70);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v69;
          v8 = __p;
          if (v69 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v69 = v6;
          operator delete(v8);
        }

        v9 = v66;
        if (v66)
        {
          v10 = v67;
          v11 = v66;
          if (v67 == v66)
          {
            goto LABEL_83;
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
          goto LABEL_82;
        }

        goto LABEL_84;
      }

      return v5;
    }

    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  while (1)
  {
    if (i == mlir::DictionaryAttr::end(&v59))
    {
      *&v56 = "'anec.padding' op requires attribute 'padding_modes'";
      v58 = 259;
      mlir::emitError(a2.var0.var0, &v56, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v71 == 1)
      {
        if (v70 != &v71)
        {
          free(v70);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v69;
          v17 = __p;
          if (v69 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v69 = v15;
          operator delete(v17);
        }

        v9 = v66;
        if (v66)
        {
          v18 = v67;
          v11 = v66;
          if (v67 == v66)
          {
            goto LABEL_83;
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
          goto LABEL_82;
        }

        goto LABEL_84;
      }

      return v5;
    }

    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
    {
      break;
    }

    i = (i + 16);
  }

  v21 = *(i + 1);
  while (i != mlir::DictionaryAttr::end(&v59))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
    {
      v28 = *(i + 1);
      if (!v21)
      {
LABEL_101:
        if (!v28)
        {
          goto LABEL_123;
        }

        if (!mlir::DenseIntElementsAttr::classof(v28))
        {
          goto LABEL_116;
        }

        v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
        *&v56 = v28;
        *(&v56 + 1) = v46;
        Type = mlir::ElementsAttr::getType(&v56);
        v48 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        *&v63 = v48;
        *(&v63 + 1) = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
        v72 = xmmword_1E0982930;
        if (v50 == 2 && (*ArgAttrsAttr == v72 ? (v51 = ArgAttrsAttr[1] == *(&v72 + 1)) : (v51 = 0), v51 && (v54[0] = v28, Value = mlir::ArrayAttr::getValue(v54), v61 = v52, v55[0] = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(v55, 64))))
        {
LABEL_123:
          if (!v14)
          {
            return 1;
          }

          if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (*&v56 = v14, *&v63 = mlir::AffineMapAttr::getValue(&v56), mlir::Type::isF16(&v63)))
          {
            return 1;
          }

          else
          {
            *&v56 = "'anec.padding' op attribute 'background_value' failed to satisfy constraint: 16-bit float attribute";
            v58 = 259;
            mlir::emitError(a2.var0.var0, &v56, &v63);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
          }
        }

        else
        {
LABEL_116:
          *&v56 = "'anec.padding' op attribute 'padding_sizes' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
          v58 = 259;
          mlir::emitError(a2.var0.var0, &v56, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v71 == 1)
          {
            mlir::Diagnostic::~Diagnostic((&v63 + 8));
          }
        }

        return v5;
      }

      v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
      v54[0] = v21;
      v54[1] = v29;
      v30 = mlir::ElementsAttr::getType(v54);
      v31 = v30;
      if (v30)
      {
        v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
      }

      v55[0] = v31;
      v55[1] = v30;
      v32 = mlir::CallableOpInterface::getArgAttrsAttr(v55);
      v62 = 5;
      if (v33 != 1 || *v32 != v62)
      {
LABEL_66:
        *&v56 = "'anec.padding' op attribute 'padding_modes' failed to satisfy constraint: PaddingMode elements attribute of shape {5}";
        v58 = 259;
        mlir::emitError(a2.var0.var0, &v56, &v63);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        if (v63)
        {
          mlir::InFlightDiagnostic::report(&v63);
        }

        if (v71 == 1)
        {
          if (v70 != &v71)
          {
            free(v70);
          }

          v34 = __p;
          if (__p)
          {
            v35 = v69;
            v36 = __p;
            if (v69 != __p)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = __p;
            }

            v69 = v34;
            operator delete(v36);
          }

          v9 = v66;
          if (v66)
          {
            v37 = v67;
            v11 = v66;
            if (v67 == v66)
            {
LABEL_83:
              v67 = v9;
              operator delete(v11);
              goto LABEL_84;
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
LABEL_82:
            v11 = v66;
            goto LABEL_83;
          }

          goto LABEL_84;
        }

        return v5;
      }

      v53 = v21;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v56, v21, 0);
      NumElements = mlir::DenseElementsAttr::getNumElements(&v53);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, v21, NumElements);
      v63 = v56;
      v64 = v57;
      v42 = v73;
      v43 = v57;
      while (2)
      {
        if (v43 == v42)
        {
          goto LABEL_101;
        }

        mlir::DenseElementsAttr::IntElementIterator::operator*(&v63, &Value);
        v44 = v61;
        LODWORD(v61) = 0;
        if (v44 <= 0x40)
        {
          if (v44 && ((Value << -v44) >> -v44) >= 9)
          {
            goto LABEL_66;
          }

          goto LABEL_91;
        }

        v45 = *Value;
        if (Value)
        {
          operator delete[](Value);
          if (v61 >= 0x41 && Value)
          {
            operator delete[](Value);
            goto LABEL_90;
          }

          if (v45 > 8)
          {
            goto LABEL_66;
          }
        }

        else
        {
LABEL_90:
          if (v45 >= 9)
          {
            goto LABEL_66;
          }
        }

LABEL_91:
        v43 = v64 + 1;
        *&v64 = v64 + 1;
        continue;
      }
    }

    i = (i + 16);
  }

  *&v56 = "'anec.padding' op requires attribute 'padding_sizes'";
  v58 = 259;
  mlir::emitError(a2.var0.var0, &v56, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v69;
      v24 = __p;
      if (v69 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v69 = v22;
      operator delete(v24);
    }

    v9 = v66;
    if (v66)
    {
      v25 = v67;
      v11 = v66;
      if (v67 == v66)
      {
        goto LABEL_83;
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
      goto LABEL_82;
    }

LABEL_84:
    if (*(&v64 + 1) != &v65)
    {
      free(*(&v64 + 1));
    }
  }

  return v5;
}