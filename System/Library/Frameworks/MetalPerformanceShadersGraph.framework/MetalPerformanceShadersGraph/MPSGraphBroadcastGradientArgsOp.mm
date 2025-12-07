@interface MPSGraphBroadcastGradientArgsOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphBroadcastGradientArgsOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphBroadcastGradientArgsOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v43);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x5ABu, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  __dst.__r_.__value_.__s.__data_[v19] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v39, v17, v18);
  v20 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v39;
  }

  v21 = 1;
  HIBYTE(v44) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v20;
    v21 = 3;
  }

  LOBYTE(v44) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v43);
  v23 = mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
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

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.broadcast_gradient_args";
    v40 = 27;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v23, v26);
  mlir::mps::BroadcastGradientArgsOp::build(builder, v43, *v24, v24[1]);
  v28 = mlir::OpBuilder::create(builder, v43);
  v29 = *(*(v28 + 6) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v33 = v30 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v33);

  return DefiningOp;
}

@end