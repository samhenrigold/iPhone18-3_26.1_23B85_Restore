@interface MPSGraphStitchedOp
- (MPSGraphStitchedOp)initWithGraph:(id)graph withBlock:(id)block inputTensors:(id)tensors controlDependencies:(id)dependencies name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
- (void)recurseOperation:(id)operation builder:(void *)builder symbolTable:(void *)table tensorToValueMap:(void *)map operationsRecursed:(id)recursed;
@end

@implementation MPSGraphStitchedOp

- (MPSGraphStitchedOp)initWithGraph:(id)graph withBlock:(id)block inputTensors:(id)tensors controlDependencies:(id)dependencies name:(id)name
{
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v16 = MEMORY[0x1E12E6580](block);
  stitchingBlock = self->_stitchingBlock;
  self->_stitchingBlock = v16;

  v20.receiver = self;
  v20.super_class = MPSGraphStitchedOp;
  v18 = [(MPSGraphOperation *)&v20 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v18;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  initializationCopy = initialization;
  v101 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc(__p, "[MPSGraphStitchedOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphStitchedOps.mm");
  v74 = nameCopy;
  builderCopy = builder;
  v100 = 260;
  p_data = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, &p_data);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x33u, 0);
  if (v74)
  {
    v15 = v74;
    uTF8String = [v74 UTF8String];
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
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mpsx.stitched", 13);
    v19 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, &v97, v12, v13);
  v20 = v97.__r_.__value_.__r.__words[0];
  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v97;
  }

  v21 = 1;
  HIBYTE(v100) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    p_data = &v20->__r_.__value_.__l.__data_;
    v21 = 3;
  }

  LOBYTE(v100) = v21;
  v22 = mlir::Builder::getStringAttr(builder, &p_data);
  v71 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
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

  if (v91 < 0)
  {
    operator delete(__p[0]);
  }

  v89 = 0;
  F32Type = mlir::Builder::getF32Type(builder, v23);
  v88 = mlir::UnrankedTensorType::get(F32Type);
  v89 = mlir::OpBuilder::create<mlir::mpsx::StitchedOp,mlir::UnrankedTensorType &>(builder, v71, &v88) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (self->super._name)
  {
    name = self->super._name;
  }

  else
  {
    name = v74;
  }

  MPSSymbolTable::insertOp(table, DefiningOp, name, &v86);
  v27 = mlir::Value::getDefiningOp(&v89);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v28 + 40);
  v30 = *(v28 + 44);
  mlir::ValueRange::ValueRange(&p_data, 0, 0);
  Block = mlir::OpBuilder::createBlock(builderCopy, (((v28 + 16 * ((v30 >> 23) & 1) + ((v30 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v29), 0, p_data, v99[0], 0, 0);
  *(builderCopy + 2) = Block;
  *(builderCopy + 3) = Block + 2;
  if (initializationCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    dictionary = [WeakRetained[10] copyWithZone:0];

    v33 = (*(self->_stitchingBlock + 2))();
    finalOutputTensorForStitchedRegion = self->_finalOutputTensorForStitchedRegion;
    self->_finalOutputTensorForStitchedRegion = v33;

    v35 = objc_loadWeakRetained(&self->super._graph);
    v73 = v35[10];

    v68 = [MEMORY[0x1E695DF70] arrayWithArray:v73];
    [v68 removeObjectsInArray:dictionary];
    v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v68];
    opsAddedInStitchedRegion = self->_opsAddedInStitchedRegion;
    self->_opsAddedInStitchedRegion = v36;

    v38 = [MEMORY[0x1E695DFA8] set];
    for (i = 0; i < [(NSArray *)self->_opsAddedInStitchedRegion count]; ++i)
    {
      v40 = [(NSArray *)self->_opsAddedInStitchedRegion objectAtIndexedSubscript:i];
      inputTensors = [v40 inputTensors];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke;
      v84[3] = &unk_1E86D4E20;
      v84[4] = self;
      v85 = v38;
      [inputTensors enumerateObjectsUsingBlock:v84];
    }

    allObjects = [v38 allObjects];
    inputTensors = self->super._inputTensors;
    self->super._inputTensors = allObjects;

    __dst.__r_.__value_.__r.__words[0] = 0;
    __dst.__r_.__value_.__l.__size_ = &__dst;
    __dst.__r_.__value_.__r.__words[2] = 0x4812000000;
    v78 = __Block_byref_object_copy__4;
    v79 = __Block_byref_object_dispose__4;
    v80 = &unk_1E0AB8473;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke_102;
    v76[3] = &unk_1E86D4EE8;
    v76[4] = &__dst;
    [v38 enumerateObjectsUsingBlock:v76];
    v58.impl = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion value];
    v92 = v71;
    Context = mlir::Attribute::getContext(&v92);
    v60 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id, Context);
    if ((v61 & 1) == 0)
    {
      v96 = 1283;
      v95[2] = "mpsx.stitched_return";
      v95[3] = 20;
      v94 = 259;
      llvm::operator+(v95, &v93, &v97);
      llvm::report_fatal_error(&v97, 1);
    }

    mlir::OperationState::OperationState(&p_data, v71, v60);
    mlir::memref::DeallocOp::build(builderCopy, &p_data, v58.impl);
    mlir::OpBuilder::create(builderCopy, &p_data);
    mlir::OperationState::~OperationState(&p_data);
    v62.impl = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion value];
    *(v89 + 1) = *(v62.impl + 1) & 0xFFFFFFFFFFFFFFF8 | *(v89 + 1) & 7;
    _Block_object_dispose(&__dst, 8);
    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0;
    v99[0] = 0;
    v99[1] = 0;
    p_data = v99;
    while (v42 < [(NSArray *)self->super._inputTensors count])
    {
      v43 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:v42];
      if (v42 >= (*(values + 1) - *values) >> 3)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v44 = v99[0];
      if (!v99[0])
      {
LABEL_37:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v45 = v44;
          v46 = v44[4];
          if (v43 >= v46)
          {
            break;
          }

          v44 = *v45;
          if (!*v45)
          {
            goto LABEL_37;
          }
        }

        if (v46 >= v43)
        {
          break;
        }

        v44 = v45[1];
        if (!v44)
        {
          goto LABEL_37;
        }
      }

      ++v42;
    }

    operation = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion operation];
    [(MPSGraphStitchedOp *)self recurseOperation:operation builder:builderCopy symbolTable:table tensorToValueMap:&p_data operationsRecursed:dictionary];

    operation2 = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion operation];
    outputTensors = [operation2 outputTensors];
    v50 = [outputTensors objectAtIndexedSubscript:0];
    v51 = v99[0];
    if (!v99[0])
    {
      goto LABEL_47;
    }

    v52 = v99;
    do
    {
      v53 = v51[4];
      v54 = v53 >= v50;
      v55 = v53 < v50;
      if (v54)
      {
        v52 = v51;
      }

      v51 = v51[v55];
    }

    while (v51);
    if (v52 == v99 || v50 < v52[4])
    {
LABEL_47:
      v52 = v99;
    }

    __dst.__r_.__value_.__r.__words[0] = v52[5];

    mlir::OpBuilder::create<mlir::mpsx::ReturnStitchedOp,mlir::Value &>(builderCopy, v71, &__dst);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&p_data, v99[0]);
  }

  v63 = *(mlir::Value::getDefiningOp(&v89) + 16);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v65 = *(v64 + 8);
  *(builderCopy + 2) = v63;
  *(builderCopy + 3) = v65;
  v66 = mlir::Value::getDefiningOp(&v89);
  if (v87 < 0)
  {
    operator delete(v86);
  }

  return v66;
}

