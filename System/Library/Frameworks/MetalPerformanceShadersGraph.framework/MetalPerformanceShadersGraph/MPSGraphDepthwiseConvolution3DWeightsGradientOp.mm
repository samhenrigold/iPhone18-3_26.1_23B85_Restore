@interface MPSGraphDepthwiseConvolution3DWeightsGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution3DWeightsGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphDepthwiseConvolution3DWeightsGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm");
  v11 = nameCopy;
  v33 = 260;
  v32[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x238u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = v11;
  uTF8String = [v11 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  __dst.__r_.__value_.__s.__data_[v20] = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v30, v18, v19);
  v21 = v30.__r_.__value_.__r.__words[0];
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v30;
  }

  v22 = 1;
  HIBYTE(v33) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v32[0] = v21;
    v22 = 3;
  }

  LOBYTE(v33) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v32);
  mlir::NameLoc::get(v23, v13);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
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

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *(values + 1) - *values;
  if (v24 > 8 && v24 != 16)
  {
    strides = [(MPSGraphDepthwiseConvolution3DOpDescriptor *)self->super._desc strides];
    nsArrayToAttr(strides, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end