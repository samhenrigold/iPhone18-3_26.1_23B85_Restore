void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_1F19FEF48;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_1F19FEF48;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(v3);
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if ((v4 & 1) == 0)
  {
    v5(v6);
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(*v6 + v5))();
  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
LABEL_5:
    v9 = MEMORY[0x1AC559C20]();
    MEMORY[0x1AC55A070](v9, 0x20C4093837F09);
  }

LABEL_6:
  MEMORY[0x1AC55A070](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_1F19FEF90;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_1F19FEF90;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

std::shared_future<void> *std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_1F19FEFD8;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_1F19FEFD8;
  std::shared_future<void>::~shared_future(a1 + 1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19FEFD8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19FF068;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mayBeValidWithoutTerminator(mlir::Block *a1)
{
  if (!mlir::Block::getParent(a1))
  {
    return 1;
  }

  Parent = mlir::Block::getParent(a1);
  v3 = *(Parent + 8);
  if (v3 == Parent || *(v3 + 8) != Parent)
  {
    return 0;
  }

  ParentOp = mlir::Block::getParentOp(a1);
  if (!ParentOp)
  {
    return 1;
  }

  {
    v8 = ParentOp;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
    v6 = *(v8 + 48);
    if (v6[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_8;
    }

    return 1;
  }

  v6 = *(ParentOp + 48);
  if (v6[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_8:
  v7 = *(*v6 + 4);

  return v7();
}

uint64_t mlir::ForwardIterator::makeIterable(mlir::ForwardIterator *this, mlir::Operation *a2)
{
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return this + 32 * *(this + 10) + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 64;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ConstantIntRanges::getStorageBitwidth(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isIndex(&v5))
  {
    return 64;
  }

  v2 = v5;
  v3 = *(*v5 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v4 = v2;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::IntegerType::getWidth(&v4);
  }

  else
  {
    return 0;
  }
}

unsigned int *mlir::ConstantIntRanges::maxRange@<X0>(mlir::ConstantIntRanges *this@<X0>, uint64_t *a3@<X8>)
{
  v8 = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, 0, 0);
  }

  v7 = 0;
  v6 = this;
  v3 = 0xFFFFFFFFFFFFFFFFLL >> -this;
  if (!this)
  {
    v3 = 0;
  }

  v5 = v3;
  result = mlir::ConstantIntRanges::fromUnsigned(a3, &v7, &v5);
  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x1AC55A040](v5, 0x1000C8000313F17);
    }
  }

  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::ConstantIntRanges::fromUnsigned@<X0>(uint64_t *__return_ptr a1@<X8>, unsigned int *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v5 = this;
  v7 = this[2];
  v30 = 1;
  v29 = 0;
  v28 = 1;
  v27 = 0;
  v8 = v7 - 1;
  v9 = (*this + 8 * ((v7 - 1) >> 6));
  if (v7 < 0x41)
  {
    v9 = this;
  }

  v10 = 1 << v8;
  v11 = (*v9 & (1 << v8)) == 0;
  v12 = *(a3 + 2);
  v13 = v12 - 1;
  if (v12 >= 0x41)
  {
    v14 = (*a3 + 8 * ((v12 - 1) >> 6));
  }

  else
  {
    v14 = a3;
  }

  if ((v11 ^ (((*v14 >> v13) & 1) == 0)))
  {
    v26 = v7;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25, 0, 0);
    }

    v29 = v10;
    v30 = v26;
    v26 = v7;
    v20 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (!v7)
    {
      v20 = 0;
    }

    v25 = v20 & ~v10;
    v27 = v25;
    v18 = v26;
  }

  else
  {
    if (llvm::APInt::compareSigned(this, a3) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = v5;
    }

    v16 = *(v15 + 2);
    if (v16 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v29, v15);
      this = llvm::APInt::compareSigned(v5, a3);
      if (this <= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = v5;
      }
    }

    else
    {
      v29 = *v15;
      v30 = v16;
      this = llvm::APInt::compareSigned(v5, a3);
      if (this <= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = v5;
      }
    }

    v18 = *(v17 + 2);
    if (v18 > 0x40)
    {
      this = llvm::APInt::assignSlowCase(&v27, v17);
      v19 = v5[2];
      *(a1 + 2) = v19;
      if (v19 <= 0x40)
      {
        goto LABEL_31;
      }

LABEL_23:
      llvm::APInt::initSlowCase(a1, v5);
    }

    v27 = *v17;
  }

  v28 = v18;
  v21 = v5[2];
  *(a1 + 2) = v21;
  if (v21 > 0x40)
  {
    goto LABEL_23;
  }

LABEL_31:
  *a1 = *v5;
  v22 = *(a3 + 2);
  *(a1 + 6) = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 2), a3);
  }

  a1[2] = *a3;
  v23 = v30;
  *(a1 + 10) = v30;
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 4), &v29);
  }

  a1[4] = v29;
  v24 = v28;
  *(a1 + 14) = v28;
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 6), &v27);
  }

  a1[6] = v27;
  if (v30 >= 0x41)
  {
    this = v29;
    if (v29)
    {
      return MEMORY[0x1AC55A040](v29, 0x1000C8000313F17);
    }
  }

  return this;
}

