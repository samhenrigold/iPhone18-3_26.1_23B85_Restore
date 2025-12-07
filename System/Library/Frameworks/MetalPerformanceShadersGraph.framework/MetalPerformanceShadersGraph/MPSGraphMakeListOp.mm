@interface MPSGraphMakeListOp
- (MPSGraphMakeListOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies elementType:(id)type maxSize:(id)size name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMakeListOp

- (MPSGraphMakeListOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies elementType:(id)type maxSize:(id)size name:(id)name
{
  typeCopy = type;
  sizeCopy = size;
  objc_storeStrong(&self->_elementType, type);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  maxSize = self->_maxSize;
  self->_maxSize = sizeCopy;

  v21 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  MLIRType = getMLIRType(*builder, self->_elementType);
  v12 = mlir::TypeAttr::get(MLIRType);
  if (self->_maxSize)
  {
    v13 = mlir::IntegerType::get(*builder, 0x20u, 2u);
    v14 = mlir::IntegerAttr::get(v13, [(NSNumber *)self->_maxSize unsignedLongValue]);
  }

  else
  {
    v14 = 0;
  }

  mpsFileLoc(__p, "[MPSGraphMakeListOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphListOps.mm");
  v15 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v19 = mlir::FileLineColLoc::get(StringAttr, 0x45u, 0);
  if (v15)
  {
    v20 = v15;
    uTF8String = [v15 UTF8String];
    v22 = strlen(uTF8String);
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v23 = v22;
    if (v22 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v22;
    if (v22)
    {
      memmove(&__dst, uTF8String, v22);
    }

    v24 = &__dst + v23;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 14;
    qmemcpy(&__dst, "mpsx.make_list", 14);
    v24 = &__dst.__r_.__value_.__s.__data_[14];
  }

  *v24 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v43, v17, v18);
  v25 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v43;
  }

  v26 = 1;
  HIBYTE(v48) = 1;
  if (v25->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v25;
    v26 = 3;
  }

  LOBYTE(v48) = v26;
  v27 = mlir::Builder::getStringAttr(builder, v47);
  v28 = mlir::NameLoc::get(v27, v19);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_19:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v40 = v28;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MakeListOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mpsx.make_list";
    v44 = 14;
    v42 = 259;
    llvm::operator+(&v43, &v41, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v28, v30);
  mlir::mpsx::MakeListOp::build(builder, v47, v12, v14);
  v32 = mlir::OpBuilder::create(builder, v47);
  v33 = *(*(v32 + 6) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mpsx::MakeListOp,void>::id)
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