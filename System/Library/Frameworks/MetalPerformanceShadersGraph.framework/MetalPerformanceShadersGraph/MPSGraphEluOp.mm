@interface MPSGraphEluOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphEluOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphEluOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphEluActivationOp.mm");
  v11 = nameCopy;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v44);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 7;
    qmemcpy(&__dst, "mps.elu", 7);
    v20 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v40, v13, v14);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v45) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v44[0] = v21;
    v22 = 3;
  }

  LOBYTE(v45) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v44);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
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

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.elu";
    v41 = 7;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v44, v24, v27);
  mlir::mps::ATan2Op::build(builder, v44, *v25, v25[1]);
  v29 = mlir::OpBuilder::create(builder, v44);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v44);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v34 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v40 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  [inputTensors objectAtIndexedSubscript:0];

  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v14 = [inputTensors2 objectAtIndexedSubscript:0];

  if (v14 != tensorCopy && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v16 = [WeakRetained constantWithScalar:&unk_1F5B77978 shape:objc_msgSend(tensorCopy dataType:{"dataType"), 0.0}];

  v17 = objc_loadWeakRetained(&self->super._graph);
  v38 = v16;
  v18 = [v17 constantWithScalar:&unk_1F5B77990 shape:objc_msgSend(tensorCopy dataType:{"dataType"), 1.0}];

  v19 = objc_loadWeakRetained(&self->super._graph);
  v39 = v18;
  if (nameCopy)
  {
    v20 = [nameCopy stringByAppendingString:@"/lessThanOrEqualTo"];
  }

  else
  {
    v20 = @"eluGrad/lessThanOrEqualTo";
  }

  v37 = [v19 greaterThanWithPrimaryTensor:tensorCopy secondaryTensor:v16 name:v20];
  if (nameCopy)
  {
  }

  v21 = objc_loadWeakRetained(&self->super._graph);
  outputTensors = [(MPSGraphOperation *)self outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];
  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v25 = [inputTensors3 objectAtIndexedSubscript:1];
  if (nameCopy)
  {
    v26 = [nameCopy stringByAppendingString:@"/negativeRegionGradient"];
  }

  else
  {
    v26 = @"eluGrad/negativeRegionGradient";
  }

  v27 = [v21 additionWithPrimaryTensor:v23 secondaryTensor:v25 name:v26];
  if (nameCopy)
  {
  }

  v28 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v29 = v39;
    v30 = v37;
    v31 = [nameCopy stringByAppendingString:@"/localGradient"];
  }

  else
  {
    v31 = @"eluGrad/localGradient";
    v29 = v39;
    v30 = v37;
  }

  v32 = [v28 selectWithPredicateTensor:v30 truePredicateTensor:v29 falsePredicateTensor:v27 name:v31];
  if (nameCopy)
  {

    v33 = objc_loadWeakRetained(&self->super._graph);
    v34 = [nameCopy stringByAppendingString:@"/select"];
  }

  else
  {

    v33 = objc_loadWeakRetained(&self->super._graph);
    v34 = @"eluGrad/multiplication";
  }

  v35 = [v33 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v32 name:v34];
  if (nameCopy)
  {
  }

  return v35;
}

@end