void sub_1E072C3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072C454);
}

void sub_1E072C444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072C454);
  }

  JUMPOUT(0x1E072C410);
}

uint64_t createUnaryArithmeticOp<mlir::mps::SquareRootOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.square_root", 15);
    v16 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072C6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072C758);
}

void sub_1E072C748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072C758);
  }

  JUMPOUT(0x1E072C714);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ReciprocalSquareRootOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v23, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v28 = 260;
  v27[0] = v23;
  StringAttr = mlir::Builder::getStringAttr(a1, v27);
  v10 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (!v8)
  {
    operator new();
  }

  v11 = [v8 UTF8String];
  v12 = strlen(v11);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  __dst.__r_.__value_.__s.__data_[v15] = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v17 = 1;
  HIBYTE(v28) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v27[0] = p_p;
    v17 = 3;
  }

  LOBYTE(v28) = v17;
  v18 = mlir::Builder::getStringAttr(a1, v27);
  v19 = mlir::NameLoc::get(v18, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:

      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v23[0]);
      v20 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_17;
      }

LABEL_21:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v24 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v20 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_21;
  }

LABEL_17:
  v27[0] = (mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value &>(a1, v19, v20) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v27);

  return DefiningOp;
}

void sub_1E072C9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a14 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ReciprocalOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mps.reciprocal", 14);
    v17 = &__dst.__r_.__value_.__s.__data_[14];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.reciprocal";
    v38 = 14;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::AbsoluteOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1702131052;
    __dst.__r_.__value_.__r.__words[0] = *"mps.absolute";
    v16 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072D0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072D13CLL);
}

void sub_1E072D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072D13CLL);
  }

  JUMPOUT(0x1E072D0F8);
}

uint64_t createUnaryArithmeticOp<mlir::mps::AbsoluteSquareOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 19;
    *(&__dst[0].__r_.__value_.__r.__words[1] + 7) = 1701994869;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.absolute_square";
    v17 = &__dst[0].__r_.__value_.__s.__data_[19];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AbsoluteSquareOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.absolute_square";
    v38 = 19;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteSquareOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::NegativeOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1702259060;
    __dst.__r_.__value_.__r.__words[0] = *"mps.negative";
    v16 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072D7F0);
}

void sub_1E072D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072D7F0);
  }

  JUMPOUT(0x1E072D7ACLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::SignOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6E6769732E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::SignOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072DA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072DAF0);
}

void sub_1E072DAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072DAF0);
  }

  JUMPOUT(0x1E072DAACLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::SignbitOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1953063534;
    __dst.__r_.__value_.__r.__words[0] = *"mps.signbit";
    v17 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SignbitOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.signbit";
    v38 = 11;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::SignbitOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::CeilOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6C6965632E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::CeilOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072E138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072E19CLL);
}

void sub_1E072E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072E19CLL);
  }

  JUMPOUT(0x1E072E158);
}

uint64_t createUnaryArithmeticOp<mlir::mps::FloorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 114;
    __dst.__r_.__value_.__r.__words[0] = *"mps.floor";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072E43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072E4A0);
}

void sub_1E072E490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072E4A0);
  }

  JUMPOUT(0x1E072E45CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::RoundOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 100;
    __dst.__r_.__value_.__r.__words[0] = *"mps.round";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::RoundOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072E740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072E7A4);
}

void sub_1E072E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072E7A4);
  }

  JUMPOUT(0x1E072E760);
}

uint64_t createUnaryArithmeticOp<mlir::mps::RintOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    p_size = (&__dst + v16);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x746E69722E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RintOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.rint";
    v38 = 8;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::RintOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::SinOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.sin", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::SinOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072EDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072EE4CLL);
}

void sub_1E072EE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072EE4CLL);
  }

  JUMPOUT(0x1E072EE08);
}

uint64_t createUnaryArithmeticOp<mlir::mps::CosOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.cos", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::CosOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072F0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072F150);
}

