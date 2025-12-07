void sub_1E07A24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((a63 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a63 & 0x80000000) == 0)
  {
LABEL_3:
    if (a66 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a58);
  if (a66 < 0)
  {
LABEL_4:
    operator delete(a65);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v68 - 217) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a67);
  if (*(v68 - 217) < 0)
  {
LABEL_6:
    operator delete(*(v68 - 240));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SortOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, std::string *a3, unsigned int a4, void *a5)
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

    p_size = (&__dst + v16);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x74726F732E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
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

void sub_1E07A2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::SortOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.sort";
    v19[3] = 8;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::SortOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

void sub_1E07A2C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E07A2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void EmitObjC::initializeOps(EmitObjC *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (qword_1EE17DDD8 != -1)
  {
    dispatch_once(&qword_1EE17DDD8, &__block_literal_global_4);
  }

  Context = mlir::Attribute::getContext((*(this + 7) + 24));
  mlir::PassManager::PassManager(v27, Context, "any", 3uLL, 1);
  WeakRetained = objc_loadWeakRetained(this + 8);
  v4 = ([WeakRetained options] & 2) == 0;

  if (!v4)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(v26);
    v5 = mlir::OpPrintingFlags::elideLargeElementsAttrs(v26, 256);
    v30[0] = &unk_1F5B4BDC0;
    v31 = v30;
    v28[0] = &unk_1F5B4BE40;
    v29 = v28;
    v6 = llvm::dbgs(v5);
    v25[0] = v26[0];
    v25[1] = v26[1];
    v25[2] = v26[2];
    mlir::PassManager::enableIRPrinting(v27, v30, v28, 0, 0, 0, v6, v25);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      v7 = v31;
      if (v31 != v30)
      {
LABEL_8:
        if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (v29)
      {
        (*(*v29 + 40))(v29);
      }

      v7 = v31;
      if (v31 != v30)
      {
        goto LABEL_8;
      }
    }

    (*(*v7 + 32))(v7);
LABEL_12:
    mlir::PassManager::enableTiming(v27);
  }

  v8 = objc_loadWeakRetained(this + 8);
  v9 = ([v8[46] compilerOptions] & 0x200) == 0;

  if (!v9)
  {
    mlir::mps::createConvertF32ToF16Pass(v26);
    v10 = *&v26[0];
    *&v26[0] = 0;
    v24 = v10;
    mlir::OpPassManager::addPass(v27, &v24);
    v11 = v24;
    v24 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *&v26[0];
    *&v26[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = mlir::OpPassManager::nest(v27, "func.func", 9uLL);
  mlir::createCanonicalizerPass(&v23);
  mlir::OpPassManager::addPass(v13, &v23);
  v14 = v23;
  v23 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15.var0.var0 = *(this + 7);
  if (!mlir::PassManager::run(v27, v15) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(((*(this + 7) + 16 * ((*(*(this + 7) + 44) >> 23) & 1) + ((*(*(this + 7) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 7) + 40) + 8);
  if (v16)
  {
    v17 = v16 - 8;
  }

  else
  {
    v17 = 0;
  }

  v22 = @"//\n// Automatic code generation with EmitObjC\n//\n\n#ifndef ModelObjC_h\n#define ModelObjC_h\n\n#import <Foundation/Foundation.h>\n\n";
  *&v26[0] = this;
  *(&v26[0] + 1) = &v22;
  v18 = *(v17 + 40);
  v19 = v17 + 32;
  if (v18 != v17 + 32)
  {
    do
    {
      v20 = *(v18 + 8);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      *&v25[0] = v26;
      mlir::detail::walk<mlir::ForwardIterator>(v21, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitObjC13initializeOpsEvE3__2NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v25, 1);
      v18 = v20;
    }

    while (v20 != v19);
  }

  if (_MergedGlobals_66 == 1)
  {
    printf("%s", [*(this + 27) UTF8String]);
  }

  mlir::PassManager::~PassManager(v27);
}

void sub_1E07A38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  mlir::PassManager::~PassManager(va);
  _Unwind_Resume(a1);
}

void ___ZN8EmitObjC13initializeOpsEv_block_invoke()
{
  if (getenv("MPSGRAPH_EMIT_OBJC_DUMP"))
  {
    NSLog(&cfstr_MpsgraphEmitOb_0.isa);
    _MergedGlobals_66 = 1;
  }
}

void EmitObjC::initOp(EmitObjC *this, mlir::Block **a2)
{
  v4 = mlir::OpPrintingFlags::OpPrintingFlags(v26);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(v4, 64);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  v17 = 0;
  v21 = 0;
  v22 = 1;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v16 = &unk_1F5B3FB30;
  v23 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
  mlir::Operation::print(a2, &v16, v26);
  v5 = *(this + 27);
  v6 = __p;
  if (v25 < 0)
  {
    v6 = __p[0];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n    // %s", v6];
  v8 = [v5 stringByAppendingString:v7];
  v9 = *(this + 27);
  *(this + 27) = v8;

  v27 = *(a2[6] + 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v27);
  v11 = strlen(AttrData);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v15 = v11;
  if (v11)
  {
    memmove(&__dst, AttrData, v11);
  }

  *(&__dst + v12) = 0;
  v13 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  switch(*(v13 + 10))
  {
    case 1:
      EmitObjC::createOp<EmitterObjC::AbsoluteOpHandler>(this, a2);
    case 2:
      EmitObjC::createOp<EmitterObjC::AbsoluteSquareOpHandler>(this, a2);
    case 3:
      EmitObjC::createOp<EmitterObjC::ACosOpHandler>(this, a2);
    case 4:
      EmitObjC::createOp<EmitterObjC::ACoshOpHandler>(this, a2);
    case 5:
      EmitObjC::createOp<EmitterObjC::AddOpHandler>(this, a2);
    case 7:
      EmitObjC::createOp<EmitterObjC::AndOpHandler>(this, a2);
    case 8:
      EmitObjC::createOp<EmitterObjC::ASinOpHandler>(this, a2);
    case 9:
      EmitObjC::createOp<EmitterObjC::ASinhOpHandler>(this, a2);
    case 0xA:
      EmitObjC::createOp<EmitterObjC::ATanOpHandler>(this, a2);
    case 0xB:
      EmitObjC::createOp<EmitterObjC::ATan2OpHandler>(this, a2);
    case 0xC:
      EmitObjC::createOp<EmitterObjC::ATanhOpHandler>(this, a2);
    case 0xD:
      EmitObjC::createOp<EmitterObjC::AssignVariableOpHandler>(this, a2);
    case 0x10:
      EmitObjC::createOp<EmitterObjC::BiasAddOpHandler>(this, a2);
    case 0x11:
      EmitObjC::createOp<EmitterObjC::BitwiseAndOpHandler>(this, a2);
    case 0x12:
      EmitObjC::createOp<EmitterObjC::BitwiseLeftShiftOpHandler>(this, a2);
    case 0x13:
      EmitObjC::createOp<EmitterObjC::BitwiseNotOpHandler>(this, a2);
    case 0x14:
      EmitObjC::createOp<EmitterObjC::BitwiseOrOpHandler>(this, a2);
    case 0x15:
      EmitObjC::createOp<EmitterObjC::BitwisePopcountOpHandler>(this, a2);
    case 0x16:
      EmitObjC::createOp<EmitterObjC::BitwiseRightShiftOpHandler>(this, a2);
    case 0x17:
      EmitObjC::createOp<EmitterObjC::BitwiseXorOpHandler>(this, a2);
    case 0x19:
      EmitObjC::createOp<EmitterObjC::BroadcastToOpHandler>(this, a2);
    case 0x1B:
      EmitObjC::createOp<EmitterObjC::CastOpHandler>(this, a2);
    case 0x1C:
      EmitObjC::createOp<EmitterObjC::CeilOpHandler>(this, a2);
    case 0x1D:
      EmitObjC::createOp<EmitterObjC::ClampOpHandler>(this, a2);
    case 0x1F:
      EmitObjC::createOp<EmitterObjC::ConcatOpHandler>(this, a2);
    case 0x21:
      EmitObjC::createOp<EmitterObjC::ConjugateOpHandler>(this, a2);
    case 0x22:
      EmitObjC::createOp<EmitterObjC::Conv2DOpHandler>(this, a2);
    case 0x23:
      EmitObjC::createOp<EmitterObjC::Conv2DDataGradientOpHandler>(this, a2);
    case 0x28:
      EmitObjC::createOp<EmitterObjC::ConstantOpHandler>(this, a2);
    case 0x2A:
      EmitObjC::createOp<EmitterObjC::CosOpHandler>(this, a2);
    case 0x2B:
      EmitObjC::createOp<EmitterObjC::CoshOpHandler>(this, a2);
    case 0x2D:
      EmitObjC::createOp<EmitterObjC::CreateComplexOpHandler>(this, a2);
    case 0x2F:
      EmitObjC::createOp<EmitterObjC::CropOpHandler>(this, a2);
    case 0x36:
      EmitObjC::createOp<EmitterObjC::DepthToSpace2DOpHandler>(this, a2);
    case 0x3A:
      EmitObjC::createOp<EmitterObjC::DepthwiseConv3DOpHandler>(this, a2);
    case 0x3E:
      EmitObjC::createOp<EmitterObjC::DequantizeOpHandler>(this, a2);
    case 0x40:
      EmitObjC::createOp<EmitterObjC::DivideOpHandler>(this, a2);
    case 0x43:
      EmitObjC::createOp<EmitterObjC::EqualToOpHandler>(this, a2);
    case 0x44:
      EmitObjC::createOp<EmitterObjC::ErfOpHandler>(this, a2);
    case 0x45:
      EmitObjC::createOp<EmitterObjC::ExpandDimsOpHandler>(this, a2);
    case 0x46:
      EmitObjC::createOp<EmitterObjC::ExponentOpHandler>(this, a2);
    case 0x47:
      EmitObjC::createOp<EmitterObjC::ExponentBase2OpHandler>(this, a2);
    case 0x48:
      EmitObjC::createOp<EmitterObjC::ExponentBase10OpHandler>(this, a2);
    case 0x4E:
      EmitObjC::createOp<EmitterObjC::FloorOpHandler>(this, a2);
    case 0x53:
      EmitObjC::createOp<EmitterObjC::GatherOpHandler>(this, a2);
    case 0x57:
      EmitObjC::createOp<EmitterObjC::GreaterThanOpHandler>(this, a2);
    case 0x58:
      EmitObjC::createOp<EmitterObjC::GreaterThanOrEqualToOpHandler>(this, a2);
    case 0x5F:
      EmitObjC::createOp<EmitterObjC::ImaginaryPartOpHandler>(this, a2);
    case 0x60:
      EmitObjC::createOp<EmitterObjC::IsFiniteOpHandler>(this, a2);
    case 0x61:
      EmitObjC::createOp<EmitterObjC::IsInfiniteOpHandler>(this, a2);
    case 0x62:
      EmitObjC::createOp<EmitterObjC::IsNaNOpHandler>(this, a2);
    case 0x64:
      EmitObjC::createOp<EmitterObjC::LessThanOpHandler>(this, a2);
    case 0x65:
      EmitObjC::createOp<EmitterObjC::LessThanOrEqualToOpHandler>(this, a2);
    case 0x69:
      EmitObjC::createOp<EmitterObjC::LogarithmOpHandler>(this, a2);
    case 0x6A:
      EmitObjC::createOp<EmitterObjC::LogarithmBase2OpHandler>(this, a2);
    case 0x6B:
      EmitObjC::createOp<EmitterObjC::LogarithmBase10OpHandler>(this, a2);
    case 0x70:
      EmitObjC::createOp<EmitterObjC::MatMulOpHandler>(this, a2);
    case 0x74:
      EmitObjC::createOp<EmitterObjC::MaximumOpHandler>(this, a2);
    case 0x77:
      EmitObjC::createOp<EmitterObjC::MinimumOpHandler>(this, a2);
    case 0x78:
      EmitObjC::createOp<EmitterObjC::ModuloOpHandler>(this, a2);
    case 0x79:
      EmitObjC::createOp<EmitterObjC::MultiplyOpHandler>(this, a2);
    case 0x7A:
      EmitObjC::createOp<EmitterObjC::NandOpHandler>(this, a2);
    case 0x7B:
      EmitObjC::createOp<EmitterObjC::NegativeOpHandler>(this, a2);
    case 0x7C:
      EmitObjC::createOp<EmitterObjC::NorOpHandler>(this, a2);
    case 0x7D:
      EmitObjC::createOp<EmitterObjC::NormalizationOpHandler>(this, a2);
    case 0x7E:
      EmitObjC::createOp<EmitterObjC::NotOpHandler>(this, a2);
    case 0x7F:
      EmitObjC::createOp<EmitterObjC::NotEqualToOpHandler>(this, a2);
    case 0x81:
      EmitObjC::createOp<EmitterObjC::OrOpHandler>(this, a2);
    case 0x82:
      EmitObjC::createOp<EmitterObjC::PadOpHandler>(this, a2);
    case 0x84:
      EmitObjC::createOp<EmitterObjC::PermuteOpHandler>(this, a2);
    case 0x85:
      EmitObjC::createOp<EmitterObjC::PoolAvgOpHandler>(this, a2);
    case 0x89:
      EmitObjC::createOp<EmitterObjC::PoolMaxOpHandler>(this, a2);
    case 0x8C:
      EmitObjC::createOp<EmitterObjC::PowerOpHandler>(this, a2);
    case 0x8F:
      EmitObjC::createOp<EmitterObjC::QuantizeOpHandler>(this, a2);
    case 0x96:
      EmitObjC::createOp<EmitterObjC::ReadVariableOpHandler>(this, a2);
    case 0x97:
      EmitObjC::createOp<EmitterObjC::RealPartOpHandler>(this, a2);
    case 0x98:
      EmitObjC::createOp<EmitterObjC::ReciprocalOpHandler>(this, a2);
    case 0x9D:
      EmitObjC::createOp<EmitterObjC::ReductionMeanOpHandler>(this, a2);
    case 0xA2:
      EmitObjC::createOp<EmitterObjC::ReductionVarianceOpHandler>(this, a2);
    case 0xA5:
      EmitObjC::createOp<EmitterObjC::ReinterpretCastOpHandler>(this, a2);
    case 0xA6:
      EmitObjC::createOp<EmitterObjC::ReluOpHandler>(this, a2);
    case 0xA7:
      EmitObjC::createOp<EmitterObjC::Relu6OpHandler>(this, a2);
    case 0xA8:
      EmitObjC::createOp<EmitterObjC::ReshapeOpHandler>(this, a2);
    case 0xA9:
      EmitObjC::createOp<EmitterObjC::ResizeOpHandler>(this, a2);
    case 0xAB:
      EmitObjC::createOp<EmitterObjC::ReturnOpHandler>(this, a2);
    case 0xAE:
      EmitObjC::createOp<EmitterObjC::ReciprocalSquareRootOpHandler>(this, a2);
    case 0xAF:
      EmitObjC::createOp<EmitterObjC::RintOpHandler>(this, a2);
    case 0xB1:
      EmitObjC::createOp<EmitterObjC::RoundOpHandler>(this, a2);
    case 0xB7:
      EmitObjC::createOp<EmitterObjC::SelectOpHandler>(this, a2);
    case 0xB8:
      EmitObjC::createOp<EmitterObjC::ShapeOpHandler>(this, a2);
    case 0xB9:
      EmitObjC::createOp<EmitterObjC::SigmoidOpHandler>(this, a2);
    case 0xBA:
      EmitObjC::createOp<EmitterObjC::SignOpHandler>(this, a2);
    case 0xBB:
      EmitObjC::createOp<EmitterObjC::SignbitOpHandler>(this, a2);
    case 0xBC:
      EmitObjC::createOp<EmitterObjC::SinOpHandler>(this, a2);
    case 0xBF:
      EmitObjC::createOp<EmitterObjC::SinhOpHandler>(this, a2);
    case 0xC1:
      EmitObjC::createOp<EmitterObjC::SliceOpHandler>(this, a2);
    case 0xC2:
      EmitObjC::createOp<EmitterObjC::SoftmaxOpHandler>(this, a2);
    case 0xC6:
      EmitObjC::createOp<EmitterObjC::SpaceToDepth2DOpHandler>(this, a2);
    case 0xC9:
      EmitObjC::createOp<EmitterObjC::SquareOpHandler>(this, a2);
    case 0xCA:
      EmitObjC::createOp<EmitterObjC::SquareRootOpHandler>(this, a2);
    case 0xCB:
      EmitObjC::createOp<EmitterObjC::SqueezeOpHandler>(this, a2);
    case 0xCE:
      EmitObjC::createOp<EmitterObjC::StridedSliceOpHandler>(this, a2);
    case 0xD0:
      EmitObjC::createOp<EmitterObjC::StridedSliceUpdateOpHandler>(this, a2);
    case 0xD2:
      EmitObjC::createOp<EmitterObjC::SubtractOpHandler>(this, a2);
    case 0xD3:
      EmitObjC::createOp<EmitterObjC::SwishOpHandler>(this, a2);
    case 0xD4:
      EmitObjC::createOp<EmitterObjC::TanOpHandler>(this, a2);
    case 0xD5:
      EmitObjC::createOp<EmitterObjC::TanhOpHandler>(this, a2);
    case 0xDB:
      EmitObjC::createOp<EmitterObjC::TileOpHandler>(this, a2);
    case 0xDF:
      EmitObjC::createOp<EmitterObjC::TransposeOpHandler>(this, a2);
    case 0xE4:
      EmitObjC::createOp<EmitterObjC::VariableFromTensorOpHandler>(this, a2);
    case 0xE7:
      EmitObjC::createOp<EmitterObjC::XorOpHandler>(this, a2);
    case 0xE8:
      EmitObjC::createOp<EmitterObjC::XnorOpHandler>(this, a2);
    default:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v15 < 0)
      {
        operator delete(__dst);
        llvm::raw_ostream::~raw_ostream(&v16);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          return;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v16);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          return;
        }
      }

      operator delete(__p[0]);
      return;
  }
}

void sub_1E07A43EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
    llvm::raw_ostream::~raw_ostream(&a17);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    llvm::raw_ostream::~raw_ostream(&a17);
    if ((a29 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  JUMPOUT(0x1E07A4444);
}

void sub_1E07A442C(_Unwind_Exception *a1)
{
  llvm::raw_ostream::~raw_ostream(v2);
  if (v3 < 0)
  {
    operator delete(v2[7]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07A4408);
}

void sub_1E07A4684(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4958(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4C2C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A4F00(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5214(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5538(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A581C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5AF0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5C38(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A5E90(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A61A4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6488(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A65D0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6868(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6B8C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A6E70(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7184(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7468(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A777C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7AA0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7BF8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7CC4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A7F1C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8064(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A82BC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8404(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A84D0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A859C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A87F4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8AC8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8DB4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8F0C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A8FD8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A90A4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A918C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9274(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A950C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A97F0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9B04(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9C5C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07A9EB4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA188(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA45C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA730(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AA878(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AAB10(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AAE34(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB118(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB3EC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB6C0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AB994(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ABCA8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ABFCC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC2B0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC584(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC858(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AC9A0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ACC38(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ACF5C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD280(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD5A4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AD8C8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ADBAC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07ADEC0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE018(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE270(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE584(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AE8A8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEA00(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEACC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEBD0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    MEMORY[0x1E12E5B90](a11, v15, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AECE4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    MEMORY[0x1E12E5B90](a11, v15, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AEF8C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF100(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF1CC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF424(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF6F8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF840(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF90C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AF9D8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFAA4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFB70(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFC3C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFD08(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07AFDD4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B002C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0300(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B05D4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B071C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B07E8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B08B4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0980(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0BD8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B0EAC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1180(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1454(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B159C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1668(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1750(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B19A8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1C7C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1DC4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B1E90(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2128(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2280(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B24D8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B27AC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a27)
  {
    MEMORY[0x1E12E5B90](a27, v31, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B28F4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B29C0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2A8C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1E12E5B90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B2D24(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E07B3048(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29)
  {
    MEMORY[0x1E12E5B90](a29, v33, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void EmitObjC::getNewTensorNameForValue(uint64_t a1@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *__str = a2;
  if (std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 256), __str))
  {
    v12 = a2;
    *__str = &v12;
    v6 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 256), &v12, &std::piecewise_construct, __str);
    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v6[3], v6[4]);
    }

    else
    {
      v7 = *(v6 + 3);
      a3->__r_.__value_.__r.__words[2] = v6[5];
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    snprintf(__str, 0x50uLL, "tensor%lu", *(a1 + 224));
    v8 = strlen(__str);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&a3->__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memcpy(a3, __str, v8);
    }

    a3->__r_.__value_.__s.__data_[v9] = 0;
    ++*(a1 + 224);
    v11 = a2;
    v12 = &v11;
    v10 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>((a1 + 256), &v11, &std::piecewise_construct, &v12);
    std::string::operator=(v10 + 1, a3);
  }
}

void sub_1E07B32AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void EmitObjC::emitObjCDump(id *this, NSString *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(this + 8);
    v3 = WeakRetained[115];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/emitObjC", v3];
  v6 = objc_loadWeakRetained(this + 8);
  [v6[101] createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/modelObjC.h", v5];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/main.m", v5];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/modelObjCConstants.dat", v5];
  [this[38] writeToFile:objc_claimAutoreleasedReturnValue() atomically:1];
  v8 = this[27];
  v10 = 0;
  [v8 writeToFile:v7 atomically:1 encoding:4 error:&v10];
  v9 = v10;
  operator new();
}

void sub_1E07B3508(_Unwind_Exception *a1)
{
  operator delete(v6);

  _Unwind_Resume(a1);
}

uint64_t *EmitterObjC::emitMPSDataType@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this > 285212735)
  {
    if (this > 536870927)
    {
      if (this <= 536870975)
      {
        if (this != 536870928)
        {
          if (this == 536870944)
          {
            *(a1 + 23) = 16;
            strcpy(a1, "MPSDataTypeInt32");
            return this;
          }

          goto LABEL_33;
        }

        *(a1 + 23) = 16;
        strcpy(a1, "MPSDataTypeInt16");
      }

      else
      {
        switch(this)
        {
          case 0x20000040:
            *(a1 + 23) = 16;
            strcpy(a1, "MPSDataTypeInt64");
            break;
          case 0x40000001:
            *(a1 + 23) = 17;
            strcpy(a1, "MPSDataTypeUnorm1");
            break;
          case 0x40000008:
            *(a1 + 23) = 17;
            strcpy(a1, "MPSDataTypeUnorm8");
            return this;
          default:
            goto LABEL_33;
        }
      }

      return this;
    }

    if (this <= 536870915)
    {
      if (this == 285212736)
      {
        operator new();
      }

      if (this == 536870914)
      {
        operator new();
      }

      goto LABEL_33;
    }

    if (this == 536870916)
    {
      operator new();
    }

    if (this != 536870920)
    {
      goto LABEL_33;
    }

    v2 = "MPSDataTypeInt8";
LABEL_35:
    *(a1 + 23) = 15;
    *a1 = *v2;
    *(a1 + 7) = *(v2 + 7);
    *(a1 + 15) = 0;
    return this;
  }

  if (this <= 31)
  {
    if (this > 7)
    {
      if (this != 8)
      {
        if (this == 16)
        {
          *(a1 + 23) = 17;
          strcpy(a1, "MPSDataTypeUInt16");
          return this;
        }

        goto LABEL_33;
      }

      *(a1 + 23) = 16;
      strcpy(a1, "MPSDataTypeUInt8");
      return this;
    }

    if (this != -2147483640)
    {
      if (this == -1879048176)
      {
        *(a1 + 23) = 19;
        strcpy(a1, "MPSDataTypeBFloat16");
        return this;
      }

      goto LABEL_33;
    }

    v2 = "MPSDataTypeBool";
    goto LABEL_35;
  }

  if (this <= 268435471)
  {
    if (this != 32)
    {
      if (this == 64)
      {
        *(a1 + 23) = 17;
        strcpy(a1, "MPSDataTypeUInt64");
        return this;
      }

      goto LABEL_33;
    }

    *(a1 + 23) = 17;
    strcpy(a1, "MPSDataTypeUInt32");
  }

  else
  {
    if (this != 268435472)
    {
      if (this == 285212704)
      {
        operator new();
      }

LABEL_33:
      *(a1 + 23) = 18;
      strcpy(a1, "MPSDataTypeFloat32");
      return this;
    }

    *(a1 + 23) = 18;
    strcpy(a1, "MPSDataTypeFloat16");
  }

  return this;
}

void EmitterObjC::emitMPSShape(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v10 = v3;
  if (!v3)
  {
    *(a2 + 23) = 3;
    *a2 = 26990;
    *(a2 + 2) = 108;
LABEL_10:
    *(a2 + 3) = 0;
    goto LABEL_11;
  }

  v4 = [v3 count];
  *(a2 + 23) = 3;
  if (!v4)
  {
    *(a2 + 2) = 93;
    *a2 = 23360;
    goto LABEL_10;
  }

  *a2 = 4217664;
  if ([v10 count])
  {
    v5 = [v10 objectAtIndexedSubscript:0];
    v6 = [v5 stringValue];

    std::string::append(a2, [v6 UTF8String]);
    for (i = 1; [v10 count] > i; ++i)
    {
      std::string::append(a2, ", @");
      v8 = [v10 objectAtIndexedSubscript:i];
      v9 = [v8 stringValue];

      std::string::append(a2, [v9 UTF8String]);
    }
  }

  std::string::append(a2, "]");
LABEL_11:
}

void sub_1E07B3C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void EmitObjC::~EmitObjC(id *this)
{
  EmitObjC::~EmitObjC(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4D810;

  v2 = this[34];
  if (v2)
  {
    do
    {
      v6 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = this[32];
  this[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = this[29];
  if (v4)
  {
    this[30] = v4;
    operator delete(v4);
  }

  v5 = this[24];
  if (v5)
  {
    do
    {
      v7 = *v5;
      v8 = v5[3];
      v5[3] = 0;
      if (v8)
      {
        MEMORY[0x1E12E5B90](v8, 0xA1C409BE6959DLL);
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  v9 = this[22];
  this[22] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  EmitBase::~EmitBase(this);
}

uint64_t std::__function::__func<EmitObjC::initializeOps(void)::$_0,std::allocator<EmitObjC::initializeOps(void)::$_0>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EmitObjC13initializeOpsEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EmitObjC13initializeOpsEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EmitObjC13initializeOpsEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EmitObjC13initializeOpsEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<EmitObjC::initializeOps(void)::$_1,std::allocator<EmitObjC::initializeOps(void)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EmitObjC13initializeOpsEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EmitObjC13initializeOpsEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EmitObjC13initializeOpsEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EmitObjC13initializeOpsEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN8EmitObjC13initializeOpsEvE3__2NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v3 = **a1;
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = v4;
    v6 = *(v3 + 312);
    if (*(v6 + 1) == 1)
    {
      [v4 addObject:@"NSData * _Nullable data"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 16) == 1)
    {
      [v5 addObject:@"NSMutableArray<MPSGraphShapedType *> * _Nullable inputTypes"];
      [v5 addObject:@"NSMutableArray<MPSGraphShapedType *> * _Nullable outputTypes"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 17) == 1)
    {
      [v5 addObject:@"MPSGraphCompilationDescriptor * _Nullable compileDesc"];
      v6 = *(v3 + 312);
    }

    if (*(v6 + 18) == 1)
    {
      [v5 addObject:@"MPSGraphOptimization optimizationLevel"];
      v6 = *(v3 + 312);
    }

    v7 = objc_msgSend(*(v3 + 216), "stringByAppendingFormat:", @"MPSGraphExecutable * _Nonnull %@(\n"), *(v6 + 8);
    v8 = 0;
    v9 = *(v3 + 216);
    *(v3 + 216) = v7;
    while (1)
    {

      v10 = [v5 count];
      v11 = *(v3 + 216);
      if (v8 >= v10)
      {
        break;
      }

      v9 = [v5 objectAtIndexedSubscript:v8];
      if (v8 + 1 == [v5 count])
      {
        v12 = "";
      }

      else
      {
        v12 = ",\n";
      }

      v13 = [v11 stringByAppendingFormat:@"    %@%s", v9, v12];
      v14 = *(v3 + 216);
      *(v3 + 216) = v13;

      ++v8;
    }

    v15 = [*(v3 + 216) stringByAppendingString:@"{\n    MPSGraph *graph = [MPSGraph new]\n\n"]);;
    v16 = *(v3 + 216);
    *(v3 + 216) = v15;

    v17 = *(a2 + 44);
    v18 = (v17 >> 23) & 1;
    v47 = a2 + 64;
    v19 = (v17 >> 21) & 0x7F8;
    v20 = 32 * *(a2 + 40);
    v21 = (((a2 + 64 + 16 * v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v20);
    if (*v21 == v21 || ((v46 = a2, (v22 = v21[1]) != 0) ? (v23 = v22 - 8) : (v23 = 0), v24 = *(v23 + 48), v25 = *(v23 + 56), v25 == v24))
    {
LABEL_44:
      v39 = ((v47 + 16 * v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + v20;
      *__s = v3;
      for (i = *(v39 + 8); i != v39; i = *(i + 8))
      {
        v41 = i - 8;
        if (!i)
        {
          v41 = 0;
        }

        v42 = *(v41 + 40);
        v43 = v41 + 32;
        if (v42 != v41 + 32)
        {
          do
          {
            v44 = *(v42 + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v45, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<EmitObjC::initializeOps(void)::$_2::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, __s, 1);
            v42 = v44;
          }

          while (v44 != v43);
        }
      }

      operator new();
    }

    while (1)
    {
      v54 = *v24;
      v26 = getMPSShapeFromMLIR(v54);
      MPSDataType = getMPSDataType((*(v54 + 8) & 0xFFFFFFFFFFFFFFF8));
      v28 = MEMORY[0x1E696AEC0];
      (*(*v3 + 32))(__s, v3, v54);
      if (v56 >= 0)
      {
        v29 = __s;
      }

      else
      {
        v29 = *__s;
      }

      EmitterObjC::emitMPSShape(v26, &v53);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v53;
      }

      else
      {
        v30 = v53.__r_.__value_.__r.__words[0];
      }

      EmitterObjC::emitMPSDataType(v51, MPSDataType);
      v31 = v52;
      v32 = v51[0];
      v49 = 0;
      LOBYTE(v48) = 0;
      EmitObjC::emitTensorName(v3, v54, &v48, &__p);
      v33 = v51;
      if (v31 < 0)
      {
        v33 = v32;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v35 = [v28 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph placeholderWithShape:%s\n                       dataType:%s\n                           name:%s]\n    ", v29, v30, v33, p_p];;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v49 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(v48);
      if ((v52 & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

LABEL_41:
      operator delete(v51[0]);
      if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if (v56 < 0)
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }

LABEL_42:
      operator delete(v53.__r_.__value_.__l.__data_);
      if (v56 < 0)
      {
LABEL_43:
        operator delete(*__s);
      }

LABEL_37:
      v36 = [*(v3 + 216) stringByAppendingString:v35];
      v37 = *(v3 + 216);
      *(v3 + 216) = v36;

      std::vector<mlir::Value>::push_back[abi:ne200100](v3 + 232, &v54);
      if (++v24 == v25)
      {
        v38 = *(v46 + 44);
        v18 = (v38 >> 23) & 1;
        v19 = (v38 >> 21) & 0x7F8;
        v20 = 32 * *(v46 + 40);
        goto LABEL_44;
      }
    }
  }
}

void sub_1E07B4A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>>>::__emplace_unique_key_args<mlir::Operation *,std::pair<mlir::Operation * const,std::unique_ptr<EmitterObjC::BaseOpHandler>>>(float *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = 0x9DDFEA08EB382D69 * v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (v11[2] == a2)
        {
          return;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_22;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v9)
    {
      goto LABEL_22;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }
}

void sub_1E07B50D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<EmitterObjC::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        MEMORY[0x1E12E5B90](v4, 0xA1C409BE6959DLL);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void GPU::ImToColOpHandler::encodeNDArrayOp(GPU::ImToColOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v57 = *(this + 3);
  v6 = *(*(v57 + 72) + 24);
  v44 = v5;
  v46 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v8 = [v46 mpsndarray];
  v45 = [v7 mpsndarray];
  v9 = objc_alloc_init(MEMORY[0x1E6974748]);
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v57);
  Strides = mlir::mps::ColToImOp::getStrides(&v57);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v57);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v57);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Strides, 0);
  v10 = Strides;
  NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v10, NumElements);
  if (v52 != v50)
  {
    v22 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v23 = v48;
      if (v48 >= 0x41)
      {
        if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v24 = *v47;
          if (!v22)
          {
LABEL_37:
            [v9 setStrideInPixelsY:v24];
            goto LABEL_38;
          }
        }

        else
        {
          v24 = -1;
          if (!v22)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = v47;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      if (v22 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_39;
      }

LABEL_38:
      [v9 setStrideInPixelsX:v24];
LABEL_39:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v22;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, InputAttributeNames, 0);
  v12 = InputAttributeNames;
  v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v12, v13);
  if (v52 != v50)
  {
    v25 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v26 = v48;
      if (v48 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v27 = *v47;
          if (!v25)
          {
LABEL_53:
            [v9 setDilationRateInY:v27];
            goto LABEL_54;
          }
        }

        else
        {
          v27 = -1;
          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v27 = v47;
        if (!v25)
        {
          goto LABEL_53;
        }
      }

      if (v25 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_55;
      }

LABEL_54:
      [v9 setDilationRateInX:v27];
LABEL_55:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v25;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, KernelSizes, 0);
  v14 = KernelSizes;
  v15 = mlir::DenseElementsAttr::getNumElements(&KernelSizes);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v14, v15);
  if (v52 != v50)
  {
    v28 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v29 = v48;
      if (v48 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v30 = *v47;
          if (!v28)
          {
LABEL_69:
            [v9 setKernelHeight:v30];
            goto LABEL_70;
          }
        }

        else
        {
          v30 = -1;
          if (!v28)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v30 = v47;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      if (v28 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_71;
      }

LABEL_70:
      [v9 setKernelWidth:v30];
LABEL_71:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v28;
    }

    while (v52 != v50);
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v57);
  if (!StorageType)
  {
    [v9 setDataLayout:0];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v31 = Rewriter;
    v32 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v31, v32);
    if (v52 == v50)
    {
      goto LABEL_75;
    }

    v41 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v42 = v48;
      if (v48 >= 0x41)
      {
        if (v42 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v43 = *v47;
          if (v41 > 5)
          {
LABEL_93:
            if (v41 == 6)
            {
              [v9 setPaddingLeft:v43];
            }

            else if (v41 == 7)
            {
              [v9 setPaddingRight:v43];
            }

            goto LABEL_98;
          }
        }

        else
        {
          v43 = -1;
          if (v41 > 5)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        v43 = v47;
        if (v41 > 5)
        {
          goto LABEL_93;
        }
      }

      if (v41 == 4)
      {
        [v9 setPaddingTop:v43];
      }

      else if (v41 == 5)
      {
        [v9 setPaddingBottom:v43];
      }

LABEL_98:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v41;
      if (v52 == v50)
      {
        goto LABEL_75;
      }
    }
  }

  if (StorageType == 1)
  {
    [v9 setDataLayout:1];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v17 = Rewriter;
    v18 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v17, v18);
    if (v52 != v50)
    {
      v19 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        v20 = v48;
        if (v48 >= 0x41)
        {
          if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
          {
            v21 = *v47;
            if (v19 > 3)
            {
LABEL_18:
              if (v19 == 4)
              {
                [v9 setPaddingLeft:v21];
              }

              else if (v19 == 5)
              {
                [v9 setPaddingRight:v21];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v21 = -1;
            if (v19 > 3)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v21 = v47;
          if (v19 > 3)
          {
            goto LABEL_18;
          }
        }

        if (v19 == 2)
        {
          [v9 setPaddingTop:v21];
        }

        else if (v19 == 3)
        {
          [v9 setPaddingBottom:v21];
        }

LABEL_23:
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
        }

        ++v52;
        ++v19;
      }

      while (v52 != v50);
    }
  }

LABEL_75:
  v33 = objc_alloc(MEMORY[0x1E6974750]);
  v34 = [*(*(this + 2) + 48) metalDevice];
  v35 = [v33 initWithDevice:v34 ndArrayIm2colDescriptor:v9];

  objc_storeStrong(this + 1, v35);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = *(a2 + 1);
    v39 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v35 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:v36 resultState:0 destinationArray:v8 kernelDAGObject:v39];
  }

  else
  {
    if ((!v8 || !v45) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v40 = *(a2 + 1);
    v58[0] = v45;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [v35 encodeToMPSCommandEncoder:v36 commandBuffer:v40 sourceArrays:v37 destinationArray:v8];
  }
}

void GPU::ColToImOpHandler::encodeNDArrayOp(GPU::ColToImOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v57 = *(this + 3);
  v6 = *(*(v57 + 72) + 24);
  v44 = v5;
  v46 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v8 = [v46 mpsndarray];
  v45 = [v7 mpsndarray];
  v9 = objc_alloc_init(MEMORY[0x1E6974748]);
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v57);
  Strides = mlir::mps::ColToImOp::getStrides(&v57);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v57);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v57);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Strides, 0);
  v10 = Strides;
  NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v10, NumElements);
  if (v52 != v50)
  {
    v22 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v23 = v48;
      if (v48 >= 0x41)
      {
        if (v23 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v24 = *v47;
          if (!v22)
          {
LABEL_37:
            [v9 setStrideInPixelsY:v24];
            goto LABEL_38;
          }
        }

        else
        {
          v24 = -1;
          if (!v22)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = v47;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      if (v22 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_39;
      }

LABEL_38:
      [v9 setStrideInPixelsX:v24];
LABEL_39:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v22;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, InputAttributeNames, 0);
  v12 = InputAttributeNames;
  v13 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v12, v13);
  if (v52 != v50)
  {
    v25 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v26 = v48;
      if (v48 >= 0x41)
      {
        if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v27 = *v47;
          if (!v25)
          {
LABEL_53:
            [v9 setDilationRateInY:v27];
            goto LABEL_54;
          }
        }

        else
        {
          v27 = -1;
          if (!v25)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v27 = v47;
        if (!v25)
        {
          goto LABEL_53;
        }
      }

      if (v25 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_55;
      }

LABEL_54:
      [v9 setDilationRateInX:v27];
LABEL_55:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v25;
    }

    while (v52 != v50);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, KernelSizes, 0);
  v14 = KernelSizes;
  v15 = mlir::DenseElementsAttr::getNumElements(&KernelSizes);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v14, v15);
  if (v52 != v50)
  {
    v28 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v29 = v48;
      if (v48 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v30 = *v47;
          if (!v28)
          {
LABEL_69:
            [v9 setKernelHeight:v30];
            goto LABEL_70;
          }
        }

        else
        {
          v30 = -1;
          if (!v28)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        v30 = v47;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      if (v28 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_71;
      }

LABEL_70:
      [v9 setKernelWidth:v30];
LABEL_71:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v28;
    }

    while (v52 != v50);
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v57);
  if (!StorageType)
  {
    [v9 setDataLayout:0];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v31 = Rewriter;
    v32 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v31, v32);
    if (v52 == v50)
    {
      goto LABEL_75;
    }

    v41 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
      v42 = v48;
      if (v48 >= 0x41)
      {
        if (v42 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
        {
          v43 = *v47;
          if (v41 > 5)
          {
LABEL_93:
            if (v41 == 6)
            {
              [v9 setPaddingLeft:v43];
            }

            else if (v41 == 7)
            {
              [v9 setPaddingRight:v43];
            }

            goto LABEL_98;
          }
        }

        else
        {
          v43 = -1;
          if (v41 > 5)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        v43 = v47;
        if (v41 > 5)
        {
          goto LABEL_93;
        }
      }

      if (v41 == 4)
      {
        [v9 setPaddingTop:v43];
      }

      else if (v41 == 5)
      {
        [v9 setPaddingBottom:v43];
      }

LABEL_98:
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
      }

      ++v52;
      ++v41;
      if (v52 == v50)
      {
        goto LABEL_75;
      }
    }
  }

  if (StorageType == 1)
  {
    [v9 setDataLayout:1];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, Rewriter, 0);
    v17 = Rewriter;
    v18 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v17, v18);
    if (v52 != v50)
    {
      v19 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        v20 = v48;
        if (v48 >= 0x41)
        {
          if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v47) <= 0x40)
          {
            v21 = *v47;
            if (v19 > 3)
            {
LABEL_18:
              if (v19 == 4)
              {
                [v9 setPaddingLeft:v21];
              }

              else if (v19 == 5)
              {
                [v9 setPaddingRight:v21];
              }

              goto LABEL_23;
            }
          }

          else
          {
            v21 = -1;
            if (v19 > 3)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v21 = v47;
          if (v19 > 3)
          {
            goto LABEL_18;
          }
        }

        if (v19 == 2)
        {
          [v9 setPaddingTop:v21];
        }

        else if (v19 == 3)
        {
          [v9 setPaddingBottom:v21];
        }

LABEL_23:
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x1E12E5B60](v47, 0x1000C8000313F17);
        }

        ++v52;
        ++v19;
      }

      while (v52 != v50);
    }
  }

LABEL_75:
  v33 = objc_alloc(MEMORY[0x1E69746A0]);
  v34 = [*(*(this + 2) + 48) metalDevice];
  v35 = [v33 initWithDevice:v34 ndArrayIm2colDescriptor:v9];

  objc_storeStrong(this + 1, v35);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v38 = *(a2 + 1);
    v39 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v35 encodeToMPSCommandEncoder:v37 commandBuffer:v38 sourceArrays:v36 resultState:0 destinationArray:v8 kernelDAGObject:v39];
  }

  else
  {
    if ((!v8 || !v45) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v40 = *(a2 + 1);
    v58[0] = v45;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [v35 encodeToMPSCommandEncoder:v36 commandBuffer:v40 sourceArrays:v37 destinationArray:v8];
  }
}

void GPU::ImToColOpHandler::~ImToColOpHandler(GPU::ImToColOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ColToImOpHandler::~ColToImOpHandler(GPU::ColToImOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, std::string *a3, unsigned int a4, void *a5)
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

    p_size = (&__dst + v16);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x756C65722E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
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

void sub_1E07B69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E07B741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B7454);
}

void sub_1E07B7430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E07B74A0);
}

void sub_1E07B748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E07B74A0);
  }

  JUMPOUT(0x1E07B7454);
}

void sub_1E07B85A0()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E07B8584);
}

void sub_1E07B85B0()
{
  if (v0)
  {
  }

  JUMPOUT(0x1E07B8588);
}

void sub_1E07B8894(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B887CLL);
}

void sub_1E07B8A88(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07B8A74);
}

id *GPU::GenericDAGOpHandler::GenericDAGOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4D918;
  *(v5 + 15) = 0;
  if (!*(v5 + 4))
  {
    v6 = objc_alloc(MEMORY[0x1E6974740]);
    v7 = [*(this[2] + 6) metalDevice];
    v8 = [v6 initWithDevice:v7];
    v9 = this[1];
    this[1] = v8;

    [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  }

  return this;
}

void sub_1E07B8B6C(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

GPU::GenericDAGOpHandler *GPU::GenericDAGOpHandler::postInitializeHook(GPU::GenericDAGOpHandler *this)
{
  if (*(this + 40) == 1 && !*(this + 4))
  {
    return GPU::GenericDAGOpHandler::_getKernelDAGObject(this);
  }

  return this;
}

id GPU::GenericDAGOpHandler::_getKernelDAGObject(GPU::GenericDAGOpHandler *this)
{
  v2 = *(this + 15);
  if (!v2 || *(this + 40) != 1)
  {
    operator new();
  }

  if (!*(v2 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = *(*(this + 15) + 120);

  return v3;
}

void sub_1E07B8E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void GPU::GenericDAGOpHandler::encodeNDArrayOp(GPU::GenericDAGOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v11 = a3;
  v5 = *(this + 1);
  v6 = GPU::GenericDAGOpHandler::_getKernelDAGObject(this);
  v7 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 15), *(this + 2));
  v8 = [(NSArray *)v11 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];

  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v5 encodeToMPSCommandEncoder:v10 commandBuffer:*(a2 + 1) sourceArrays:v7 resultState:0 destinationArray:v9 kernelDAGObject:v6];
}

void GPU::GenericDAGOpHandler::~GenericDAGOpHandler(GPU::GenericDAGOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

EmitterObjC::SelectOpHandler *EmitterObjC::SelectOpHandler::SelectOpHandler(EmitterObjC::SelectOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D980;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  LODWORD(v6) = *(v5 + 9);
  v10 = v5 - 16;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = MEMORY[0x1E696AEC0];
  v14 = v32;
  (*(*a2 + 4))(v32, a2, NextResultAtOffset);
  if (v33 < 0)
  {
    v14 = v32[0];
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31, &std::piecewise_construct, &__p);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v30 = v8;
  __p.__r_.__value_.__r.__words[0] = &v30;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v30, &std::piecewise_construct, &__p);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v29 = v9;
  __p.__r_.__value_.__r.__words[0] = &v29;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29, &std::piecewise_construct, &__p);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v27 = 0;
  LOBYTE(v26) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v26, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v22 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph selectWithPredicateTensor:%s\n                 truePredicateTensor:%s\n                falsePredicateTensor:%s\n                                name:%s]\n    ", v14, v16, v18, v20, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v26);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v32[0]);
    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27 < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v33 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = [a2[27] stringByAppendingString:v22];
  v24 = a2[27];
  a2[27] = v23;

  return this;
}

void sub_1E07B9360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a34 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ClampOpHandler *EmitterObjC::ClampOpHandler::ClampOpHandler(EmitterObjC::ClampOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D998;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  LODWORD(v6) = *(v5 + 9);
  v10 = v5 - 16;
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = MEMORY[0x1E696AEC0];
  v14 = v32;
  (*(*a2 + 4))(v32, a2, NextResultAtOffset);
  if (v33 < 0)
  {
    v14 = v32[0];
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31, &std::piecewise_construct, &__p);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v30 = v8;
  __p.__r_.__value_.__r.__words[0] = &v30;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v30, &std::piecewise_construct, &__p);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v29 = v9;
  __p.__r_.__value_.__r.__words[0] = &v29;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29, &std::piecewise_construct, &__p);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v27 = 0;
  LOBYTE(v26) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v26, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v22 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph clampWithTensor:%s\n            minValueTensor:%s\n            maxValueTensor:%s\n                      name:%s]\n    ", v14, v16, v18, v20, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v26);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v32[0]);
    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27 < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v33 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = [a2[27] stringByAppendingString:v22];
  v24 = a2[27];
  a2[27] = v23;

  return this;
}

void sub_1E07B9668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a34 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::CastOpHandler *EmitterObjC::CastOpHandler::CastOpHandler(EmitterObjC::CastOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9B0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = MEMORY[0x1E696AEC0];
  v13 = v30;
  (*(*a2 + 4))(v30, a2, NextResultAtOffset);
  if (v31 < 0)
  {
    v13 = v30[0];
  }

  v29 = v6;
  v27[0] = &v29;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29, &std::piecewise_construct, v27);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  EmitterObjC::emitMPSDataType(v27, MPSDataType);
  v16 = v28;
  v17 = v27[0];
  v25 = 0;
  LOBYTE(v24) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v24, &__p);
  v18 = v27;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v20 = [v12 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph castTensor:%s\n               toType:%s\n                 name:%s]\n    ", v13, v15, v18, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v27[0]);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      operator delete(v30[0]);
      goto LABEL_20;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v24);
  if (v28 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v31 < 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v21 = [a2[27] stringByAppendingString:v20];
  v22 = a2[27];
  a2[27] = v21;

  return this;
}

void sub_1E07B993C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if (*(v31 - 81) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if (*(v31 - 81) < 0)
  {
LABEL_5:
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

EmitterObjC::BiasAddOpHandler *EmitterObjC::BiasAddOpHandler::BiasAddOpHandler(EmitterObjC::BiasAddOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9C8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v62 = v5;
  v6 = *(v5 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = getMPSShapeFromMLIR(v8);
  [v9 count];
  if ([v9 count] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = 0;
  LOBYTE(v60[0]) = 0;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v62);
  if (StorageType)
  {
    if (StorageType == 1)
    {
      MEMORY[0x1E12E55D0](v60, "@[@1, @1, @1, @-1]");
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = 0;
  }

  else
  {
    MEMORY[0x1E12E55D0](v60, "@[@1, @-1, @1, @1]");
    v11 = 1;
  }

  if (*(v62 + 9))
  {
    v12 = v62 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = MEMORY[0x1E696AEC0];
  if (v11)
  {
    v48 = v9;
    (*(*a2 + 4))(v58, a2, NextResultAtOffset);
    if (v59 >= 0)
    {
      v15 = v58;
    }

    else
    {
      v15 = v58[0];
    }

    v57 = v8;
    __p.__r_.__value_.__r.__words[0] = &v57;
    v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57, &std::piecewise_construct, &__p);
    v17 = v16 + 3;
    v47 = this;
    if (*(v16 + 47) < 0)
    {
      v17 = *v17;
    }

    v18 = v61;
    v19 = v60[0];
    v55 = 12;
    strcpy(v54, "_biasReshape");
    EmitObjC::emitTensorName(a2, NextResultAtOffset, v54, &__p);
    v20 = v60;
    if (v18 < 0)
    {
      v20 = v19;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = [v14 stringWithFormat:@"\n    MPSGraphTensor *%s_biasReshape = \n    [graph reshapeTensor:%s\n               withShape:%s\n                    name:%s]\n    ", v15, v17, v20, p_p];;
    v9 = v48;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v55 & 0x80000000) == 0)
      {
LABEL_28:
        if ((v59 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_62:
        operator delete(v58[0]);
LABEL_29:
        v23 = [a2[27] stringByAppendingString:v22];
        v24 = a2[27];
        a2[27] = v23;

        v25 = MEMORY[0x1E696AEC0];
        (*(*a2 + 4))(v58, a2, NextResultAtOffset);
        if (v59 >= 0)
        {
          v26 = v58;
        }

        else
        {
          v26 = v58[0];
        }

        v57 = v7;
        __p.__r_.__value_.__r.__words[0] = &v57;
        v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57, &std::piecewise_construct, &__p);
        v28 = v27 + 3;
        if (*(v27 + 47) < 0)
        {
          v28 = *v28;
        }

        v53 = NextResultAtOffset;
        __p.__r_.__value_.__r.__words[0] = &v53;
        v29 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v53, &std::piecewise_construct, &__p);
        v30 = v29 + 3;
        if (*(v29 + 47) < 0)
        {
          v30 = *v30;
        }

        v52 = 0;
        LOBYTE(v51) = 0;
        EmitObjC::emitTensorName(a2, NextResultAtOffset, &v51, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p.__r_.__value_.__r.__words[0];
        }

        v32 = [v25 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph additionWithPrimaryTensor:%s\n                     secondaryTensor:%s_biasReshape\n                                name:%s]\n        ", v26, v28, v30, v31];;
        v33 = v47;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((v52 & 0x80000000) == 0)
          {
LABEL_41:
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

LABEL_68:
            operator delete(v58[0]);
LABEL_42:
            v34 = [a2[27] stringByAppendingString:v32];
            v35 = a2[27];
            a2[27] = v34;

            if (v61 < 0)
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          }
        }

        else if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        operator delete(v51);
        if ((v59 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_68;
      }
    }

    else if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v54[0]);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

  v36 = this;
  (*(*a2 + 4))(v58, a2, NextResultAtOffset);
  if (v59 >= 0)
  {
    v37 = v58;
  }

  else
  {
    v37 = v58[0];
  }

  v57 = v7;
  __p.__r_.__value_.__r.__words[0] = &v57;
  v38 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v57, &std::piecewise_construct, &__p);
  v39 = v38 + 3;
  if (*(v38 + 47) < 0)
  {
    v39 = *v39;
  }

  v53 = v8;
  __p.__r_.__value_.__r.__words[0] = &v53;
  v40 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v53, &std::piecewise_construct, &__p);
  v41 = v40 + 3;
  if (*(v40 + 47) < 0)
  {
    v41 = *v41;
  }

  v50 = 0;
  LOBYTE(v49) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v49, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p.__r_.__value_.__r.__words[0];
  }

  v43 = [v14 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph additionWithPrimaryTensor:%s\n                     secondaryTensor:%s\n                                name:%s]\n        ", v37, v39, v41, v42];;
  v33 = v36;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_64:
    operator delete(v49);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v50 < 0)
  {
    goto LABEL_64;
  }

LABEL_56:
  if ((v59 & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_65:
  operator delete(v58[0]);
LABEL_57:
  v44 = [a2[27] stringByAppendingString:v43];
  v45 = a2[27];
  a2[27] = v44;

  if (v61 < 0)
  {
LABEL_58:
    operator delete(v60[0]);
  }

LABEL_59:

  return v33;
}

void sub_1E07B9FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if ((*(v42 - 105) & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(*(v42 - 128));

  _Unwind_Resume(a1);
}

void sub_1E07BA138()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x1E07BA120);
  }

  JUMPOUT(0x1E07BA094);
}

EmitterObjC::NormalizationOpHandler *EmitterObjC::NormalizationOpHandler::NormalizationOpHandler(EmitterObjC::NormalizationOpHandler *this, id *a2, mlir::Operation *a3)
{
  v47[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9E0;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  v6 = *(v5 + 9);
  v7 = v6[3];
  v8 = v6[7];
  v9 = v6[11];
  v10 = v6[19];
  v11 = v6[15];
  mlir::mps::InstanceNormOp::getEpsilon(&v46, &v45);
  if (*(v45 + 9))
  {
    v12 = v45 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v34 = MEMORY[0x1E696AEC0];
  (*(*a2 + 4))(v43, a2, NextResultAtOffset);
  if (v44 >= 0)
  {
    v14 = v43;
  }

  else
  {
    v14 = v43[0];
  }

  v42 = v7;
  __p.__r_.__value_.__r.__words[0] = &v42;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v42, &std::piecewise_construct, &__p);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  v41 = v8;
  __p.__r_.__value_.__r.__words[0] = &v41;
  v17 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v41, &std::piecewise_construct, &__p);
  v18 = v17 + 3;
  if (*(v17 + 47) < 0)
  {
    v18 = *v18;
  }

  v40 = v9;
  __p.__r_.__value_.__r.__words[0] = &v40;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v40, &std::piecewise_construct, &__p);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v39 = v11;
  __p.__r_.__value_.__r.__words[0] = &v39;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v39, &std::piecewise_construct, &__p);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v38 = v10;
  __p.__r_.__value_.__r.__words[0] = &v38;
  v23 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v38, &std::piecewise_construct, &__p);
  v27 = v23 + 3;
  if (*(v23 + 47) < 0)
  {
    v27 = *v27;
  }

  v28 = llvm::APFloat::convertToDouble(&v46, v24, v25, v26);
  v36 = 0;
  LOBYTE(v35) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v35, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v30 = [v34 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph normalizationWithTensor:%s\n                        meanTensor:%s\n                    varianceTensor:%s\n                       gammaTensor:%s\n                        betaTensor:%s\n                           epsilon:%.9e\n                              name:%s]\n    ", v14, v16, v18, v20, v22, v27, *&v28, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v35);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    operator delete(v43[0]);
    goto LABEL_26;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v36 < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v44 < 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v31 = [a2[27] stringByAppendingString:v30];
  v32 = a2[27];
  a2[27] = v31;

  llvm::APFloat::Storage::~Storage(v47);
  return this;
}

EmitterObjC::SigmoidOpHandler *EmitterObjC::SigmoidOpHandler::SigmoidOpHandler(EmitterObjC::SigmoidOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4D9F8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  v12 = v24;
  (*(*a2 + 4))(v24, a2, NextResultAtOffset);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v23 = v6;
  __p.__r_.__value_.__r.__words[0] = &v23;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v23, &std::piecewise_construct, &__p);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v21 = 0;
  LOBYTE(v20) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v20, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v16 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph sigmoidWithTensor:%s\n                        name:%s]\n    ", v12, v14, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(v20);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v24[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v25 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = [a2[27] stringByAppendingString:v16];
  v18 = a2[27];
  a2[27] = v17;

  return this;
}

void sub_1E07BA7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ReluOpHandler *EmitterObjC::ReluOpHandler::ReluOpHandler(EmitterObjC::ReluOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4DA10;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  v12 = v24;
  (*(*a2 + 4))(v24, a2, NextResultAtOffset);
  if (v25 < 0)
  {
    v12 = v24[0];
  }

  v23 = v6;
  __p.__r_.__value_.__r.__words[0] = &v23;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v23, &std::piecewise_construct, &__p);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v21 = 0;
  LOBYTE(v20) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v20, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v16 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reLUWithTensor:%s\n                     name:%s]\n    ", v12, v14, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(v20);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v24[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v25 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v17 = [a2[27] stringByAppendingString:v16];
  v18 = a2[27];
  a2[27] = v17;

  return this;
}

void sub_1E07BAA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(a18);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if (a30 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if (a30 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::Relu6OpHandler *EmitterObjC::Relu6OpHandler::Relu6OpHandler(EmitterObjC::Relu6OpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B4DA28;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  (*(*a2 + 4))(v48, a2, NextResultAtOffset);
  if (v49 >= 0)
  {
    v12 = v48;
  }

  else
  {
    v12 = v48[0];
  }

  MPSDataType = getMPSDataType((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
  v14 = dataTypeToString(MPSDataType);
  (*(*a2 + 4))(v46, a2, NextResultAtOffset);
  if (v47 >= 0)
  {
    v15 = v46;
  }

  else
  {
    v15 = v46[0];
  }

  v45 = v6;
  v44.__r_.__value_.__r.__words[0] = &v45;
  v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v45, &std::piecewise_construct, &v44);
  v17 = v16 + 3;
  if (*(v16 + 47) < 0)
  {
    v17 = *v17;
  }

  v43 = 5;
  strcpy(v42, "_relu");
  EmitObjC::emitTensorName(a2, NextResultAtOffset, v42, &v44);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v44;
  }

  else
  {
    v18 = v44.__r_.__value_.__r.__words[0];
  }

  (*(*a2 + 4))(v40, a2, NextResultAtOffset);
  if (v41 >= 0)
  {
    v19 = v40;
  }

  else
  {
    v19 = v40[0];
  }

  v31 = v19;
  v32 = v18;
  v20 = v38;
  (*(*a2 + 4))(v38, a2, NextResultAtOffset);
  v21 = v12;
  v30 = this;
  if (v39 < 0)
  {
    v20 = v38[0];
  }

  (*(*a2 + 4))(v36, a2, NextResultAtOffset);
  v22 = v37;
  v23 = v36[0];
  v34 = 0;
  LOBYTE(v33) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v33, &__p);
  v24 = v36;
  if (v22 < 0)
  {
    v24 = v23;
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v26 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s_const = [graph constantWithScalar:6.0 dataType:%s]\n    MPSGraphTensor *%s_relu = [graph reLUWithTensor:%s name:%s];\n    MPSGraphTensor *%s = [graph minimumWithPrimaryTensor:%s_relu secondaryTensor:%s_const name:%s];\n    ", v21, v14, v15, v17, v32, v31, v20, v24, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_29:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v33);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v36[0]);
  if ((v39 & 0x80000000) == 0)
  {
LABEL_31:
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v38[0]);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v40[0]);
  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v44.__r_.__value_.__l.__data_);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_34:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_44:
    operator delete(v46[0]);
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_45:
    operator delete(v48[0]);
    goto LABEL_36;
  }

LABEL_43:
  operator delete(v42[0]);
  if (v47 < 0)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v49 < 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v27 = [a2[27] stringByAppendingString:v26];
  v28 = a2[27];
  a2[27] = v27;

  return v30;
}

void sub_1E07BAEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a39 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a34);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a40);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v51 - 145) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a46);
  if ((*(v51 - 145) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v51 - 169) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v51 - 168));
  if ((*(v51 - 169) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v51 - 113) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v51 - 192));
  if ((*(v51 - 113) & 0x80000000) == 0)
  {
LABEL_9:
    if (*(v51 - 89) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v51 - 136));
  if (*(v51 - 89) < 0)
  {
LABEL_10:
    operator delete(*(v51 - 112));
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  _Unwind_Resume(exception_object);
}

void sub_1E07BAFE4()
{
  if ((*(v0 - 89) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E07BAFDCLL);
  }

  JUMPOUT(0x1E07BAEECLL);
}

void sub_1E07BAFF8()
{
  if ((*(v0 - 89) & 0x80000000) == 0)
  {
    JUMPOUT(0x1E07BAFDCLL);
  }

  JUMPOUT(0x1E07BAEECLL);
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  v2 = *this;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = 32 * v5;
        v7 = (v6 + v3 - 24);
        v8 = -v6;
        do
        {
          llvm::APFloat::Storage::~Storage(v7);
          v7 = (v9 - 32);
          v8 += 32;
        }

        while (v8);
      }

      MEMORY[0x1E12E5B60](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(this);
  }
}

void arrayToU64Attr(uint64_t **a1, int *a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E69E9840];
  mlir::Builder::getIntegerType(a1, 64, 0);
  operator new();
}