llvm::APInt *mlir::ConstantIntRanges::constant@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::ConstantIntRanges *this@<X0>)
{
  v4 = *(this + 2);
  *(a1 + 2) = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(a1, this);
  }

  *a1 = *this;
  *(a1 + 6) = v4;
  a1[2] = *this;
  *(a1 + 10) = v4;
  a1[4] = *this;
  result = (a1 + 6);
  *(a1 + 14) = v4;
  a1[6] = *this;
  return result;
}

unsigned int *mlir::ConstantIntRanges::range@<X0>(const llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, const llvm::APInt *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    return mlir::ConstantIntRanges::fromSigned(this, a2, a4);
  }

  else
  {
    return mlir::ConstantIntRanges::fromUnsigned(a4, this, a2);
  }
}

const llvm::APInt *mlir::ConstantIntRanges::fromSigned@<X0>(const llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = this;
  v6 = *(this + 2);
  v28 = 1;
  v27 = 0;
  v26 = 1;
  v25 = 0;
  v7 = (*this + 8 * ((v6 - 1) >> 6));
  if (v6 < 0x41)
  {
    v7 = this;
  }

  v8 = ((*v7 >> (v6 - 1)) & 1) == 0;
  v9 = *(a2 + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*a2 + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = a2;
  }

  if (((v8 ^ (((*v11 >> v10) & 1) == 0)) & 1) == 0)
  {
    if (llvm::APInt::compare(this, a2) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = v4;
    }

    v14 = *(v13 + 2);
    if (v14 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v27, v13);
      this = llvm::APInt::compare(v4, a2);
      if (this <= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = v4;
      }
    }

    else
    {
      v27 = *v13;
      v28 = v14;
      this = llvm::APInt::compare(v4, a2);
      if (this <= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = v4;
      }
    }

    v17 = *(v15 + 2);
    if (v17 > 0x40)
    {
      this = llvm::APInt::assignSlowCase(&v25, v15);
      v19 = v28;
      a3[2] = v28;
      if (v19 <= 0x40)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = *v15;
      v26 = v17;
      v18 = v28;
      a3[2] = v28;
      if (v18 <= 0x40)
      {
        goto LABEL_31;
      }
    }

LABEL_26:
    llvm::APInt::initSlowCase(a3, &v27);
  }

  v24 = v6;
  if (v6 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v23, 0, 0);
  }

  v27 = 0;
  v28 = v24;
  v24 = v6;
  v12 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  if (!v6)
  {
    v12 = 0;
  }

  v23 = v12;
  v25 = v23;
  v26 = v24;
  v16 = v28;
  a3[2] = v28;
  if (v16 > 0x40)
  {
    goto LABEL_26;
  }

LABEL_31:
  *a3 = v27;
  v20 = v26;
  a3[6] = v26;
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), &v25);
  }

  *(a3 + 2) = v25;
  v21 = *(v4 + 2);
  a3[10] = v21;
  if (v21 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), v4);
  }

  *(a3 + 4) = *v4;
  v22 = *(a2 + 2);
  a3[14] = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 12), a2);
  }

  *(a3 + 6) = *a2;
  if (v26 >= 0x41)
  {
    this = v25;
    if (v25)
    {
      this = MEMORY[0x1AC55A040](v25, 0x1000C8000313F17);
    }
  }

  if (v28 >= 0x41)
  {
    this = v27;
    if (v27)
    {
      return MEMORY[0x1AC55A040](v27, 0x1000C8000313F17);
    }
  }

  return this;
}

uint64_t *mlir::ConstantIntRanges::rangeUnion@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = this;
  if (!*(this + 2))
  {
    *(a1 + 2) = 0;
    *a1 = *this;
    v15 = *(this + 6);
    *(a1 + 6) = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase((a1 + 2), this + 2);
    }

    a1[2] = this[2];
    v16 = *(this + 10);
    *(a1 + 10) = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase((a1 + 4), this + 4);
    }

    a1[4] = this[4];
    v22 = *(this + 14);
    *(a1 + 14) = v22;
    if (v22 <= 0x40)
    {
      v21 = this[6];
      goto LABEL_38;
    }

    v13 = (a1 + 6);
    v14 = (v3 + 6);
LABEL_25:

    llvm::APInt::initSlowCase(v13, v14);
  }

  if (!*(a3 + 2))
  {
    *(a1 + 2) = 0;
    *a1 = *a3;
    v17 = *(a3 + 6);
    *(a1 + 6) = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase((a1 + 2), a3 + 2);
    }

    a1[2] = *(a3 + 2);
    v18 = *(a3 + 10);
    *(a1 + 10) = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase((a1 + 4), a3 + 4);
    }

    a1[4] = *(a3 + 4);
    v23 = *(a3 + 14);
    *(a1 + 14) = v23;
    if (v23 <= 0x40)
    {
      v21 = *(a3 + 6);
      goto LABEL_38;
    }

    v13 = (a1 + 6);
    v14 = (a3 + 48);
    goto LABEL_25;
  }

  if (llvm::APInt::compare(this, a3) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = v3;
  }

  v7 = a3 + 16;
  if (llvm::APInt::compare((v3 + 2), (a3 + 16)) > 0)
  {
    v7 = (v3 + 2);
  }

  v8 = (v3 + 4);
  if (llvm::APInt::compareSigned((v3 + 4), (a3 + 32)) >= 0)
  {
    v8 = a3 + 32;
  }

  v9 = (v3 + 6);
  v10 = (a3 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this > 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  *(a1 + 2) = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a1, v6);
  }

  *a1 = *v6;
  v12 = *(v7 + 2);
  *(a1 + 6) = v12;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 2), v7);
  }

  a1[2] = *v7;
  v19 = *(v8 + 2);
  *(a1 + 10) = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 4), v8);
  }

  a1[4] = *v8;
  v20 = *(v10 + 2);
  *(a1 + 14) = v20;
  if (v20 > 0x40)
  {
    v13 = (a1 + 6);
    v14 = v10;
    goto LABEL_25;
  }

  v21 = *v10;