void sub_1E072F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072F150);
  }

  JUMPOUT(0x1E072F10CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::TanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.tan", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::TanOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072F3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072F454);
}

void sub_1E072F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072F454);
  }

  JUMPOUT(0x1E072F410);
}

uint64_t createUnaryArithmeticOp<mlir::mps::SinhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x686E69732E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::SinhOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072F6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072F754);
}

void sub_1E072F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072F754);
  }

  JUMPOUT(0x1E072F710);
}

uint64_t createUnaryArithmeticOp<mlir::mps::CoshOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x68736F632E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::CoshOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072F9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072FA54);
}

void sub_1E072FA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072FA54);
  }

  JUMPOUT(0x1E072FA10);
}

uint64_t createUnaryArithmeticOp<mlir::mps::TanhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x686E61742E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072FCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E072FD54);
}

void sub_1E072FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072FD54);
  }

  JUMPOUT(0x1E072FD10);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ASinOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6E6973612E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072FFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730054);
}

void sub_1E0730044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730054);
  }

  JUMPOUT(0x1E0730010);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ACosOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x736F63612E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E07302F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730354);
}

void sub_1E0730344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730354);
  }

  JUMPOUT(0x1E0730310);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ATanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6E6174612E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E07305F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730654);
}

void sub_1E0730644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730654);
  }

  JUMPOUT(0x1E0730610);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ASinhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 104;
    __dst.__r_.__value_.__r.__words[0] = *"mps.asinh";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E07308F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730958);
}

void sub_1E0730948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730958);
  }

  JUMPOUT(0x1E0730914);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ACoshOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 104;
    __dst.__r_.__value_.__r.__words[0] = *"mps.acosh";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0730BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730C5CLL);
}

void sub_1E0730C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730C5CLL);
  }

  JUMPOUT(0x1E0730C18);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ATanhOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 104;
    __dst.__r_.__value_.__r.__words[0] = *"mps.atanh";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0730EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0730F60);
}

void sub_1E0730F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0730F60);
  }

  JUMPOUT(0x1E0730F1CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::NotOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.not", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0731200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0731264);
}

void sub_1E0731254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0731264);
  }

  JUMPOUT(0x1E0731220);
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsInfiniteOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.is_infinite", 15);
    v17 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.is_infinite";
    v38 = 15;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::IsFiniteOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsFiniteOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.is_finite", 13);
    v17 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.is_finite";
    v38 = 13;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::IsFiniteOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::IsNaNOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 28257;
    __dst.__r_.__value_.__r.__words[0] = *"mps.is_nan";
    v17 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.is_nan";
    v38 = 10;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::IsFiniteOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::ErfOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.erf", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E0731FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0732060);
}

void sub_1E0732050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0732060);
  }

  JUMPOUT(0x1E073201CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::TruncateOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1702125923;
    __dst.__r_.__value_.__r.__words[0] = *"mps.truncate";
    v17 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.truncate";
    v38 = 12;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::BitwiseNotOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.bitwise_not", 15);
    v17 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_not";
    v38 = 15;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::BitwisePopcountOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 20;
    LODWORD(__dst[0].__r_.__value_.__r.__words[2]) = 1953396079;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.bitwise_popcount";
    v17 = &__dst[0].__r_.__value_.__s.__data_[20];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_popcount";
    v38 = 20;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::ConjugateOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.conjugate", 13);
    v17 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.conjugate";
    v38 = 13;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::RealPartOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.real_part", 13);
    v16 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E07331A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E073320CLL);
}

void sub_1E07331FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073320CLL);
  }

  JUMPOUT(0x1E07331C8);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ImaginaryPartOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 18;
    LOWORD(__dst.__r_.__value_.__r.__words[2]) = 29810;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.imaginary_part";
    v16 = &__dst.__r_.__value_.__s.__data_[18];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E07334AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0733510);
}

void sub_1E0733500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733510);
  }

  JUMPOUT(0x1E07334CCLL);
}

