@interface MPSGraphSparseTensorOp
- (MPSGraphSparseTensorOp)initWithGraph:(id)graph sparseStorageType:(unint64_t)type inputTensors:(id)tensors shape:(id)shape dataType:(unsigned int)dataType name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSparseTensorOp

- (MPSGraphSparseTensorOp)initWithGraph:(id)graph sparseStorageType:(unint64_t)type inputTensors:(id)tensors shape:(id)shape dataType:(unsigned int)dataType name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  tensorsCopy = tensors;
  graphCopy = graph;
  *(&self->_dataType + 1) = dataType;
  self->_sparseStorageType = type;
  v21.receiver = self;
  v21.super_class = MPSGraphSparseTensorOp;
  v19 = [(MPSGraphOperation *)&v21 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v52 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphSparseTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSparseOps.mm");
  v12 = nameCopy;
  v51 = 260;
  v50[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v50);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x5Fu, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v44, v18, v19);
  v21 = v44.__r_.__value_.__r.__words[0];
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v44;
  }

  v22 = 1;
  HIBYTE(v51) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v50[0] = v21;
    v22 = 3;
  }

  LOBYTE(v51) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v50);
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
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

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(builder, self->_shape, *(&self->_dataType + 1));
  v26 = *values;
  v27 = *(values + 1) - *values;
  if (!v27)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 < 9 || (v48[0] = v26[1], v27 == 16))
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = MLIRType;
  v48[1] = v26[2];
  mlir::ValueRange::ValueRange(v49, v48, 2uLL);
  sparseStorageType = self->_sparseStorageType;
  v41 = v24;
  Context = mlir::Attribute::getContext(&v41);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v46 = 1283;
    v44.__r_.__value_.__r.__words[2] = "mps.materialize_sparse_tensor";
    v45 = 29;
    v43 = 259;
    llvm::operator+(&v44, &v42, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v50, v24, v31);
  mlir::mps::MaterializeSparseTensorOp::build(builder, v50, v28, *v26, v49[0], v49[1], sparseStorageType);
  v33 = mlir::OpBuilder::create(builder, v50);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(v50);
  if (v34 == &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
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