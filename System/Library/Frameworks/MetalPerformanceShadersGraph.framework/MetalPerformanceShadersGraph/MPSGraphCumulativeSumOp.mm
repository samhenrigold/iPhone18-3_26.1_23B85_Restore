@interface MPSGraphCumulativeSumOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCumulativeSumOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc(v28, "[MPSGraphCumulativeSumOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCumulativeOps.mm");
  v12 = nameCopy;
  v33 = 260;
  v32[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x4Cu, 0);
  if (v12)
  {
    uTF8String = [v12 UTF8String];
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
    *(&__dst.__r_.__value_.__s + 23) = 18;
    LOWORD(__dst.__r_.__value_.__r.__words[2]) = 28021;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.cumulative_sum";
    v20 = &__dst.__r_.__value_.__s.__data_[18];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &__p, v14, v15);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v22 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v22 = 3;
  }

  LOBYTE(v33) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v32);
  v24 = mlir::NameLoc::get(v23, v16);
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
      if (*(values + 1) - *values == 16)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
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
  if (*(values + 1) - *values == 16)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_22:
  v25 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __dst.__r_.__value_.__s.__data_[0] = self->super._exclusive;
  __p.__r_.__value_.__s.__data_[0] = self->super._reverse;
  v32[0] = (mlir::OpBuilder::create<mlir::mps::CumulativeSumOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(builder, v24, v25, v25 + 1, &__dst, &__p) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

@end