void sub_1E07BB924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v11)
  {
    free(a10);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_1E07BCC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07BD17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07BD6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id axesToAxesTensor(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  MPSShapeToVector<int>(a2, &v10);
  v4 = v10;
  v5 = v11 - v10;
  if (v11 != v10)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 >> 2];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v5 = [v3 constantWithData:v6 shape:v8 dataType:536870944];

    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_1E07BDAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

GPU::MatrixInverseOpHandler *GPU::MatrixInverseOpHandler::MatrixInverseOpHandler(GPU::MatrixInverseOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4DB00;
  *(v6 + 15) = 0;
  v7 = (v6 + 120);
  *(v6 + 16) = 0;
  *(v6 + 17) = 0;
  v8 = objc_alloc(MEMORY[0x1E69746F0]);
  v9 = [a2[6] metalDevice];
  v10 = [v8 initWithDevice:v9];
  v11 = *v7;
  *v7 = v10;

  v12 = objc_alloc(MEMORY[0x1E6974878]);
  v13 = [a2[6] metalDevice];
  v14 = [v12 initWithDevice:v13 sourceCount:3];
  v15 = *(this + 16);
  *(this + 16) = v14;

  v16 = objc_alloc(MEMORY[0x1E6974740]);
  v17 = [a2[6] metalDevice];
  v18 = [v16 initWithDevice:v17];
  v19 = *(this + 17);
  *(this + 17) = v18;

  return this;
}

void GPU::MatrixInverseOpHandler::encodeNDArrayOp(GPU::MatrixInverseOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[10] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = *(*(*(this + 3) + 72) + 24);
  [(NSArray *)v5 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  v6 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v19 = [v6 shape];
  v7 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 1}];
  LODWORD(v8) = [v7 intValue];

  v9 = [v19 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 2}];
  v10 = [v9 intValue];

  if (v8 >= v10)
  {
    v8 = v10;
  }

  else
  {
    v8 = v8;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = [v6 shape];
  v21 = [v11 initWithArray:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v8];
  [v21 setObject:v13 atIndexedSubscript:{objc_msgSend(v21, "count") - 1}];

  [v21 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v21, "count") - 2}];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v19];
  [v14 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v14, "count") - 1}];
  [v14 setObject:&unk_1F5B75938 atIndexedSubscript:{objc_msgSend(v14, "count") - 2}];
  memset(v24, 0, 24);
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  GPU::getVector(v19, v24);
  GPU::getVector(v21, v23);
  GPU::getVector(v14, v22);
  v15 = MEMORY[0x1E6974490];
  v16 = [v6 dataType];
  v17 = [v6 shape];
  v18 = [v15 descriptorWithDataType:v16 shape:v17];

  [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:v18];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E6974490] descriptorWithDataType:32 shape:v21];
  objc_claimAutoreleasedReturnValue();
  v20 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:?];
  [MEMORY[0x1E6974490] descriptorWithDataType:536870944 shape:v14];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:?];
  objc_claimAutoreleasedReturnValue();
  GPU::initializeToZero(*(this + 17), v20, v23, 32, a2);
}

