@interface MPSGraphWhileOp
- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(void *)autodiff;
- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(void *)autodiff;
- (MPSGraphWhileOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies beforeBlock:(id)block afterBlock:(id)afterBlock name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff;
@end

@implementation MPSGraphWhileOp

- (MPSGraphWhileOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies beforeBlock:(id)block afterBlock:(id)afterBlock name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  blockCopy = block;
  afterBlockCopy = afterBlock;
  nameCopy = name;
  v20 = MEMORY[0x1E12E6580](blockCopy);
  beforeBlock = self->_beforeBlock;
  self->_beforeBlock = v20;

  v22 = MEMORY[0x1E12E6580](afterBlockCopy);
  afterBlock = self->_afterBlock;
  self->_afterBlock = v22;

  predicateTensor = self->_predicateTensor;
  self->_predicateTensor = 0;

  ptr = self->_opData.__ptr_;
  self->_opData.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  itersCountTensor = self->_itersCountTensor;
  self->_itersCountTensor = 0;

  v27 = objc_alloc_init(MPSGraphRegion);
  v30.receiver = self;
  v30.super_class = MPSGraphWhileOp;
  v28 = [(MPSGraphOperation *)&v30 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy region:v27 name:nameCopy];

  return v28;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v151 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphWhileOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm");
  v124 = nameCopy;
  LOWORD(v146) = 260;
  v145[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v145);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x938u, 0);
  if (v124)
  {
    v14 = v124;
    uTF8String = [v124 UTF8String];
    v16 = strlen(uTF8String);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    BYTE7(v138) = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    BYTE7(v138) = 9;
    BYTE8(__dst) = 101;
    *&__dst = *"scf.while";
    v18 = &__dst + 9;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v135, v11, v12);
  v19 = v135.__r_.__value_.__r.__words[0];
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v135;
  }

  v20 = 1;
  BYTE1(v146) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v145[0] = v19;
    v20 = 3;
  }

  LOBYTE(v146) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v145);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    v63 = v22;
    operator delete(v135.__r_.__value_.__l.__data_);
    v122 = v63;
    if ((SBYTE7(v138) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v122 = v22;
    if ((SBYTE7(v138) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__dst);
LABEL_16:

  if (v134 < 0)
  {
    operator delete(__p[0]);
  }

  v114 = *(builder + 1);
  v115 = builder + 16;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v113 = WeakRetained[22];
  v112 = v113;

  inputTensors = [(MPSGraphOperation *)self inputTensors];
  getTypesFromTensors(inputTensors, &v131);

  memset(v145, 0, sizeof(v145));
  v146 = &v146;
  v147 = &v146;
  v149 = 0;
  v150 = 0;
  v148 = 0;
  obj = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v127 = objc_opt_new();
  v25 = v131;
  if (v132 != v131)
  {
    v26 = 0;
    do
    {
      v27 = v25[v26];
      *&__dst = "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm";
      LOWORD(v139) = 259;
      v28 = mlir::Builder::getStringAttr(builder, &__dst);
      v29 = mlir::FileLineColLoc::get(v28, 0x94Fu, 0);
      mlir::Block::addArgument(v145, v27, v29);
      v30 = *(v148 + 8 * v26);
      v31 = [MPSGraphTensor alloc];
      v32 = objc_loadWeakRetained(&self->super._graph);
      v33 = [(MPSGraphTensor *)v31 initTensorWithOperation:self value:v30 graph:v32 parentBlock:obj name:0];

      [v127 addObject:v33];
      ++v26;
      v25 = v131;
    }

    while (v26 < (v132 - v131) >> 3);
  }

  *(builder + 2) = v145;
  *(builder + 3) = &v146;
  v34 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v34 + 22, obj);

  array = [MEMORY[0x1E695DF70] array];
  v35 = (*(self->_beforeBlock + 2))();
  predicateTensor = self->_predicateTensor;
  self->_predicateTensor = v35;

  beforeBlock = self->_beforeBlock;
  self->_beforeBlock = 0;

  v38 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  beforeResult = self->_beforeResult;
  self->_beforeResult = v38;

  if (!self->_predicateTensor && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v40 = objc_loadWeakRetained(&self->super._graph);
  v118 = [v40 castTensor:self->_predicateTensor toType:2147483656 name:@"if_cast"];

  v41 = objc_loadWeakRetained(&self->super._graph);
  v119 = [v41 reshapeTensor:v118 withShape:MEMORY[0x1E695E0F0] name:@"whilePredicate/reshape"];

  v144 = v119;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  v123 = [v42 mutableCopy];

  [v123 addObjectsFromArray:self->_beforeResult];
  v43 = [MPSGraphConditionOp alloc];
  v44 = objc_loadWeakRetained(&self->super._graph);
  v120 = [(MPSGraphOperation *)v43 initWithGraph:v44 inputTensors:v123 controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v45 = objc_loadWeakRetained(&self->super._graph);
  [v45[22] addTerminatorOperation:v120];

  getTypesFromTensors(self->_beforeResult, &v129);
  v138 = 0u;
  __dst = 0u;
  v139 = &v139;
  v140 = &v139;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  appendNewBlock = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v46 = objc_opt_new();
  v47 = v129;
  if (v130 != v129)
  {
    v48 = 0;
    do
    {
      v49 = v47[v48];
      v135.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm";
      v136 = 259;
      v50 = mlir::Builder::getStringAttr(builder, &v135);
      v51 = mlir::FileLineColLoc::get(v50, 0x97Du, 0);
      mlir::Block::addArgument(&__dst, v49, v51);
      v52 = *(v141 + 8 * v48);
      v53 = [MPSGraphTensor alloc];
      v54 = objc_loadWeakRetained(&self->super._graph);
      v55 = [(MPSGraphTensor *)v53 initTensorWithOperation:self value:v52 graph:v54 parentBlock:appendNewBlock name:0];

      [v46 addObject:v55];
      ++v48;
      v47 = v129;
    }

    while (v48 < (v130 - v129) >> 3);
  }

  *(builder + 2) = &__dst;
  *(builder + 3) = &v139;
  v56 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v56 + 22, appendNewBlock);

  v57 = (*(self->_afterBlock + 2))();
  afterResult = self->_afterResult;
  self->_afterResult = v57;

  afterBlock = self->_afterBlock;
  self->_afterBlock = 0;

  v60 = [MPSGraphYieldOp alloc];
  v61 = objc_loadWeakRetained(&self->super._graph);
  v117 = [(MPSGraphOperation *)v60 initWithGraph:v61 inputTensors:self->_afterResult controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v62 = objc_loadWeakRetained(&self->super._graph);
  [v62[22] addTerminatorOperation:v117];

  if (v114)
  {
    *v115 = v114;
  }

  else
  {
    *v115 = 0;
    *(builder + 3) = 0;
  }

  v64 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v64 + 22, v113);

  v65 = mlir::OpBuilder::create<mlir::scf::WhileOp,std::vector<mlir::Type> &,std::vector<mlir::Value> &>(builder, v122, &v129, values);
  v128 = v65;
  if (v132 != v131)
  {
    if (((v132 - v131) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v66 = *(v65 + 10);
  v67 = *(v65 + 11);
  mlir::ValueRange::ValueRange(&v135, v132, 0);
  Block = mlir::OpBuilder::createBlock(builder, ((&v65[16 * ((v67 >> 23) & 1) + 71 + ((v67 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v66), 0, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_, 0, 0);
  v69 = Block;
  if (v146 != &v146 && v145 != Block)
  {
    v70 = (Block + 4);
    v71 = v147;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList((Block + 4), &v146, v147, &v146);
    if (v71 != &v146)
    {
      v72 = v146;
      v73 = *v71;
      v73[1] = &v146;
      v146 = v73;
      v74 = *v70;
      v72[1] = v70;
      *v71 = v74;
      *(v74 + 8) = v71;
      *v70 = v72;
    }
  }

  if (v132 != v131)
  {
    v75 = 0;
    do
    {
      v76 = *(v148 + 8 * v75);
      v77 = v69[6];
      v78 = *(v77 + 8 * v75);
      v79 = *v76;
      if (*v76)
      {
        do
        {
          v80 = v79[1];
          if (v80)
          {
            v81 = *v79;
            *v80 = *v79;
            if (v81)
            {
              *(v81 + 8) = v80;
            }
          }

          v79[3] = v78;
          v79[1] = v78;
          v82 = *v78;
          *v79 = *v78;
          if (v82)
          {
            *(v82 + 8) = v79;
          }

          *v78 = v79;
          v79 = *v76;
        }

        while (*v76);
        v78 = *(v77 + 8 * v75);
      }

      v83 = [v127 objectAtIndexedSubscript:v75];
      v83[1] = v78;

      ++v75;
    }

    while (v75 < (v132 - v131) >> 3);
  }

  if (v130 != v129)
  {
    if (((v130 - v129) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v84 = *(v128 + 10);
  v85 = *(v128 + 11);
  mlir::ValueRange::ValueRange(&v135, v130, 0);
  v86 = mlir::OpBuilder::createBlock(builder, ((&v128[16 * ((v85 >> 23) & 1) + 71 + ((v85 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v84 + 24), 0, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_, 0, 0);
  v87 = v86;
  if (v139 != &v139 && &__dst != v86)
  {
    v88 = (v86 + 2);
    v89 = v140;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList((v86 + 2), &v139, v140, &v139);
    if (v89 != &v139)
    {
      v90 = v139;
      v91 = *v89;
      v91[1] = &v139;
      v139 = v91;
      v92 = *v88;
      v90[1] = v88;
      *v89 = v92;
      *(v92 + 8) = v89;
      *v88 = v90;
    }
  }

  if (v130 != v129)
  {
    v93 = 0;
    do
    {
      v94 = *(v141 + 8 * v93);
      v95 = *(v87 + 6);
      v96 = *(v95 + 8 * v93);
      v97 = *v94;
      if (*v94)
      {
        do
        {
          v98 = v97[1];
          if (v98)
          {
            v99 = *v97;
            *v98 = *v97;
            if (v99)
            {
              *(v99 + 8) = v98;
            }
          }

          v97[3] = v96;
          v97[1] = v96;
          v100 = *v96;
          *v97 = *v96;
          if (v100)
          {
            *(v100 + 8) = v97;
          }

          *v96 = v97;
          v97 = *v94;
        }

        while (*v94);
        v96 = *(v95 + 8 * v93);
      }

      v101 = [v46 objectAtIndexedSubscript:v93];
      v101[1] = v96;

      ++v93;
    }

    while (v93 < (v130 - v129) >> 3);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v128, 0);
  if (*(v128 + 9))
  {
    NextResultAtOffset = (v128 - 16);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v135.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  objc_storeStrong(&self->_beforeBlockArguments, v127);
  objc_storeStrong(&self->_afterBlockArguments, v46);
  v104 = [(NSMutableArray *)self->super._region->_blocks objectAtIndexedSubscript:0];
  v104[3] = v69;

  v105 = [(NSMutableArray *)self->super._region->_blocks objectAtIndexedSubscript:1];
  v105[3] = v87;

  v106 = *(v128 + 2);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v108 = *(v107 + 8);
  *(builder + 2) = v106;
  *(builder + 3) = v108;
  DefiningOp = mlir::Value::getDefiningOp(&v135);

  mlir::Block::~Block(&__dst);
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  mlir::Block::~Block(v145);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  return DefiningOp;
}

- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(void *)autodiff
{
  outputCopy = output;
  OpData = getOpData(&self->super);
  LOBYTE(autodiff) = (*(OpData->super.super.isa + 3))(OpData, autodiff, outputCopy);

  return autodiff;
}

- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(void *)autodiff
{
  inputCopy = input;
  OpData = getOpData(&self->super);
  LOBYTE(autodiff) = (*(OpData->super.super.isa + 4))(OpData, autodiff, inputCopy);

  return autodiff;
}

- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff
{
  OpData = getOpData(&self->super);

  AutodiffOpData::createPartialDerivatives(OpData, autodiff);
}

@end