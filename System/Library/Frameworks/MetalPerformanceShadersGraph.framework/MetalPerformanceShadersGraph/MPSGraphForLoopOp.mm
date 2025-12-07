@interface MPSGraphForLoopOp
- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(void *)autodiff;
- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(void *)autodiff;
- (MPSGraphForLoopOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies bodyBlock:(id)block iterArgs:(id)args name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
- (void)makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:;
- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff;
@end

@implementation MPSGraphForLoopOp

- (MPSGraphForLoopOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies bodyBlock:(id)block iterArgs:(id)args name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  blockCopy = block;
  argsCopy = args;
  nameCopy = name;
  v20 = MEMORY[0x1E12E6580](blockCopy);
  bodyBlock = self->_bodyBlock;
  self->_bodyBlock = v20;

  objc_storeStrong(&self->_iterArgs, args);
  ptr = self->_opData.__ptr_;
  self->_opData.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v23 = objc_alloc_init(MPSGraphRegion);
  v26.receiver = self;
  v26.super_class = MPSGraphForLoopOp;
  v24 = [(MPSGraphOperation *)&v26 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy region:v23 name:nameCopy];

  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v68 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  selfCopy = self;
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphForLoopOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm");
  v11 = nameCopy;
  v66 = 260;
  v65[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v65);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x9F3u, 0);
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
    qmemcpy(&__dst, "scf.for", 7);
    v20 = &__dst.__r_.__value_.__s.__data_[7];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v62, v13, v14);
  v21 = v62.__r_.__value_.__r.__words[0];
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v62;
  }

  v22 = 1;
  HIBYTE(v66) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v65[0] = v21;
    v22 = 3;
  }

  LOBYTE(v66) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v65);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
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

  v56 = v24;
  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->super._graph);
  v26 = WeakRetained[22];
  v27 = v26;

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builderCopy, v56, *values);
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v28;
  v30 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builderCopy, v56, *values + 8);
  v49 = v27;
  if (*(values + 1) - *values <= 0x10uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = v30;
  v32 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builderCopy, v56, *values + 16);
  v34 = v56;
  v33 = builderCopy;
  getValuesFromTensors(selfCopy->_iterArgs, &v51);
  v50[0] = &builderCopy;
  v50[1] = &v56;
  v50[2] = &selfCopy;
  v59 = v34;
  Context = mlir::Attribute::getContext(&v59);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if ((v37 & 1) == 0)
  {
    v64 = 1283;
    v62.__r_.__value_.__r.__words[2] = "scf.for";
    v63 = 7;
    v61 = 259;
    llvm::operator+(&v62, &v60, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v65, v34, v36);
  mlir::ValueRange::ValueRange(&__dst, v51, (v52 - v51) >> 3);
  mlir::scf::ForOp::build(v33, v65, (v29 - 16), (v31 - 16), (v32 - 16), __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_, v38, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<[MPSGraphForLoopOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]::$_4>, v50);
  v39 = mlir::OpBuilder::create(v33, v65);
  v40 = *(*(v39 + 6) + 16);
  mlir::OperationState::~OperationState(v65);
  if (v40 != &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v39 = 0;
  }

  v53 = v39;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v41 = *((&v39[16 * ((*(v39 + 11) >> 23) & 1) + 71 + ((*(v39 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v39 + 10) + 8);
  v42 = [(NSMutableArray *)selfCopy->super._region->_blocks objectAtIndexedSubscript:0];
  v43 = v41 - 8;
  if (!v41)
  {
    v43 = 0;
  }

  v42[3] = v43;

  v44 = objc_loadWeakRetained(&selfCopy->super._graph);
  objc_storeStrong(v44 + 22, v26);

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v53, 0);
  if (*(v53 + 9))
  {
    NextResultAtOffset = (v53 - 16);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v65[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  DefiningOp = mlir::Value::getDefiningOp(v65);

  return DefiningOp;
}

- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(void *)autodiff
{
  outputCopy = output;
  OpData = getOpData(&self->super);
  LOBYTE(autodiff) = (*(OpData->super.super.isa + 3))(OpData, autodiff, outputCopy);

  return autodiff;
}

- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(void *)autodiff
{
  inputCopy = input;
  OpData = getOpData(&self->super);
  LOBYTE(autodiff) = (*(OpData->super.super.isa + 4))(OpData, autodiff, inputCopy);

  return autodiff;
}

- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff
{
  OpData = getOpData(&self->super);

  AutodiffOpData::createPartialDerivatives(OpData, autodiff);
}

- (void)makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:
{
  v53[38] = *MEMORY[0x1E69E9840];
  v51 = a5;
  v52 = a6;
  v8 = **self;
  v9 = *self[1];
  v49 = a4;
  mlir::ValueRange::ValueRange(v50, &v49, 1uLL);
  v43 = v9;
  Context = mlir::Attribute::getContext(&v43);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v47 = 1283;
    v46[2] = "tensor.from_elements";
    v46[3] = 20;
    v45 = 259;
    llvm::operator+(v46, &v44, v48);
    llvm::report_fatal_error(v48, 1);
  }

  mlir::OperationState::OperationState(v53, v9, v11);
  mlir::tensor::FromElementsOp::build(v8, v53, v50[0], v50[1]);
  v13 = mlir::OpBuilder::create(v8, v53);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(v53);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v42 = v15 - 16;
  v16 = mlir::IntegerType::get(***self, 0x20u, 1u);
  v17 = **self;
  v18 = *self[1];
  v53[0] = mlir::TypeAttr::get(v16);
  v19 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(v17, v18, &v42, v53);
  appendNewBlock = [(*self[2])[5] appendNewBlock];
  v21 = [MPSGraphTensor alloc];
  v22 = *self[2];
  WeakRetained = objc_loadWeakRetained((v22 + 8));
  v41 = [(MPSGraphTensor *)v21 initTensorWithOperation:v22 value:v19 - 16 graph:WeakRetained parentBlock:appendNewBlock name:0];

  v24 = objc_opt_new();
  if (a6)
  {
    v25 = 0;
    do
    {
      v26 = mlir::ValueRange::dereference_iterator(&v51, v25);
      v27 = [MPSGraphTensor alloc];
      v28 = *self[2];
      v29 = objc_loadWeakRetained((v28 + 8));
      v30 = [(MPSGraphTensor *)v27 initTensorWithOperation:v28 value:v26 graph:v29 parentBlock:appendNewBlock name:0];

      [v24 addObject:v30];
      ++v25;
    }

    while (v52 > v25);
  }

  objc_storeStrong(*self[2] + 14, v24);
  v31 = objc_loadWeakRetained(*self[2] + 1);
  objc_storeStrong(v31 + 22, appendNewBlock);

  v32 = ((*self[2])[11][2])();
  v33 = *self[2];
  v34 = *(v33 + 96);
  *(v33 + 96) = v32;

  v35 = *self[2];
  v36 = *(v35 + 88);
  *(v35 + 88) = 0;

  v37 = [MPSGraphYieldOp alloc];
  v38 = objc_loadWeakRetained(*self[2] + 1);
  v39 = [(MPSGraphOperation *)v37 initWithGraph:v38 inputTensors:(*self[2])[12] controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v40 = objc_loadWeakRetained(*self[2] + 1);
  [v40[22] addTerminatorOperation:v39];
}

@end