void sub_1E07BE9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a23);

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
    v40 = a28;
    if (!a28)
    {
LABEL_3:
      v41 = a31;
      if (!a31)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      a32 = v41;
      operator delete(v41);
      goto LABEL_8;
    }
  }

  else
  {
    v40 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  a29 = v40;
  operator delete(v40);
  v41 = a31;
  if (!a31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void GPU::getVector(void *a1, uint64_t a2)
{
  v42 = a1;
  v3 = 0;
  for (i = [v42 count]; i > v3; i = objc_msgSend(v42, "count"))
  {
    v6 = [v42 objectAtIndexedSubscript:v3];
    v7 = [v6 integerValue];
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 < v8)
    {
      *v9 = v7;
      v5 = (v9 + 1);
    }

    else
    {
      v10 = *a2;
      v11 = v9 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = v7;
      v5 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      *(a2 + 8) = v5;
      *(a2 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    *(a2 + 8) = v5;

    ++v3;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = (v17 - 8);
  if (*a2 != v17 && v18 > v16)
  {
    v20 = (v17 - 16);
    v21 = &v16->u64[1];
    if (v17 - 16 <= &v16->u64[1])
    {
      v22 = &v16->i8[8];
    }

    else
    {
      v22 = (v17 - 16);
    }

    v23 = (v22 - 8);
    if (v23 == v16)
    {
      v24 = *a2;
    }

    else
    {
      v24 = &v16->i8[1];
    }

    v25 = v23 == v16;
    v26 = (v23 - v24) >> 4;
    if (!v25)
    {
      ++v26;
    }

    if (v26 < 0x13)
    {
      goto LABEL_44;
    }

    if (v20 <= v21)
    {
      v27 = &v16->i8[8];
    }

    else
    {
      v27 = (v17 - 16);
    }

    v28 = (v27 - 8);
    if (v28 == v16)
    {
      v29 = *a2;
    }

    else
    {
      v29 = &v16->i8[1];
    }

    v25 = v28 == v16;
    v30 = (v28 - v29) >> 4;
    if (!v25)
    {
      ++v30;
    }

    if (v16 < v17 && v17 - 8 * v30 - 8 < v21 + 8 * v30)
    {
      goto LABEL_44;
    }

    v31 = v26 + 1;
    v32 = (v26 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v18 = (v18 - 8 * v32);
    v33 = (v16 + 8 * v32);
    v34 = v16 + 1;
    v35 = v32;
    do
    {
      v36 = v34[-1];
      v37 = *v34;
      v38 = vextq_s8(v20[-1], v20[-1], 8uLL);
      v34[-1] = vextq_s8(*v20, *v20, 8uLL);
      *v34 = v38;
      v20[-1] = vextq_s8(v37, v37, 8uLL);
      *v20 = vextq_s8(v36, v36, 8uLL);
      v34 += 2;
      v20 -= 2;
      v35 -= 4;
    }

    while (v35);
    v16 = v33;
    if (v31 != v32)
    {
LABEL_44:
      v39 = &v16->u64[1];
      do
      {
        v40 = *(v39 - 8);
        *(v39 - 8) = v18->i64[0];
        v18->i64[0] = v40;
        v18 = (v18 - 8);
        v41 = v39 >= v18;
        v39 += 8;
      }

      while (!v41);
    }
  }
}

void GPU::initializeToZero(void *a1, void *a2, uint64_t a3, uint64_t a4, GPU::EncodeDescriptor *a5)
{
  v6 = a1;
  v7 = a2;
  operator new();
}

void sub_1E07BF0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07BF0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void GPU::MatrixInverseOpHandler::~MatrixInverseOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07BF2A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MPSGraphTensorData;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1E07C0A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *__p, void *a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E07C10B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C15E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C18F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E07C1B74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MPSShapeFromTensorExtents(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 rank];
  v3 = 8 * v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{*(objc_msgSend(v1, "extents") + 8 * v2 + 8 * ~v5)}];
      v8 = *&v4[8 * v5];
      *&v4[8 * v5] = v7;

      v5 = v6++;
    }

    while (v2 > v5);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) count:v2];
  if (v2)
  {
    v10 = v4 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v9;
}

void sub_1E07C29F4(_Unwind_Exception *a1)
{
  if (v4)
  {
    v6 = v3 - 8;
    do
    {

      v2 -= 8;
    }

    while (v2);
  }

  _Unwind_Resume(a1);
}

void sub_1E07C495C(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E07C6004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v27 = v21;

  _Unwind_Resume(a1);
}

void sub_1E07C64A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  v27 = v22;

  _Unwind_Resume(a1);
}

