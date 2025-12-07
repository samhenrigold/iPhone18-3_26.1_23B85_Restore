@interface MPSGraphOneHotOp
- (MPSGraphOneHotOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies depth:(unint64_t)depth axis:(unint64_t)axis dataType:(unsigned int)type name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphOneHotOp

- (MPSGraphOneHotOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies depth:(unint64_t)depth axis:(unint64_t)axis dataType:(unsigned int)type name:(id)name
{
  self->_depth = depth;
  self->_axis = axis;
  self->_dataType = type;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v59 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphOneHotOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphOneHotOps.mm");
  v12 = nameCopy;
  v57 = 260;
  v56[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v56);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x34u, 0);
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
    *(&__dst.__r_.__value_.__s + 23) = 11;
    *(__dst.__r_.__value_.__r.__words + 7) = 1953458271;
    __dst.__r_.__value_.__r.__words[0] = *"mps.one_hot";
    v21 = &__dst.__r_.__value_.__s.__data_[11];
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v53, v14, v15);
  v22 = v53.__r_.__value_.__r.__words[0];
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v53;
  }

  v23 = 1;
  HIBYTE(v57) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v56[0] = v22->__r_.__value_.__r.__words;
    v23 = 3;
  }

  LOBYTE(v57) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v56);
  v25 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
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

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*builder, self->_dataType);
  __dst.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(builder, 32, 0);
  v28 = mlir::RankedTensorType::get(&__dst, 1, IntegerType, 0);
  if (v28)
  {
    v29 = v28;
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
    v28 = v29;
  }

  else
  {
    v30 = 0;
  }

  LODWORD(v53.__r_.__value_.__l.__data_) = self->_depth;
  v56[0] = mlir::DenseElementsAttr::getFromRawBuffer(v28, v30, &v53, 4);
  v31 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v25, v56);
  __dst.__r_.__value_.__r.__words[0] = 1;
  v32 = mlir::Builder::getIntegerType(builder, 32, 1);
  v33 = mlir::RankedTensorType::get(&__dst, 1, v32, 0);
  if (v33)
  {
    v34 = v33;
    v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
    v33 = v34;
  }

  else
  {
    v35 = 0;
  }

  LODWORD(v53.__r_.__value_.__l.__data_) = self->_axis;
  v56[0] = mlir::DenseElementsAttr::getFromRawBuffer(v33, v35, &v53, 4);
  v36 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v25, v56);
  v37 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v36;
  v50 = v25;
  Context = mlir::Attribute::getContext(&v50);
  v40 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id, Context);
  if ((v41 & 1) == 0)
  {
    v55 = 1283;
    v53.__r_.__value_.__r.__words[2] = "mps.one_hot";
    v54 = 11;
    v52 = 259;
    llvm::operator+(&v53, &v51, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v56, v25, v40);
  mlir::mps::OneHotOp::build(builder, v56, *v37, (v31 - 16), (v38 - 16), MLIRElementType);
  v42 = mlir::OpBuilder::create(builder, v56);
  v43 = *(*(v42 + 6) + 16);
  mlir::OperationState::~OperationState(v56);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v47 = v44 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v47);

  return DefiningOp;
}

@end