LABEL_38:
  a1[6] = v21;
  return this;
}

const void **mlir::ConstantIntRanges::intersection@<X0>(const void **this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = this;
  if (!*(this + 2))
  {
    a3[2] = 0;
    *a3 = *this;
    v15 = *(this + 6);
    a3[6] = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), this + 2);
    }

    *(a3 + 2) = this[2];
    v16 = *(this + 10);
    a3[10] = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), this + 4);
    }

    *(a3 + 4) = this[4];
    v22 = *(this + 14);
    a3[14] = v22;
    if (v22 <= 0x40)
    {
      v21 = this[6];
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = v3 + 6;
LABEL_25:

    llvm::APInt::initSlowCase(v13, v14);
  }

  if (!*(a2 + 2))
  {
    a3[2] = 0;
    *a3 = *a2;
    v17 = *(a2 + 6);
    a3[6] = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), a2 + 2);
    }

    *(a3 + 2) = *(a2 + 2);
    v18 = *(a2 + 10);
    a3[10] = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), a2 + 4);
    }

    *(a3 + 4) = *(a2 + 4);
    v23 = *(a2 + 14);
    a3[14] = v23;
    if (v23 <= 0x40)
    {
      v21 = *(a2 + 6);
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = (a2 + 48);
    goto LABEL_25;
  }

  if (llvm::APInt::compare(this, a2) <= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = a2 + 16;
  if (llvm::APInt::compare((v3 + 2), (a2 + 16)) < 0)
  {
    v7 = (v3 + 2);
  }

  v8 = (v3 + 4);
  if (llvm::APInt::compareSigned((v3 + 4), (a2 + 32)) <= 0)
  {
    v8 = a2 + 32;
  }

  v9 = (v3 + 6);
  v10 = (a2 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this < 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  a3[2] = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, v6);
  }

  *a3 = *v6;
  v12 = *(v7 + 2);
  a3[6] = v12;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), v7);
  }

  *(a3 + 2) = *v7;
  v19 = *(v8 + 2);
  a3[10] = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), v8);
  }

  *(a3 + 4) = *v8;
  v20 = *(v10 + 2);
  a3[14] = v20;
  if (v20 > 0x40)
  {
    v13 = (a3 + 12);
    v14 = v10;
    goto LABEL_25;
  }

  v21 = *v10;
LABEL_38:
  *(a3 + 6) = v21;
  return this;
}

uint64_t *mlir::ConstantIntRanges::getConstantValue@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this;
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    this = llvm::APInt::equalSlowCase(this, this + 2);
    if (this)
    {
      *(a1 + 2) = v4;
      v7 = a1;
      v8 = v2;
      goto LABEL_16;
    }
  }

  else
  {
    v5 = *this;
    if (v4)
    {
      v6 = v5 == this[2];
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_13;
    }
  }

  v4 = *(v2 + 10);
  if (v4 > 0x40)
  {
    this = llvm::APInt::equalSlowCase(v2 + 4, v2 + 6);
    if ((this & 1) == 0)
    {
      goto LABEL_17;
    }

    *(a1 + 2) = v4;
    v8 = (v2 + 4);
    v7 = a1;
LABEL_16:
    llvm::APInt::initSlowCase(v7, v8);
  }

  if (v4)
  {
    v5 = v2[4];
    if (v5 == v2[6])
    {
LABEL_13:
      *(a1 + 2) = v4;
      *a1 = v5;
      *(a1 + 16) = 1;
      return this;
    }
  }

LABEL_17:
  *a1 = 0;
  *(a1 + 16) = 0;
  return this;
}