id *GPU::ScaledDotProductAttentionOpHandler::ScaledDotProductAttentionOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4DB68;
  *(v6 + 15) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 21) = 0;
  v18 = *(*(*(v6 + 3) + 72) + 152);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    GPU::ScaledDotProductAttentionOpHandler::_createKernel(this, 0);
  }

  v8 = this[15];
  this[15] = 0;

  v9 = this[17];
  this[17] = 0;

  v10 = this[18];
  this[18] = 0;

  v11 = this[19];
  this[19] = 0;

  v12 = this[20];
  this[20] = 0;

  v13 = objc_alloc(MEMORY[0x1E6974740]);
  v14 = [a2[6] metalDevice];
  v15 = [v13 initWithDevice:v14];
  v16 = this[21];
  this[21] = v15;

  [this[21] setOptions:{objc_msgSend(this[21], "options") | 1}];
  return this;
}

void sub_1E07C68CC(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::ScaledDotProductAttentionOpHandler::_createKernel(GPU::ScaledDotProductAttentionOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(*(this + 3) + 72) + 152), &__p);
  if (v8 - __p != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = objc_alloc(MEMORY[0x1E6974860]);
  v4 = [*(*(this + 2) + 48) metalDevice];
  v5 = [v3 initWithDevice:v4 kernelType:0 sourceCount:5];

  LODWORD(v6) = *__p;
  [v5 setAlpha:v6];
  objc_storeStrong(this + 1, v5);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1E07C6A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::ScaledDotProductAttentionOpHandler::encodeNDArrayOp(GPU::ScaledDotProductAttentionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v30 = v5;
  v29 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v7 = [v29 mpsndarray];
  v8 = *(v6 + 72);
  v9 = v8[7];
  v10 = v8[11];
  v11 = v8[15];
  v12 = v8[19];
  v35 = (*(**(this + 2) + 48))(*(this + 2), v8[3], 0);
  v34 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v33 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
  v32 = (*(**(this + 2) + 48))(*(this + 2), v11, 0);
  v31 = (*(**(this + 2) + 48))(*(this + 2), v12, 0);
  v13 = [v35 mpsndarray];
  v14 = [v34 mpsndarray];
  v15 = [v33 mpsndarray];
  v16 = [v32 mpsndarray];
  v17 = [v31 mpsndarray];
  v18 = v17;
  if (!v7 || (v13 ? (v19 = v14 == 0) : (v19 = 1), !v19 ? (v20 = v15 == 0) : (v20 = 1), !v20 ? (v21 = v16 == 0) : (v21 = 1), !v21 ? (v22 = v17 == 0) : (v22 = 1), v22))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v23 = [v35 shape];
  [v23 count];

  v36 = *(*(v6 + 72) + 152);
  DefiningOp = mlir::Value::getDefiningOp(&v36);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    GPU::ScaledDotProductAttentionOpHandler::_createKernel(this, a2);
  }

  v25 = *(this + 1);
  v26 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v27 = *(a2 + 1);
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  v37[4] = v18;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  [v25 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v28 destinationArray:v7];
}

