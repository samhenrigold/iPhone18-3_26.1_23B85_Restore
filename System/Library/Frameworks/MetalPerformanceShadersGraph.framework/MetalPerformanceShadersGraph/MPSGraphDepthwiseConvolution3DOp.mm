@interface MPSGraphDepthwiseConvolution3DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution3DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphDepthwiseConvolution3DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm");
  v11 = nameCopy;
  v33 = 260;
  v32[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x1C4u, 0);
  if (v11)
  {
    v16 = v11;
    v17 = v11;
    uTF8String = [v11 UTF8String];
    v19 = strlen(uTF8String);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(__dst, uTF8String, v19);
    }

    v11 = v17;
    v21 = __dst + v20;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "mps.depthwise_conv_3d", 21);
    v21 = &__dst[0].__r_.__value_.__s.__data_[21];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v30, v13, v14);
  v22 = v30.__r_.__value_.__r.__words[0];
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v30;
  }

  v23 = 1;
  HIBYTE(v33) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v32[0] = v22;
    v23 = 3;
  }

  LOBYTE(v33) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v32);
  mlir::NameLoc::get(v24, v15);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) - *values > 8uLL)
  {
    strides = [(MPSGraphDepthwiseConvolution3DOpDescriptor *)self->super._desc strides];
    nsArrayToAttr(strides, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v35 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v12 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  inputTensors = self->super.super._inputTensors;
  if (v12 == tensorCopy)
  {
    v27 = [(NSArray *)inputTensors objectAtIndexedSubscript:0];
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    v30 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient/shapeOp", nameCopy, name];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v32 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient", nameCopy, name2];
    [v20 depthwiseConvolution3DDataGradientWithIncomingGradientTensor:gradientCopy weightsTensor:v21 outputShapeTensor:v19 descriptor:desc name:v26];
  }

  else
  {
    v15 = [(NSArray *)inputTensors objectAtIndexedSubscript:1];
    v16 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", nameCopy, name3];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v23 stringWithFormat:@"%@/%@/convolution3DWeightsGradient", nameCopy, name2];
    [v20 depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:gradientCopy sourceTensor:v21 outputShapeTensor:v19 descriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end