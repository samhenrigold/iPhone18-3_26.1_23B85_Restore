@interface MPSGraphRandomUniformOp
- (MPSGraphRandomUniformOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRandomUniformOp

- (MPSGraphRandomUniformOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  LODWORD(self->_maximum) = [descriptorCopy dataType];
  [descriptorCopy min];
  *(&self->_minimum + 1) = v17;
  [descriptorCopy max];
  self->_minimum = v18;
  self->_minInteger = [descriptorCopy minInteger];
  self->_maxInteger = [descriptorCopy maxInteger];
  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v27, "[MPSGraphRandomUniformOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm");
  v11 = nameCopy;
  v32 = 260;
  v31[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v31);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xEEu, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
    v17 = strlen(uTF8String);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 18;
    LOWORD(__dst.__r_.__value_.__r.__words[2]) = 28018;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.random_uniform";
    v19 = &__dst.__r_.__value_.__s.__data_[18];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v32) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v31);
  v23 = mlir::NameLoc::get(v22, v15);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(__dst.__r_.__value_.__l.__data_);

    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_16:

  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  operator delete(v27[0]);
LABEL_17:
  v31[0] = getMLIRElementType(*builder, LODWORD(self->_maximum));
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __dst.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type &>(builder, v23, *values, (*values + 8), (*values + 16), (*values + 24), v31) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

@end