void GPU::ScaledDotProductAttentionOpHandler::~ScaledDotProductAttentionOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::IdentityOpHandler::IdentityOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DC20;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::IdentityOpHandler::encodeNDArrayOp(GPU::IdentityOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(this + 3) + 72) + 24);
  v7 = *(this + 1);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v11 = *(a2 + 1);
    v12 = [v8 mpsndarray];
    v13 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v7 encodeToMPSCommandEncoder:v10 commandBuffer:v11 sourceArrays:v9 resultState:0 destinationArray:v12 kernelDAGObject:v13];
  }

  else
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
    v15 = [v8 mpsndarray];
    v16 = [v14 mpsndarray];
    v17 = v16;
    if ((!v15 || !v16) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(this + 4) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v22[0] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v21 = [v8 mpsndarray];
    [v7 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v20 resultState:0 destinationArray:v21 kernelDAGObject:0];
  }
}

void GPU::ConstantOpHandler::encodeOp(GPU::ConstantOpHandler *this, id *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = *(this + 3);
    mlir::mps::ConstantOp::getAsAttribute(&v3);
    operator new();
  }

  GPU::BaseOpHandler::encodeConstantOp(this, a2, v2, 1);
}

id *GPU::ExtractOpHandler::ExtractOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DCC0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::ExtractOpHandler::encodeOp(GPU::ExtractOpHandler *this, void **a2)
{
  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *(this + 3);
  if (*(v13 + 36))
  {
    v4 = v13 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  ODSOperandIndexAndLength = mlir::tensor::ExtractOp::getODSOperandIndexAndLength(&v13, 0);
  v7 = *(*(v13 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v10 = [v9 mpsndarray];
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = *(this + 2);
  v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v11, v12, a2[1], this + 1, v10, v8, NextResultAtOffset, 0);
}

id *GPU::FromElementsOpHandler::FromElementsOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DD10;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::FromElementsOpHandler::encodeOp(GPU::FromElementsOpHandler *this, void **a2)
{
  if ((*(this + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *(this + 3);
  if (*(v15 + 36))
  {
    v4 = v15 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v15, 0);
  if ((*(v15 + 46) & 0x80) != 0)
  {
    v7 = *(v15 + 72);
    v8 = ODSOperandIndexAndLength;
    if ((HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v8 = ODSOperandIndexAndLength;
    if ((HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength == 1)
    {
      goto LABEL_9;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_9:
  v9 = *(v7 + 32 * v8 + 24);
  v10 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v12 = [v11 mpsndarray];
  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *(this + 2);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v13, v14, a2[1], this + 1, v12, v10, NextResultAtOffset, 0);
}

id *GPU::TypeConstraintOpHandler::TypeConstraintOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DD60;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::TypeConstraintOpHandler::encodeOp(GPU::TypeConstraintOpHandler *this, void **a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  v6 = *(v4 + 36);
  v7 = v4 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v14 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v10 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v11 = [v10 mpsndarray];
  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = *(this + 2);
  v13 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v12, v13, a2[1], this + 1, v11, v14, NextResultAtOffset, 0);
}

id *GPU::DynamicShapeCastOpHandler::DynamicShapeCastOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4DDB0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::DynamicShapeCastOpHandler::encodeOp(GPU::DynamicShapeCastOpHandler *this, void **a2)
{
  v22 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v22, 0);
  v5 = *(*(v22 + 72) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v22 + 36))
  {
    v6 = v22 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(*(this + 2) + 592) + 32);
  if (((*(*v8 + 24))(v8, NextResultAtOffset) & 1) == 0)
  {
    v9 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v26 = v9;
      v27 = v10;
      if (!v9)
      {
        goto LABEL_16;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v26))
      {
        goto LABEL_15;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
      if (v12)
      {
        v13 = 8 * v12;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        StaticType = GPURegionRuntime::getStaticType(*(this + 2), v5);
        v15 = *(this + 2);
        v24 = StaticType;
        v25 = NextResultAtOffset;
        v23 = *(mlir::Value::getParentRegion(&v25) + 2);
        v26 = &v23;
        v16 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v15 + 288), &v23, &std::piecewise_construct, &v26);
        v26 = v25;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v16 + 3, &v26, &v26, &v24);
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }
  }

LABEL_16:
  v17 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v18 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v19 = [v18 mpsndarray];
  if (!v19 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v20 = *(this + 2);
  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v20, v21, a2[1], this + 1, v19, v17, NextResultAtOffset, 0);
}

GPU::ReadDataFromFileOpHandler *GPU::ReadDataFromFileOpHandler::ReadDataFromFileOpHandler(GPU::ReadDataFromFileOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4DE00;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 23) = 0;
  *(v5 + 24) = 0;
  *(v5 + 26) = 0;
  *(v5 + 27) = 0;
  *(v5 + 28) = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  *(v5 + 16) = 0;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  WeakRetained = objc_loadWeakRetained((*(v5 + 2) + 72));
  v8 = WeakRetained + 320;

  v9 = *v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
    v11 = *v8;
    v16 = &v9[v10];
    if (v9 == v16)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v11 = *v8;
  if (*v9)
  {
    v12 = *v9 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v11[1];
      ++v11;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  v16 = &v9[v10];
  if (v11 != v16)
  {
LABEL_14:
    v17 = *v11;
    do
    {
      v18.var0.var0 = *(*(this + 3) + 24);
      LazyCopyFile::load(*(v17 + 8), v18);
      do
      {
        v19 = v11[1];
        ++v11;
        v17 = v19;
        if (v19)
        {
          v20 = v17 == -8;
        }

        else
        {
          v20 = 1;
        }
      }

      while (v20);
    }

    while (v11 != v16);
  }

LABEL_21:
  v43 = *(this + 3);
  v21 = MEMORY[0x1E696AEC0];
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v43);
  if (Name)
  {
    v24 = v22;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v42) = v22;
    if (v22)
    {
      memmove(&__dst, Name, v22);
    }

    *(&__dst + v24) = 0;
    if (v42 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0;
    v41 = 0;
    p_dst = &__dst;
    v42 = 0;
  }

  v26 = [v21 stringWithCString:p_dst encoding:4];
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst);
  }

  v27 = objc_loadWeakRetained((*(this + 2) + 72));
  v28 = [v27[115] stringByAppendingPathComponent:v26];
  v29 = *v6;
  *v6 = v28;

  *(this + 17) = mlir::mps::ReadDataFromFileOp::getOffset(&v43);
  if (*(v43 + 36))
  {
    v30 = v43 - 16;
  }

  else
  {
    v30 = 0;
  }

  *(this + 18) = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(this + 16);
  *(this + 16) = 0;

  mlir::pdl::OperationOp::getOpName(&__dst, &v43);
  if (v42 == 1)
  {
    v32 = MEMORY[0x1E696AEC0];
    mlir::pdl::OperationOp::getOpName(&__src, &v43);
    if (__src)
    {
      v33 = __len;
      if (__len > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v42) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v33) = 0;
      if (v42 >= 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst;
      }
    }

    else
    {
      __dst = 0;
      v41 = 0;
      v34 = &__dst;
      v42 = 0;
    }

    v35 = [v32 stringWithCString:v34 encoding:4];
    v36 = *(this + 16);
    *(this + 16) = v35;

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__dst);
    }
  }

  return this;
}

