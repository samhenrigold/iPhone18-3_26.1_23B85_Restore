@interface MPSGraphVariableFromTensorOp
- (MPSGraphVariableFromTensorOp)initWithGraph:(id)graph tensor:(id)tensor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphVariableFromTensorOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v26, "[MPSGraphVariableFromTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphVariableFromTensorOp.mm");
  v11 = nameCopy;
  v31 = 260;
  v30[0] = v26;
  StringAttr = mlir::Builder::getStringAttr(builder, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
  if (!v11)
  {
    operator new();
  }

  uTF8String = [v11 UTF8String];
  v15 = strlen(uTF8String);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v15;
  if (v15)
  {
    memmove(&__dst, uTF8String, v15);
  }

  __dst.__r_.__value_.__s.__data_[v18] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v16, v17);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v31) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v30);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:

      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v26[0]);
      v23 = *values;
      if (*(values + 1) != *values)
      {
        goto LABEL_17;
      }

LABEL_21:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v27 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v23 = *values;
  if (*(values + 1) == *values)
  {
    goto LABEL_21;
  }

LABEL_17:
  v30[0] = (mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>(builder, v22, v23) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

- (MPSGraphVariableFromTensorOp)initWithGraph:(id)graph tensor:(id)tensor name:(id)name
{
  v15[1] = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  tensorCopy = tensor;
  nameCopy = name;
  v15[0] = tensorCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14.receiver = self;
  v14.super_class = MPSGraphVariableFromTensorOp;
  v12 = [(MPSGraphOperation *)&v14 initWithGraph:graphCopy inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v12;
}

@end