uint64_t mlir::IntegerValueRange::getMaxRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::Type::isIndex(&v23);
  if (result)
  {
    v4 = 64;
    v24 = 64;
  }

  else
  {
    v5 = v23;
    v6 = *(*v23 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v21 = v5;
    if (v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (result = mlir::IntegerType::getWidth(&v21), !result))
    {
      *a2 = 0;
      *(a2 + 64) = 0;
      return result;
    }

    v4 = result;
    v24 = result;
    if (result >= 0x41)
    {
      llvm::APInt::initSlowCase(&v23, 0, 0);
    }
  }

  v23 = 0;
  v22 = v4;
  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  v20 = v4;
  v19 = 1 << (v4 - 1);
  v18 = v4;
  v17 = v21 & ~v19;
  v10 = v24;
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, &v23);
  }

  v9 = v23;
  v12 = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, &v21);
  }

  v11 = v21;
  v14 = v20;
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, &v19);
  }

  v13 = v19;
  v7 = v18;
  v16 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, &v17);
  }

  v8 = v17;
  v15 = v17;
  *(a2 + 8) = v10;
  *a2 = v9;
  *(a2 + 24) = v12;
  *(a2 + 16) = v11;
  v10 = 0;
  v12 = 0;
  *(a2 + 40) = v14;
  *(a2 + 32) = v13;
  *(a2 + 56) = v7;
  *(a2 + 48) = v8;
  v14 = 0;
  v16 = 0;
  *(a2 + 64) = 1;
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
    }
  }

  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      return MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::intrange::detail::defaultInferResultRanges(uint64_t a1, void (**a2)(void, uint64_t, void *, void, uint64_t (*)(int, int, llvm::APInt *), void **), llvm::APInt *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[8] = *MEMORY[0x1E69E9840];
  v12[0] = a5;
  v12[1] = a6;
  v13 = v15;
  v14 = 0x100000000;
  if (a4 < 2)
  {
    if (!a4)
    {
LABEL_7:
      v11 = v12;
      (*a2)(a2, a1, v13, v14, llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRanges(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::IntegerValueRange>,llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>)::$_0>, &v11);
      goto LABEL_8;
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(&v13, a4);
  }

  v10 = 72 * a4;
  while (*(a3 + 64) == 1)
  {
    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::push_back(&v13, a3);
    a3 = (a3 + 72);
    v10 -= 72;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(v13, v13 + 8 * v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

void llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::push_back(uint64_t result, llvm::APInt *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v5 = *result;
  if (v4 >= *(result + 12))
  {
    if (v5 <= a2 && v5 + (v4 << 6) > a2)
    {
      v12 = a2 - v5;
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(result, v4 + 1);
      v5 = *result;
      v2 = &v12[*result];
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(result, v4 + 1);
      v5 = *result;
    }
  }

  v6 = (v5 + (*(result + 8) << 6));
  v7 = *(v2 + 2);
  v6[2] = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(v6, v2);
  }

  *v6 = *v2;
  v8 = *(v2 + 6);
  v6[6] = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase((v6 + 4), v2 + 2);
  }

  *(v6 + 2) = *(v2 + 2);
  v9 = *(v2 + 10);
  v6[10] = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase((v6 + 8), v2 + 4);
  }

  *(v6 + 4) = *(v2 + 4);
  v10 = *(v2 + 14);
  v6[14] = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase((v6 + 12), v2 + 6);
  }

  *(v6 + 6) = *(v2 + 6);
  ++*(result + 8);
}

void mlir::intrange::detail::defaultInferResultRangesFromOptional(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[9] = *MEMORY[0x1E69E9840];
  v16[0] = a5;
  v16[1] = a6;
  v17 = v19;
  v18 = 0x100000000;
  if (a4 < 2)
  {
    v10 = 0;
    v11 = v19;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(&v17, a4);
    v10 = v18;
    v11 = v17;
  }

  std::__uninitialized_copy[abi:nn200100]<mlir::IntegerValueRange,mlir::ConstantIntRanges const*,mlir::ConstantIntRanges const*,mlir::IntegerValueRange*,std::__always_false>(a3, &a3[16 * a4], &v11[9 * v10]);
  LODWORD(v18) = v18 + a4;
  v15 = v16;
  (*(a2 + 8))(a2, a1, v17);
  v12 = v17;
  if (v18)
  {
    v13 = -72 * v18;
    v14 = v17 + 72 * v18 - 72;
    do
    {
      v14 = (std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](v14) - 72);
      v13 += 72;
    }

    while (v13);
    v12 = v17;
  }

  if (v12 != v19)
  {
    free(v12);
  }
}

void *llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      if (*(v2 - 2) >= 0x41u)
      {
        result = *(v2 - 2);
        if (result)
        {
          result = MEMORY[0x1AC55A040](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 6) >= 0x41u)
      {
        result = *(v2 - 4);
        if (result)
        {
          result = MEMORY[0x1AC55A040](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 10) >= 0x41u)
      {
        result = *(v2 - 6);
        if (result)
        {
          result = MEMORY[0x1AC55A040](result, 0x1000C8000313F17);
        }
      }

      v2 -= 8;
      if (*(v4 - 14) >= 0x41u)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x1AC55A040](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(uint64_t *a1, unint64_t a2)
{
  v12 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 64, &v12);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(v5, *a1);
    v10 = v12;
    v11 = *a1;
    if (*a1 == v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = v4 + 32;
  v8 = v5 + 4;
  v9 = v6 << 6;
  do
  {
    *(v7 - 6) = *(v8 - 6);
    *(v7 - 4) = *(v8 - 4);
    *(v8 - 6) = 0;
    *(v7 - 2) = *(v8 - 2);
    *(v7 - 2) = *(v8 - 2);
    *(v8 - 2) = 0;
    *(v7 + 2) = *(v8 + 2);
    *v7 = *v8;
    *(v8 + 2) = 0;
    *(v7 + 6) = *(v8 + 6);
    *(v7 + 2) = v8[2];
    *(v8 + 6) = 0;
    v7 += 64;
    v8 += 8;
    v9 -= 64;
  }

  while (v9);
  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(*a1, (*a1 + (*(a1 + 2) << 6)));
  v10 = v12;
  v11 = *a1;
  if (*a1 != v3)
  {
LABEL_5:
    free(v11);
  }

LABEL_6:
  *a1 = v4;
  *(a1 + 3) = v10;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRanges(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::IntegerValueRange>,llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>)::$_0>(uint64_t *a1, uint64_t a2, llvm::APInt *a3)
{
  v3 = *a1;
  v7 = *(a3 + 2);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, a3);
  }

  v6 = *a3;
  v9 = *(a3 + 6);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a3 + 2);
  }

  v8 = *(a3 + 2);
  v11 = *(a3 + 10);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, a3 + 4);
  }

  v10 = *(a3 + 4);
  v4 = *(a3 + 14);
  v13 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, a3 + 6);
  }

  v12 = *(a3 + 6);
  v15 = v7;
  v14 = v6;
  v17 = v9;
  v16 = v8;
  v7 = 0;
  v9 = 0;
  v19 = v11;
  v18 = v10;
  v21 = v4;
  v20 = v12;
  v11 = 0;
  v13 = 0;
  v22 = 1;
  result = (*v3)(*(v3 + 8), a2, &v14);
  if (v22 == 1)
  {
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
      }
    }

    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        return MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