void sub_1E07C84F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  GPU::detail::ReadDataFromFileCache::Value::~Value(v19);
  GPU::detail::ReadDataFromFileCache::Value::~Value((v18 + 19));

  GPU::BaseOpHandler::~BaseOpHandler(v18);
  _Unwind_Resume(a1);
}

void GPU::ReadDataFromFileOpHandler::encodeOp(GPU::ReadDataFromFileOpHandler *this, id *a2)
{
  memset(&__str, 0, sizeof(__str));
  *(&v38 + 1) = 0;
  v39 = 0;
  if (!*(this + 16))
  {
    goto LABEL_11;
  }

  v4 = (*(**(this + 2) + 96))(*(this + 2));
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = (*(**(this + 2) + 104))(*(this + 2));
  GPU::detail::SpecializationGPUDataLoader::getValue(v5, v6, *(this + 3), &__p);
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
  }

  std::string::operator=(&__str, &__p);
  v38 = v33;
  v7 = v34;
  v39 = v34;
  v40 = v35;
  if (v34)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v35, &__str);
    v7 = v34;
  }

  if (v7)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v35, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v39)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_11:
    if (v39)
    {
      goto LABEL_41;
    }
  }

  if (!*(this + 24))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 72));
    v9 = [WeakRetained getReadDataFromFileCache];
    v10 = [*(this + 15) UTF8String];
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
    }

    __dst.__r_.__value_.__s.__data_[v12] = 0;
    v13 = *(this + 17);
    v14 = *(this + 18);
    v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __dst;
    }

    v42 = v13;
    v43 = v14;
    GPU::detail::ReadDataFromFileCache::get(v9, &v41, &__p);
    if (*(this + 24))
    {
      GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 25), this + 19);
    }

    std::string::operator=((this + 152), &__p);
    *(this + 11) = v33;
    v17 = v34;
    v16 = v35;
    *(this + 24) = v34;
    *(this + 25) = v16;
    if (v17)
    {
      GPU::detail::ReadDataFromFileCache::incrementRefCount(v16, this + 19);
      v17 = v34;
    }

    if (v17)
    {
      GPU::detail::ReadDataFromFileCache::decrementRefCount(v35, &__p);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_33:

      if (!v39)
      {
        goto LABEL_39;
      }

LABEL_38:
      GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
      goto LABEL_39;
    }

LABEL_37:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_39:
  std::string::operator=(&__str, (this + 152));
  v38 = *(this + 11);
  v18 = *(this + 25);
  v39 = *(this + 24);
  v40 = v18;
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v18, &__str);
  }

LABEL_41:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __str;
  }

  v33 = v38;
  if (*(this + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(this + 26), *(this + 27));
  }

  else
  {
    v41 = *(this + 208);
  }

  v20 = *(this + 29);
  v19 = *(this + 30);
  v42 = v20;
  v43 = v19;
  v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v23 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  v24 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v41.__r_.__value_.__l.__size_;
  }

  if (size == v23)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v41;
    }

    else
    {
      v26 = v41.__r_.__value_.__r.__words[0];
    }

    v27 = 0;
    if (!memcmp(p_p, v26, size) && v33 == v20)
    {
      v27 = *(&v33 + 1) == v19;
    }

    if ((v24 & 0x80000000) == 0)
    {
LABEL_63:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v27 = 0;
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
  {
LABEL_64:
    if (!v27)
    {
      goto LABEL_70;
    }

LABEL_69:
    v28 = v39;
    if (v39 == *(this + 31))
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_68:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v27)
  {
    goto LABEL_69;
  }

LABEL_70:
  v29 = *(this + 6);
  *(this + 6) = 0;

  if (*(this + 31))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 32), this + 26);
  }

  std::string::operator=((this + 208), &__str);
  *(this + 232) = v38;
  v28 = v39;
  v30 = v40;
  *(this + 31) = v39;
  *(this + 32) = v30;
  if (v28)
  {
    GPU::detail::ReadDataFromFileCache::incrementRefCount(v30, this + 26);
    v28 = v39;
  }

LABEL_74:
  if (v28)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
  }

  else
  {
    v31 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(&__p, v28, v31);
  GPU::BaseOpHandler::encodeConstantOp(this, a2, &__p.__r_.__value_.__l.__data_, 1);
  mlir::mps::CPUNDArray::~CPUNDArray(&__p);
  if (v39)
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(v40, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E07C8ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  operator delete(v24);

  GPU::detail::ReadDataFromFileCache::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_1E07C8B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  GPU::detail::ReadDataFromFileCache::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_1E07C8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
    GPU::detail::ReadDataFromFileCache::Value::~Value(&a27);
    _Unwind_Resume(a1);
  }

  GPU::detail::ReadDataFromFileCache::Value::~Value(&a27);
  _Unwind_Resume(a1);
}

uint64_t GPU::IdentityOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::IdentityOpHandler::~IdentityOpHandler(GPU::IdentityOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ConstantOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v140[6] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (*(v5 + 36))
  {
    v6 = v5 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v139[0] = v7;
  v139[1] = v8;
  if (*(*mlir::ElementsAttr::isSplat(v139) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    if (*(v5 + 36))
    {
      v9 = v5 - 16;
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

    v139[0] = v10;
    v139[1] = v11;
    if (*(*mlir::ElementsAttr::isSplat(v139) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (*(v5 + 36))
      {
        v22 = v5 - 16;
      }

      else
      {
        v22 = 0;
      }

      v137 = 0uLL;
      *&v138 = &v137;
      v139[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
      DefiningOp = mlir::Value::getDefiningOp(v139);
      if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v138, DefiningOp) || (*v139 = v137, !mlir::ElementsAttr::isSplat(v139)) || (*&v138 = mlir::CallOpInterface::getArgOperands(v139), *(&v138 + 1) = v24, *(*mlir::ElementsAttr::isSplat(&v138) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
LABEL_99:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (*(v5 + 36))
      {
        v19 = v5 - 16;
      }

      else
      {
        v19 = 0;
      }

      v20 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v20)
      {
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      }

      else
      {
        v21 = 0;
      }

      v139[0] = v20;
      v139[1] = v21;
      v25 = *(*mlir::ElementsAttr::isSplat(v139) + 136);
      if (v25 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        goto LABEL_99;
      }

      v26 = *(v5 + 36) ? v5 - 16 : 0;
      v137 = 0uLL;
      *&v138 = &v137;
      v139[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
      v27 = mlir::Value::getDefiningOp(v139);
      if (!v27)
      {
        goto LABEL_99;
      }

      if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v138, v27) & 1) == 0)
      {
        goto LABEL_99;
      }

      *v139 = v137;
      if (!mlir::ElementsAttr::isSplat(v139))
      {
        goto LABEL_99;
      }

      *&v138 = mlir::CallOpInterface::getArgOperands(v139);
      *(&v138 + 1) = v28;
      v29 = *(*mlir::ElementsAttr::isSplat(&v138) + 136);
      if (v29 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        goto LABEL_99;
      }
    }

    *&v138 = 0;
    mlir::copyElementsAttrData<double>(v139[0], v139[1], &v138);
LABEL_102:
    Op = MPSKernelDAG::constantOp();
    goto LABEL_103;
  }

  if (*(v5 + 36))
  {
    v12 = v5 - 16;
  }

  else
  {
    v12 = 0;
  }

  v130 = 0uLL;
  *&v138 = &v130;
  v139[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v13 = mlir::Value::getDefiningOp(v139);
  if (!v13 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v138, v13) || (v134 = v130, (mlir::ElementsAttr::isSplat(&v134) & 1) == 0) || ((v139[0] = mlir::CallOpInterface::getArgOperands(&v134), v139[1] = v14, isSplat = mlir::ElementsAttr::isSplat(v139), *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) ? (v16 = 0) : (v16 = isSplat), (v133 = v16) == 0 || (v17 = *(*mlir::AffineMapAttr::getValue(&v133) + 136), v17 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) && v17 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_42;
  }

  v131 = 0uLL;
  v138 = v134;
  Type = mlir::ElementsAttr::getType(&v138);
  v33 = Type;
  if (Type)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v34 = 0;
  }

  *&v137 = v33;
  *(&v137 + 1) = v34;
  v136 = mlir::ElementsAttr::isSplat(&v137);
  v35 = mlir::ElementsAttr::isSplat(&v138);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v138);
  v38 = v37;
  if (v35)
  {
    if (mlir::Type::isUnsignedInteger(&v136, 8))
    {
      LOBYTE(v39) = *ElementsAttrRawData;
LABEL_138:
      v131.f64[0] = v39;
      goto LABEL_42;
    }

    if (mlir::Type::isInteger(&v136, 8))
    {
      v131.f64[0] = *ElementsAttrRawData;
      goto LABEL_42;
    }

    if (mlir::Type::isUnsignedInteger(&v136, 16))
    {
      NumElements = 1;
LABEL_135:
      v51 = NumElements - 1;
      if (v35)
      {
        v51 = 0;
      }

      LOWORD(v39) = *&ElementsAttrRawData[2 * v51];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v136, 16))
    {
      NumElements = 1;
LABEL_143:
      v53 = NumElements - 1;
      if (v35)
      {
        v53 = 0;
      }

      v52.i16[0] = *&ElementsAttrRawData[2 * v53];
      v54 = vmovl_s16(v52).i32[0];
LABEL_146:
      v131.f64[0] = v54;
      goto LABEL_42;
    }

    if (mlir::Type::isUnsignedInteger(&v136, 32))
    {
      NumElements = 1;
LABEL_153:
      v55 = NumElements - 1;
      if (v35)
      {
        v55 = 0;
      }

      LODWORD(v39) = *&ElementsAttrRawData[4 * v55];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v136, 32))
    {
      NumElements = 1;
LABEL_170:
      v71 = NumElements - 1;
      if (v35)
      {
        v71 = 0;
      }

      v54 = *&ElementsAttrRawData[4 * v71];
      goto LABEL_146;
    }

    if (mlir::Type::isUnsignedInteger(&v136, 64))
    {
      NumElements = 1;
LABEL_187:
      v85 = NumElements - 1;
      if (v35)
      {
        v85 = 0;
      }

      v39 = *&ElementsAttrRawData[8 * v85];
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v136, 64))
    {
      NumElements = 1;
      goto LABEL_194;
    }

    if (mlir::Type::isF16(&v136))
    {
      NumElements = 1;
      goto LABEL_201;
    }

    if (mlir::Type::isF32(&v136))
    {
      NumElements = 1;
LABEL_208:
      v94 = NumElements - 1;
      if (v35)
      {
        v94 = 0;
      }

      v95 = *&ElementsAttrRawData[4 * v94];
LABEL_211:
      v131.f64[0] = v95;
      goto LABEL_42;
    }

    if (mlir::Type::isF64(&v136))
    {
      v131.f64[0] = *ElementsAttrRawData;
      goto LABEL_42;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&v136))
    {
      goto LABEL_230;
    }

LABEL_227:
    v100 = NumElements - 1;
    if (v35)
    {
      v100 = 0;
    }

    LODWORD(v95) = *&ElementsAttrRawData[2 * v100] << 16;
    goto LABEL_211;
  }

  NumElements = mlir::ElementsAttr::getNumElements(v138, *(&v138 + 1));
  if (mlir::Type::isUnsignedInteger(&v136, 8))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    if (NumElements < 4 || &v131 < &ElementsAttrRawData[NumElements] && &v132 > ElementsAttrRawData)
    {
      v42 = 0;
LABEL_117:
      v43 = NumElements - v42;
      v44 = &ElementsAttrRawData[v42];
      do
      {
        v45 = *v44++;
        v131.f64[0] = v45;
        v131.f64[1] = 0.0;
        --v43;
      }

      while (v43);
      goto LABEL_42;
    }

    if (NumElements >= 0x10)
    {
      v42 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v56 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v57 = ElementsAttrRawData;
      do
      {
        v58 = *v57++;
        v59 = v58;
        v56 -= 16;
      }

      while (v56);
      v41 = vextq_s8(v59, v59, 8uLL);
      v60.i32[0] = v41.u8[6];
      v60.i32[1] = v41.u8[7];
      v61 = vand_s8(v60, 0xFF000000FFLL);
      v62.i64[0] = v61.u32[0];
      v62.i64[1] = v61.u32[1];
      v63 = vcvtq_f64_u64(v62);
      v41.i32[1] = HIDWORD(v63.f64[1]);
      v131 = *&v63.f64[1];
      if (NumElements == v42)
      {
        goto LABEL_42;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v42 = 0;
    }

    v64 = v42;
    v42 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v65 = &ElementsAttrRawData[v64];
    v66 = v64 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v67 = *v65;
      v65 += 4;
      v41.i32[0] = v67;
      v66 += 4;
    }

    while (v66);
    v68 = vmovl_u16(*&vmovl_u8(*v41.i8));
    v69 = vand_s8(*&vextq_s8(v68, v68, 8uLL), 0xFF000000FFLL);
    v70.i64[0] = v69.u32[0];
    v70.i64[1] = v69.u32[1];
    v131 = *&vcvtq_f64_u64(v70).f64[1];
    if (NumElements == v42)
    {
      goto LABEL_42;
    }

    goto LABEL_117;
  }

  if (mlir::Type::isInteger(&v136, 8))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    if (NumElements < 4 || &v131 < &ElementsAttrRawData[NumElements] && &v132 > ElementsAttrRawData)
    {
      v47 = 0;
LABEL_128:
      v48 = NumElements - v47;
      v49 = &ElementsAttrRawData[v47];
      do
      {
        v50 = *v49++;
        v131.f64[0] = v50;
        v131.f64[1] = 0.0;
        --v48;
      }

      while (v48);
      goto LABEL_42;
    }

    if (NumElements >= 0x10)
    {
      v47 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v72 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v73 = ElementsAttrRawData;
      do
      {
        v74 = *v73++;
        v75 = v74;
        v72 -= 16;
      }

      while (v72);
      v76 = vextq_s8(v75, v75, 8uLL);
      v77.i32[0] = v76.u8[6];
      v77.i32[1] = v76.u8[7];
      *v76.i8 = vshr_n_s32(vshl_n_s32(v77, 0x18uLL), 0x18uLL);
      v78.i64[0] = v76.i32[0];
      v78.i64[1] = v76.i32[1];
      v46 = vcvtq_f64_s64(v78);
      v131 = *&v46.f64[1];
      if (NumElements == v47)
      {
        goto LABEL_42;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v47 = 0;
    }

    v79 = v47;
    v47 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v80 = &ElementsAttrRawData[v79];
    v81 = v79 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v82 = *v80;
      v80 += 4;
      LODWORD(v46.f64[0]) = v82;
      v81 += 4;
    }

    while (v81);
    v83 = vmovl_u16(*&vmovl_u8(*&v46.f64[0]));
    *v83.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v83, v83, 8uLL), 0x18uLL), 0x18uLL);
    v84.i64[0] = v83.i32[0];
    v84.i64[1] = v83.i32[1];
    v131 = *&vcvtq_f64_s64(v84).f64[1];
    if (NumElements == v47)
    {
      goto LABEL_42;
    }

    goto LABEL_128;
  }

  if (mlir::Type::isUnsignedInteger(&v136, 16))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isInteger(&v136, 16))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_143;
  }

  if (mlir::Type::isUnsignedInteger(&v136, 32))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_153;
  }

  if (mlir::Type::isInteger(&v136, 32))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

  if (mlir::Type::isUnsignedInteger(&v136, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_187;
  }

  if (mlir::Type::isInteger(&v136, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

LABEL_194:
    v86 = NumElements - 1;
    if (v35)
    {
      v86 = 0;
    }

    v131.f64[0] = *&ElementsAttrRawData[8 * v86];
    goto LABEL_42;
  }

  if (mlir::Type::isF16(&v136))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

LABEL_201:
    v87 = NumElements - 1;
    if (v35)
    {
      v87 = 0;
    }

    _H0 = *&ElementsAttrRawData[2 * v87];
    __asm { FCVT            D0, H0 }

    v131.f64[0] = _D0;
    goto LABEL_42;
  }

  if (mlir::Type::isF32(&v136))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_208;
  }

  if (mlir::Type::isF64(&v136))
  {
    if (NumElements >= 1)
    {
      if (NumElements >= 6 && (&v131 >= &ElementsAttrRawData[8 * NumElements] || &v132 <= ElementsAttrRawData))
      {
        v96 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v107 = (ElementsAttrRawData + 16);
        v108 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v109 = *v107;
          v107 += 2;
          v110 = *(&v109 + 1);
          v108 -= 4;
        }

        while (v108);
        v131 = v110;
        if (NumElements == v96)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v96 = 0;
      }

      v97 = NumElements - v96;
      v98 = &ElementsAttrRawData[8 * v96];
      do
      {
        v99 = *v98;
        v98 += 8;
        v131 = v99;
        --v97;
      }

      while (v97);
    }

    goto LABEL_42;
  }

  if (mlir::Type::isBF16(&v136))
  {
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    goto LABEL_227;
  }