uint64_t createBinaryArithmeticOp<mlir::mps::AddOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.add", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07337C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0733824);
}

void sub_1E0733814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733824);
  }

  JUMPOUT(0x1E07337E0);
}

uint64_t createBinaryArithmeticOp<mlir::mps::SubtractOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1952670066;
    __dst.__r_.__value_.__r.__words[0] = *"mps.subtract";
    v16 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0733AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0733B3CLL);
}

void sub_1E0733B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733B3CLL);
  }

  JUMPOUT(0x1E0733AF8);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MultiplyOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 2037149801;
    __dst.__r_.__value_.__r.__words[0] = *"mps.multiply";
    v16 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0733DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0733E54);
}

void sub_1E0733E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0733E54);
  }

  JUMPOUT(0x1E0733E10);
}

uint64_t createBinaryArithmeticOp<mlir::mps::DivideOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 25956;
    __dst.__r_.__value_.__r.__words[0] = *"mps.divide";
    v16 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0734104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0734168);
}

void sub_1E0734158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734168);
  }

  JUMPOUT(0x1E0734124);
}

uint64_t createBinaryArithmeticOp<mlir::mps::ModuloOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 28524;
    __dst.__r_.__value_.__r.__words[0] = *"mps.modulo";
    v16 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0734418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E073447CLL);
}

void sub_1E073446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073447CLL);
  }

  JUMPOUT(0x1E0734438);
}

uint64_t createBinaryArithmeticOp<mlir::mps::PowerOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 114;
    __dst.__r_.__value_.__r.__words[0] = *"mps.power";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E073472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0734790);
}

void sub_1E0734780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734790);
  }

  JUMPOUT(0x1E073474CLL);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MinimumOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1836412265;
    __dst.__r_.__value_.__r.__words[0] = *"mps.minimum";
    v16 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0734A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0734AA8);
}

void sub_1E0734A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734AA8);
  }

  JUMPOUT(0x1E0734A64);
}

uint64_t createBinaryArithmeticOp<mlir::mps::MaximumOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1836412265;
    __dst.__r_.__value_.__r.__words[0] = *"mps.maximum";
    v16 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0734D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0734DC0);
}

void sub_1E0734DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0734DC0);
  }

  JUMPOUT(0x1E0734D7CLL);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::EqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 108;
    __dst.__r_.__value_.__r.__words[0] = *"mps.equal";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0735070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07350D4);
}

void sub_1E07350C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07350D4);
  }

  JUMPOUT(0x1E0735090);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::NotEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.not_equal", 13);
    v16 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0735384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07353E8);
}

void sub_1E07353D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07353E8);
  }

  JUMPOUT(0x1E07353A4);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::LessThanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    p_size = (&__dst + v15);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x7373656C2E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0735694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07356F8);
}

void sub_1E07356E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07356F8);
  }

  JUMPOUT(0x1E07356B4);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::LessThanOrEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mps.less_equal", 14);
    v16 = &__dst.__r_.__value_.__s.__data_[14];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07359A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0735A0CLL);
}

void sub_1E07359FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0735A0CLL);
  }

  JUMPOUT(0x1E07359C8);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1919251553;
    __dst.__r_.__value_.__r.__words[0] = *"mps.greater";
    v16 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0735CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0735D24);
}

void sub_1E0735D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0735D24);
  }

  JUMPOUT(0x1E0735CE0);
}

uint64_t createBinaryCmpArithmeticOp<mlir::mps::GreaterThanOrEqualToOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryCmpArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xFDu, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 17;
    __dst.__r_.__value_.__s.__data_[16] = 108;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.greater_equal";
    v16 = &__dst.__r_.__value_.__s.__data_[17];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0735FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0736038);
}

void sub_1E0736028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0736038);
  }

  JUMPOUT(0x1E0735FF4);
}

uint64_t createBinaryArithmeticOp<mlir::mps::AndOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.and", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07362E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E073634CLL);
}

void sub_1E073633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073634CLL);
  }

  JUMPOUT(0x1E0736308);
}