_DWORD *std::__uninitialized_copy[abi:nn200100]<mlir::IntegerValueRange,mlir::ConstantIntRanges const*,mlir::ConstantIntRanges const*,mlir::IntegerValueRange*,std::__always_false>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 8;
    do
    {
      v8 = (v5 - 8);
      v12 = *(v5 - 6);
      if (v12 > 0x40)
      {
        llvm::APInt::initSlowCase(&v11, v8);
      }

      v11 = *v8;
      v9 = (v5 - 4);
      v14 = *(v5 - 2);
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v13, v9);
      }

      v13 = *v9;
      v16 = v5[2];
      if (v16 > 0x40)
      {
        llvm::APInt::initSlowCase(&v15, v5);
      }

      v15 = *v5;
      v10 = v5[6];
      v18 = v10;
      if (v10 > 0x40)
      {
        llvm::APInt::initSlowCase(&v17, v5 + 2);
      }

      v17 = *(v5 + 2);
      v6 = v17;
      *(a3 + 8) = v12;
      *a3 = v11;
      *(a3 + 24) = v14;
      *(a3 + 16) = v13;
      v12 = 0;
      v14 = 0;
      *(a3 + 40) = v16;
      *(a3 + 32) = v15;
      *(a3 + 56) = v10;
      *(a3 + 48) = v6;
      *(a3 + 64) = 1;
      a3 += 72;
      v7 = v5 + 8;
      v5 += 16;
      v16 = 0;
      v18 = 0;
    }

    while (v7 != a2);
    return a2;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRangesFromOptional(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::ConstantIntRanges>,llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>)::$_0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    return (**result)(*(*result + 8), a2);
  }

  return result;
}

const char *llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &unk_1EB28B000;
    v18 = v23;
  }

  v19 = v4[412];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void *llvm::format_provider<long long,void>::format(int64_t *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (ZinHWEnumsUtils::IsHWKernelFormatFloat(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

uint64_t llvm::support::detail::HelperFunctions::consumeHexStyle(uint64_t a1)
{
  if (!llvm::StringRef::starts_with_insensitive(a1, "x", 1uLL))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    v4 = *a1;
    if (**a1 != 120)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *a1;
  if (**a1 == 11640)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return 0x100000001;
  }

  else if (*v4 == 11608)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return 0x100000000;
  }

  else if (*v4 == 11128)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return 0x100000003;
  }

  else
  {
    if (*v4 == 120)
    {
LABEL_11:
      *a1 = v4 + 1;
      *(a1 + 8) = v2 - 1;
      return 0x100000003;
    }

    if (*v4 != 11096)
    {
LABEL_5:
      llvm::StringRef::consume_front(a1, "X", 1uLL);
      return 0x100000002;
    }

    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return 0x100000002;
  }
}

uint64_t llvm::StringRef::consume_front(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  if (a3)
  {
    v7 = a1;
    v8 = a3;
    v9 = memcmp(*a1, a2, a3);
    a3 = v8;
    v10 = v9;
    a1 = v7;
    if (v10)
    {
      return 0;
    }
  }

  *a1 = &v6[a3];
  a1[1] = v4;
  return 1;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseIntElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, va, v24 + 1, 24);
}

void mlir::memref::MemRefDialect::MemRefDialect(mlir::memref::MemRefDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "memref", 6, a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id);
  *v3 = &unk_1F19FF0E8;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::memref::MemRefDialect::initialize(this);
}

