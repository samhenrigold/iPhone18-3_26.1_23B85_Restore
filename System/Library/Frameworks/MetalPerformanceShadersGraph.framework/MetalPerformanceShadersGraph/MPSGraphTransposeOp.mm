@interface MPSGraphTransposeOp
- (MPSGraphTransposeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension withDimension:(unint64_t)withDimension name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTransposeOp

- (MPSGraphTransposeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension withDimension:(unint64_t)withDimension name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_dimensionIndex2 = withDimension;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphTransposeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0xD2u, 0);
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

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, uTF8String, v19);
    }

    v21 = &__dst + v20;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.transpose", 13);
    v21 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v43, v14, v15);
  v22 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v43;
  }

  v23 = 1;
  HIBYTE(v48) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v22;
    v23 = 3;
  }

  LOBYTE(v48) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v47);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
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

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  dimensionIndex = self->_dimensionIndex;
  dimensionIndex2 = self->_dimensionIndex2;
  v40 = v25;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.transpose";
    v44 = 13;
    v42 = 259;
    llvm::operator+(&v43, &v41, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v25, v30);
  mlir::mps::TransposeOp::build(builder, v47, *v26, dimensionIndex, dimensionIndex2);
  v32 = mlir::OpBuilder::create(builder, v47);
  v33 = *(*(v32 + 6) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v37 = v34 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v37);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dimensionIndex = self->_dimensionIndex;
  dimensionIndex2 = self->_dimensionIndex2;
  v13 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v15 = [v13 stringWithFormat:@"%@/%@/transpose", nameCopy, name];
  v16 = [WeakRetained transposeTensor:gradientCopy dimension:dimensionIndex withDimension:dimensionIndex2 name:v15];

  return v16;
}

@end