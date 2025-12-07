@interface MPSGraphL2NormPool4DGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphL2NormPool4DGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphL2NormPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm");
  v11 = nameCopy;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x371u, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v28, v17, v18);
  v20 = v28.__r_.__value_.__r.__words[0];
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v28;
  }

  v21 = 1;
  HIBYTE(v31) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v30[0] = v20;
    v21 = 3;
  }

  LOBYTE(v31) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v30);
  mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
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

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) - *values > 8uLL)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end