uint64_t createBinaryArithmeticOp<mlir::mps::OrOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 6;
    qmemcpy(&__dst, "mps.or", 6);
    v16 = &__dst.__r_.__value_.__s.__data_[6];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E07365F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E073665CLL);
}

void sub_1E073664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E073665CLL);
  }

  JUMPOUT(0x1E0736618);
}

uint64_t createBinaryArithmeticOp<mlir::mps::NandOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    p_size = (&__dst + v16);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x646E616E2E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.nand";
    v38 = 8;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::NorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.nor", 7);
    v17 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.nor";
    v38 = 7;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::XorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v25, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v30 = 260;
  v29[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a1, v29);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.xor", 7);
    v16 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v30) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v29[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v30) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v29);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v25[0]);
      v21 = *a3;
      v22 = *(a3 + 8) - *a3;
      if (!v22)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v26 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = *(a3 + 8) - *a3;
  if (!v22)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v22 <= 8)
  {
    goto LABEL_24;
  }

  v29[0] = (mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v29);

  return DefiningOp;
}

void sub_1E0737068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07370CCLL);
}

void sub_1E07370BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E07370CCLL);
  }

  JUMPOUT(0x1E0737088);
}

uint64_t createBinaryArithmeticOp<mlir::mps::XnorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    p_size = (&__dst + v16);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x726F6E782E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.xnor";
    v38 = 8;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::ATan2Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 50;
    __dst.__r_.__value_.__r.__words[0] = *"mps.atan2";
    v17 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.atan2";
    v38 = 9;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseAndOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.bitwise_and", 15);
    v17 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_and";
    v38 = 15;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseOrOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mps.bitwise_or", 14);
    v17 = &__dst.__r_.__value_.__s.__data_[14];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_or";
    v38 = 14;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseXorOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.bitwise_xor", 15);
    v17 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_xor";
    v38 = 15;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseLeftShiftOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 22;
    qmemcpy(__dst, "mps.bitwise_left_shift", 22);
    v17 = &__dst[0].__r_.__value_.__s.__data_[22];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.bitwise_left_shift";
    v38 = 22;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ATan2Op::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createBinaryArithmeticOp<mlir::mps::BitwiseRightShiftOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v41 = 260;
  v40[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v40);
  v10 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (!v8)
  {
    operator new();
  }

  v11 = v8;
  v12 = [v8 UTF8String];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v36, v14, v15);
  v17 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v36;
  }

  v18 = 1;
  HIBYTE(v41) = 1;
  if (v17->__r_.__value_.__s.__data_[0])
  {
    v40[0] = v17;
    v18 = 3;
  }

  LOBYTE(v41) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v40);
  v20 = mlir::NameLoc::get(v19, v10);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_15:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v20;
  Context = mlir::Attribute::getContext(&v33);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.bitwise_right_shift";
    v37 = 23;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v40, v20, v23);
  mlir::mps::ATan2Op::build(a1, v40, *v21, v21[1]);
  v25 = mlir::OpBuilder::create(a1, v40);
  v26 = *(*(v25 + 6) + 16);
  mlir::OperationState::~OperationState(v40);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v30 = v27 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v30);

  return DefiningOp;
}

void sub_1E0738A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t createBinaryArithmeticOp<mlir::mps::CreateComplexOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createBinaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xE9u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 18;
    LOWORD(__dst[0].__r_.__value_.__r.__words[2]) = 30821;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.create_complex";
    v17 = &__dst[0].__r_.__value_.__s.__data_[18];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) - *a3 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.create_complex";
    v38 = 18;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::CreateComplexOp::build(a1, v41, *v22, v22[1]);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createTernaryArithmeticOp<mlir::mps::ClampOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t **a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v26, "createTernaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v31 = 260;
  v30[0] = v26;
  StringAttr = mlir::Builder::getStringAttr(a1, v30);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0x111u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 112;
    __dst.__r_.__value_.__r.__words[0] = *"mps.clamp";
    v16 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v31) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v30);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v26[0]);
      v21 = *a3;
      v22 = a3[1];
      v23 = v22 - *a3;
      if (v23 == 16)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v27 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  v22 = a3[1];
  v23 = v22 - *a3;
  if (v23 == 16)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v22 == v21 || v23 <= 8)
  {
LABEL_25:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v30[0] = (mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>(a1, v20, v21, v21 + 1, v21 + 2) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

void sub_1E073912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0739190);
}

