@interface MPSGraphRankOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRankOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v27, "[MPSGraphRankOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm");
  v11 = nameCopy;
  v32 = 260;
  v31[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v31);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x536u, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    p_size = (&__dst + v18);
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 8;
    __dst.__r_.__value_.__r.__words[0] = 0x6B6E61722E73706DLL;
    p_size = &__dst.__r_.__value_.__l.__size_;
  }

  *p_size = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v32) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v31[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v32) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v31);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      v24 = *values;
      if (*(values + 1) != *values)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v28 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v24 = *values;
  if (*(values + 1) == *values)
  {
    goto LABEL_22;
  }

LABEL_18:
  v31[0] = (mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>(builder, v23, v24) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v31);

  return DefiningOp;
}

@end