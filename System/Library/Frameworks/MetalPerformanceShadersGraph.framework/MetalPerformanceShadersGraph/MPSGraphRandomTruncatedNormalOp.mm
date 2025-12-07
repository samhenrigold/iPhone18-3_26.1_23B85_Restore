@interface MPSGraphRandomTruncatedNormalOp
- (MPSGraphRandomTruncatedNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRandomTruncatedNormalOp

- (MPSGraphRandomTruncatedNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  [descriptorCopy min];
  self->_minimum = v19;
  [descriptorCopy max];
  self->_maximum = v20;
  v21 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v78 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphRandomTruncatedNormalOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm");
  v12 = nameCopy;
  v70 = 260;
  v69[0] = __p;
  v58 = v12;
  StringAttr = mlir::Builder::getStringAttr(builder, v69);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x155u, 0);
  if (!v12)
  {
    operator new();
  }

  v15 = v12;
  uTF8String = [v12 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  __dst.__r_.__value_.__s.__data_[v20] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v74, v18, v19);
  v21 = v74.__r_.__value_.__r.__words[0];
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v74;
  }

  v22 = 1;
  HIBYTE(v70) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v69[0] = v21;
    v22 = 3;
  }

  LOBYTE(v70) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v69);
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
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

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*builder, *(&self->_dataType + 1));
  v29 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = MLIRElementType;
  v31 = llvm::detail::IEEEFloat::IEEEFloat(v69, self->_mean, v26, v27, v28);
  v32 = llvm::APFloatBase::IEEEsingle(v31);
  llvm::APFloat::Storage::Storage(&v66, v69, v32);
  llvm::detail::IEEEFloat::~IEEEFloat(v69);
  llvm::detail::IEEEFloat::IEEEFloat(v69, self->_standardDeviation, v33, v34, v35);
  llvm::APFloat::Storage::Storage(&v65, v69, v32);
  llvm::detail::IEEEFloat::~IEEEFloat(v69);
  llvm::detail::IEEEFloat::IEEEFloat(v69, self->_minimum, v36, v37, v38);
  llvm::APFloat::Storage::Storage(&v64, v69, v32);
  llvm::detail::IEEEFloat::~IEEEFloat(v69);
  llvm::detail::IEEEFloat::IEEEFloat(v69, self->_maximum, v39, v40, v41);
  llvm::APFloat::Storage::Storage(&v63, v69, v32);
  llvm::detail::IEEEFloat::~IEEEFloat(v69);
  samplingMethod = self->_samplingMethod;
  v62 = v24;
  Context = mlir::Attribute::getContext(&v62);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id, Context);
  if ((v45 & 1) == 0)
  {
    v76 = 1283;
    v74.__r_.__value_.__r.__words[2] = "mps.random_truncated_normal";
    v75 = 27;
    v73 = 259;
    llvm::operator+(&v74, &v71, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v69, v24, v44);
  v46 = v30;
  v47 = *v29;
  v48 = v29[1];
  v49 = v66.n128_u64[0];
  v51 = llvm::APFloatBase::PPCDoubleDouble(v50);
  if (v51 == v49)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__dst.__r_.__value_.__r.__words[1], &v66);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst.__r_.__value_.__l.__size_, &v66);
  }

  if (v51 == v65.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v74.__r_.__value_.__r.__words[1], &v65);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v74.__r_.__value_.__l.__size_, &v65);
  }

  if (v51 == v64.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v72, &v64);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v72, &v64);
  }

  if (v51 == v63.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v68, &v63);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v68, &v63);
  }

  mlir::mps::RandomTruncatedNormalOp::build(builder, v69, v47, v48, v46, &__dst, &v74, &v71, v67, samplingMethod);
  if (v51 == v68.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v68);
    v52 = v58;
    if (v51 != v72.n128_u64[0])
    {
LABEL_35:
      llvm::detail::IEEEFloat::~IEEEFloat(&v72);
      if (v51 != v74.__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

LABEL_40:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v74.__r_.__value_.__r.__words[1]);
      if (v51 != __dst.__r_.__value_.__l.__size_)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v68);
    v52 = v58;
    if (v51 != v72.n128_u64[0])
    {
      goto LABEL_35;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v72);
  if (v51 == v74.__r_.__value_.__l.__size_)
  {
    goto LABEL_40;
  }

LABEL_36:
  llvm::detail::IEEEFloat::~IEEEFloat(&v74.__r_.__value_.__r.__words[1]);
  if (v51 != __dst.__r_.__value_.__l.__size_)
  {
LABEL_37:
    llvm::detail::IEEEFloat::~IEEEFloat(&__dst.__r_.__value_.__r.__words[1]);
    goto LABEL_42;
  }

LABEL_41:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__dst.__r_.__value_.__r.__words[1]);
LABEL_42:
  v53 = mlir::OpBuilder::create(builder, v69);
  v54 = *(*(v53 + 6) + 16);
  mlir::OperationState::~OperationState(v69);
  if (v54 == &mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0;
  }

  v59 = v55 - 16;
  if (v51 == v63.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v63);
    if (v51 != v64.n128_u64[0])
    {
LABEL_47:
      llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      if (v51 != v65.n128_u64[0])
      {
        goto LABEL_48;
      }

LABEL_52:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v65);
      if (v51 != v66.n128_u64[0])
      {
        goto LABEL_49;
      }

LABEL_53:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v66);
      goto LABEL_54;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v63);
    if (v51 != v64.n128_u64[0])
    {
      goto LABEL_47;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
  if (v51 == v65.n128_u64[0])
  {
    goto LABEL_52;
  }

LABEL_48:
  llvm::detail::IEEEFloat::~IEEEFloat(&v65);
  if (v51 == v66.n128_u64[0])
  {
    goto LABEL_53;
  }

LABEL_49:
  llvm::detail::IEEEFloat::~IEEEFloat(&v66);
LABEL_54:
  DefiningOp = mlir::Value::getDefiningOp(&v59);

  return DefiningOp;
}

@end