void sub_1E0739180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0739190);
  }

  JUMPOUT(0x1E073914CLL);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::IdentityOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, void **a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v26 = 260;
  v25[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v25);
  v13 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v14 = [v9 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 2037672308;
    __dst.__r_.__value_.__r.__words[0] = *"mps.identity";
    v17 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, &__p, v11, v12);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v19 = 1;
  HIBYTE(v26) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v25[0] = p_p;
    v19 = 3;
  }

  LOBYTE(v26) = v19;
  v20 = mlir::Builder::getStringAttr(a2, v25);
  v21 = mlir::NameLoc::get(v20, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v21;
}

void sub_1E0745E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E0746A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  mlir::OperationState::~OperationState(&a40);

  _Unwind_Resume(a1);
}

void sub_1E07474B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0747B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  mlir::OperationState::~OperationState(&a50);

  _Unwind_Resume(a1);
}

void sub_1E074889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  mlir::OperationState::~OperationState(&a52);

  _Unwind_Resume(a1);
}

void sub_1E0748EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  mlir::OperationState::~OperationState(&a46);

  _Unwind_Resume(a1);
}

void sub_1E0749A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  mlir::OperationState::~OperationState(&a48);

  _Unwind_Resume(a1);
}

void sub_1E074DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48)
{
  *(v54 - 184) = a1;

  _Unwind_Resume(*(v54 - 184));
}

void sub_1E0750074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41)
{
  *(v46 - 184) = a1;

  _Unwind_Resume(*(v46 - 184));
}

