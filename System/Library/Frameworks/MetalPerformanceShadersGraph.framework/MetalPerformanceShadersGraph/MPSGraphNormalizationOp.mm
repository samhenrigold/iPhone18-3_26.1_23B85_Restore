@interface MPSGraphNormalizationOp
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphNormalizationOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v61 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphNormalizationOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphNormalizationOps.mm");
  v47 = nameCopy;
  v59 = 260;
  v58[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v58);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x2Du, 0);
  if (v47)
  {
    uTF8String = [v47 UTF8String];
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
    *(&__dst[0].__r_.__value_.__s + 23) = 17;
    __dst[0].__r_.__value_.__s.__data_[16] = 110;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.normalization";
    v19 = &__dst[0].__r_.__value_.__s.__data_[17];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, &v54, v13, v14);
  v20 = v54.__r_.__value_.__r.__words[0];
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v54;
  }

  v21 = 1;
  HIBYTE(v59) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v58[0] = v20;
    v21 = 3;
  }

  LOBYTE(v59) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v58);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
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

  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = *values;
  v28 = *(values + 1) - *values;
  if (!v28 || (v28 >> 3) < 2 || v28 == 16 || (v28 >> 3) < 4 || v28 == 32)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = llvm::detail::IEEEFloat::IEEEFloat(v58, self->_eps, v24, v25, v26);
  v30 = llvm::APFloatBase::IEEEsingle(v29);
  llvm::APFloat::Storage::Storage(&v57, v58, v30);
  llvm::detail::IEEEFloat::~IEEEFloat(v58);
  v51 = v23;
  Context = mlir::Attribute::getContext(&v51);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v56 = 1283;
    v54.__r_.__value_.__r.__words[2] = "mps.normalization";
    v55 = 17;
    v53 = 259;
    llvm::operator+(&v54, &v52, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v58, v23, v32);
  v34 = *v27;
  v35 = v27[1];
  v36 = v27[2];
  v37 = v27[3];
  v38 = v27[4];
  v39 = v57.n128_u64[0];
  v41 = llvm::APFloatBase::PPCDoubleDouble(v40);
  if (v41 == v39)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1], &v57);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst[0].__r_.__value_.__l.__size_, &v57);
  }

  mlir::mps::NormalizationOp::build(builder, v58, v34, v35, v36, v37, v38, __dst);
  if (v41 == __dst[0].__r_.__value_.__l.__size_)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__dst[0].__r_.__value_.__r.__words[1]);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&__dst[0].__r_.__value_.__r.__words[1]);
  }

  v42 = mlir::OpBuilder::create(builder, v58);
  v43 = *(*(v42 + 6) + 16);
  mlir::OperationState::~OperationState(v58);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v48 = v44 - 16;
  if (v41 == v57.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v57);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v57);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v48);

  return DefiningOp;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  v138[5] = *MEMORY[0x1E69E9840];
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v99 = gradientsCopy;
  v136 = [gradientsCopy objectAtIndexedSubscript:0];
  v134 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:0];
  v132 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v135 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  v133 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
  v131 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
  outputTensors = [(MPSGraphOperation *)self outputTensors];
  v119 = [outputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v125 = [WeakRetained broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v134 name:0];

  v12 = objc_loadWeakRetained(&self->super._graph);
  v123 = [v12 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v132 name:0];

  v13 = objc_loadWeakRetained(&self->super._graph);
  v116 = [v13 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v135 name:0];

  v14 = objc_loadWeakRetained(&self->super._graph);
  v111 = [v14 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v133 name:0];

  v15 = objc_loadWeakRetained(&self->super._graph);
  v109 = [v15 broadcastGradientArgsForPrimaryTensor:v136 withSecondaryTensor:v131 name:0];

  v16 = objc_loadWeakRetained(&self->super._graph);
  v127 = [v16 constantWithScalar:&unk_1F5B77708 shape:268435488 dataType:self->_eps];

  v17 = objc_loadWeakRetained(&self->super._graph);
  dataType = [v135 dataType];
  if (nameCopy)
  {
    v19 = [nameCopy stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v19 = @"normalizationGradient/cast";
  }

  v126 = [v17 castTensor:v127 toType:dataType name:v19];
  if (nameCopy)
  {

    v20 = objc_loadWeakRetained(&self->super._graph);
    v21 = [nameCopy stringByAppendingString:@"/addition"];
  }

  else
  {

    v20 = objc_loadWeakRetained(&self->super._graph);
    v21 = @"normalizationGradient/addition";
  }

  v129 = [v20 additionWithPrimaryTensor:v135 secondaryTensor:v126 name:v21];
  if (nameCopy)
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = [nameCopy stringByAppendingString:@"/sqrt"];
  }

  else
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = @"normalizationGradient/sqrt";
  }

  v128 = [v22 squareRootWithTensor:v129 name:v23];
  if (nameCopy)
  {

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = [nameCopy stringByAppendingString:@"/divison"];
  }

  else
  {

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = @"normalizationGradient/divison";
  }

  v124 = [v24 divisionWithPrimaryTensor:v133 secondaryTensor:v128 name:v25];
  if (nameCopy)
  {

    v26 = objc_loadWeakRetained(&self->super._graph);
    v27 = [nameCopy stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v26 = objc_loadWeakRetained(&self->super._graph);
    v27 = @"normalizationGradient/multiplication";
  }

  v130 = [v26 multiplicationWithPrimaryTensor:v136 secondaryTensor:v124 name:v27];
  if (nameCopy)
  {

    v28 = objc_loadWeakRetained(&self->super._graph);
    v29 = [nameCopy stringByAppendingFormat:@"/sum"];
  }

  else
  {

    v28 = objc_loadWeakRetained(&self->super._graph);
    v29 = @"normalizationGradient/sum";
  }

  v122 = [v28 reductionSumWithTensor:v130 axesTensor:v125 name:v29];
  if (nameCopy)
  {

    v30 = objc_loadWeakRetained(&self->super._graph);
    v31 = [nameCopy stringByAppendingString:@"/broadcastGradShape"];
  }

  else
  {

    v30 = objc_loadWeakRetained(&self->super._graph);
    v31 = @"normalizationGradient/broadcastGradShape";
  }

  v121 = [v30 shapeOfTensor:v134 name:v31];
  if (nameCopy)
  {

    v32 = objc_loadWeakRetained(&self->super._graph);
    v33 = [nameCopy stringByAppendingString:@"/broadcastGradReshape"];
  }

  else
  {

    v32 = objc_loadWeakRetained(&self->super._graph);
    v33 = @"normalizationGradient/broadcastGradReshape";
  }

  v104 = [v32 reshapeTensor:v122 withShapeTensor:v121 name:v33];
  if (nameCopy)
  {

    v34 = objc_loadWeakRetained(&self->super._graph);
    v35 = [nameCopy stringByAppendingString:@"/meannegative"];
  }

  else
  {

    v34 = objc_loadWeakRetained(&self->super._graph);
    v35 = @"normalizationGradient/mean/negative";
  }

  v120 = [v34 negativeWithTensor:v130 name:v35];
  if (nameCopy)
  {

    v36 = objc_loadWeakRetained(&self->super._graph);
    v37 = [nameCopy stringByAppendingFormat:@"/mean/sum"];
  }

  else
  {

    v36 = objc_loadWeakRetained(&self->super._graph);
    v37 = @"normalizationGradient/mean/sum";
  }

  v118 = [v36 reductionSumWithTensor:v120 axesTensor:v123 name:v37];
  if (nameCopy)
  {

    v38 = objc_loadWeakRetained(&self->super._graph);
    v39 = [nameCopy stringByAppendingString:@"/mean/broadcastGradShape"];
  }

  else
  {

    v38 = objc_loadWeakRetained(&self->super._graph);
    v39 = @"normalizationGradient/mean/broadcastGradShape";
  }

  v117 = [v38 shapeOfTensor:v132 name:v39];
  if (nameCopy)
  {

    v40 = objc_loadWeakRetained(&self->super._graph);
    v41 = [nameCopy stringByAppendingString:@"/mean/broadcastGradReshape"];
  }

  else
  {

    v40 = objc_loadWeakRetained(&self->super._graph);
    v41 = @"normalizationGradient/mean/broadcastGradReshape";
  }

  v102 = [v40 reshapeTensor:v118 withShapeTensor:v117 name:v41];
  if (nameCopy)
  {
  }

  v42 = objc_loadWeakRetained(&self->super._graph);
  v115 = [v42 constantWithScalar:objc_msgSend(v134 dataType:{"dataType"), -0.5}];

  v43 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v44 = [nameCopy stringByAppendingString:@"/variance/multiplication"];
  }

  else
  {
    v44 = @"normalizationGradient/variance/multiplication";
  }

  v114 = [v43 multiplicationWithPrimaryTensor:v136 secondaryTensor:v115 name:v44];
  if (nameCopy)
  {

    v45 = objc_loadWeakRetained(&self->super._graph);
    v46 = [nameCopy stringByAppendingString:@"/variance/subtraction"];
  }

  else
  {

    v45 = objc_loadWeakRetained(&self->super._graph);
    v46 = @"normalizationGradient/variance/subtraction";
  }

  v113 = [v45 subtractionWithPrimaryTensor:v119 secondaryTensor:v131 name:v46];
  if (nameCopy)
  {

    v47 = objc_loadWeakRetained(&self->super._graph);
    v48 = [nameCopy stringByAppendingString:@"/variance/multiplication"];
  }

  else
  {

    v47 = objc_loadWeakRetained(&self->super._graph);
    v48 = @"normalizationGradient/variance/multiplication";
  }

  v112 = [v47 multiplicationWithPrimaryTensor:v114 secondaryTensor:v113 name:v48];
  if (nameCopy)
  {

    v49 = objc_loadWeakRetained(&self->super._graph);
    v50 = [nameCopy stringByAppendingString:@"/variance/divison"];
  }

  else
  {

    v49 = objc_loadWeakRetained(&self->super._graph);
    v50 = @"batchNormGammaGradient/variance/divison";
  }

  v110 = [v49 divisionWithPrimaryTensor:v112 secondaryTensor:v129 name:v50];
  if (nameCopy)
  {

    v51 = objc_loadWeakRetained(&self->super._graph);
    v52 = [nameCopy stringByAppendingFormat:@"/variance/sum"];
  }

  else
  {

    v51 = objc_loadWeakRetained(&self->super._graph);
    v52 = @"normalizationGradient/variance/sum";
  }

  v108 = [v51 reductionSumWithTensor:v110 axesTensor:v116 name:v52];
  if (nameCopy)
  {

    v53 = objc_loadWeakRetained(&self->super._graph);
    v54 = [nameCopy stringByAppendingString:@"/variance/broadcastGradShape"];
  }

  else
  {

    v53 = objc_loadWeakRetained(&self->super._graph);
    v54 = @"normalizationGradient/variance/broadcastGradShape";
  }

  v107 = [v53 shapeOfTensor:v135 name:v54];
  if (nameCopy)
  {

    v55 = objc_loadWeakRetained(&self->super._graph);
    v56 = [nameCopy stringByAppendingString:@"/variance/broadcastGradReshape"];
  }

  else
  {

    v55 = objc_loadWeakRetained(&self->super._graph);
    v56 = @"normalizationGradient/variance/broadcastGradReshape";
  }

  v100 = [v55 reshapeTensor:v108 withShapeTensor:v107 name:v56];
  if (nameCopy)
  {

    v57 = objc_loadWeakRetained(&self->super._graph);
    v58 = [nameCopy stringByAppendingString:@"/gamma/subtraction"];
  }

  else
  {

    v57 = objc_loadWeakRetained(&self->super._graph);
    v58 = @"normalizationGradient/gamma/subtraction";
  }

  v106 = [v57 subtractionWithPrimaryTensor:v134 secondaryTensor:v132 name:v58];
  if (nameCopy)
  {

    v59 = objc_loadWeakRetained(&self->super._graph);
    v60 = [nameCopy stringByAppendingString:@"/gamma/divison"];
  }

  else
  {

    v59 = objc_loadWeakRetained(&self->super._graph);
    v60 = @"normalizationGradient/gamma/divison";
  }

  v105 = [v59 divisionWithPrimaryTensor:v106 secondaryTensor:v128 name:v60];
  if (nameCopy)
  {

    v61 = objc_loadWeakRetained(&self->super._graph);
    v62 = [nameCopy stringByAppendingString:@"/gamma/multiplication"];
  }

  else
  {

    v61 = objc_loadWeakRetained(&self->super._graph);
    v62 = @"normalizationGradient/gamma/multiplication";
  }

  v103 = [v61 multiplicationWithPrimaryTensor:v136 secondaryTensor:v105 name:v62];
  if (nameCopy)
  {

    v63 = objc_loadWeakRetained(&self->super._graph);
    v64 = [nameCopy stringByAppendingFormat:@"/gamma/sum"];
  }

  else
  {

    v63 = objc_loadWeakRetained(&self->super._graph);
    v64 = @"normalizationGradient/gamma/sum";
  }

  v101 = [v63 reductionSumWithTensor:v103 axesTensor:v111 name:v64];
  if (nameCopy)
  {

    v65 = objc_loadWeakRetained(&self->super._graph);
    v66 = [nameCopy stringByAppendingString:@"/gamma/broadcastGradShape"];
  }

  else
  {

    v65 = objc_loadWeakRetained(&self->super._graph);
    v66 = @"normalizationGradient/gamma/broadcastGradShape";
  }

  v67 = [v65 shapeOfTensor:v133 name:v66];
  if (nameCopy)
  {

    v68 = objc_loadWeakRetained(&self->super._graph);
    v69 = [nameCopy stringByAppendingString:@"/gamma/broadcastGradReshape"];
  }

  else
  {

    v68 = objc_loadWeakRetained(&self->super._graph);
    v69 = @"normalizationGradient/gamma/broadcastGradReshape";
  }

  v70 = [v68 reshapeTensor:v101 withShapeTensor:v67 name:v69];
  if (nameCopy)
  {

    v71 = objc_loadWeakRetained(&self->super._graph);
    v72 = [nameCopy stringByAppendingFormat:@"/beta/sum"];
  }

  else
  {

    v71 = objc_loadWeakRetained(&self->super._graph);
    v72 = @"normalizationGradient/beta/sum";
  }

  v73 = [v71 reductionSumWithTensor:v136 axesTensor:v109 name:v72];
  if (nameCopy)
  {

    v74 = objc_loadWeakRetained(&self->super._graph);
    v75 = [nameCopy stringByAppendingString:@"/beta/broadcastGradShape"];
  }

  else
  {

    v74 = objc_loadWeakRetained(&self->super._graph);
    v75 = @"normalizationGradient/beta/broadcastGradShape";
  }

  v76 = [v74 shapeOfTensor:v131 name:v75];
  if (nameCopy)
  {

    v77 = objc_loadWeakRetained(&self->super._graph);
    v78 = [nameCopy stringByAppendingString:@"/beta/broadcastGradReshape"];
  }

  else
  {

    v77 = objc_loadWeakRetained(&self->super._graph);
    v78 = @"normalizationGradient/beta/broadcastGradReshape";
  }

  v79 = [v77 reshapeTensor:v73 withShapeTensor:v76 name:v78];
  if (nameCopy)
  {
  }

  v138[0] = v104;
  v138[1] = v102;
  v138[2] = v100;
  v138[3] = v70;
  v138[4] = v79;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:5];
  v81 = [v80 mutableCopy];

  v82 = [tensorsCopy objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v84 = [tensorsCopy objectAtIndexedSubscript:0];
    [v81 setObject:v84 atIndexedSubscript:0];
  }

  v85 = [tensorsCopy objectAtIndexedSubscript:1];
  objc_opt_class();
  v86 = objc_opt_isKindOfClass();

  if (v86)
  {
    v87 = [tensorsCopy objectAtIndexedSubscript:1];
    [v81 setObject:v87 atIndexedSubscript:1];
  }

  v88 = [tensorsCopy objectAtIndexedSubscript:2];
  objc_opt_class();
  v89 = objc_opt_isKindOfClass();

  if (v89)
  {
    v90 = [tensorsCopy objectAtIndexedSubscript:2];
    [v81 setObject:v90 atIndexedSubscript:2];
  }

  v91 = [tensorsCopy objectAtIndexedSubscript:3];
  objc_opt_class();
  v92 = objc_opt_isKindOfClass();

  if (v92)
  {
    v93 = [tensorsCopy objectAtIndexedSubscript:3];
    [v81 setObject:v93 atIndexedSubscript:3];
  }

  v94 = [tensorsCopy objectAtIndexedSubscript:4];
  objc_opt_class();
  v95 = objc_opt_isKindOfClass();

  if (v95)
  {
    v96 = [tensorsCopy objectAtIndexedSubscript:4];
    [v81 setObject:v96 atIndexedSubscript:4];
  }

  v97 = v81;

  return v81;
}

@end