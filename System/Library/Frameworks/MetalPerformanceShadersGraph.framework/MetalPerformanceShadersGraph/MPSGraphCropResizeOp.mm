@interface MPSGraphCropResizeOp
- (MPSGraphCropResizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCropResizeOp

- (MPSGraphCropResizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  objc_storeStrong(&self->_desc, descriptor);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v16 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v16;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphCropResizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCropResizeOps.mm");
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(table, builder, __p, 0x6Eu, nameCopy);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  resizeHeight = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeHeight];
  resizeWidth = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeWidth];
  normalizeCoordinates = [(MPSGraphCropResizeOpDescriptor *)self->_desc normalizeCoordinates];
  [(MPSGraphCropResizeOpDescriptor *)self->_desc spatialScale];
  v21 = llvm::detail::IEEEFloat::IEEEFloat(v51, v20, v17, v18, v19);
  v22 = llvm::APFloatBase::IEEEsingle(v21);
  llvm::APFloat::Storage::Storage(&v50, v51, v22);
  llvm::detail::IEEEFloat::~IEEEFloat(v51);
  resizeMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc resizeMode];
  v40 = normalizeCoordinates;
  v41 = resizeWidth;
  builderCopy = builder;
  samplingMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc samplingMode];
  coordinateMode = [(MPSGraphCropResizeOpDescriptor *)self->_desc coordinateMode];
  v45 = v12;
  Context = mlir::Attribute::getContext(&v45);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v49 = 1283;
    v48[2] = "mps.crop_resize";
    v48[3] = 15;
    v47 = 259;
    llvm::operator+(v48, &v46, v52);
    llvm::report_fatal_error(v52, 1);
  }

  mlir::OperationState::OperationState(v51, v12, v28);
  v30 = *v13;
  v31 = v13[1];
  v32 = v50.n128_u64[0];
  v34 = llvm::APFloatBase::PPCDoubleDouble(v33);
  if (v34 == v32)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v53, &v50);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v53, &v50);
  }

  mlir::mps::CropResizeOp::build(builderCopy, v51, v30, v31, resizeHeight, v41, v40, v52, resizeMode, samplingMode, coordinateMode);
  if (v34 == v53[0].n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v53);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v53);
  }

  v35 = mlir::OpBuilder::create(builderCopy, v51);
  v36 = *(*(v35 + 6) + 16);
  mlir::OperationState::~OperationState(v51);
  if (v36 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  v42 = v37 - 16;
  if (v34 == v50.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v50);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v42);

  return DefiningOp;
}

@end