EmitterObjC::ReturnOpHandler *EmitterObjC::ReturnOpHandler::ReturnOpHandler(EmitterObjC::ReturnOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFA8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v36 = v5;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v36, 0);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v7 = *(v36 + 9);
  }

  else
  {
    v7 = 0;
  }

  v8 = ODSOperandIndexAndLength;
  v9 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  *(&v35.__r_.__value_.__s + 23) = 2;
  strcpy(&v35, "@[");
  v10 = v9 - ODSOperandIndexAndLength;
  if (v9 != ODSOperandIndexAndLength)
  {
    v11 = v7 + 32 * ODSOperandIndexAndLength;
    v34 = *(v11 + 24);
    v37 = &v34;
    v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34, &std::piecewise_construct, &v37);
    v15 = v12[3];
    v13 = v12 + 3;
    v14 = v15;
    v16 = *(v13 + 23);
    v17 = (v16 >= 0 ? v13 : v14);
    v18 = v16 >= 0 ? *(v13 + 23) : v13[1];
    std::string::append(&v35, v17, v18);
    if (v10 != 1)
    {
      v19 = ~v8 + v9;
      v20 = (v11 + 56);
      do
      {
        v21 = *v20;
        std::string::append(&v35, ", ");
        v34 = v21;
        v37 = &v34;
        v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34, &std::piecewise_construct, &v37);
        v25 = v22[3];
        v23 = (v22 + 3);
        v24 = v25;
        v26 = v23[23];
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        if (v26 >= 0)
        {
          v28 = *(v23 + 23);
        }

        else
        {
          v28 = *(v23 + 1);
        }

        std::string::append(&v35, v27, v28);
        v20 += 4;
        --v19;
      }

      while (v19);
    }
  }

  std::string::append(&v35, "]");
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v35;
  }

  else
  {
    v29 = v35.__r_.__value_.__r.__words[0];
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n    NSArray<MPSGraphTensor *> *returnTensors = %s\n", v29];;
  v31 = [a2[27] stringByAppendingString:v30];
  v32 = a2[27];
  a2[27] = v31;

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1E0750810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterObjC::ConstantOpHandler *EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitterObjC::ConstantOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4AFC0;
  v109 = a3;
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v109);
  v9 = v8;
  if (!AsAttribute && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  mlir::mps::CPUNDArray::CPUNDArray(v106, AsAttribute, v9);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v11 = getMPSShapeFromMLIR(NextResultAtOffset);
  NumElements = mlir::mps::CPUNDArray::getNumElements(v106);
  if ((MPSDataType & 0xDFFFFFFF) != 4)
  {
    v13 = MPSDataType >> 3;
    if (v108 != 1)
    {
      goto LABEL_10;
    }

LABEL_24:
    if (mlir::mps::CPUNDArray::isComplexType(v106))
    {
      v94 = v11;
      v23 = *mlir::mps::CPUNDArray::getSplatComplexValue(v106).i32;
      v25 = v24;
      v26 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v105;
      }

      else
      {
        v27 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v103, v23);
      if (v104 >= 0)
      {
        v28 = v103;
      }

      else
      {
        v28 = v103[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v101, v25);
      if (v102 >= 0)
      {
        v29 = v101;
      }

      else
      {
        v29 = v101[0];
      }

      EmitterObjC::emitMPSShape(v11, __p);
      v30 = v100;
      v31 = __p[0];
      EmitterObjC::emitMPSDataType(v97, MPSDataType);
      v32 = __p;
      if (v30 < 0)
      {
        v32 = v31;
      }

      if (v98 >= 0)
      {
        v33 = v97;
      }

      else
      {
        v33 = v97[0];
      }

      v22 = [v26 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithRealPart:%s\n                  imaginaryPart:%s\n                          shape:%s\n                       dataType:%s]\n    ", v27, v28, v29, v32, v33];;
      v11 = v94;
      if (v98 < 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      SplatFloatValue = -1.0;
      if (mlir::mps::CPUNDArray::isFloatType(v106))
      {
        SplatFloatValue = mlir::mps::CPUNDArray::getSplatFloatValue(v106);
      }

      if (mlir::mps::CPUNDArray::isIntegerType(v106))
      {
        SplatFloatValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v106);
      }

      v38 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v105;
      }

      else
      {
        v39 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::ConstantOpHandler::ConstantOpHandler(EmitObjC *,mlir::Operation *)::$_0::operator()(v103, SplatFloatValue);
      if (v104 >= 0)
      {
        v40 = v103;
      }

      else
      {
        v40 = v103[0];
      }

      EmitterObjC::emitMPSShape(v11, v101);
      v41 = v102;
      v42 = v101[0];
      EmitterObjC::emitMPSDataType(__p, MPSDataType);
      v43 = v101;
      if (v41 < 0)
      {
        v43 = v42;
      }

      if (v100 >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = __p[0];
      }

      v22 = [v38 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithScalar:%s\n                        shape:%s\n                     dataType:%s]\n    ", v39, v40, v43, v44];;
    }

    goto LABEL_137;
  }

  v13 = 1;
  **(a2 + 39) = 1;
  if (NumElements <= 1)
  {
    NumElements = 1;
  }

  else
  {
    NumElements >>= 1;
  }

  if (v108 == 1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v14 = v13 * NumElements;
  v93 = v11;
  if (*(*(a2 + 39) + 1) != 1)
  {
    if (NumElements > 0x20)
    {
      v45 = NumElements;
      v46 = MEMORY[0x1E696AEC0];
      (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v105;
      }

      else
      {
        v47 = v105.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::emitMPSDataType(v103, MPSDataType);
      if (v104 >= 0)
      {
        v48 = v103;
      }

      else
      {
        v48 = v103[0];
      }

      EmitterObjC::emitMPSShape(v11, v101);
      v49 = v102;
      v50 = v101[0];
      EmitterObjC::emitMPSDataType(__p, MPSDataType);
      v51 = v101;
      if (v49 < 0)
      {
        v51 = v50;
      }

      if (v100 >= 0)
      {
        v52 = __p;
      }

      else
      {
        v52 = __p[0];
      }

      v22 = [v46 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithData:MPSGraphTestDescriptor::genRandomConstant(%s, %lu)\n                      shape:%s\n                   dataType:%s]\n    ", v47, v48, v45, v51, v52];;
      v11 = v93;
      if ((v100 & 0x80000000) == 0)
      {
LABEL_138:
        if ((v102 & 0x80000000) == 0)
        {
LABEL_139:
          if ((v104 & 0x80000000) == 0)
          {
LABEL_140:
            if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_141;
            }

            goto LABEL_75;
          }

LABEL_74:
          operator delete(v103[0]);
          if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_141;
          }

LABEL_75:
          operator delete(v105.__r_.__value_.__l.__data_);
          goto LABEL_141;
        }

LABEL_73:
        operator delete(v101[0]);
        if ((v104 & 0x80000000) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_74;
      }

LABEL_72:
      operator delete(__p[0]);
      if ((v102 & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_73;
    }

    v34 = v107;
    memset(&v105, 0, sizeof(v105));
    std::string::resize(&v105, (2 * (((v14 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL, 0);
    if (3 * (v14 / 3))
    {
      v36 = 0;
      v35 = 0;
      do
      {
        v53 = *(v34 + v36);
        v54 = *(v34 + v36 + 2);
        v55 = v54 | (*(v34 + v36 + 1) << 8);
        v56 = (v53 << 16) | (*(v34 + v36 + 1) << 8);
        v57 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v53 >> 2];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v105;
        }

        else
        {
          v58 = v105.__r_.__value_.__r.__words[0];
        }

        v58->__r_.__value_.__s.__data_[v35] = v57;
        v59 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v56 >> 12) & 0x3F];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v105;
        }

        else
        {
          v60 = v105.__r_.__value_.__r.__words[0];
        }

        v60->__r_.__value_.__s.__data_[v35 + 1] = v59;
        v61 = v54 & 0x3F;
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v105;
        }

        else
        {
          v62 = v105.__r_.__value_.__r.__words[0];
        }

        v62->__r_.__value_.__s.__data_[v35 + 2] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v55 >> 6) & 0x3F];
        v63 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v61];
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v105;
        }

        else
        {
          v64 = v105.__r_.__value_.__r.__words[0];
        }

        v64->__r_.__value_.__s.__data_[v35 + 3] = v63;
        v36 += 3;
        v35 += 4;
      }

      while (v36 < 3 * (v14 / 3));
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v65 = v36 + 1;
    if (v36 + 1 == v14)
    {
      v66 = *(v34 + v36);
      v67 = v105.__r_.__value_.__r.__words[0];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v105;
      }

      v67->__r_.__value_.__s.__data_[v35] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v66 >> 2];
      v68 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[16 * (v66 & 3)];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &v105;
      }

      else
      {
        v69 = v105.__r_.__value_.__r.__words[0];
      }

      v69->__r_.__value_.__s.__data_[v35 + 1] = v68;
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = &v105;
      }

      else
      {
        v70 = v105.__r_.__value_.__r.__words[0];
      }

      v70->__r_.__value_.__s.__data_[v35 + 2] = 61;
    }

    else
    {
      if (v36 + 2 != v14)
      {
        goto LABEL_116;
      }

      v71 = *(v34 + v36);
      v72 = *(v34 + v65);
      v73 = ((v72 & 0xF0) << 8) | (v71 << 16);
      v74 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[v71 >> 2];
      v75 = v105.__r_.__value_.__r.__words[0];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = &v105;
      }

      v75->__r_.__value_.__s.__data_[v35] = v74;
      v76 = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[(v73 >> 12) & 0x3F];
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &v105;
      }

      else
      {
        v77 = v105.__r_.__value_.__r.__words[0];
      }

      v77->__r_.__value_.__s.__data_[v35 + 1] = v76;
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &v105;
      }

      else
      {
        v78 = v105.__r_.__value_.__r.__words[0];
      }

      v78->__r_.__value_.__s.__data_[v35 + 2] = llvm::encodeBase64<llvm::ArrayRef<char>>(llvm::ArrayRef<char> const&)::Table[4 * (v72 & 0xF)];
    }

    v79 = &v105;
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = v105.__r_.__value_.__r.__words[0];
    }

    v79->__r_.__value_.__s.__data_[v35 + 3] = 61;
