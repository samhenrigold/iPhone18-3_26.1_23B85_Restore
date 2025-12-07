@interface MPSGraphStencilOp
- (MPSGraphStencilOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStencilOp

- (MPSGraphStencilOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphStencilOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphStencilOps.mm");
  v11 = nameCopy;
  v31 = 260;
  v30 = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, &v30);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x90u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1818846062;
    __dst.__r_.__value_.__r.__words[0] = *"mps.stencil";
    v20 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v29, v13, v14);
  v21 = v29.__r_.__value_.__r.__words[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v29;
  }

  v22 = 1;
  HIBYTE(v31) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v30 = v21;
    v22 = 3;
  }

  LOBYTE(v31) = v22;
  v23 = mlir::Builder::getStringAttr(builder, &v30);
  mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
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

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) - *values > 8uLL)
  {
    offsets = [(MPSGraphStencilOpDescriptor *)self->_desc offsets];
    mlir::Builder::getIntegerType(builder, 64, 1);
    [offsets count];
    operator new();
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end