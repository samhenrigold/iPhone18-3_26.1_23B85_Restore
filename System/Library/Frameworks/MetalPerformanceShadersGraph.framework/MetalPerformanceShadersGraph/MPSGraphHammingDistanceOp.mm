@interface MPSGraphHammingDistanceOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphHammingDistanceOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphHammingDistanceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixMultiplicationOps.mm");
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x70u, 0);
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
    *(&__dst[0].__r_.__value_.__s + 23) = 20;
    LODWORD(__dst[0].__r_.__value_.__r.__words[2]) = 1701015137;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.hamming_distance";
    v21 = &__dst[0].__r_.__value_.__s.__data_[20];
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

  MLIRElementType = getMLIRElementType(*builder, self->_dataType);
  v27 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = MLIRElementType;
  v40 = v25;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::HammingDistanceOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.hamming_distance";
    v44 = 20;
    v42 = 259;
    llvm::operator+(&v43, &v41, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v25, v30);
  mlir::mps::HammingDistanceOp::build(builder, v47, *v27, v27[1], v28);
  v32 = mlir::OpBuilder::create(builder, v47);
  v33 = *(*(v32 + 6) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::HammingDistanceOp,void>::id)
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

@end