LABEL_116:
    v80 = MEMORY[0x1E696AEC0];
    (*(*a2 + 32))(v103, a2, NextResultAtOffset);
    if (v104 >= 0)
    {
      v81 = v103;
    }

    else
    {
      v81 = v103[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v105;
    }

    else
    {
      v82 = v105.__r_.__value_.__r.__words[0];
    }

    (*(*a2 + 32))(v101, a2, NextResultAtOffset);
    if (v102 >= 0)
    {
      v83 = v101;
    }

    else
    {
      v83 = v101[0];
    }

    (*(*a2 + 32))(__p, a2, NextResultAtOffset);
    v92 = v80;
    if (v100 >= 0)
    {
      v84 = __p;
    }

    else
    {
      v84 = __p[0];
    }

    EmitterObjC::emitMPSShape(v11, v97);
    v85 = v98;
    v86 = v97[0];
    EmitterObjC::emitMPSDataType(v95, MPSDataType);
    v87 = v97;
    if (v85 < 0)
    {
      v87 = v86;
    }

    if (v96 >= 0)
    {
      v88 = v95;
    }

    else
    {
      v88 = v95[0];
    }

    v22 = [v92 stringWithFormat:@"\n    const char *%s_b64 = %s\n    MPSGraphTensor *%s = \n    [graph constantWithData:decodeBase64(%s_b64)\n                      shape:%s\n                   dataType:%s];\n    ", v81, v82, v83, v84, v87, v88];;
    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    if (v98 < 0)
    {
LABEL_136:
      operator delete(v97[0]);
    }

LABEL_137:
    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_72;
  }

  v15 = *(a2 + 37);
  [0 writeBytes:v107 strideBytes:0];
  v16 = MEMORY[0x1E696AEC0];
  (*(*a2 + 32))(&v105, a2, NextResultAtOffset);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v105;
  }

  else
  {
    v17 = v105.__r_.__value_.__r.__words[0];
  }

  EmitterObjC::emitMPSShape(v11, v103);
  v18 = v104;
  v19 = v103[0];
  EmitterObjC::emitMPSDataType(v101, MPSDataType);
  v20 = v103;
  if (v18 < 0)
  {
    v20 = v19;
  }

  if (v102 >= 0)
  {
    v21 = v101;
  }

  else
  {
    v21 = v101[0];
  }

  v22 = [v16 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph constantWithData:[data subdataWithRange:NSMakeRange(%lu, %lu)]\n                      shape:%s\n                   dataType:%s]\n    ", v17, v15, v14, v20, v21];;
  v11 = v93;
  if ((v102 & 0x80000000) == 0)
  {
    if ((v104 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_77:
    operator delete(v103[0]);
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_78:
    operator delete(v105.__r_.__value_.__l.__data_);
    goto LABEL_22;
  }

  operator delete(v101[0]);
  if (v104 < 0)
  {
    goto LABEL_77;
  }

LABEL_21:
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_22:
  [*(a2 + 38) appendBytes:v107 length:v14];
  *(a2 + 37) += v14;
LABEL_141:
  v89 = [*(a2 + 27) stringByAppendingString:v22];
  v90 = *(a2 + 27);
  *(a2 + 27) = v89;

  mlir::mps::CPUNDArray::~CPUNDArray(v106);
  return this;
}