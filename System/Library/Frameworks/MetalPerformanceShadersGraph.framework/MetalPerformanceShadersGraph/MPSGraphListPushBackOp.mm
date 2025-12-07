@interface MPSGraphListPushBackOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphListPushBackOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphListPushBackOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphListOps.mm");
  v11 = nameCopy;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v44);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x5Bu, 0);
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

    *(&__dst[0].__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = __dst + v19;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 19;
    *(&__dst[0].__r_.__value_.__r.__words[1] + 7) = 1801675106;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mpsx.list_push_back";
    v20 = &__dst[0].__r_.__value_.__s.__data_[19];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v40, v13, v14);
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
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ListPushBackOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mpsx.list_push_back";
    v41 = 19;
    v39 = 259;
    llvm::operator+(&v40, &v38, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v44, v24, v27);
  mlir::mpsx::ListPushBackOp::build(builder, v44, *v25, v25[1]);
  v29 = mlir::OpBuilder::create(builder, v44);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v44);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mpsx::ListPushBackOp,void>::id)
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

@end