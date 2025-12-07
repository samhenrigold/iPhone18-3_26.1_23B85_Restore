@interface MPSGraphBufferToTensorOp
- (MPSGraphBufferToTensorOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)self0 name:(id)self1;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphBufferToTensorOp

- (MPSGraphBufferToTensorOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape type:(unsigned int)type interleave:(id)interleave isTensorBufferOp:(BOOL)op isChannelAndInterleaveSame:(BOOL)self0 name:(id)self1
{
  shapeCopy = shape;
  interleaveCopy = interleave;
  objc_storeStrong(&self->_shape, shape);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  self->_type = type;
  interleave = self->_interleave;
  self->_interleave = interleaveCopy;

  self->_isTensorBufferOp = op;
  self->_isChannelAndInterleaveSame = same;
  v24 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(v36, "[MPSGraphBufferToTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorBufferOpsPrivate.mm");
  v10 = nameCopy;
  v41 = 260;
  v40[0] = v36;
  StringAttr = mlir::Builder::getStringAttr(builder, v40);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xA1u, 0);
  if (v10)
  {
    v15 = v10;
    uTF8String = [v10 UTF8String];
    v17 = strlen(uTF8String);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
    }

    v19 = __dst + v18;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "mpsx.buffer_to_tensor", 21);
    v19 = &__dst[0].__r_.__value_.__s.__data_[21];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &__p, v12, v13);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v41) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v40[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v41) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v40);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

  if (v37 < 0)
  {
    operator delete(v36[0]);
    shape = self->_shape;
    builderCopy2 = builder;
    if (shape)
    {
LABEL_18:
      v26 = [(NSArray *)shape count];
      getMLIRElementType(*builderCopy2, self->_type);
      v27 = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
      v28 = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
          v30 = [(NSArray *)self->_shape objectAtIndexedSubscript:i];
          v27[i] = [v30 intValue];

          v31 = [(NSArray *)self->_interleave objectAtIndexedSubscript:i];
          v28[i] = [v31 intValue];
        }
      }

      if (*(values + 1) != *values)
      {
        arrayToU64Attr(builder, v27, v26);
      }

      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else
  {
    shape = self->_shape;
    builderCopy2 = builder;
    if (shape)
    {
      goto LABEL_18;
    }
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40[0] = (mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &>(builderCopy2, v23, *values) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v40);

  return DefiningOp;
}

@end