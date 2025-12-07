@interface MPSGraphCostVolumeOp
- (MPSGraphCostVolumeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners coordinateIs1DInWidth:(BOOL)self0 paddingMode:(int64_t)self1 samplingMode:(unint64_t)self2 nearestRoundingMode:(unint64_t)self3 similarityType:(unint64_t)self4 windowWidth:(unint64_t)self5 windowHeight:(unint64_t)self6 name:(id)self7;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCostVolumeOp

- (MPSGraphCostVolumeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners coordinateIs1DInWidth:(BOOL)self0 paddingMode:(int64_t)self1 samplingMode:(unint64_t)self2 nearestRoundingMode:(unint64_t)self3 similarityType:(unint64_t)self4 windowWidth:(unint64_t)self5 windowHeight:(unint64_t)self6 name:(id)self7
{
  self->_relativeCoordinates = coordinates;
  self->_alignCorners = relativeCoordinates;
  self->_coordinateIs1DInWidth = corners;
  *(&self->_coordinateIs1DInWidth + 1) = width;
  self->_paddingMode = mode;
  self->_samplingMode = samplingMode;
  self->_nearestRoundingMode = roundingMode;
  self->_layout = layout;
  self->_similarity = type;
  self->_windowWidth = windowWidth;
  self->_windowHeight = height;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v52 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphCostVolumeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCostVolumeOps.mm");
  v11 = nameCopy;
  v51 = 260;
  v50[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v50);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x51u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 15;
    qmemcpy(&__dst, "mps.cost_volume", 15);
    v20 = &__dst.__r_.__value_.__s.__data_[15];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v46, v13, v14);
  v21 = v46.__r_.__value_.__r.__words[0];
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v46;
  }

  v22 = 1;
  HIBYTE(v51) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v50[0] = v21;
    v22 = 3;
  }

  LOBYTE(v51) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v50);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
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

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  v38 = v11;
  v25 = *values;
  v26 = *(values + 1) - *values;
  if (v26 <= 8 || v26 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  similarity = self->_similarity;
  layout = self->_layout;
  v28 = mlir::BoolAttr::get(*builder, *(&self->_coordinateIs1DInWidth + 1));
  v43 = v24;
  Context = mlir::Attribute::getContext(&v43);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v48 = 1283;
    v46.__r_.__value_.__r.__words[2] = "mps.cost_volume";
    v47 = 15;
    v45 = 259;
    llvm::operator+(&v46, &v44, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v50, v24, v30);
  mlir::mps::CostVolumeOp::build(builder, v50, *v25, v25[1], v25[2], self->_relativeCoordinates, self->_alignCorners, self->_windowWidth, self->_windowHeight, similarity, layout, v28);
  v32 = mlir::OpBuilder::create(builder, v50);
  v33 = *(*(v32 + 6) + 16);
  mlir::OperationState::~OperationState(v50);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v40 = v34 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v40);

  return DefiningOp;
}

@end