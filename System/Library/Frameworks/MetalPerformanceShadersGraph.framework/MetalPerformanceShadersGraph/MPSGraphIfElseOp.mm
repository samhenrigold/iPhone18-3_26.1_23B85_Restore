@interface MPSGraphIfElseOp
- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(void *)autodiff;
- (MPSGraphIfElseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies trueBlock:(id)block falseBlock:(id)falseBlock name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff;
@end

@implementation MPSGraphIfElseOp

- (MPSGraphIfElseOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies trueBlock:(id)block falseBlock:(id)falseBlock name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  blockCopy = block;
  falseBlockCopy = falseBlock;
  nameCopy = name;
  v20 = MEMORY[0x1E12E6580](blockCopy);
  trueBlock = self->_trueBlock;
  self->_trueBlock = v20;

  v22 = MEMORY[0x1E12E6580](falseBlockCopy);
  falseBlock = self->_falseBlock;
  self->_falseBlock = v22;

  ptr = self->_opData.__ptr_;
  self->_opData.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v25 = objc_alloc_init(MPSGraphRegion);
  v28.receiver = self;
  v28.super_class = MPSGraphIfElseOp;
  v26 = [(MPSGraphOperation *)&v28 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy region:v25 name:nameCopy];

  return v26;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v138 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v104 = *(builder + 1);
  v105 = builder + 16;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  obj = WeakRetained[22];
  v107 = obj;

  v102 = nameCopy;
  mpsFileLoc(__p, "[MPSGraphIfElseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm");
  v111 = nameCopy;
  LOWORD(v133) = 260;
  v132[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v132);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0x891u, 0);
  builderCopy = builder;
  if (v111)
  {
    v17 = v111;
    uTF8String = [v111 UTF8String];
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

    BYTE7(v126) = v19;
    if (v19)
    {
      memmove(&__dst, uTF8String, v19);
    }

    v21 = &__dst + v20;
  }

  else
  {
    BYTE7(v126) = 6;
    qmemcpy(&__dst, "scf.if", 6);
    v21 = &__dst + 6;
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v115, v14, v15);
  v22 = v115.__r_.__value_.__r.__words[0];
  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v115;
  }

  v23 = 1;
  BYTE1(v133) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v132[0] = v22;
    v23 = 3;
  }

  LOBYTE(v133) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v132);
  v108 = mlir::NameLoc::get(v24, v16);
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SBYTE7(v126) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SBYTE7(v126) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v124 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builder, v108, *values);
  v121 = 0;
  v122 = v25 - 16;
  v119 = 0;
  v120 = 0;
  memset(v132, 0, sizeof(v132));
  v133 = &v133;
  v134 = &v133;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  *(builder + 2) = v132;
  *(builder + 3) = &v133;
  appendNewBlock = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v27 = objc_loadWeakRetained(&self->super._graph);
  v28 = v27[22];
  v27[22] = appendNewBlock;

  v29 = (*(self->_trueBlock + 2))();
  trueResults = self->_trueResults;
  self->_trueResults = v29;

  trueBlock = self->_trueBlock;
  self->_trueBlock = 0;

  v32 = [MPSGraphYieldOp alloc];
  v33 = objc_loadWeakRetained(&self->super._graph);
  v109 = [(MPSGraphOperation *)v32 initWithGraph:v33 inputTensors:self->_trueResults controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v34 = objc_loadWeakRetained(&self->super._graph);
  [v34[22] addTerminatorOperation:v109];

  if (!self->_falseBlock)
  {
    [(NSArray *)self->_trueResults count];
    if ([(NSArray *)self->_trueResults count])
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  __dst = 0u;
  v126 = 0u;
  v127 = &v127;
  v128 = &v127;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  selfCopy = self;
  if (self->_falseBlock)
  {
    *(builder + 2) = &__dst;
    *(builder + 3) = &v127;
    appendNewBlock2 = [(MPSGraphRegion *)self->super._region appendNewBlock];
    v36 = objc_loadWeakRetained(&self->super._graph);
    v37 = v36[22];
    v36[22] = appendNewBlock2;

    v38 = (*(self->_falseBlock + 2))();
    falseResults = self->_falseResults;
    self->_falseResults = v38;

    v40 = [MPSGraphYieldOp alloc];
    v41 = objc_loadWeakRetained(&self->super._graph);
    v103 = [(MPSGraphOperation *)v40 initWithGraph:v41 inputTensors:self->_falseResults controlDependencies:MEMORY[0x1E695E0F0] name:0];

    v42 = objc_loadWeakRetained(&self->super._graph);
    [v42[22] addTerminatorOperation:v103];

    v43 = self->_trueResults;
    if (v43)
    {
      v44 = 0;
      for (i = 0; i < [(NSArray *)v43 count]; ++i)
      {
        v46 = [(NSArray *)self->_trueResults objectAtIndexedSubscript:i];
        v47 = *([v46 value] + 8);
        v48 = [(NSArray *)self->_falseResults objectAtIndexedSubscript:i];
        LODWORD(v47) = (*([v48 value] + 8) ^ v47) < 8;

        v49 = self->_trueResults;
        if (v47)
        {
          v50 = [(NSArray *)v49 objectAtIndexedSubscript:i];
          v51 = *([v50 value] + 8) & 0xFFFFFFFFFFFFFFF8;
          v54 = v44;
          v55 = v44 >> 3;
          if (((v44 >> 3) + 1) >> 61)
          {
            v120 = v44;
            v121 = 0;
            v119 = 0;
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          if (v44 >> 3 != -1)
          {
            if (!(((v44 >> 3) + 1) >> 61))
            {
              operator new();
            }

            v120 = v44;
            v121 = 0;
            v119 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v55) = v51;
          v44 = 8 * v55 + 8;
          memcpy(0, 0, v54);
        }

        else
        {
          v50 = [(NSArray *)v49 objectAtIndexedSubscript:i];
          ElementTypeOrSelf = mlir::getElementTypeOrSelf((*([v50 value] + 8) & 0xFFFFFFFFFFFFFFF8));
          v53 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
          v56 = v44;
          v57 = v44 >> 3;
          if (((v44 >> 3) + 1) >> 61)
          {
            v120 = v44;
            v121 = 0;
            v119 = 0;
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          if (v44 >> 3 != -1)
          {
            if (!(((v44 >> 3) + 1) >> 61))
            {
              operator new();
            }

            v120 = v44;
            v121 = 0;
            v119 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v57) = v53;
          v44 = 8 * v57 + 8;
          memcpy(0, 0, v56);
        }

        self = selfCopy;

        v43 = selfCopy->_trueResults;
      }

      v120 = v44;
      v121 = 0;
      v119 = 0;
    }
  }

  v58 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v58 + 22, obj);

  if (!v104)
  {
    *v105 = 0;
    v105[1] = 0;
    v59 = builderCopy;
    v118 = 0;
    if (self->_falseBlock)
    {
      goto LABEL_46;
    }

LABEL_55:
    v115.__r_.__value_.__s.__data_[0] = 1;
    LOBYTE(v114[0]) = 0;
    v118 = mlir::OpBuilder::create<mlir::scf::IfOp,std::vector<mlir::Type> &,mlir::Value &,BOOL,BOOL>(v59, v108, &v119, &v122, &v115, v114);
    v73 = mlir::scf::IfOp::thenBlock(&v118);
    v74 = mlir::scf::IfOp::thenBlock(&v118);
    if (v133 == &v133)
    {
      goto LABEL_60;
    }

    v70 = v74;
    if (v132 == v74)
    {
      goto LABEL_60;
    }

    v71 = v134;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v73 + 32, &v133, v134, &v133);
    if (v71 == &v133)
    {
      goto LABEL_60;
    }

    v72 = &v133;
    goto LABEL_59;
  }

  *v105 = v104;
  v59 = builderCopy;
  v118 = 0;
  if (!self->_falseBlock)
  {
    goto LABEL_55;
  }

LABEL_46:
  v115.__r_.__value_.__s.__data_[0] = 1;
  LOBYTE(v114[0]) = 1;
  v118 = mlir::OpBuilder::create<mlir::scf::IfOp,std::vector<mlir::Type> &,mlir::Value &,BOOL,BOOL>(v59, v108, &v119, &v122, &v115, v114);
  falseBlock = self->_falseBlock;
  self->_falseBlock = 0;

  v61 = mlir::scf::IfOp::thenBlock(&v118);
  v62 = mlir::scf::IfOp::thenBlock(&v118);
  if (v133 != &v133)
  {
    v63 = v62;
    if (v132 != v62)
    {
      v64 = v134;
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v61 + 32, &v133, v134, &v133);
      if (v64 != &v133)
      {
        v65 = v133;
        v66 = *v64;
        v66[1] = &v133;
        v133 = v66;
        v67 = v63[4];
        v65[1] = v63 + 4;
        *v64 = v67;
        *(v67 + 8) = v64;
        v63[4] = v65;
      }
    }
  }

  v68 = mlir::scf::IfOp::elseBlock(&v118);
  v69 = mlir::scf::IfOp::elseBlock(&v118);
  if (v127 != &v127)
  {
    v70 = v69;
    if (&__dst != v69)
    {
      v71 = v128;
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v68 + 32, &v127, v128, &v127);
      v72 = &v127;
      if (v71 != &v127)
      {
LABEL_59:
        v75 = v72;
        v76 = *v72;
        v77 = *v71;
        *(v77 + 8) = v75;
        *v75 = v77;
        v79 = v70[4];
        v78 = v70 + 4;
        *(v76 + 8) = v78;
        *v71 = v79;
        *(v79 + 8) = v71;
        *v78 = v76;
      }
    }
  }