LABEL_230:
  if (mlir::Type::isInteger(&v136, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v139, NumElements);
    mlir::detail::unpackBooleanData(ElementsAttrRawData, v38, v139[0], v139[1]);
    if (NumElements < 1)
    {
      goto LABEL_254;
    }

    if (v35)
    {
      v131.f64[0] = *v139[0];
      v131.f64[1] = 0.0;
      goto LABEL_254;
    }

    if (NumElements < 4 || &v131 < (v139[0] + NumElements) && v139[0] < &v132)
    {
      v111 = 0;
      goto LABEL_252;
    }

    if (NumElements >= 0x10)
    {
      v111 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v117 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v118 = v139[0];
      do
      {
        v119 = *v118++;
        v120 = v119;
        v117 -= 16;
      }

      while (v117);
      v121 = vextq_s8(v120, v120, 8uLL);
      v122.i32[0] = v121.u8[6];
      v122.i32[1] = v121.u8[7];
      *v121.i8 = vshr_n_s32(vshl_n_s32(v122, 0x18uLL), 0x18uLL);
      v123.i64[0] = v121.i32[0];
      v123.i64[1] = v121.i32[1];
      v101 = *&vcvtq_f64_s64(v123).f64[1];
      v131 = v101;
      if (NumElements == v111)
      {
        goto LABEL_254;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_252:
        v112 = NumElements - v111;
        v113 = v139[0] + v111;
        do
        {
          v114 = *v113++;
          v131.f64[0] = v114;
          v131.f64[1] = 0.0;
          --v112;
        }

        while (v112);
        goto LABEL_254;
      }
    }

    else
    {
      v111 = 0;
    }

    v124 = v111;
    v111 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v125 = (v139[0] + v124);
    v126 = v124 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v127 = *v125++;
      v101.i32[0] = v127;
      v126 += 4;
    }

    while (v126);
    v128 = vmovl_u16(*&vmovl_u8(v101));
    *v128.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v128, v128, 8uLL), 0x18uLL), 0x18uLL);
    v129.i64[0] = v128.i32[0];
    v129.i64[1] = v128.i32[1];
    v131 = *&vcvtq_f64_s64(v129).f64[1];
    if (NumElements != v111)
    {
      goto LABEL_252;
    }

LABEL_254:
    if (v139[0] != v140)
    {
      free(v139[0]);
    }

    goto LABEL_42;
  }

  v102 = v136;
  v103 = *(*v136 + 136);
  if (v103 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v102 = 0;
  }

  v139[0] = v102;
  if (v103 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    Value = mlir::AffineMapAttr::getValue(v139);
    if (mlir::Type::isF32(&Value))
    {
      v105 = NumElements - 1;
      if (NumElements < 1)
      {
        goto LABEL_42;
      }

      if (v35)
      {
        v105 = 0;
      }

      v106 = vcvtq_f64_f32(*&ElementsAttrRawData[8 * v105]);
    }

    else
    {
      Value = mlir::AffineMapAttr::getValue(v139);
      mlir::Type::isF16(&Value);
      v116 = NumElements - 1;
      if (NumElements < 1)
      {
        goto LABEL_42;
      }

      if (v35)
      {
        v116 = 0;
      }

      v115.i32[0] = *&ElementsAttrRawData[4 * v116];
      v106 = vcvtq_f64_f32(*&vcvtq_f32_f16(v115));
    }

    v131 = v106;
  }

  else
  {
    mlir::Type::getIntOrFloatBitWidth(&v136);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v136);
    mlir::detail::unpackQuantizedData<std::complex<double>>(ElementsAttrRawData, v38, &v131, NumElements, IntOrFloatBitWidth);
  }

LABEL_42:
  MPSKernelDAG::constantOp();
  MPSKernelDAG::constantOp();
  Op = MPSKernelDAG::complexCreateOp();
LABEL_103:
  v30 = Op;
  if (!Op && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v30;
}

