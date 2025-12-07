@interface MPSGraphScaledDotProductAttentionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphScaledDotProductAttentionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v28, "[MPSGraphScaledDotProductAttentionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixMultiplicationOps.mm");
  v11 = nameCopy;
  v33 = 260;
  v32[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x8Du, 0);
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

    v19 = &__dst + v18;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1634755699;
    __dst.__r_.__value_.__r.__words[0] = *"mps_spi.sdpa";
    v19 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v13, v14);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v33) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v32);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v28[0]);
      v24 = *values;
      v25 = *(values + 1) - *values;
      if (!v25)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v29 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v24 = *values;
  v25 = *(values + 1) - *values;
  if (!v25)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v25 >> 3) < 2 || v25 == 16 || v25 == 32 || (v25 >> 3) <= 3)
  {
LABEL_27:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v32[0] = (mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>(builder, v23, v24, v24 + 1, v24 + 2, v24 + 3, v24 + 4) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

@end