void sub_1A6C3C8B8()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::AllocationOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::ReallocOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::AllocationOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::ReallocOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::AllocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::AllocationOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::ReallocOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::AllocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::AllocationOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::ReallocOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::ReallocOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::AllocationOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::LoadOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::ReinterpretCastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::RuntimeVerifiableOpInterface,mlir::memref::CastOp,mlir::memref::ExpandShapeOp,mlir::memref::LoadOp,mlir::memref::ReinterpretCastOp,mlir::memref::StoreOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::RuntimeVerifiableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::DimOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::RankOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::memref::AllocOp,mlir::memref::AllocaOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::memref::GetGlobalOp,mlir::memref::RankOp,mlir::memref::SubViewOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t *mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::AssumeAlignmentOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::AssumeAlignmentOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AssumeAlignmentOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::AssumeAlignmentOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AssumeAlignmentOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AssumeAlignmentOp>::writeProperties;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::AssumeAlignmentOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::memref::AssumeAlignmentOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::memref::AssumeAlignmentOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::memref::AssumeAlignmentOp::verify(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t *mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::AtomicRMWOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::AtomicRMWOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicRMWOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::AtomicRMWOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::isCompatibleReturnTypes;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::getEffects;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicRMWOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::memref::AtomicRMWOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "memref.atomic_rmw";
    v23 = 17;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::memref::AtomicRMWOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AtLeastNOperands<2>::Impl<Empty>]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::AtomicRMWOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::memref::AtomicRMWOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::memref::AtomicRMWOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::AtomicRMWOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AtomicYieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::AtomicYieldOp>::getSpeculatability;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::AtomicYieldOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<Empty>]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::AtomicYieldOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::memref::AtomicYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::memref::AtomicYieldOp::verify(&v4) & 1;
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>::verifyTrait(a1) && (ZinIrConstData_specialization<half>::prepare())
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::GenericAtomicRMWOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "memref.generic_atomic_rmw";
    v35 = 25;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "memref.generic_atomic_rmw";
    v35 = 25;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::CopyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CopyOp>,mlir::OpTrait::ZeroResults<mlir::memref::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::CopyOp>,mlir::OpTrait::OpInvariants<mlir::memref::CopyOp>,mlir::CopyOpInterface::Trait<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsElementType<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsShape<mlir::memref::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CopyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::CopyOpInterfaceInterfaceTraits::Model<mlir::memref::CopyOp>::getSource;
  v2[1] = mlir::detail::CopyOpInterfaceInterfaceTraits::Model<mlir::memref::CopyOp>::getTarget;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CopyOp>,mlir::OpTrait::ZeroResults<mlir::memref::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::CopyOp>,mlir::OpTrait::OpInvariants<mlir::memref::CopyOp>,mlir::CopyOpInterface::Trait<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsElementType<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsShape<mlir::memref::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CopyOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CopyOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::CopyOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

const char *llvm::getTypeName<mlir::CopyOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CopyOpInterface]";
  v6 = 71;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 44);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((a2 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v9, v8);
  v10[2] = a3;
  v10[3] = a4;
  mlir::memref::CopyOp::fold();
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::CopyOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CopyOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::CopyOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CopyOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::CopyOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CopyOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CopyOpInterface::Trait<Empty>]";
  v6 = 85;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsElementType<Empty>]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsShape<Empty>]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::CopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::CopyOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::CopyOp>,mlir::OpTrait::ZeroResults<mlir::memref::CopyOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CopyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::memref::CopyOp>,mlir::OpTrait::OpInvariants<mlir::memref::CopyOp>,mlir::CopyOpInterface::Trait<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsElementType<mlir::memref::CopyOp>,mlir::OpTrait::SameOperandsShape<mlir::memref::CopyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CopyOp>>(const char **a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, mlir::memref::CopyOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v5))
  {
    return mlir::OpTrait::impl::verifySameOperandsShape(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::GenericAtomicRMWOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::memref::GenericAtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::GenericAtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::GenericAtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::GenericAtomicRMWOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::GenericAtomicRMWOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::GenericAtomicRMWOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::GenericAtomicRMWOp>::isCompatibleReturnTypes;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::GenericAtomicRMWOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::GenericAtomicRMWOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::memref::GenericAtomicRMWOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::memref::GenericAtomicRMWOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "memref.generic_atomic_rmw";
    v23 = 25;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<Empty>]";
  v6 = 136;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::GenericAtomicRMWOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::memref::GenericAtomicRMWOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::GenericAtomicRMWOp::verify(&v6) & 1;
}

BOOL mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 44);
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = 0;
  for (i = (((a1 + 16 * ((v1 >> 23) & 1) + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40)); ; i += 3)
  {
    if (i == *i)
    {
      goto LABEL_3;
    }

    v5 = i[1];
    if (i == v5 || i != *(v5 + 8))
    {
      break;
    }

    if (*(v5 + 24) == v5 + 24)
    {
      v39 = 257;
      mlir::Operation::emitOpError(a1, v38, v43);
      if (v43[0])
      {
        v40 = 3;
        v41 = "expects a non-empty block";
        v42 = 25;
        v6 = &v40;
        v7 = v44;
        if (v45 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v45 > &v40)
          {
            v37 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v7 = v44;
            v6 = (v44 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v6 = &v40;
            v7 = v44;
          }
        }

        v8 = &v7[24 * v45];
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        ++v45;
      }

      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
      if (v43[0])
      {
        mlir::InFlightDiagnostic::report(v43);
      }

      if (v53 == 1)
      {
        if (v52 != &v53)
        {
          free(v52);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v51;
          v13 = __p;
          if (v51 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v51 = v11;
          operator delete(v13);
        }

        v14 = v48;
        if (v48)
        {
          v15 = v49;
          v16 = v48;
          if (v49 != v48)
          {
            do
            {
              v18 = *--v15;
              v17 = v18;
              *v15 = 0;
              if (v18)
              {
                MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
              }
            }

            while (v15 != v14);
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        goto LABEL_52;
      }

      return v10;
    }

LABEL_3:
    if (v2 == ++v3)
    {
      return 1;
    }
  }

  v38[0] = "expects region #";
  v39 = 259;
  mlir::Operation::emitOpError(a1, v38, v43);
  if (v43[0])
  {
    v40 = 5;
    v41 = v3;
    v20 = &v40;
    v21 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v35 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v21 = v44;
        v20 = (v44 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v20 = &v40;
        v21 = v44;
      }
    }

    v22 = &v21[24 * v45];
    v23 = *v20;
    *(v22 + 2) = *(v20 + 2);
    *v22 = v23;
    v24 = ++v45;
    if (v43[0])
    {
      v40 = 3;
      v41 = " to have 0 or 1 blocks";
      v42 = 22;
      v25 = &v40;
      v26 = v44;
      if (v24 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v24 > &v40)
        {
          v36 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v24 + 1, 24);
          v26 = v44;
          v25 = (v44 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v24 + 1, 24);
          v25 = &v40;
          v26 = v44;
        }
      }

      v27 = &v26[24 * v45];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v45;
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v51;
      v31 = __p;
      if (v51 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v51 = v29;
      operator delete(v31);
    }

    v14 = v48;
    if (v48)
    {
      v32 = v49;
      v16 = v48;
      if (v49 != v48)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v14);
LABEL_50:
        v16 = v48;
      }

LABEL_51:
      v49 = v14;
      operator delete(v16);
    }

LABEL_52:
    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v10;
}

