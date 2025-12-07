@interface MPSGraphResizeOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphResizeOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(v43, "[MPSGraphResizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphResizeOps.mm");
  v11 = nameCopy;
  v53 = 260;
  v52[0] = v43;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xB4u, 0);
  if (v11)
  {
    v16 = v11;
    uTF8String = [v11 UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 25978;
    __dst.__r_.__value_.__r.__words[0] = *"mps.resize";
    v20 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v22 = 1;
  HIBYTE(v53) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v52[0] = p_p;
    v22 = 3;
  }

  LOBYTE(v53) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v52);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

  if (v44 < 0)
  {
    operator delete(v43[0]);
    v26 = *values;
    v25 = *(values + 1);
    v27 = v25 - *values;
    v41 = v11;
    if (v27 == 32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v26 = *values;
    v25 = *(values + 1);
    v27 = v25 - *values;
    v41 = v11;
    if (v27 == 32)
    {
LABEL_18:
      v29 = v26[2];
      v28 = v26[3];
      goto LABEL_25;
    }
  }

  if (v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = 0;
  v29 = 0;
LABEL_25:
  mode = self->super._mode;
  v31 = mlir::mps::NearestRoundingModeAttr::get(*builder, self->super._nearestRoundingMode);
  v45 = v24;
  Context = mlir::Attribute::getContext(&v45);
  v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id, Context);
  if ((v34 & 1) == 0)
  {
    v50 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.resize";
    v49 = 10;
    v47 = 259;
    llvm::operator+(&__p, &v46, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v52, v24, v33);
  mlir::mps::ResizeOp::build(builder, v52, *v26, v26[1], v29, v28, mode, self->super._centerResult, self->super._alignCorners, v31);
  v35 = mlir::OpBuilder::create(builder, v52);
  v36 = *(*(v35 + 6) + 16);
  mlir::OperationState::~OperationState(v52);
  if (v36 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  v42 = v37 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v42);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  if (index)
  {
    v13 = 0;
    goto LABEL_13;
  }

  if (!self->super._mode)
  {
    inputTensors = [(MPSGraphOperation *)self inputTensors];
    v20 = [inputTensors count];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v17 = WeakRetained;
    if (v20 == 2)
    {
      v18 = [WeakRetained resizeNearestWithGradientTensor:gradientCopy input:tensorCopy nearestRoundingMode:self->super._nearestRoundingMode centerResult:self->super._centerResult alignCorners:self->super._alignCorners layout:self->super._layout name:nameCopy];
      goto LABEL_8;
    }

    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v23 = [inputTensors2 objectAtIndexedSubscript:2];
    v24 = [v17 resizeNearestWithGradientTensor:gradientCopy input:tensorCopy scaleOffsetTensor:v23 nearestRoundingMode:self->super._nearestRoundingMode layout:self->super._layout name:nameCopy];
LABEL_11:
    v13 = v24;

    goto LABEL_12;
  }

  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v15 = [inputTensors3 count];

  v16 = objc_loadWeakRetained(&self->super.super._graph);
  v17 = v16;
  if (v15 != 2)
  {
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v23 = [inputTensors2 objectAtIndexedSubscript:2];
    v24 = [v17 resizeWithGradientTensor:gradientCopy input:tensorCopy scaleOffsetTensor:v23 mode:self->super._mode layout:self->super._layout name:nameCopy];
    goto LABEL_11;
  }

  v18 = [v16 resizeWithGradientTensor:gradientCopy input:tensorCopy mode:self->super._mode centerResult:self->super._centerResult alignCorners:self->super._alignCorners layout:self->super._layout name:nameCopy];
LABEL_8:
  v13 = v18;
LABEL_12:

LABEL_13:

  return v13;
}

@end