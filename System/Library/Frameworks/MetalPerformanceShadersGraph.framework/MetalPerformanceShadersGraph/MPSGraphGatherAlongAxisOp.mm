@interface MPSGraphGatherAlongAxisOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGatherAlongAxisOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphGatherAlongAxisOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm");
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0xEAu, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "mps.gather_along_axis", 21);
    v21 = &__dst[0].__r_.__value_.__s.__data_[21];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v43, v14, v15);
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

  if (v39 < 0)
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

  v40 = v25;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.gather_along_axis";
    v44 = 21;
    v42 = 259;
    llvm::operator+(&v43, &v41, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v25, v30);
  mlir::mps::GatherAlongAxisOp::build(builder, v47, *v27, v27[1], v27[2], self->_allowNegativeIndices);
  v32 = mlir::OpBuilder::create(builder, v47);
  v33 = *(*(v32 + 6) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id)
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
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];
  if (v13 != tensorCopy)
  {
    v14 = 0;
LABEL_5:

    goto LABEL_6;
  }

  shape = [tensorCopy shape];
  v16 = isStaticShape(shape);

  if (v16)
  {
    inputTensors = gradientCopy;
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v13 = [inputTensors2 objectAtIndexedSubscript:1];

    inputTensors3 = [(MPSGraphOperation *)self inputTensors];
    v26 = [inputTensors3 objectAtIndexedSubscript:2];

    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    shape2 = [tensorCopy shape];
    v21 = MEMORY[0x1E696AEC0];
    v25 = shape2;
    name = [(MPSGraphOperation *)self name];
    v23 = [v21 stringWithFormat:@"%@/%@/scatterAlongAxis", nameCopy, name];
    v14 = [WeakRetained scatterAlongAxisTensor:v26 withUpdatesTensor:inputTensors indicesTensor:v13 shape:v25 mode:0 name:v23];

    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end