uint64_t mlir::Op<mlir::memref::GenericAtomicRMWOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1)
{
  if (mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::memref::GenericAtomicRMWOp>::verifyRegionTrait(a1))
  {
    return mlir::detail::verifyInferredResultTypes(a1, v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl<mlir::memref::GenericAtomicRMWOp>::verifyRegionTrait(uint64_t a1)
{
  v31[25] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 44) & 0x7FFFFF;
  if (v1)
  {
    v3 = 0;
    v4 = a1 + 64;
    v5 = 24 * v1;
    while (1)
    {
      v6 = (((v4 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + v3);
      if (v6 != *v6)
      {
        v7 = v6[1];
        v8 = v7 ? v7 - 8 : 0;
        ZinIrHalH13g::~ZinIrHalH13g(*(v8 + 32));
        v10 = *(v9 + 48);
        if (*(v10 + 16) != &mlir::detail::TypeIDResolver<mlir::memref::AtomicYieldOp,void>::id)
        {
          break;
        }
      }

      v3 += 24;
      if (v5 == v3)
      {
        return 1;
      }
    }

    v19 = 1283;
    v18[0] = "expects regions to end with '";
    v18[2] = "memref.atomic_yield";
    v18[3] = 19;
    v20[0] = v18;
    v20[2] = "', found '";
    v21 = 770;
    v30 = *(v10 + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v30);
    v13 = v21;
    if (v21 == 1)
    {
      v22 = AttrData;
      v23 = v12;
      v26 = 261;
      v14 = 5;
    }

    else
    {
      if (!v21)
      {
        v14 = 0;
        v26 = 256;
        v15 = 1;
        goto LABEL_18;
      }

      v17 = v20[0];
      v14 = 2;
      if (HIBYTE(v21) != 1)
      {
        v13 = 2;
        v17 = v20;
      }

      v22 = v17;
      v23 = v20[1];
      v24 = AttrData;
      v25 = v12;
      LOBYTE(v26) = v13;
      HIBYTE(v26) = 5;
      AttrData = &v22;
    }

    v27[0] = AttrData;
    v27[1] = v12;
    v27[2] = "'";
    v15 = 3;
LABEL_18:
    v28 = v14;
    v29 = v15;
    mlir::Operation::emitOpError(a1, v27, &v30);
    mlir::Diagnostic::attachNote(v31, 0, 0);
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::LoadOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::LoadOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::LoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::LoadOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::LoadOp>,mlir::OpTrait::OneResult<mlir::memref::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::LoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::OpInvariants<mlir::memref::LoadOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::LoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::LoadOp>,mlir::PromotableMemOpInterface::Trait<mlir::memref::LoadOp>,mlir::DestructurableAccessorOpInterface::Trait<mlir::memref::LoadOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::LoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>>(a1);
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::canRewire;
  v4[1] = mlir::detail::DestructurableAccessorOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::rewire;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::LoadOp>,mlir::OpTrait::OneResult<mlir::memref::LoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::LoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::LoadOp>,mlir::OpTrait::OpInvariants<mlir::memref::LoadOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::LoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::LoadOp>,mlir::PromotableMemOpInterface::Trait<mlir::memref::LoadOp>,mlir::DestructurableAccessorOpInterface::Trait<mlir::memref::LoadOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::LoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::LoadOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::loadsFrom;
  v2[1] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::storesTo;
  v2[2] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::getStored;
  v2[3] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::canUsesBeRemoved;
  v2[4] = mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::removeBlockingUses;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::PromotableMemOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::PromotableMemOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableMemOpInterface]";
  v6 = 80;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::DestructurableAccessorOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAccessorOpInterface]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::memref::LoadOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::memref::LoadOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::memref::GenericAtomicRMWOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "memref.load";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  mlir::memref::LoadOp::fold();
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AtomicYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::PromotableMemOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableMemOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableMemOpInterface::Trait<Empty>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::DestructurableAccessorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAccessorOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAccessorOpInterface::Trait<Empty>]";
  v6 = 103;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::LoadOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::LoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::PromotableMemOpInterface::Trait,mlir::DestructurableAccessorOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::memref::LoadOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::LoadOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::AllocOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::AllocOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::AllocOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::memref::AllocOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::getDefaultDialect;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::AllocOp>::getEffects;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<Empty>]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::AllocOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::AllocOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::memref::AllocOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::AllocOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::memref::AllocOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::AllocOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::memref::AllocOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::memref::AllocaOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaOp>,mlir::OpTrait::OneResult<mlir::memref::AllocaOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocaOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocaOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocaOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocaOp>,mlir::PromotableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::DestructurableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroResults<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OneOperand<mlir::memref::AssumeAlignmentOp>,mlir::OpTrait::OpInvariants<mlir::memref::AssumeAlignmentOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AssumeAlignmentOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getDefaultDialect;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v6 = mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getPromotableSlots;
  v6[1] = mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getDefaultValue;
  v6[2] = mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::handleBlockArgument;
  v6[3] = mlir::detail::PromotableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::handlePromotionComplete;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaOp>,mlir::OpTrait::OneResult<mlir::memref::AllocaOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocaOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocaOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocaOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocaOp>,mlir::PromotableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::DestructurableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v7 = mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getDestructurableSlots;
  v7[1] = mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::destructure;
  v7[2] = mlir::detail::DestructurableAllocationOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::handleDestructuringComplete;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaOp>,mlir::OpTrait::OneResult<mlir::memref::AllocaOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocaOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocaOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocaOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocaOp>,mlir::PromotableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::DestructurableAllocationOpInterface::Trait<mlir::memref::AllocaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

const char *llvm::getTypeName<mlir::PromotableAllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableAllocationOpInterface]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::DestructurableAllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAllocationOpInterface]";
  v6 = 91;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::PromotableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::PromotableAllocationOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PromotableAllocationOpInterface::Trait<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::DestructurableAllocationOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableAllocationOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableAllocationOpInterface::Trait<Empty>]";
  v6 = 105;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::AllocOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::memref::AllocaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::PromotableAllocationOpInterface::Trait,mlir::DestructurableAllocationOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::memref::AllocOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::AllocaOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::areTypesCompatible;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::memref::AllocaScopeOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::memref::AllocaScopeOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
  *(a5 + 8) = v6 + v5;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<Empty>]";
  v6 = 142;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchOpInterface::Trait<Empty>]";
  v6 = 93;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasRecursiveMemoryEffects<Empty>]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::AllocaScopeOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroOperands(a1, v4) & 1) == 0 || !mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1) || !mlir::OpTrait::impl::verifyNoRegionArguments(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::memref::AllocaScopeOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::Op<mlir::memref::AllocaScopeOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants(mlir::detail *a1)
{
  if (mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::memref::AllocaScopeOp>::verifyRegionTrait(a1))
  {
    return mlir::detail::verifyTypesAlongControlFlowEdges(a1, v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::memref::AllocaScopeOp>::verifyRegionTrait(uint64_t a1)
{
  v31[25] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 44) & 0x7FFFFF;
  if (v1)
  {
    v3 = 0;
    v4 = a1 + 64;
    v5 = 24 * v1;
    while (1)
    {
      v6 = (((v4 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + v3);
      if (v6 != *v6)
      {
        v7 = v6[1];
        v8 = v7 ? v7 - 8 : 0;
        ZinIrHalH13g::~ZinIrHalH13g(*(v8 + 32));
        v10 = *(v9 + 48);
        if (*(v10 + 16) != &mlir::detail::TypeIDResolver<mlir::memref::AllocaScopeReturnOp,void>::id)
        {
          break;
        }
      }

      v3 += 24;
      if (v5 == v3)
      {
        return 1;
      }
    }

    v19 = 1283;
    v18[0] = "expects regions to end with '";
    v18[2] = "memref.alloca_scope.return";
    v18[3] = 26;
    v20[0] = v18;
    v20[2] = "', found '";
    v21 = 770;
    v30 = *(v10 + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v30);
    v13 = v21;
    if (v21 == 1)
    {
      v22 = AttrData;
      v23 = v12;
      v26 = 261;
      v14 = 5;
    }

    else
    {
      if (!v21)
      {
        v14 = 0;
        v26 = 256;
        v15 = 1;
        goto LABEL_18;
      }

      v17 = v20[0];
      v14 = 2;
      if (HIBYTE(v21) != 1)
      {
        v13 = 2;
        v17 = v20;
      }

      v22 = v17;
      v23 = v20[1];
      v24 = AttrData;
      v25 = v12;
      LOBYTE(v26) = v13;
      HIBYTE(v26) = 5;
      AttrData = &v22;
    }

    v27[0] = AttrData;
    v27[1] = v12;
    v27[2] = "'";
    v15 = 3;
LABEL_18:
    v28 = v14;
    v29 = v15;
    mlir::Operation::emitOpError(a1, v27, &v30);
    mlir::Diagnostic::attachNote(v31, 0, 0);
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::memref::AllocaScopeReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::AllocaScopeReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::ZeroResults<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocaScopeReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AllocaScopeReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocaScopeReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::ReturnLike<mlir::memref::AllocaScopeReturnOp>,mlir::OpTrait::IsTerminator<mlir::memref::AllocaScopeReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::AllocaScopeReturnOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroResults<mlir::memref::AtomicYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OneOperand<mlir::memref::AtomicYieldOp>,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl<mlir::memref::AtomicYieldOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::AtomicYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicYieldOp>,mlir::OpTrait::IsTerminator<mlir::memref::AtomicYieldOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeReturnOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneResult<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AtomicRMWOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::AtomicRMWOp>,mlir::OpTrait::OpInvariants<mlir::memref::AtomicRMWOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::InferTypeOpInterface::Trait<mlir::memref::AtomicRMWOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AtomicRMWOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeReturnOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeReturnOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::memref::AllocaScopeReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::memref::AllocaScopeOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::memref::GenericAtomicRMWOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}