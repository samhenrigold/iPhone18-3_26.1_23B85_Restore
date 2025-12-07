@interface MPSGraphRandomNormalOp
- (MPSGraphRandomNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRandomNormalOp

- (MPSGraphRandomNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  *(&self->_dataType + 1) = [descriptorCopy dataType];
  [descriptorCopy mean];
  self->_mean = v17;
  [descriptorCopy standardDeviation];
  self->_standardDeviation = v18;
  self->_samplingMethod = [descriptorCopy samplingMethod];
  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphRandomNormalOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm");
  v12 = nameCopy;
  v60 = 260;
  v59[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v59);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x120u, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 17;
    __dst[0].__r_.__value_.__s.__data_[16] = 108;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.random_normal";
    v21 = &__dst[0].__r_.__value_.__s.__data_[17];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v61, v14, v15);
  v22 = v61.__r_.__value_.__r.__words[0];
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v61;
  }

  v23 = 1;
  HIBYTE(v60) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v59[0] = v22;
    v23 = 3;
  }

  LOBYTE(v60) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v59);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
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

  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*builder, *(&self->_dataType + 1));
  v30 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = MLIRElementType;
  v32 = llvm::detail::IEEEFloat::IEEEFloat(v59, self->_mean, v27, v28, v29);
  v33 = llvm::APFloatBase::IEEEsingle(v32);
  llvm::APFloat::Storage::Storage(&v58, v59, v33);
  llvm::detail::IEEEFloat::~IEEEFloat(v59);
  llvm::detail::IEEEFloat::IEEEFloat(v59, self->_standardDeviation, v34, v35, v36);
  llvm::APFloat::Storage::Storage(&v57, v59, v33);
  llvm::detail::IEEEFloat::~IEEEFloat(v59);
  samplingMethod = self->_samplingMethod;
  v54 = v25;
  Context = mlir::Attribute::getContext(&v54);
  v39 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id, Context);
  if ((v40 & 1) == 0)
  {
    v63 = 1283;
    v61.__r_.__value_.__r.__words[2] = "mps.random_normal";
    v62 = 17;
    v56 = 259;
    llvm::operator+(&v61, &v55, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v59, v25, v39);
  v41 = *v30;
  v42 = v30[1];
  v43 = v58.n128_u64[0];
  v45 = llvm::APFloatBase::PPCDoubleDouble(v44);
  if (v45 == v43)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1], &v58);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst[0].__r_.__value_.__l.__size_, &v58);
  }

  if (v45 == v57.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61.__r_.__value_.__r.__words[1], &v57);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v61.__r_.__value_.__l.__size_, &v57);
  }

  mlir::mps::RandomNormalOp::build(builder, v59, v41, v42, v31, __dst, &v61, samplingMethod);
  if (v45 == v61.__r_.__value_.__l.__size_)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61.__r_.__value_.__r.__words[1]);
    if (v45 != __dst[0].__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v61.__r_.__value_.__r.__words[1]);
    if (v45 != __dst[0].__r_.__value_.__l.__size_)
    {
LABEL_30:
      llvm::detail::IEEEFloat::~IEEEFloat(&__dst[0].__r_.__value_.__r.__words[1]);
      goto LABEL_33;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1]);
LABEL_33:
  v46 = mlir::OpBuilder::create(builder, v59);
  v47 = *(*(v46 + 6) + 16);
  mlir::OperationState::~OperationState(v59);
  if (v47 == &mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0;
  }

  v51 = v48 - 16;
  if (v45 == v57.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v57);
    if (v45 != v58.n128_u64[0])
    {
      goto LABEL_38;
    }

LABEL_40:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v58);
    goto LABEL_41;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v57);
  if (v45 == v58.n128_u64[0])
  {
    goto LABEL_40;
  }

LABEL_38:
  llvm::detail::IEEEFloat::~IEEEFloat(&v58);
LABEL_41:
  DefiningOp = mlir::Value::getDefiningOp(&v51);

  return DefiningOp;
}

@end