void __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v6 = v3;
  v5 = [v3 operation];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 value];
  std::vector<mlir::Value>::push_back[abi:ne200100](v4 + 48, &v5);
}

- (void)recurseOperation:(id)operation builder:(void *)builder symbolTable:(void *)table tensorToValueMap:(void *)map operationsRecursed:(id)recursed
{
  operationCopy = operation;
  recursedCopy = recursed;
  if (operationCopy)
  {
    v58 = operationCopy;
    if ([(NSArray *)self->_opsAddedInStitchedRegion containsObject:operationCopy])
    {
      v12 = [recursedCopy objectForKeyedSubscript:operationCopy];

      if (!v12)
      {
        [recursedCopy setObject:operationCopy forKey:operationCopy];
        for (i = 0; ; ++i)
        {
          controlDependencies = [operationCopy controlDependencies];
          v15 = [controlDependencies count];

          if (i >= v15)
          {
            break;
          }

          controlDependencies2 = [operationCopy controlDependencies];
          v17 = [controlDependencies2 objectAtIndexedSubscript:i];

          [(MPSGraphStitchedOp *)self recurseOperation:v17 builder:builder symbolTable:table tensorToValueMap:map operationsRecursed:recursedCopy];
        }

        inputTensors = [operationCopy inputTensors];
        v19 = 0;
        v20 = map + 8;
        for (j = [inputTensors count]; v19 < j; j = objc_msgSend(inputTensors, "count", v56))
        {
          v22 = [inputTensors objectAtIndexedSubscript:v19];
          operation = v22;
          v24 = *v20;
          if (!*v20)
          {
            goto LABEL_18;
          }

          v25 = map + 8;
          do
          {
            v26 = *(v24 + 4);
            v27 = v26 >= v22;
            v28 = v26 < v22;
            if (v27)
            {
              v25 = v24;
            }

            v24 = *&v24[8 * v28];
          }

          while (v24);
          if (v25 == v20 || v22 < *(v25 + 4))
          {
LABEL_18:

            v29 = [inputTensors objectAtIndexedSubscript:v19];
            operation = [v29 operation];

            [(MPSGraphStitchedOp *)self recurseOperation:operation builder:builder symbolTable:table tensorToValueMap:map operationsRecursed:recursedCopy];
          }

          ++v19;
        }

        v30 = 0;
        __p = 0;
        v61 = 0;
        v62 = 0;
        while (v30 < [inputTensors count])
        {
          v32 = [inputTensors objectAtIndexedSubscript:v30];
          v33 = *v20;
          if (!*v20)
          {
            goto LABEL_31;
          }

          v34 = map + 8;
          do
          {
            v35 = *(v33 + 4);
            v27 = v35 >= v32;
            v36 = v35 < v32;
            if (v27)
            {
              v34 = v33;
            }

            v33 = *&v33[8 * v36];
          }

          while (v33);
          if (v34 == v20 || v32 < *(v34 + 4))
          {
LABEL_31:
            v34 = map + 8;
          }

          v37 = *(v34 + 5);

          v38 = v61;
          if (v61 < v62)
          {
            *v61 = v37;
            v31 = (v38 + 8);
          }

          else
          {
            v39 = __p;
            v40 = v61 - __p;
            v41 = (v61 - __p) >> 3;
            v42 = v41 + 1;
            if ((v41 + 1) >> 61)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            builderCopy = builder;
            tableCopy = table;
            v45 = v62 - __p;
            if ((v62 - __p) >> 2 > v42)
            {
              v42 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v42;
            }

            if (v46)
            {
              if (!(v46 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v41) = v37;
            v31 = 8 * v41 + 8;
            memcpy(0, v39, v40);
            __p = 0;
            v62 = 0;
            operationCopy = v58;
            table = tableCopy;
            builder = builderCopy;
            inputTensors = v56;
          }

          v61 = v31;
          ++v30;
        }

        name = [operationCopy name];
        v48 = [operationCopy makeMLIROpWithBuilder:builder symbolTable:table inputValues:&__p opInitialization:0 name:name];

        v49 = *(v48 + 36);
        if (v49 >= 1)
        {
          for (k = 0; k != v49; ++k)
          {
            outputTensors = [operationCopy outputTensors];
            v52 = [outputTensors objectAtIndexedSubscript:k];
            v53 = *v20;
            if (!*v20)
            {
LABEL_52:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v54 = v53;
                v55 = *(v53 + 4);
                if (v52 >= v55)
                {
                  break;
                }

                v53 = *v54;
                if (!*v54)
                {
                  goto LABEL_52;
                }
              }

              if (v55 >= v52)
              {
                break;
              }

              v53 = v54[1];
              if (!v53)
              {
                goto LABEL_52;
              }
            }

            operationCopy = v58;
          }
        }

        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

@end