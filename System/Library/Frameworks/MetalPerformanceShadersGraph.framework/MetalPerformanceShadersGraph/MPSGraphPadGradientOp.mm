@interface MPSGraphPadGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPadGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphPadGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v48);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x4CEu, 0);
  if (v12)
  {
    v17 = v12;
    uTF8String = [v12 UTF8String];
    v19 = strlen(uTF8String);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(__dst, uTF8String, v19);
    }

    v21 = __dst + v20;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 16;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.pad_gradient";
    v21 = &__dst[0].__r_.__value_.__s.__data_[16];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v44, v14, v15);
  v22 = v44.__r_.__value_.__r.__words[0];
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v44;
  }

  v23 = 1;
  HIBYTE(v49) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v48[0] = v22;
    v23 = 3;
  }

  LOBYTE(v49) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v48);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
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

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = *values;
  v26 = *(values + 1);
  v28 = v26 - *values;
  if (v28 == 16 || v26 == v27 || v28 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  paddingMode = self->_paddingMode;
  v41 = v25;
  Context = mlir::Attribute::getContext(&v41);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v46 = 1283;
    v44.__r_.__value_.__r.__words[2] = "mps.pad_gradient";
    v45 = 16;
    v43 = 259;
    llvm::operator+(&v44, &v42, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v48, v25, v31);
  mlir::mps::PadGradientOp::build(builder, v48, *v27, v27[1], v27[2], paddingMode);
  v33 = mlir::OpBuilder::create(builder, v48);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v34 == &mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v38 = v35 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v38);

  return DefiningOp;
}

@end