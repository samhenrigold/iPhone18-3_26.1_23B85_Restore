@interface MPSGraphCallOp
- (MPSGraphCallOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a9;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCallOp

- (MPSGraphCallOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a9
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  typesCopy = types;
  nameCopy = name;
  v19 = a9;
  array = [MEMORY[0x1E695DF70] array];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__MPSGraphCallOp_initWithGraph_inputTensors_controlDependencies_outputTypes_symbolName_inliningOption_name___block_invoke;
  v25[3] = &unk_1E86D4CE8;
  v21 = array;
  v26 = v21;
  [typesCopy enumerateObjectsUsingBlock:v25];
  objc_storeStrong(&self->_outputTypes, array);
  objc_storeStrong(&self->_symbolName, name);
  self->_inliningOption = option;
  v22 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:v19];

  return v22;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v57 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphCallOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCallOp.mm");
  v12 = nameCopy;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x47u, 0);
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

    p_size = (&__dst + v20);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6C6C61632E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v56, v14, v15);
  v22 = v56.__r_.__value_.__r.__words[0];
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v56;
  }

  v23 = 1;
  HIBYTE(v53) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v52[0] = v22;
    v23 = 3;
  }

  LOBYTE(v53) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v52);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
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

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  __dst.__r_.__value_.__l.__size_ = &__dst;
  __dst.__r_.__value_.__r.__words[2] = 0x4812000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = &unk_1E0AB8473;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v26 = [(NSArray *)self->_outputTypes count];
  if (v26 > (v46 - v44) >> 3)
  {
    if (!(v26 >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  outputTypes = self->_outputTypes;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __86__MPSGraphCallOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke;
  v39[3] = &unk_1E86D4D10;
  v39[4] = &__dst;
  v39[5] = builder;
  [(NSArray *)outputTypes enumerateObjectsUsingBlock:v39];
  size = __dst.__r_.__value_.__l.__size_;
  uTF8String2 = [(NSString *)self->_symbolName UTF8String];
  inliningOption = self->_inliningOption;
  if (inliningOption >= 3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    LODWORD(inliningOption) = 0;
  }

  v49 = v25;
  Context = mlir::Attribute::getContext(&v49);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v55 = 1283;
    v54[2] = "mps.call";
    v54[3] = 8;
    v51 = 259;
    llvm::operator+(v54, &v50, &v56);
    llvm::report_fatal_error(&v56, 1);
  }

  mlir::OperationState::OperationState(v52, v25, v32);
  mlir::ValueRange::ValueRange(&v56, *(size + 48), (*(size + 56) - *(size + 48)) >> 3);
  mlir::ValueRange::ValueRange(v54, *values, (*(values + 1) - *values) >> 3);
  if (uTF8String2)
  {
    v34 = strlen(uTF8String2);
  }

  else
  {
    v34 = 0;
  }

  mlir::mps::CallOp::build(builder, v52, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_, v54[0], v54[1], uTF8String2, v34, inliningOption);
  v35 = mlir::OpBuilder::create(builder, v52);
  v36 = *(*(v35 + 6) + 16);
  mlir::OperationState::~OperationState(v52);
  _Block_object_dispose(&__dst, 8);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v36 == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void __86__MPSGraphCallOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = **(a1 + 40);
  v6 = [v3 shape];
  v7 = [v3 dataType];
  v8 = v6;
  MLIRElementType = getMLIRElementType(v5, v7);
  MLIRType = getMLIRType(v8, MLIRElementType);
  v12 = v11;

  v13[0] = MLIRType;
  v13[1] = v12;
  std::vector<mlir::Type>::push_back[abi:ne200100](v4 + 48, v13);
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end