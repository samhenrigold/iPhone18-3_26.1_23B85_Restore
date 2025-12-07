@interface MPSGraphLocalConvolutionWeightGradientOp
- (MPSGraphLocalConvolutionWeightGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLocalConvolutionWeightGradientOp

- (MPSGraphLocalConvolutionWeightGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0
{
  v11.receiver = self;
  v11.super_class = MPSGraphLocalConvolutionWeightGradientOp;
  return [(MPSGraphLocalConvolutionBase *)&v11 initWithGraph:graph inputTensors:tensors controlDependencies:dependencies dataLayout:layout kernelShape:shape dilationRateInX:x dilationRateInY:y name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v40[38] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(&__p, "[MPSGraphLocalConvolutionWeightGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphLocalConvolution.mm");
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::LocalConvolutionOp>(table, builder, &__p, 0xF1u, nameCopy);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  KernelSizeFromShape = getKernelSizeFromShape(self->super._kernelShape, builder);
  dilationRateInX = self->super._dilationRateInX;
  dilationRateInY = self->super._dilationRateInY;
  v40[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(builder, 64, 0);
  v17 = mlir::RankedTensorType::get(v40, 1, IntegerType, 0);
  if (v17)
  {
    v18 = v17;
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v17 = v18;
  }

  else
  {
    v19 = 0;
  }

  v40[0] = dilationRateInY;
  v40[1] = dilationRateInX;
  v20 = mlir::DenseElementsAttr::getFromRawBuffer(v17, v19, v40, 16);
  v21 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = v20;
  dataLayout = self->super._dataLayout;
  v34 = v12;
  Context = mlir::Attribute::getContext(&v34);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v38 = 1283;
    v37[2] = "mps.local_convolution_weight_gradient";
    v37[3] = 37;
    v36 = 259;
    llvm::operator+(v37, &v35, v39);
    llvm::report_fatal_error(v39, 1);
  }

  mlir::OperationState::OperationState(v40, v12, v25);
  mlir::mps::LocalConvolutionWeightGradientOp::build(builder, v40, *v21, v21[1], dataLayout, KernelSizeFromShape, v22);
  v27 = mlir::OpBuilder::create(builder, v40);
  v28 = *(*(v27 + 6) + 16);
  mlir::OperationState::~OperationState(v40);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v32 = v29 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v32);

  return DefiningOp;
}

@end