void sub_1E07C9CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a25 != &a28)
  {
    free(a25);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GPU::ConstantOpHandler::~ConstantOpHandler(GPU::ConstantOpHandler *this)
{
  *this = &unk_1F5B4DC70;
  v1 = *(this + 15);
  *(this + 15) = 0;
  if (v1)
  {
    v2 = this;
    mlir::mps::CPUNDArray::~CPUNDArray(v1);
    MEMORY[0x1E12E5B90]();
    this = v2;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4DC70;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    mlir::mps::CPUNDArray::~CPUNDArray(v2);
    MEMORY[0x1E12E5B90]();
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ExtractOpHandler::~ExtractOpHandler(GPU::ExtractOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::FromElementsOpHandler::~FromElementsOpHandler(GPU::FromElementsOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TypeConstraintOpHandler::~TypeConstraintOpHandler(GPU::TypeConstraintOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::DynamicShapeCastOpHandler::~DynamicShapeCastOpHandler(GPU::DynamicShapeCastOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReadDataFromFileOpHandler::~ReadDataFromFileOpHandler(GPU::ReadDataFromFileOpHandler *this)
{
  GPU::ReadDataFromFileOpHandler::~ReadDataFromFileOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4DE00;
  if (*(this + 31))
  {
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 32), this + 26);
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
    if (!*(this + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(this + 24))
  {
LABEL_7:
    GPU::detail::ReadDataFromFileCache::decrementRefCount(*(this + 25), this + 19);
  }

LABEL_8:
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

void GPU::ReturnOpHandler::~ReturnOpHandler(GPU::ReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<std::complex<double>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 8);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0.0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 16 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 8) = 0;
        if (v13 != 1)
        {
          *(v15 + 16) = ((v14 >> a5) & v11);
          *(v15 + 24) = 0;
          if (v13 >= 3)
          {
            *(v15 + 32) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 40) = 0;
            if (v13 != 3)
            {
              *(v15 + 48) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 56) = 0;
              if (v13 >= 5)
              {
                *(v15 + 64) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 72) = 0;
                if (v13 != 5)
                {
                  *(v15 + 80) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 88) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 96) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 104) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 112) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 120) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CPURuntime::initializeOps(CPURuntime *this)
{
  v1 = *(((*(this + 8) + 16 * ((*(*(this + 8) + 44) >> 23) & 1) + ((*(*(this + 8) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 8) + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  v7 = this;
  result = *(v2 + 40);
  v4 = v2 + 32;
  if (result != v2 + 32)
  {
    do
    {
      v5 = *(result + 8);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v8 = &v7;
      mlir::detail::walk<mlir::ForwardIterator>(v6, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10CPURuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v8, 1);
      result = v5;
    }

    while (v5 != v4);
  }

  return result;
}

void CPURuntime::initOp(CPURuntime *this, mlir::Operation *a2)
{
  v10 = *(*(a2 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  v4 = strlen(AttrData);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memmove(&__dst, AttrData, v4);
  }

  *(&__dst + v5) = 0;
  v6 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 10);
  if (v7 == 5)
  {
    operator new();
  }

  if (v7 == 171)
  {
    operator new();
  }

  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void CPURuntime::evaluateOp(CPURuntime *this, mlir::Operation *a2)
{
  v12 = *(*(a2 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v12);
  v5 = strlen(AttrData);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v11 = v5;
  if (v5)
  {
    memmove(&__dst, AttrData, v5);
  }

  *(&__dst + v6) = 0;
  v7 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIROps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIROps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIROps>>>::find<std::string>(this + 1, &__dst);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = *(v7 + 10);
  if (v8 == 5 || v8 == 171)
  {
    v9 = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(this + 28, a2);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    (**v9[3])(v9[3]);
  }

  else if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v11 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1E07CB328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MPSGraphTensorData *CPURuntime::allocateTensorDataForValue(uint64_t a1, uint64_t *a2)
{
  v13 = a2;
  v4 = (*(*a1 + 48))(a1);
  if (!v4)
  {
    v5 = MEMORY[0x1E6974490];
    MPSDataType = getMPSDataType((a2[1] & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(a2);
    v8 = adaptForMPS(v7);
    v9 = [v5 descriptorWithDataType:MPSDataType shape:v8];

    v4 = [MPSGraphTensorData alloc];
    BaseRuntime::setTensorDataToDataMap(a1, a2, v4);
    DefiningOp = mlir::Value::getDefiningOp(&v13);
    v11 = getOpName(DefiningOp);
    [(MPSGraphTensorData *)v4 setLabel:v11];
  }

  return v4;
}

id CPURuntime::allocateTensorDataForTargets(CPURuntime *this, mlir::Operation *a2)
{
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v17 = *(a2 + 17);
    if (v17)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(*(a2 + 9) + 32 * v5 + 24);
        v7 = (*(*this + 48))(this, v6, 0);
        if (v7)
        {
          [v4 addObject:v7];
        }

        v18 = v6[1] & 0xFFFFFFFFFFFFFFF8;
        if (mlir::TensorType::hasRank(&v18))
        {
          mlir::ArrayAttr::getValue(&v18);
        }

        v18 = v6[1] & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::TensorType::hasRank(&v18))
        {
          goto LABEL_15;
        }

        Value = mlir::ArrayAttr::getValue(&v18);
        if (v9)
        {
          break;
        }

LABEL_13:
        MPSDataType = getMPSDataType((v6[1] & 0xFFFFFFFFFFFFFFF8));
        v12 = [MPSGraphTensorData alloc];
        v13 = *(this + 6);
        v14 = getMPSShapeFromMLIR(v6);
        v15 = [(MPSGraphTensorData *)v12 initWithDevice:v13 rowBytesAlignment:MPSDataType >> 3 shape:v14 dataType:MPSDataType];

        BaseRuntime::setTensorDataToDataMap(this, v6, v15);
        [v4 addObject:v15];

        if (++v5 == v17)
        {
          goto LABEL_17;
        }
      }

      v10 = 8 * v9;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

LABEL_15:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_13;
    }
  }

LABEL_17:

  return v4;
}

void *BaseRuntime::getTensorDataFromDataMap(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v6 = *(mlir::Value::getParentRegion(&v7) + 2);
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((a1 + 88), &v6);
  if (v3)
  {
    v5 = v7;
    v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(v3 + 3, &v5);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

void CPURuntime::~CPURuntime(BaseRuntime *this)
{
  *this = &off_1F5B4DF10;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  BaseRuntime::~BaseRuntime(this);
}

{
  *this = &off_1F5B4DF10;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 28);
  *(this + 28) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  BaseRuntime::~BaseRuntime(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN10CPURuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v10[7] = v2;
      v10[8] = v3;
      v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v10[0] = **result;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v6 = i - 8;
        if (!i)
        {
          v6 = 0;
        }

        result = *(v6 + 40);
        v7 = v6 + 32;
        if (result != v6 + 32)
        {
          do
          {
            v8 = *(result + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<CPURuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>>>::__emplace_unique_key_args<mlir::Operation *,std::pair<mlir::Operation * const,std::unique_ptr<CPU::BaseOpHandler>>>(float *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = 0x9DDFEA08EB382D69 * v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (v11[2] == a2)
        {
          return;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_22;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v9)
    {
      goto LABEL_22;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }
}

void sub_1E07CBF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<mlir::Operation *,std::unique_ptr<CPU::BaseOpHandler>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        MEMORY[0x1E12E5B90](v4, 0x81C40B8603338);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

GPU::PadOpHandler *GPU::PadOpHandler::PadOpHandler(GPU::PadOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v7 = &unk_1F5B4DF80;
  *(v7 + 15) = 0;
  *(v7 + 16) = 0;
  v8 = objc_alloc(MEMORY[0x1E6974740]);
  v9 = [a2[6] metalDevice];
  v10 = [v8 initWithDevice:v9];
  v11 = *(this + 16);
  *(this + 16) = v10;

  if (*(this + 40) == 1)
  {
    v19 = a3;
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v19))
    {
      goto LABEL_3;
    }

    v20 = *(*(v19 + 9) + 88);
    DefiningOp = mlir::Value::getDefiningOp(&v20);
    if (DefiningOp)
    {
      {
        v17 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
        mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v17, v18);
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
LABEL_3:
        v20 = *(*(a3 + 9) + 56);
        v12 = mlir::Value::getDefiningOp(&v20);
        if (v12)
        {
          {
            v15 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
            mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v15, v16);
          }

          if ((*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            GPU::PadOpHandler::_createKernel(this, 0);
          }
        }
      }
    }
  }

  return this;
}

void sub_1E07CC19C(_Unwind_Exception *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::PadOpHandler::_createKernel(GPU::PadOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v76 = *(this + 3);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v76);
  if (StorageType > 1)
  {
    if (StorageType == 2)
    {
      v5 = 0;
      v6 = 1;
      v7 = 3;
      goto LABEL_13;
    }

    if (StorageType == 3)
    {
      v5 = 0;
      v6 = 1;
      v7 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (!StorageType)
    {
      v6 = 0;
      v5 = 1;
      v7 = 4;
      goto LABEL_13;
    }

    if (StorageType == 1)
    {
      v5 = 0;
      v6 = 1;
      v7 = 2;
      goto LABEL_13;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v5 = 0;
  v7 = 0;
  v6 = 1;
LABEL_13:
  v8 = *(this + 2);
  v9 = v76;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  StaticType = GPURegionRuntime::getStaticType(v8, *(*(v76 + 72) + 56));
  v11 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v77[0] = v11;
  v77[1] = StaticType;
  v12 = *mlir::CallableOpInterface::getArgAttrsAttr(v77);
  GPURegionRuntime::waitAndReadIntTensorData(v8, a2, *(*(v9 + 72) + 56), __p);
  v13 = __p[0];
  if (v12 >= 1)
  {
    if (v12 == 1)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (v12)
      {
        v25 = (v12 - 1) >> 32;
        if (!v25)
        {
          v26 = 0;
          v14 = v12 & 0x1FFFFFFFELL;
          v15 = v12 & 0xFFFFFFFE;
          v27 = &v60 + v12 - 1;
          do
          {
            v28 = &v13[8 * (v25 & 0xFFFFFFFC)];
            v29 = *v28;
            v30 = *(v28 + 2);
            *v27 = v29;
            v27 -= 2;
            *(&v60 + 2 * v12 + 2 * (v26 ^ 0xFFFFFFFFFFFFFFELL)) = v30;
            v26 += 2;
            v25 += 4;
          }

          while (v14 != v26);
          if (v12 == v14)
          {
LABEL_20:
            if (v12 == 1)
            {
              v18 = 0;
              v19 = 0;
            }

            else
            {
              v19 = 0;
              v18 = 0;
              if (v12)
              {
                v31 = (v12 - 1) >> 32;
                if (!v31)
                {
                  v32 = 0;
                  v18 = v12 & 0x7FFFFFFFFFFFFFFELL;
                  v19 = v12 & 0xFFFFFFFE;
                  v33 = &v60 + 2 * v12 - 1;
                  do
                  {
                    v34 = &v13[8 * (v31 & 0xFFFFFFFC)];
                    v35 = *(v34 + 1);
                    v36 = *(v34 + 3);
                    *v33 = v35;
                    v33 -= 4;
                    *(&v60 + 2 * v12 + 2 * (v32 ^ 0xFFFFFFFFFFFFFFELL) + 1) = v36;
                    v32 += 2;
                    v31 += 4;
                  }

                  while (v18 != v32);
                  if (v12 == v18)
                  {
LABEL_41:
                    __p[1] = v13;
                    operator delete(v13);
                    v22 = 0.0;
                    if (!v5)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_27;
                  }
                }
              }
            }

            v20 = v19 + 1;
            v21 = (2 * v19) | 1;
            do
            {
              *(&v60 + 2 * v12 + 2 * ~v18 + 1) = *&v13[8 * v21];
              v18 = v20++;
              v21 += 2;
            }

            while (v12 > v18);
            goto LABEL_41;
          }
        }
      }
    }

    v16 = v15 + 1;
    v17 = 2 * v15;
    do
    {
      *(&v60 + 2 * v12 + 2 * ~v14) = *&v13[8 * v17];
      v14 = v16++;
      v17 += 2;
    }

    while (v12 > v14);
    goto LABEL_20;
  }

  if (__p[0])
  {
    goto LABEL_41;
  }

  v22 = 0.0;
  if (!v5)
  {
LABEL_42:
    v23 = 0;
    goto LABEL_47;
  }

LABEL_27:
  __p[0] = mlir::getElementTypeOrSelf((*(*(*(v76 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isIntOrIndex(__p))
  {
    GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(v76 + 72) + 88), __p);
    LODWORD(v37) = *__p[0];
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
    v24 = __p[0];
    if ((__p[1] - __p[0]) == 8)
    {
      v22 = *(__p[0] + 1);
    }

    else if (!__p[0])
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v76 + 72) + 88), __p);
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*__p[0]];
  v24 = __p[0];
  if (__p[0])
  {
LABEL_46:
    __p[1] = v24;
    operator delete(v24);
  }

LABEL_47:
  if (v23)
  {
    v38 = 1;
  }

  else
  {
    v38 = v6;
  }

  if (v38)
  {
    v39 = v7;
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_alloc(MEMORY[0x1E69747D8]);
  v41 = [*(*(this + 2) + 48) metalDevice];
  v56 = v72;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v52 = v68;
  v53 = v69;
  v54 = v70;
  v55 = v71;
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  *__p = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v42 = [v40 initWithDevice:v41 edgeMode:v39 constantValue:v23 paddingSize:__p];
  v43 = *(this + 1);
  *(this + 1) = v42;

  [*(this + 1) setConstantValueImagPart:v22];
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07CC690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void GPU::PadOpHandler::encodeNDArrayOp(GPU::PadOpHandler *this, void **a2, NSArray *a3)
{
  v193[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v125 = *(this + 3);
  v126 = v5;
  v136 = this;
  v6 = *(this + 40);
  v140 = a2;
  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v159.i64[0] = *(*(v125 + 72) + 88);
  DefiningOp = mlir::Value::getDefiningOp(&v159);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  {
    v113 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v113, v114);
    a2 = v140;
  }

  if (!(*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_8;
  }

  v159.i64[0] = *(*(v125 + 72) + 56);
  v8 = mlir::Value::getDefiningOp(&v159);
  if (!v8)
  {
    goto LABEL_8;
  }

  {
    v115 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v115, v116);
    a2 = v140;
  }

  if (((*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
LABEL_8:
    GPU::PadOpHandler::_createKernel(v136, a2);
  }

  v9 = *(*(v125 + 72) + 24);
  v124 = [(NSArray *)v126 objectAtIndexedSubscript:0];
  v127 = [v124 mpsndarray];
  v10 = (*(*v136[2] + 48))(v136[2], v9, 0);
  v128 = [v10 mpsndarray];

  if (v128)
  {
    v11 = v127 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v130 = v136[1];
  v138 = [v128 descriptor];
  v12 = [v138 numberOfDimensions];
  v193[0] = 0;
  v193[1] = 0;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v13 = v130;
  if (v130)
  {
    v13 = objc_msgSend_paddingSize(v130);
  }

  v122 = &v117;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v117 - v17;
  if (!v12)
  {
    goto LABEL_124;
  }

  v141 = 0;
  v19 = 0;
  v123 = &v190 + 8;
  v120 = &v191 + 8;
  v121 = &v191;
  v20 = &v159.i64[1];
  do
  {
    [v138 sliceRangeForDimension:v19];
    v16[v19] = v21;
    *&v18[8 * v19] = v21;
    v22 = *(v20 - 1);
    v23 = *v20;
    if (*(v20 - 1) != 0)
    {
      *(v193 + v19) = 1;
      ++v141;
      *&v18[8 * v19] = v22 + v21 + v23;
    }

    ++v19;
    v20 += 2;
  }

  while (v12 != v19);
  if (v12 < 5)
  {
LABEL_124:
    if ([v130 edgeMode] != 4 || (objc_msgSend(v130, "constantValue"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "doubleValue"), v26 = v25 == 0.0, v24, v27 = v140, v26))
    {
      v28 = [v130 edgeMode];
      v29 = v136[15];
      v30 = v128;
      v31 = v29;
      v32 = [v30 descriptor];
      v33 = v32;
      if (v32)
      {
        objc_msgSend_getShapeVector(v32);
      }

      else
      {
        v175 = 0;
      }

      v143 = 0uLL;
      v144.i64[0] = 0;
      v84 = v175[1];
      if (v84 != *v175)
      {
        if (((v84 - *v175) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      LODWORD(v141) = 1;
      v85 = [v30 descriptor];
      v86 = [v85 dataType];
      if (v86 == -2147483640)
      {
        v87 = 536870920;
      }

      else
      {
        v87 = v86;
      }

      v88.i64[0] = __PAIR64__(v160, v159.u32[0]);
      v88.i64[1] = __PAIR64__(v162, v161);
      v142 = v88;
      if (v31)
      {
        v89.i64[0] = __PAIR64__(DWORD2(v160), v159.u32[2]);
        v89.i64[1] = __PAIR64__(DWORD2(v162), DWORD2(v161));
        v139 = v89;
        v90 = [v31 finalOp];
        v91 = **(v90 + 24);
        if (*(*(v90 + 24) + 8) == v91)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v92 = *v91;
        v94 = *(*(*v91 + 32) + 8);
        v93 = *v94;
        if (v94[1] == *v94)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v95 = *v93;
        v96 = *(*v93 + 32);
        v97 = **(v96 + 8);
        if (*(*(v96 + 8) + 8) == v97)
        {
          std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
        }

        v98 = *(v96 + 96);
        if (v98[9].i64[0] == v28 && (vminvq_u32(vceqq_s32(v98[8], v139)) & 0x80000000) != 0 && (vminvq_u32(vceqq_s32(v98[7], v142)) & 0x80000000) != 0 && v87 == *(v92 + 8))
        {
          v142.i64[0] = *v97;
          v99 = *(v142.i64[0] + 16);
          if (v99)
          {
            v100 = *v99;
            if (*v99)
            {
              *(v99 + 8) = v100;
              operator delete(v100);
            }

            MEMORY[0x1E12E5B90](v99, 0x10C402FEFCB83);
          }

          v101 = *(v95 + 16);
          if (v101)
          {
            v102 = *v101;
            if (*v101)
            {
              *(v101 + 8) = v102;
              operator delete(v102);
            }

            MEMORY[0x1E12E5B90](v101, 0x10C402FEFCB83);
          }

          v103 = *(v92 + 16);
          if (v103)
          {
            v104 = *v103;
            if (*v103)
            {
              *(v103 + 8) = v104;
              operator delete(v104);
            }

            MEMORY[0x1E12E5B90](v103, 0x10C402FEFCB83);
          }

          *(v92 + 8) = v87;
          *(v95 + 8) = v87;
          *(v142.i64[0] + 8) = v87;
          operator new();
        }
      }

      operator new();
    }

    v105 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
    v106 = v27[1];
    v192 = v128;
    v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];
    [v130 encodeToMPSCommandEncoder:v105 commandBuffer:v106 sourceArrays:v107 destinationArray:v127];

    v129 = 0;
    goto LABEL_111;
  }

  v34 = v128;
  if (v141)
  {
    v135 = v34;
    v129 = 0;
    v118 = v16 + 2;
    v119 = v12 - 1;
    v142.i64[0] = (v18 - 8);
    while (1)
    {
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
      v35 = *v16;
      if (v193[0])
      {
        *&v190 = *v16;
        v133 = v159;
        *v16 = vaddvq_s64(v159) + v35;
        LOBYTE(v193[0]) = 0;
        --v141;
        v36 = 1;
      }

      else
      {
        v36 = 1;
        while ((*(v193 + v36) & 1) == 0)
        {
          v35 *= v16[v36++];
          if (v12 == v36)
          {
            v36 = v12;
            break;
          }
        }

        *&v190 = v35;
        v133 = 0u;
        if (v36 >= v12)
        {
          v134 = 0u;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = &v190;
          v131 = 0u;
          v132 = 0u;
          v41 = 1;
          goto LABEL_65;
        }
      }

      if (*(v193 + v36))
      {
        v134 = 0u;
        *(&v190 + 1) = v16[v36];
        v132 = *(&v159 + v36);
        v16[v36] = vaddvq_s64(v132) + *(&v190 + 1);
        *(v193 + v36) = 0;
        v42 = v36 + 1;
        --v141;
        if (v36 + 1 >= v12)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = v16[v36];
        v42 = v36 + 1;
        if (v36 + 1 < v12)
        {
          while ((*(v193 + v42) & 1) == 0)
          {
            v44 *= v16[v42++];
            if (v12 == v42)
            {
              v134 = 0u;
              *(&v190 + 1) = v44;
              v132 = 0u;
              goto LABEL_45;
            }
          }
        }

        v134 = 0u;
        *(&v190 + 1) = v44;
        v132 = 0u;
        if (v42 >= v12)
        {
LABEL_45:
          v38 = 0;
          v37 = 1;
          v131 = 0u;
          v41 = 2;
          v40 = v123;
          v39 = 1;
          goto LABEL_65;
        }
      }

      if (*(v193 + v42))
      {
        *&v191 = v16[v42];
        v131 = *(&v159 + v42);
        v16[v42] = vaddvq_s64(v131) + v191;
        *(v193 + v42) = 0;
        v43 = v42 + 1;
        --v141;
        if (v42 + 1 < v12)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v45 = v16[v42];
        v43 = v42 + 1;
        if (v42 + 1 < v12)
        {
          while ((*(v193 + v43) & 1) == 0)
          {
            v45 *= v16[v43++];
            if (v12 == v43)
            {
              v43 = v12;
              break;
            }
          }
        }

        *&v191 = v45;
        v131 = 0u;
        if (v43 < v12)
        {
LABEL_51:
          if (*(v193 + v43) == 1 && v43 == v119)
          {
            v37 = 0;
            v38 = 0;
            v56 = v16[v43];
            v134 = *(&v159 + v43);
            v16[v43] = vaddvq_s64(v134) + v56;
            *(v193 + v43) = 0;
            *(&v191 + 1) = v56;
            --v141;
          }

          else
          {
            v47 = v16[v43];
            v48 = v43 + 1;
            if (v43 + 1 < v12)
            {
              v49 = v12 + ~v43;
              if (v49 < 2)
              {
                goto LABEL_60;
              }

              v48 += v49 & 0xFFFFFFFFFFFFFFFELL;
              v50 = &v118[v43];
              v51 = v49 & 0xFFFFFFFFFFFFFFFELL;
              v52 = 1;
              do
              {
                v47 *= *(v50 - 1);
                v52 *= *v50;
                v50 += 2;
                v51 -= 2;
              }

              while (v51);
              v47 *= v52;
              if (v49 != (v49 & 0xFFFFFFFFFFFFFFFELL))
              {
LABEL_60:
                v53 = v12 - v48;
                v54 = &v16[v48];
                do
                {
                  v55 = *v54++;
                  v47 *= v55;
                  --v53;
                }

                while (v53);
              }
            }

            v37 = 0;
            v38 = 0;
            *(&v191 + 1) = v47;
          }

          v41 = 4;
          v40 = v120;
          v39 = 3;
          goto LABEL_65;
        }
      }

      v37 = 0;
      v38 = 1;
      v41 = 3;
      v40 = v121;
      v39 = 2;
LABEL_65:
      v137 = *(v136[2] + 52);
      LOBYTE(v175) = 0;
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v40];
      [v57 addObject:v58];

      if (v36 < v12)
      {
        v59 = &v190 + 8 * v39;
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 1)];
        [v57 addObject:v60];

        if ((v37 & 1) == 0)
        {
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 2)];
          [v57 addObject:v61];

          if ((v38 & 1) == 0)
          {
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 3)];
            [v57 addObject:v62];
          }
        }
      }

      v63 = v140;
      v64 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
      v139.i64[0] = GPU::doReshapeWithFallBack(v135, v57, v137, v64, v63[1], &v175, 1);

      v65 = objc_alloc(MEMORY[0x1E69747D8]);
      v66 = [*(v136[2] + 6) metalDevice];
      v67 = v130;
      v68 = [v130 edgeMode];
      v69 = [v67 constantValue];
      v143 = v133;
      v144 = v132;
      v145 = v131;
      v146 = v134;
      v155 = v186;
      v156 = v187;
      v157 = v188;
      v158 = v189;
      v151 = v182;
      v152 = v183;
      v153 = v184;
      v154 = v185;
      v147 = v178;
      v148 = v179;
      v149 = v180;
      v150 = v181;
      v70 = [v65 initWithDevice:v66 edgeMode:v68 constantValue:v69 paddingSize:&v143];

      v177 = v139.i64[0];
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1];
      v72 = [v70 destinationArrayDescriptorForSourceArrays:v71 sourceState:0];

      v73 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v140[1] descriptor:v72];
      [v73 setReadCount:2];
      v74 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
      v75 = v140[1];
      v176 = v139.i64[0];
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
      [v70 encodeToMPSCommandEncoder:v74 commandBuffer:v75 sourceArrays:v76 destinationArray:v73];

      if (v141)
      {
        v77 = v73;
        v78 = v135;
        v135 = v77;
      }

      else
      {
        v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];

        v57 = v79;
        v80 = v12;
        do
        {
          v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v142.i64[0] + 8 * v80)];
          [v57 addObject:v81];

          --v80;
        }

        while (v80);
        v78 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
        v82 = GPU::doReshapeWithFallBack(v73, v57, v137, v78, v140[1], &v175, 1);

        v129 = v82;
      }

      v83 = v141 == 0;

      if (v83)
      {

        goto LABEL_107;
      }
    }
  }

  v129 = v34;
LABEL_107:
  v108 = v136[2];
  v109 = v140;
  v105 = GPU::EncodeDescriptor::getcomputeEncoder(v140);
  v110 = v109[1];
  if (*(v125 + 36))
  {
    v111 = v125 - 16;
  }

  else
  {
    v111 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v111, 0);
  GPURegionRuntime::copyNDArrayToTarget(v108, v105, v110, v136 + 16, v129, v124, NextResultAtOffset, 0);
LABEL_111:
}

void sub_1E07CD948(uint64_t a1)
{
  *(v1 + 240) = a1;

  _Unwind_Resume(*(v1 + 240));
}