LABEL_60:
  v80 = (&v118[16 * ((*(v118 + 11) >> 23) & 1) + 71 + ((*(v118 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v118 + 10);
  v81 = *(v80 + 8);
  if (v81)
  {
    v82 = (v81 - 8);
  }

  else
  {
    v82 = 0;
  }

  mlir::Block::getTerminator(v82);
  if (v83)
  {
    if (*(*(v83 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
  }

  v117 = v84;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v117, 0);
  if ((*(v117 + 46) & 0x80) != 0)
  {
    v86 = *(v117 + 72);
  }

  else
  {
    v86 = 0;
  }

  v114[0] = v86 + 32 * ODSOperandIndexAndLength;
  v114[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
  mlir::OperandRange::getTypes(&v115, v114);
  v87 = (&v118[16 * ((*(v118 + 11) >> 23) & 1) + 71 + ((*(v118 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v118 + 10);
  v88 = *(v87 + 32);
  if (v88)
  {
    v89 = (v88 - 8);
  }

  else
  {
    v89 = 0;
  }

  mlir::Block::getTerminator(v89);
  v90 = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v117, 0);
  if ((*(v117 + 46) & 0x80) != 0)
  {
    v91 = *(v117 + 72);
  }

  else
  {
    v91 = 0;
  }

  v113[0] = v91 + 32 * v90;
  v113[1] = (HIDWORD(v90) + v90) - v90;
  mlir::OperandRange::getTypes(v114, v113);
  if (v115.__r_.__value_.__l.__size_ != v116)
  {
    operator new();
  }

  v92 = *(v80 + 8);
  v102 = [(NSMutableArray *)selfCopy->super._region->_blocks objectAtIndexedSubscript:0, v102];
  v94 = v92 - 8;
  if (!v92)
  {
    v94 = 0;
  }

  v102[3] = v94;

  v95 = *(v87 + 32);
  v96 = [(NSMutableArray *)selfCopy->super._region->_blocks objectAtIndexedSubscript:1];
  v97 = v95 - 8;
  if (!v95)
  {
    v97 = 0;
  }

  v96[3] = v97;

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v118, 0);
  if (*(v118 + 9))
  {
    NextResultAtOffset = (v118 - 16);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v113[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  DefiningOp = mlir::Value::getDefiningOp(v113);
  mlir::Block::~Block(&__dst);

  mlir::Block::~Block(v132);
  if (v119)
  {
    operator delete(v119);
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

- (void)partialDerivateForCFOpWithAutodiff:(void *)autodiff
{
  OpData = getOpData(&self->super);

  AutodiffOpData::createPartialDerivatives(OpData, autodiff);
}

@end