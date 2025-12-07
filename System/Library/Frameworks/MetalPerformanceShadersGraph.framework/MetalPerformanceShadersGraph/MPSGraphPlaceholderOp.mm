@interface MPSGraphPlaceholderOp
- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name;
- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type value:(Value)value name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPlaceholderOp

- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  graphCopy = graph;
  *(&self->_dataType + 1) = type;
  v16.receiver = self;
  v16.super_class = MPSGraphPlaceholderOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type value:(Value)value name:(id)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  impl = value.impl;
  graphCopy = graph;
  initInternal = [(MPSGraphOperation *)self initInternal];
  objc_storeWeak(&initInternal->super._graph, graphCopy);
  inputTensors = initInternal->super._inputTensors;
  initInternal->super._inputTensors = MEMORY[0x1E695E0F0];

  array = [MEMORY[0x1E695DF70] array];
  controlDependencies = initInternal->super._controlDependencies;
  initInternal->super._controlDependencies = array;

  name = initInternal->super._name;
  initInternal->super._name = 0;

  if (value.impl)
  {
    v15 = [[MPSGraphTensor alloc] initTensorWithOperation:initInternal value:value.impl graph:graphCopy];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    outputTensors = initInternal->super._outputTensors;
    initInternal->super._outputTensors = v16;

    DefiningOp = mlir::Value::getDefiningOp(&impl);
    v19 = getOpName(DefiningOp);
    v20 = initInternal->super._name;
    initInternal->super._name = v19;
  }

  [graphCopy[10] addObject:initInternal];

  return initInternal;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphPlaceholderOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm");
  v11 = nameCopy;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v44);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x77u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.placeholder", 15);
    v20 = &__dst.__r_.__value_.__s.__data_[15];
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

  MLIRType = getMLIRType(builder, self->_shape, *(&self->_dataType + 1));
  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.placeholder";
    v41 = 15;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v44, v24, v27);
  mlir::mps::PlaceholderOp::build(builder, v44, MLIRType);
  v29 = mlir::OpBuilder::create(builder, v44);
  v30 = *(*(v29 + 6) + 16);
  mlir::OperationState::~OperationState(v44);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id)
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