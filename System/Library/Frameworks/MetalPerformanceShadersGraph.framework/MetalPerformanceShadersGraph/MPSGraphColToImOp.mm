@interface MPSGraphColToImOp
- (MPSGraphColToImOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor outputShape:(id)shape name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphColToImOp

- (MPSGraphColToImOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor outputShape:(id)shape name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  shapeCopy = shape;
  nameCopy = name;
  v20 = [descriptorCopy copy];
  colToImDesc = self->_colToImDesc;
  self->_colToImDesc = v20;

  v22 = [shapeCopy copy];
  shape = self->_shape;
  self->_shape = v22;

  v24 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphColToImOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphImToColOps.mm");
  v10 = nameCopy;
  v30 = 260;
  v29[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v29);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xBEu, 0);
  if (v10)
  {
    v15 = v10;
    uTF8String = [v10 UTF8String];
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
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.col_to_im", 13);
    v19 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v27, v12, v13);
  v20 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v27;
  }

  v21 = 1;
  HIBYTE(v30) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v29[0] = v20;
    v21 = 3;
  }

  LOBYTE(v30) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v29);
  mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
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

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  [(MPSGraphImToColOpDescriptor *)self->_colToImDesc kernelHeight];
  [(MPSGraphImToColOpDescriptor *)self->_colToImDesc kernelWidth];
  operator new();
}

@end