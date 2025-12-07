@interface MPSGraphVariableOp
- (MPSGraphVariableOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name;
- (MPSGraphVariableOp)initWithGraph:(id)graph variableMPSNDArray:(id)array name:(id)name;
- (id)mpsNDArrayWithDevice:(id)device;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphVariableOp

- (id)mpsNDArrayWithDevice:(id)device
{
  v3 = [(MPSGraphVariable *)self->_variable mpsNDArrayWithDevice:device];

  return v3;
}

- (MPSGraphVariableOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  graphCopy = graph;
  self->_dataType = type;
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (MPSGraphVariableOp)initWithGraph:(id)graph variableMPSNDArray:(id)array name:(id)name
{
  graphCopy = graph;
  arrayCopy = array;
  nameCopy = name;
  descriptor = [arrayCopy descriptor];
  getShape = [descriptor getShape];
  shape = self->_shape;
  self->_shape = getShape;

  self->_dataType = [arrayCopy dataType];
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphVariableOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm");
  v11 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xEFu, 0);
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
    qmemcpy(&__dst, "mpsx.var_handle", 15);
    v20 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v42, v13, v14);
  v21 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v42;
  }

  v22 = 1;
  HIBYTE(v47) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v21;
    v22 = 3;
  }

  LOBYTE(v47) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v46);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
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

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(builder, self->_shape, self->_dataType);
  v35 = v24;
  Value = mlir::AffineMapAttr::getValue(&v35);
  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mpsx.var_handle";
    v43 = 15;
    v41 = 259;
    llvm::operator+(&v42, &v40, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v28);
  mlir::placement::StartTimer::build(builder, v46, MLIRType, Value);
  v30 = mlir::OpBuilder::create(builder, v46);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v36 = v32 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v36);

  return DefiningOp;
}

@end