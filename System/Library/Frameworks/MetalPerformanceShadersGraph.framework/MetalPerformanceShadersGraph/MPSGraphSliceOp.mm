@interface MPSGraphSliceOp
- (MPSGraphSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension start:(int64_t)start length:(int64_t)length name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSliceOp

- (MPSGraphSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension start:(int64_t)start length:(int64_t)length name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_start = start;
  self->_length = length;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphSliceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v12 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x16Bu, 0);
  if (v12)
  {
    v17 = v12;
    uTF8String = [v12 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, uTF8String, v19);
    }

    v21 = &__dst + v20;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 9;
    __dst.__r_.__value_.__s.__data_[8] = 101;
    __dst.__r_.__value_.__r.__words[0] = *"mps.slice";
    v21 = &__dst.__r_.__value_.__s.__data_[9];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v41, v14, v15);
  v22 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v41;
  }

  v23 = 1;
  HIBYTE(v46) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v22;
    v23 = 3;
  }

  LOBYTE(v46) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v45);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
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

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v25;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.slice";
    v42 = 9;
    v40 = 259;
    llvm::operator+(&v41, &v39, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v25, v28);
  mlir::mps::SliceOp::build(builder, v45, *v26, self->_dimensionIndex, self->_start, self->_length);
  v30 = mlir::OpBuilder::create(builder, v45);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v35 = v32 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v35);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  dimensionIndex = self->_dimensionIndex;
  if (dimensionIndex < 0)
  {
    shape = [tensorCopy shape];
    dimensionIndex = self->_dimensionIndex + [shape count];
  }

  array = [MEMORY[0x1E695DF70] array];
  v32 = gradientCopy;
  array2 = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  while (1)
  {
    shape2 = [tensorCopy shape];
    v17 = [shape2 count];

    if (v15 >= v17)
    {
      break;
    }

    if (dimensionIndex == v15)
    {
      shape3 = [tensorCopy shape];
      v19 = [shape3 objectAtIndexedSubscript:dimensionIndex];
      integerValue = [v19 integerValue];

      if (integerValue <= 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v21 = integerValue - self->_length;
      v22 = (integerValue & (self->_start >> 63)) + self->_start;
      v23 = v21 - v22;
      if (v22 < 0 || v23 < 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
      [array addObject:v24];

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      [array2 addObject:v25];

      ++v15;
    }

    else
    {
      [array addObject:&unk_1F5B75B18];
      [array2 addObject:&unk_1F5B75B18];
      ++v15;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v27 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v29 = [v27 stringWithFormat:@"%@/%@/pad", nameCopy, name];
  v30 = [WeakRetained padTensor:v32 withPaddingMode:0 leftPadding:array rightPadding:array2 constantValue:v29 name:0.0];

  return v30;
}

@end