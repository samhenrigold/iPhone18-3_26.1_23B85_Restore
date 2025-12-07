@interface MPSGraphConvolution3DDataGradientOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConvolution3DDataGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphConvolution3DDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm");
  v11 = nameCopy;
  v29 = 260;
  v28[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v28);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x22Cu, 0);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v26, v17, v18);
  v20 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  v21 = 1;
  HIBYTE(v29) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v28[0] = v20;
    v21 = 3;
  }

  LOBYTE(v29) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v28);
  mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
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

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInX];
  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInY];
  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInZ];
  operator new();
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v30 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
  if (v13 == tensorCopy)
    v20 = {;
    desc = self->super._desc;
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    name3 = [v28 stringWithFormat:@"%@/%@/convolution3DDataGradient", nameCopy, name];
    v26 = [WeakRetained convolution3DWithSourceTensor:gradientCopy weightsTensor:v20 descriptor:desc name:name3];
  }

  else
    v15 = {;
    v16 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolution3DDataGradient/shapeOp", nameCopy, name2];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    name = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v25 = [v23 stringWithFormat:@"%@/%@/convolution3DWeightsGradient", nameCopy, name3];
    v26 = [v20 convolution3DWeightsGradientWithIncomingGradientTensor:name sourceTensor:gradientCopy outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v25];

    WeakRetained = v19;
  }

  return v26;
}

@end