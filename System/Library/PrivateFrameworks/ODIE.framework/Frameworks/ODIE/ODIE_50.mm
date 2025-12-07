mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 72);
  v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 4) == 0 && v3)
  {
    do
    {
      v4 = *(v3 + 72);
      v3 = v4 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v4 & 4) == 0 && v3);
  }

  return mlir::detail::AnalysisMap::getAnalysisImpl<mlir::SymbolTableAnalysis,mlir::ModuleOp>(v1 + 24, v3, *(v1 + 24));
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::SymbolTableAnalysis,mlir::ModuleOp>(uint64_t a1, std::recursive_mutex **a2, mlir::Operation *a3)
{
  v12 = mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID();
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((a1 + 8), &v12);
  v6 = v5 == *(a1 + 8) + 16 * *(a1 + 24) || v5 == 0;
  v7 = (v5 + 8);
  if (v6)
  {
    v7 = (a1 + 40);
  }

  v8 = *v7;
  if (*(a1 + 40) == v8)
  {
    if (a2)
    {
      v9 = mlir::detail::AnalysisMap::getAnalysisName<mlir::SymbolTableAnalysis>();
      mlir::PassInstrumentor::runBeforeAnalysis(a2, v9, v10, v12, *a1);
    }

    operator new();
  }

  return *(*(a1 + 32) + 16 * v8 + 8) + 8;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisName<mlir::SymbolTableAnalysis>()
{
  {
    llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>();
    unk_27FC19580 = v4;
  }

  result = llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name;
  if (unk_27FC19580 >= 6uLL)
  {
    if (*llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name == 1919511661 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 4) == 14906)
    {
      return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 6;
    }

    else if (unk_27FC19580 >= 0x17uLL && *llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name == 0x6F6D796E6F6E6128 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 8) == 0x73656D616E207375 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 15) == 0x3A3A296563617073)
    {
      return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 23;
    }
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolTableAnalysis>();
      mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[173];
}

uint64_t llvm::getTypeName<mlir::SymbolTableAnalysis>()
{
  {
    llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>();
    unk_27FC19580 = v1;
  }

  return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolTableAnalysis]";
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

uint64_t llvm::MapVector<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>,llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>>::try_emplace<std::unique_ptr<mlir::detail::AnalysisConcept>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 24) + 16 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>((a1 + 24), &std::piecewise_construct, &v8, &v7);
  return *(a1 + 24) + 16 * *(a1 + 32) - 16;
}

void *llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v4 = a1[2];
  if (v4 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(a1, a2, a3, a4);
  }

  v5 = (*a1 + 16 * v4);
  v6 = *a4;
  *v5 = **a3;
  v7 = *v6;
  *v6 = 0;
  v5[1] = v7;
  v8 = v4 + 1;
  a1[2] = v8;
  return (*a1 + 16 * v8 - 16);
}

void *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v15 = 0;
  v7 = a1 + 4;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 16, &v15);
  v9 = &v8[2 * a1[2]];
  v10 = *a4;
  *v9 = **a3;
  v11 = *v10;
  *v10 = 0;
  v9[1] = v11;
  llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::moveElementsForGrow(a1, v8);
  v12 = v15;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v13 = a1[2] + 1;
  a1[2] = v13;
  a1[3] = v12;
  return &v8[2 * v13 - 2];
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = *result + 16 * v2;
    do
    {
      *a2 = *v3;
      v5 = v3[1];
      v3[1] = 0;
      a2[1] = v5;
      a2 += 2;
      v3 += 2;
    }

    while (v3 != v4);
    v6 = *result - 8;
    v7 = 16 * v2;
    do
    {
      result = *(v6 + v7);
      *(v6 + v7) = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

unsigned int *mlir::detail::AnalysisModel<mlir::SymbolTableAnalysis>::~AnalysisModel(unsigned int *a1)
{
  *a1 = &unk_286E85D40;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(a1 + 2);
  MEMORY[0x25F891030](*(a1 + 1), 8);
  return a1;
}

void mlir::detail::AnalysisModel<mlir::SymbolTableAnalysis>::~AnalysisModel(unsigned int *a1)
{
  *a1 = &unk_286E85D40;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(a1 + 2);
  MEMORY[0x25F891030](*(a1 + 1), 8);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::OutlineAwaitRegions::runOnOperation(mlir::ODIE::Compiler::Exec::OutlineAwaitRegions *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 6);
  v2[8] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  *__src = 0u;
  *v4 = 0u;
  v5 = v7;
  v11 = 0;
  v12 = 40;
  v15 = 0;
  v16 = 40;
  v6 = 0x600000000;
  v7[6] = 0;
  v7[7] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v13 = 0;
  v14 = 0;
  v2[0] = v1;
  mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(v2);
  operator new();
}

void mlir::ODIE::Compiler::Exec::OutlineAwaitRegions::~OutlineAwaitRegions(mlir::ODIE::Compiler::Exec::OutlineAwaitRegions *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::OutlineAwaitRegions>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern::~AsyncAwaitOpPattern(mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a2;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6 || *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v9 = *(a2 + 44);
  v10 = (a2 + 64 + 16 * ((v9 >> 23) & 1));
  v11 = *(((v10 + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 32);
  v14 = *v10;
  if ((v9 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v48 = &v50;
  v49 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v48, v15, 0, v15, v14);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v16 = *(v13 + 72);
    v17 = *(v13 + 68);
    v18 = v16;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
  }

  v45 = &v47;
  v46 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v45, v16, 0, v18, v17);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v48, v45, v45 + 8 * v46);
  v19 = *(a1 + 24);
  *v51 = v45;
  *&v51[8] = v46;
  v38[1] = 0;
  v38[2] = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>((v19 & 0xFFFFFFFFFFFFFFF8), v51);
  __src[8] = &v44;
  __src[9] = 0x600000000;
  *(a3 + 24) = *(v6 + 16);
  *(a3 + 32) = v6;
  v20 = *(a3 + 8);
  *v51 = v48 & 0xFFFFFFFFFFFFFFF9 | 2;
  *&v51[8] = v49;
  __src[0] = (v45 & 0xFFFFFFFFFFFFFFF9 | 2);
  __src[1] = v46;
  v38[0] = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v20, v51, __src);
  v37 = *(a2 + 24);
  v22 = v6;
  while (1)
  {
    v23 = *(v22 + 2);
    if (!v23)
    {
      break;
    }

    v24 = *(v23 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v24)
    {
      break;
    }

    v22 = *(v24 + 16);
    if (!v22 || *(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_22;
    }
  }

  v22 = 0;
LABEL_22:
  mlir::SymbolTable::SymbolTable(__src, v22, v21);
  v25 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 96);
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v42 = 773;
  v41.__r_.__value_.__r.__words[0] = v27;
  v41.__r_.__value_.__l.__size_ = v26;
  v41.__r_.__value_.__r.__words[2] = "::";
  *v51 = &v41;
  *&v51[16] = "await";
  v53 = 770;
  llvm::Twine::str(v51, __p);
  v28 = v40;
  if (v40 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v40 < 0)
  {
    v28 = __p[1];
  }

  *v51 = &v52;
  *&v51[8] = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(v51, v29, v28 + v29);
  v30 = 0;
  v31 = *&v51[8];
  while (1)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<false>(v51, v31);
    llvm::SmallVectorTemplateBase<char,true>::push_back(v51, 95);
    std::to_string(&v41, v30);
    size = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v41;
    }

    else
    {
      v33 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(v51, v33, v33 + size);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    ++v30;
    if (!mlir::SymbolTable::lookup(__src, *v51, *&v51[8]))
    {
      v35 = *(***(v6 + 24) + 32);
      v42 = 261;
      *&v41.__r_.__value_.__l.__data_ = *v51;
      v36 = mlir::StringAttr::get(v35, &v41.__r_.__value_.__l.__data_, v34);
      if (*v51 != &v52)
      {
        free(*v51);
      }

      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      MEMORY[0x25F891030](__src[1], 8);
      *v51 = v36;
      mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>((a3 + 8), v37, v51, v38);
    }
  }
}

void mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v8;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::func::FuncOp::build(a1, v10, *(*a3 + 16), *(*a3 + 24), *a4, 0, 0, v9, 0, 0);
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttr(uint64_t *a1, uint64_t a2, const llvm::Twine *a3, const char *a4, uint64_t a5)
{
  v8 = *(***(*a1 + 24) + 32);
  v11 = 261;
  v10[0] = a3;
  v10[1] = a4;
  v9 = mlir::StringAttr::get(v8, v10, a3);
  mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(*a1, a2, v9, a5);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = &v12;
  v11[3] = 0x400000000;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  v10 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v13, &v10, v11);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  return v8;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(mlir::ODIE::Compiler::Exec::AsyncAwaitOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 64);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "func.func";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[179];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AwaitableType>();
    unk_27FC195B0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AwaitableType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::AwaitableType]";
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

void mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v13[9] = *MEMORY[0x277D85DE8];
  v11 = a1;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  v8 = (*(*(InterfaceFor + 48) + 24))();
  if (v8)
  {
    v9 = *(*(v8 + 8) + 8 * v6);
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v12, v9);
  if (mlir::NamedAttrList::set(v12, a3, a4) != a4)
  {
    Dictionary = mlir::NamedAttrList::getDictionary(v12, *(**a4 + 32));
    mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttrs(&v11, v6, Dictionary);
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttrs(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::function_interface_impl::setArgAttrs(v5, InterfaceFor, a2, a3);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.undef";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.call";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern]";
  v6 = 109;
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

uint64_t mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(mlir::ODIE::Compiler::Exec::CreateModelContext *this)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  __src[0] = *(this + 6);
  v3 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(__src) + 24);
  v18[0] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v18[1] = 0;
  v19 = 0uLL;
  v17 = &unk_286E76228;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v20 = v22;
  v21 = 0x600000000;
  __src[0] = &v20;
  __src[1] = v15;
  v26 = v3;
  mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(void)::$_0>, __src, 1);
  if (v21)
  {
    v14 = *v20;
    *__src = *(*(v14 + 64 + 16 * ((*(v14 + 44) >> 23) & 1) + 32) + 16);
    *&v24 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v18[0], __src, v4, v5);
    mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v24, 0, 0);
    *&v19 = *(v14 + 16);
    *(&v19 + 1) = v14;
    v27 = v24;
    __src[0] = &v27 + 2;
    __src[1] = 1;
    v23 = v24;
    *&v24 = &v23 + 2;
    *(&v24 + 1) = 1;
    v28[0] = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v18[0], __src, &v24);
    v6 = *(v14 + 24);
    __src[0] = mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(v14, v7, v8);
    mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>(v18, v6, __src, v28);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v9 = v15[0];
  if (v16)
  {
    v10 = v15[0] + 24;
    v11 = 72 * v16;
    do
    {
      if ((*(v10 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v12 = *(v10 - 16);
        if (v10 != v12)
        {
          free(v12);
        }
      }

      v10 += 72;
      v11 -= 72;
    }

    while (v11);
    v9 = v15[0];
  }

  return MEMORY[0x25F891030](v9, 8);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::operator[](void *a1, unint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = (v5 + 3);
  v5[2] = 0x600000000;
  return v5 + 1;
}

void mlir::ODIE::Compiler::Exec::CreateModelContext::~CreateModelContext(mlir::ODIE::Compiler::Exec::CreateModelContext *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = &v12;
  v11[3] = 0x400000000;
  v13[0] = v14;
  v13[1] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  v10 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v13, &v10, v11);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  return v8;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::CreateModelContext>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 72 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 72 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_29:

      JUMPOUT(0x25F891030);
    }

    v15 = 72 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_28:
      v16 += 72;
      v15 -= 72;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 16), v17, &v29);
    v18 = v29;
    *v29 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x600000000;
    v20 = *(v16 + 8);
    if (v16 == v18 || (v21 = *(v16 + 16)) == 0)
    {
LABEL_26:
      ++*(a1 + 8);
      if ((v16 + 24) != v20)
      {
        free(v20);
      }

      goto LABEL_28;
    }

    if ((v16 + 24) != v20)
    {
      v18[1] = v20;
      v22 = *(v16 + 20);
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 20) = 0;
      v20 = (v16 + 24);
LABEL_25:
      *(v16 + 16) = 0;
      goto LABEL_26;
    }

    if (v21 < 7)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v18 + 1), v18 + 3, *(v16 + 16), 8);
      v23 = *(v16 + 16);
      v20 = *(v16 + 8);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v21;
        goto LABEL_25;
      }

      v19 = v18[1];
    }

    memcpy(v19, v20, 8 * v23);
    v20 = *(v16 + 8);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 72 * v24 - 72;
    v27 = vdupq_n_s64(v26 / 0x48);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[9] = -4096;
      }

      v25 += 2;
      result += 18;
    }

    while (((v26 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(a2 + 48) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v26 = v4;
  if (v4)
  {
    Attr = mlir::Operation::getAttr(v4, "exec.coreml_model", 0x11uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v6 = mlir::Operation::getAttr(v4, "exec.has_model_context", 0x16uLL);
        if (!v6 || *(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v7 = *a1;
          v8 = *(*a1 + 8);
          if (v8 >= *(*a1 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(*a1, (v7 + 16), v8 + 1, 8);
            LODWORD(v8) = *(v7 + 8);
          }

          *(*v7 + 8 * v8) = v4;
          ++*(v7 + 8);
          *(llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::operator[](a1[1], &v26) + 2) = 0;
        }
      }
    }
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v11 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
    v12 = mlir::SymbolTable::lookup(a1[2], *(v11 + 16), *(v11 + 24));
    if (v12)
    {
      v13 = *(*(v12 + 48) + 16);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id ? v12 : 0;
      if (v13 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        v15 = a1[1];
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = *v15;
          v18 = 0x9DDFEA08EB382D69 * ((8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12));
          v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v18 >> 47) ^ v18);
          v20 = (v16 - 1) & (-348639895 * ((v19 >> 47) ^ v19));
          v21 = (v17 + 72 * v20);
          v22 = *v21;
          if (*v21 == v12)
          {
LABEL_21:
            if (v21 != (v17 + 72 * v16))
            {
              v23 = *(v21 + 4);
              if (v23 >= *(v21 + 5))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod((v21 + 1), v21 + 3, v23 + 1, 8);
                LODWORD(v23) = *(v21 + 4);
              }

              *(v21[1] + 8 * v23) = a2;
              ++*(v21 + 4);
            }
          }

          else
          {
            v24 = 1;
            while (v22 != -4096)
            {
              v25 = v20 + v24++;
              v20 = v25 & (v16 - 1);
              v21 = (v17 + 72 * v20);
              v22 = *v21;
              if (*v21 == v14)
              {
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

void mlir::func::FuncDialect::~FuncDialect(mlir::func::FuncDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

void *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(uint64_t a1)
{
  v5 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v6 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v2 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v6 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v3 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  v6 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
}

mlir::Operation *mlir::func::FuncDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, const char *a4, uint64_t a5)
{
  v27[8] = *MEMORY[0x277D85DE8];
  if (*(*a3 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || a3[3] || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 0;
  }

  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, *(**a5 + 32));
  if ((v11 & 1) == 0)
  {
    v20 = 1283;
    v18 = "func.constant";
    v19 = 13;
    v15 = 259;
    llvm::operator+(&__src, &v14, v21);
    llvm::report_fatal_error(v21, 1);
  }

  v21[0] = a5;
  v21[1] = v10;
  v21[2] = &v22;
  v21[3] = 0x400000000;
  v23[0] = v24;
  v23[1] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  __src = a4;
  *mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(v21) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v23, &__src, v17);
  v12 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a2, v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v21);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::func::CallIndirectOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(mlir::func::CallIndirectOp::getODSOperands(a1, 0) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
      return 0;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(v7 + 48) + 32))(*(v7 + 48), v8);
  if (!result)
  {
    return result;
  }

  v29 = v31;
  v30 = 0x100000000;
  mlir::Operation::fold(v7, 0, 0, &v29);
  v10 = *(*(*v29 & 0xFFFFFFFFFFFFFFF8) + 136);
  v11 = v10 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || (*v29 & 0xFFFFFFFFFFFFFFF8) == 0;
  if (v10 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v12 = *v29 & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 36);
  if (v13)
  {
    v14 = a1 - 16;
  }

  else
  {
    v14 = 0;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 68) - 1;
  }

  else
  {
    v15 = 0;
    v16 = -1;
  }

  v17 = *(a1 + 24);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, *(**v17 + 32));
  if ((v19 & 1) == 0)
  {
    v28 = 1283;
    v26 = "func.call";
    v27 = 9;
    v39 = 259;
    llvm::operator+(v25, v38, &v29);
    llvm::report_fatal_error(&v29, 1);
  }

  v29 = v17;
  v30 = v18;
  v31[0] = &v32;
  v31[1] = 0x400000000;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v34[4] = v35;
  v34[5] = 0x400000000;
  v35[8] = 4;
  v35[9] = v36;
  v35[10] = 0x100000000;
  v36[1] = v37;
  v36[2] = 0x100000000;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v37[4] = 0;
  v37[6] = 0;
  v25[0] = v14;
  v25[1] = 0;
  v26 = v14;
  v27 = v13;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v38, v25);
  v20 = v38[0];
  v21 = v38[1];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v31, (v15 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, 0, (v15 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v16);
  mlir::OperationState::addAttribute(&v29, "callee", 6, v12);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v33, v20, 0, v20, v21);
  v22 = mlir::Operation::create(&v29);
  mlir::OpBuilder::insert((a2 + 8), v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(&v29);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  (*(*a2 + 8))(a2, a1, v24);
  return 1;
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, const char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v14 = mlir::StringAttr::get(*a1, v17, a3);
  mlir::OperationState::addAttribute(a2, "sym_name", 8, v14);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  v16 = mlir::TypeAttr::get(a5);
  mlir::NamedAttrList::push_back(a2 + 112, v15, v16);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a6, &a6[16 * a7]);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::func::CallIndirectOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v13, "res_attrs", 9, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v14, a5);
  if (v14)
  {
    mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
    if (v14)
    {
      v13 = 261;
      v12[0] = a2;
      v12[1] = a3;
      mlir::Diagnostic::operator<<(v15, v12);
      if (v14)
      {
        mlir::Diagnostic::operator<<<63ul>(v15, "' failed to satisfy constraint: Array of dictionary attributes");
      }
    }
  }

  v7 = (v15[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  return v7;
}

uint64_t mlir::func::CallIndirectOp::getODSOperands(mlir::func::CallIndirectOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::func::CallIndirectOp::parse(uint64_t a1, uint64_t a2)
{
  v24[16] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v23[0] = v24;
  v23[1] = 0x400000000;
  v15[1] = 1;
  v16 = 0;
  v15[0] = &v16;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || (v12[0] = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v6 = *(a2 + 8), v20 = a1, v21[0] = v12, v21[1] = a2, !mlir::func::CallIndirectOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallIndirectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v20)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v20 = 0, !mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v20)))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v16 = v20;
  v14 = v20;
  if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v9 = (*(v20 + 16) + 8 * *(v20 + 8));
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v9, &v9[8 * *(v20 + 12)]);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v15, v4, a2 + 16))
    {
      v10 = *(*v15[0] + 8);
      v20 = *(*v15[0] + 16);
      v21[0] = v10;
      v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(a1, v23, &v20, v5, a2 + 16);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = (*(*a1 + 16))(a1);
  v13 = 257;
  (*(*a1 + 24))(&v20, a1, v7, v12);
  if (v20)
  {
    mlir::Diagnostic::operator<<<41ul>(v21, "'callee' must be function type, but got ");
    if (v20)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v21, &v14);
    }
  }

  v8 = (v22 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
LABEL_17:
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  v18 = a3[1];
  v19 = v6;
  if (v18 == v6)
  {
    if (v6)
    {
      v8 = *a2;
      v9 = *a3;
      v10 = 32 * v6;
      while (((*(*a1 + 728))(a1, v8, *v9, a5) & 1) != 0)
      {
        v8 += 32;
        ++v9;
        v10 -= 32;
        if (!v10)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v17[16] = 257;
    (*(*a1 + 24))(&v20, a1, a4, v17);
    if (v20)
    {
      mlir::Diagnostic::operator<<<48ul>(v21, "number of operands and types do not match: got ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v20, &v19);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v18);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
    }

    v11 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  return v11;
}

BOOL mlir::func::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v13, "callee", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v16, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v19, "res_attrs", 9, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a1[3])
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<64ul>(v12, "' failed to satisfy constraint: flat symbol reference attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "no_inline";
      v5[1] = 9;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<47ul>(v8, "' failed to satisfy constraint: unit attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::func::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v15 = 0;
  v16 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v17, v5))
  {
    goto LABEL_14;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 8) = v17;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v18, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v13[0] = a1, v13[1] = &v14, v13[2] = a2, mlir::func::CallOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v13[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v13)))
  {
    v10 = *(v13[0] + 8);
    v15 = *(v13[0] + 16);
    v16 = v10;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), (v15 + 8 * v10), (v15 + 8 * v10 + 8 * *(v13[0] + 12)));
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, &v15, v8, a2 + 16);
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v11;
}

BOOL mlir::func::ConstantOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::func::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  __src = v16;
  v15 = 0x100000000;
  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = *(a2 + 8);
  v11[0] = a1;
  v11[1] = &v12;
  v11[2] = a2;
  if (!mlir::func::ConstantOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11))
  {
    goto LABEL_11;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v11[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v11);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v13, v6))
  {
    goto LABEL_11;
  }

  if (v13)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
    *v8 = v13;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v15);
    v9 = 1;
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  if (__src != v16)
  {
    free(__src);
  }

  return v9;
}

uint64_t mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  *(result + 56) = v2[2];
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 72) = v7;
  *(result + 80) = v6;
  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "function_type";
      v5[1] = 13;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<64ul>(v8, "' failed to satisfy constraint: type attribute of function type");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<49ul>(v12, "' failed to satisfy constraint: string attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

void mlir::func::ReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::func::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v10 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  return v5;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(v5);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "func.call_indirect", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::func::CallIndirectOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E85F20;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9)
  {
    v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v7 = *(v4 + 64);
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_10;
      }

      v7 = *(v4 + 72);
    }

    v8 = v7 & 0xFFFFFFFFFFFFFF00;
    return v8 | v7;
  }

LABEL_10:
  LOBYTE(v7) = 0;
  v8 = 0;
  return v8 | v7;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    v5 = *(a3 + 16);
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *(v4 + 64) = v10;
    }

    else
    {
      v7 = *v5;
      v8 = *(v5 + 8);
      if (v7 == 0x727474615F736572 && v8 == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        *(v4 + 72) = v11;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "arg_attrs";
    v14 = 9;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "res_attrs";
    v14 = 9;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v22, a6, a2, a3);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v13;
        goto LABEL_18;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
  if (v15)
  {
    v16 = *(v14 + 8);
    if (v16)
    {
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v22, a6);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v16;
LABEL_18:
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
        v18 = v24 + 24 * v25;
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++v25;
LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
        return 0;
      }

      a3[1] = v16;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v19 = v21;
  v20 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v18 = 261;
    v16 = "arg_attrs";
    v17 = 9;
    v9 = mlir::StringAttr::get(v8, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v18 = 261;
    v16 = "res_attrs";
    v17 = 9;
    v12 = mlir::StringAttr::get(v11, &v16, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v19, v12, v10);
  }

  v13 = v19;
  if (v20)
  {
    v14 = mlir::DictionaryAttr::get(v3, v19, v20);
    v13 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v21)
  {
    free(v13);
  }

  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hashProperties(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable;
  v2[6] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgAttrsAttr;
  v2[7] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getResAttrsAttr;
  v2[8] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setArgAttrsAttr;
  v2[9] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setResAttrsAttr;
  v2[10] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::removeArgAttrsAttr;
  v2[11] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0xFFFFFFFFFFFFFFF8);
  v4 = *(a2 + 72);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    *v5 = *v4;
    if (v6)
    {
      *(v6 + 8) = v4[1];
    }
  }

  v4[3] = v3;
  v7 = *v3;
  *v4 = *v3;
  v4[1] = v3;
  if (v7)
  {
    *(v7 + 8) = v4;
  }

  *v3 = v4;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2 + 32;
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = ((*(a1 + 68) - 1) << 32) | 1;
  }

  else
  {
    v2 = 0xFFFFFFFF00000001;
  }

  *a2 = a1;
  a2[1] = v2;
  a2[2] = a2 + 4;
  *&result = 0x100000000;
  a2[3] = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::func::CallIndirectOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  ODSOperands = mlir::func::CallIndirectOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v11 = 40;
    ++*(v10 + 4);
  }

  v12 = mlir::func::CallIndirectOp::getODSOperands(a2, 1u);
  v14 = v13;
  v15 = (*(*a3 + 16))(a3);
  if (v14)
  {
    v16 = v15;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v17 = v14 - 1;
    if (v17)
    {
      v18 = (v12 + 56);
      do
      {
        v19 = *(v16 + 4);
        if (*(v16 + 3) - v19 > 1uLL)
        {
          *v19 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v20 = *v18;
        v18 += 4;
        (*(*a3 + 160))(a3, v20);
        --v17;
      }

      while (v17);
    }
  }

  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(v21 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v31, 0);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

  v28 = (*(*a3 + 16))(a3);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = mlir::func::CallIndirectOp::getODSOperands(a2, 0);
  (*(*a3 + 32))(a3, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants(mlir::func::CallIndirectOp *a1, mlir::Operation *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    v4 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1));
    v5 = *(v4 + 8);
    v6 = *(v4 + 9);
    v44 = a1;
    if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v5, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v44))
    {
      v44 = a1;
      if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v6, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v44))
      {
        ODSOperands = mlir::func::CallIndirectOp::getODSOperands(a1, 0);
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = ODSOperands + 24;
          do
          {
            v12 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
            v41 = v10;
            if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              v40 = 261;
              v39[0] = "operand";
              v39[1] = 7;
              mlir::Operation::emitOpError(&v44, a1, v39);
              if (v44)
              {
                mlir::Diagnostic::operator<<<3ul>(v45, " #");
              }

              v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v44, &v41);
              v14 = v13;
              if (*v13)
              {
                mlir::Diagnostic::operator<<<33ul>((v13 + 1), " must be function type, but got ");
                if (*v14)
                {
                  v42 = 4;
                  v43 = v12;
                  v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v42, 1);
                  v16 = v14[3] + 24 * *(v14 + 8);
                  v17 = *v15;
                  *(v16 + 16) = *(v15 + 16);
                  *v16 = v17;
                  ++*(v14 + 8);
                }
              }

              v18 = *(v14 + 200);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
              if (v18)
              {
                goto LABEL_35;
              }
            }

            ++v10;
            v11 += 32;
          }

          while (v9 != v10);
        }

        v19 = *(a1 + 9);
        v20 = *(*(mlir::func::CallIndirectOp::getODSOperands(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = *(v20 + 8);
        v22 = mlir::func::CallIndirectOp::getODSOperands(a1, 1u);
        if (v23 != v21)
        {
          goto LABEL_37;
        }

        if (v21)
        {
          v24 = 8 * v21;
          v25 = v22 + 24;
          v26 = *(v20 + 16);
          while (*v26 == (*(*v25 + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            ++v26;
            v25 += 32;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_21;
            }
          }

LABEL_37:
          v38 = "failed to verify that callee input types match argument types";
LABEL_39:
          v39[0] = v38;
          v40 = 259;
          mlir::Operation::emitOpError(&v44, a1, v39);
          v31 = v45[192] ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
          return v31 & 1;
        }

LABEL_21:
        if (v19)
        {
          v27 = (a1 - 16);
        }

        else
        {
          v27 = 0;
        }

        if (*(v20 + 12) != v19)
        {
LABEL_38:
          v38 = "failed to verify that callee result types match result types";
          goto LABEL_39;
        }

        if (!v19)
        {
          v31 = 1;
          return v31 & 1;
        }

        v28 = 0;
        v29 = 8 * v19;
        v30 = v27;
        v31 = 1;
        while (1)
        {
          v32 = v27;
          if (v28)
          {
            v33 = *(a1 - 1) & 7;
            v34 = (a1 - 16);
            v35 = v28;
            if (v33 == 6)
            {
              goto LABEL_31;
            }

            v36 = (5 - v33);
            v32 = v30;
            v35 = v28 - v36;
            if (v28 > v36)
            {
              break;
            }
          }

LABEL_32:
          if (*(*(v20 + 16) + 8 * v21 + 8 * v28) != (*(v32 + 1) & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_38;
          }

          ++v28;
          v30 -= 4;
          v29 -= 8;
          if (!v29)
          {
            return v31 & 1;
          }
        }

        v34 = &v27[-4 * v36];
LABEL_31:
        v32 = &v34[-6 * v35];
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v31 = 0;
  return v31 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "func.call", 9, a2, &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E85FE8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_21;
    }

    v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_24;
  }

  if (a4 == 9)
  {
    if (*a3 != 0x727474615F677261 || *(a3 + 8) != 115)
    {
      if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
      {
        v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_21;
        }

        v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      }
    }

LABEL_24:
    v9 = *v4;
    v10 = v9 & 0xFFFFFFFFFFFFFF00;
    v9 = v9;
    return v10 | v9;
  }

LABEL_21:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 6)
  {
    v12 = *v5;
    v13 = *(v5 + 2);
    if (v12 == 1819042147 && v13 == 25957)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v15 = 0;
        }

        else
        {
          v15 = a4;
        }
      }

      else
      {
        v15 = 0;
      }

      v4[9] = v15;
    }
  }

  else if (v6 == 9)
  {
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v4[8] = v16;
    }

    else if (*v5 == 0x6E696C6E695F6F6ELL && *(v5 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v4[10] = v17;
    }

    else
    {
      v9 = *v5;
      v10 = *(v5 + 8);
      if (v9 == 0x727474615F736572 && v10 == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v4[11] = v18;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "arg_attrs";
    v20 = 9;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "callee";
    v20 = 6;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v21 = 261;
    v19 = "no_inline";
    v20 = 9;
    v15 = mlir::StringAttr::get(v14, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v21 = 261;
    v19 = "res_attrs";
    v20 = 9;
    v18 = mlir::StringAttr::get(v17, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }
}

double mlir::RegisteredOperationName::Model<mlir::func::CallOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v27, a6, a2, a3);
    if (v27)
    {
      mlir::Diagnostic::operator<<<42ul>(v28, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v27, a6);
        if (!v27)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v16)
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v13[3])
      {
        a5(&v27, a6);
        if (!v27)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

      a3[1] = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
  if ((v18 & 1) == 0 || (v13 = *(v17 + 8)) == 0)
  {
LABEL_29:
    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v23)
    {
      v24 = *(v22 + 8);
      if (v24)
      {
        if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v27, a6);
          if (!v27)
          {
            goto LABEL_4;
          }

          if (!v27)
          {
            goto LABEL_4;
          }

          v25 = 0;
          v26 = v24;
          goto LABEL_27;
        }

        a3[3] = v24;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a3[2] = v13;
    goto LABEL_29;
  }

  a5(&v27, a6);
  if (!v27)
  {
    goto LABEL_4;
  }

LABEL_24:
  mlir::Diagnostic::operator<<<55ul>(v28, v14);
LABEL_25:
  if (v27)
  {
    v25 = 0;
    v26 = v13;
LABEL_27:
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
    v20 = v29 + 24 * v30;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v30;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v25 = v27;
  v26 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v24 = 261;
    v22 = "arg_attrs";
    v23 = 9;
    v9 = mlir::StringAttr::get(v8, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v24 = 261;
    v22 = "callee";
    v23 = 6;
    v12 = mlir::StringAttr::get(v11, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v24 = 261;
    v22 = "no_inline";
    v23 = 9;
    v15 = mlir::StringAttr::get(v14, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v24 = 261;
    v22 = "res_attrs";
    v23 = 9;
    v18 = mlir::StringAttr::get(v17, &v22, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v25, v18, v16);
  }

  v19 = v25;
  if (v26)
  {
    v20 = mlir::DictionaryAttr::get(v3, v25, v26);
    v19 = v25;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != v27)
  {
    free(v19);
  }

  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::CallOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hashProperties(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v16 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[3];
  v8 = 8 * a2[2] - 0xAE502812AA7333;
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ ((0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))));
  v14 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  v5 = v4[11];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable;
  v2[6] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgAttrsAttr;
  v2[7] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getResAttrsAttr;
  v2[8] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setArgAttrsAttr;
  v2[9] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setResAttrsAttr;
  v2[10] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::removeArgAttrsAttr;
  v2[11] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "callee", 6uLL);
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      result &= ~4uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "callee", 6uLL);
  if (!Attr || (v7 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id) || Attr[3])
  {
    v8 = "requires a 'callee' symbol reference attribute";
LABEL_5:
    v38[0] = v8;
    v39 = 259;
    mlir::Operation::emitOpError(&v40, a2, v38);
LABEL_6:
    v9 = v42;
LABEL_7:
    v10 = v9 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    return v10 & 1;
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, v6);
  if (!NearestSymbolTable || (v13 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v7)) == 0 || *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v37 = 257;
    mlir::Operation::emitOpError(&v40, a2, v36);
    if (v40)
    {
      mlir::Diagnostic::operator<<<2ul>(v41, "'");
      if (v40)
      {
        v14 = *(v7[1] + 16);
        v15 = *(v7[1] + 24);
        v39 = 261;
        v38[0] = v14;
        v38[1] = v15;
        mlir::Diagnostic::operator<<(v41, v38);
        if (v40)
        {
          mlir::Diagnostic::operator<<<38ul>(v41, "' does not reference a valid function");
        }
      }
    }

    goto LABEL_6;
  }

  v16 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 72) + 8);
  v17 = *(v16 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v18 = *(a2 + 68);
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v18)
  {
    v8 = "incorrect number of operands for callee";
    goto LABEL_5;
  }

  if (v17)
  {
    v19 = *(a2 + 72);
    v20 = *(v16 + 16);
    if (*v20 != (*(*(v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v21 = 0;
      v22 = 0;
LABEL_27:
      v35 = v21;
      v38[0] = "operand type mismatch: expected operand type ";
      v39 = 259;
      mlir::Operation::emitOpError(&v40, a2, v38);
      v36[0] = *(*(v16 + 16) + 8 * v22);
      if (v40 && (mlir::Diagnostic::operator<<<mlir::Type>(v41, v36), v40))
      {
        mlir::Diagnostic::operator<<<16ul>(v41, ", but provided ");
        v34 = *(*(*(a2 + 72) + 32 * v22 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v40)
        {
          mlir::Diagnostic::operator<<<mlir::Type>(v41, &v34);
          if (v40)
          {
            mlir::Diagnostic::operator<<<21ul>(v41, " for operand number ");
          }
        }
      }

      else
      {
        v34 = *(*(*(a2 + 72) + 32 * v22 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v40, &v35) + 200);
      goto LABEL_7;
    }

    v22 = 0;
    v23 = v20 + 1;
    v24 = (v19 + 56);
    while (v17 - 1 != v22)
    {
      v25 = *v24;
      v24 += 4;
      v26 = v23[v22++];
      if (v26 != (*(v25 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v21 = v22;
        goto LABEL_27;
      }
    }
  }

  v27 = *(v16 + 12);
  if (v27 != *(a2 + 36))
  {
    v8 = "incorrect number of results for callee";
    goto LABEL_5;
  }

  if (v27)
  {
    v28 = 0;
    v29 = *(v16 + 16) + 8 * v17;
    v30 = a2 + 24;
    v31 = a2 - 16;
    do
    {
      if (v28 >= 6)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      if (*(v29 + 8 * v28) != (*(v32 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        LODWORD(v34) = v28;
        v36[0] = "result type mismatch at index ";
        v37 = 259;
        mlir::Operation::emitOpError(v38, a2, v36);
        v33 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v38, &v34);
        mlir::InFlightDiagnostic::InFlightDiagnostic(&v40, v33);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
        mlir::Diagnostic::attachNote(v41, 0, 0);
      }

      ++v28;
      v31 -= 16;
      v30 -= 24;
    }

    while (v27 != v28);
  }

  v10 = 1;
  return v10 & 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[189];
}

uint64_t llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>();
    unk_27FC19600 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::MemRefsNormalizable<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*a3 + 16))(a3);
  if (v11)
  {
    v14 = v13;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a3 + 160))(a3, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v34 = v36;
  v35 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v34, "callee", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, v35);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++*(v24 + 4);
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v28 = *(a2 + 68);
    v29 = *(a2 + 72);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v33[0] = v29;
  v33[1] = 0;
  v33[2] = v29;
  v33[3] = v28;
  v30 = *(a2 + 36);
  v31 = a2 - 16;
  if (!v30)
  {
    v31 = 0;
  }

  v32[0] = v31;
  v32[1] = 0;
  v32[2] = v31;
  v32[3] = v30;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, v33, v32);
  if (v34 != v36)
  {
    free(v34);
  }
}

uint64_t mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_8;
  }

  v4 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1));
  v7 = *(v4 + 8);
  v5 = *(v4 + 9);
  v6 = v4 + 16;
  if (!v5)
  {
    v12 = "requires attribute 'callee'";
    v13 = 259;
    mlir::Operation::emitOpError(v14, a1, &v12);
    v10 = v15 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    return v10 & 1;
  }

  v8 = *(v6 + 2);
  v9 = *(v6 + 3);
  v14[0] = a1;
  if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = a1, mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v7, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)) && (v14[0] = a1, mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v9, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)))
  {
    v14[0] = a1;
    v10 = mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "func.constant", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E860B0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v8 = 0;
        }

        else
        {
          v8 = a4;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v12[3])
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "value";
  v10[1] = 5;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(a2 - 8);
  v9 = *(***(a2 + 24) + 32);
  v22 = 261;
  v20 = v6;
  v21[0] = v7;
  v10 = mlir::StringAttr::get(v9, &v20, a3);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, v11);
  if (!NearestSymbolTable || (v13 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v10)) == 0 || *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v17 = 257;
    mlir::Operation::emitOpError(&v20, a2, v16);
    if (v20)
    {
      mlir::Diagnostic::operator<<<34ul>(v21, "reference to undefined function '");
      if (v20)
      {
        v19 = 261;
        v18[0] = v6;
        v18[1] = v7;
        mlir::Diagnostic::operator<<(v21, v18);
        if (v20)
        {
          mlir::Diagnostic::operator<<<2ul>(v21, "'");
        }
      }
    }

    goto LABEL_11;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFF8) != *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 72) + 8))
  {
    v18[0] = "reference to function with mismatched type";
    v19 = 259;
    mlir::Operation::emitOpError(&v20, a2, v18);
LABEL_11:
    v14 = v23 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v5 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v27 = v29;
  v28 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, v28);
  v8 = (*(*a3 + 16))(a3);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a3 + 48))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = *(a2 + 9);
  if (v16)
  {
    v17 = (a2 - 16);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v16 != 1)
    {
      v18 = v17 - 4;
      v19 = 1;
      while (1)
      {
        v20 = (*(*a3 + 16))(a3);
        v21 = *(v20 + 4);
        if (*(v20 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v20 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v20, ", ", 2uLL);
        }

        v22 = *(a2 - 1) & 7;
        v23 = v17;
        v24 = v19;
        if (v22 == 6)
        {
          goto LABEL_25;
        }

        v25 = (5 - v22);
        v26 = v18;
        v24 = v19 - v25;
        if (v19 > v25)
        {
          break;
        }

LABEL_26:
        (*(*a3 + 32))(a3, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v19;
        v18 -= 4;
        if (v16 == v19)
        {
          goto LABEL_27;
        }
      }

      v23 = &v17[-4 * v25];
LABEL_25:
      v26 = &v23[-6 * v24];
      goto LABEL_26;
    }
  }

LABEL_27:
  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
    if (v6)
    {
      v11[0] = a1;
      v7 = mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v11);
    }

    else
    {
      v9 = "requires attribute 'value'";
      v10 = 259;
      mlir::Operation::emitOpError(v11, a1, &v9);
      v7 = v12 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "func.func", 9, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86178;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 12)
  {
    if (a4 == 13)
    {
      if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
      {
        goto LABEL_32;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_35;
    }

    v6 = 0;
    if (a4 == 14)
    {
      if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
      {
        goto LABEL_32;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      goto LABEL_35;
    }
  }

  else
  {
    if (a4 == 8)
    {
      if (*a3 != 0x656D616E5F6D7973)
      {
LABEL_32:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
LABEL_35:
      v12 = *v5;
      v6 = v12 & 0xFFFFFFFFFFFFFF00;
      v4 = v12;
      return v6 | v4;
    }

    v6 = 0;
    if (a4 == 9)
    {
      if (*a3 != 0x727474615F677261 || *(a3 + 8) != 115)
      {
        if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
        {
          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        }

        else
        {
          if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
          {
            goto LABEL_32;
          }

          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        }
      }

      goto LABEL_35;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 > 12)
  {
    if (v6 == 13)
    {
      v17 = *v5;
      v18 = *(v5 + 5);
      if (v17 == 0x6E6F6974636E7566 && v18 == 0x657079745F6E6F69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v20 = a4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v4[9] = v20;
      }
    }

    else if (v6 == 14)
    {
      v13 = *v5;
      v14 = *(v5 + 6);
      if (v13 == 0x697369765F6D7973 && v14 == 0x7974696C69626973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v4[13] = v22;
      }
    }
  }

  else if (v6 == 8)
  {
    if (*v5 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v4[12] = v16;
    }
  }

  else if (v6 == 9)
  {
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v21 = a4;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v4[8] = v21;
    }

    else if (*v5 == 0x6E696C6E695F6F6ELL && *(v5 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v23 = a4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v4[10] = v23;
    }

    else
    {
      v9 = *v5;
      v10 = *(v5 + 8);
      if (v9 == 0x727474615F736572 && v10 == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v4[11] = v12;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "arg_attrs";
    v26 = 9;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "function_type";
    v26 = 13;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "no_inline";
    v26 = 9;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "res_attrs";
    v26 = 9;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "sym_name";
    v26 = 8;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "sym_visibility";
    v26 = 14;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v11, "arg_attrs", 9, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(v14, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v17, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0 || (v20 = v18[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v20, "res_attrs", 9, a4, a5))
        {
          v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
          if ((v22 & 1) == 0 || (v23 = v21[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v23, "sym_name", 8, a4, a5))
          {
            v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
            if ((v25 & 1) == 0)
            {
              return 1;
            }

            v26 = v24[1];
            if (!v26 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v26, "sym_visibility", 0xE, a4, a5))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v31, a6, a2, a3);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        (a5)(&v31, a6);
        if (v31)
        {
LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v32, v14);
LABEL_30:
          if (v31)
          {
            LODWORD(v30[0]) = 0;
            v30[1] = v13;
            v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, v30, 1);
            v22 = v33 + 24 * v34;
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            ++v34;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_type", 0xDuLL);
  if (v16)
  {
    v13 = *(v15 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        (a5)(&v31, a6);
        if (v31)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a3[1] = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
  if ((v18 & 1) == 0 || (v13 = *(v17 + 8)) == 0)
  {
LABEL_24:
    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v20)
    {
      v13 = *(v19 + 8);
      if (v13)
      {
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (v31)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }

        a3[3] = v13;
      }
    }

    v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v25)
    {
      v26 = *(v24 + 8);
      v30[0] = v26;
      if (v26)
      {
        if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

LABEL_44:
          if (v31)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v32, v30);
          }

          goto LABEL_4;
        }

        a3[4] = v26;
      }
    }

    v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_visibility", 0xEuLL);
    if (v28)
    {
      v29 = *(v27 + 8);
      v30[0] = v29;
      if (v29)
      {
        if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          (a5)(&v31, a6);
          if (!v31)
          {
            goto LABEL_4;
          }

          goto LABEL_44;
        }

        a3[5] = v29;
      }
    }

    return 1;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a3[2] = v13;
    goto LABEL_24;
  }

  (a5)(&v31, a6);
  if (v31)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v31 = v33;
  v32 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v30 = 261;
    v28 = "arg_attrs";
    v29 = 9;
    v9 = mlir::StringAttr::get(v8, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v30 = 261;
    v28 = "function_type";
    v29 = 13;
    v12 = mlir::StringAttr::get(v11, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v30 = 261;
    v28 = "no_inline";
    v29 = 9;
    v15 = mlir::StringAttr::get(v14, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v30 = 261;
    v28 = "res_attrs";
    v29 = 9;
    v18 = mlir::StringAttr::get(v17, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v30 = 261;
    v28 = "sym_name";
    v29 = 8;
    v21 = mlir::StringAttr::get(v20, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v30 = 261;
    v28 = "sym_visibility";
    v29 = 14;
    v24 = mlir::StringAttr::get(v23, &v28, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v31, v24, v22);
  }

  v25 = v31;
  if (v32)
  {
    v26 = mlir::DictionaryAttr::get(v3, v31, v32);
    v25 = v31;
  }

  else
  {
    v26 = 0;
  }

  if (v25 != v33)
  {
    free(v25);
  }

  return v26;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hashProperties(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v23 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v21 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[5];
  v14 = 8 * a2[4] - 0xAE502812AA7333;
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[4]) ^ ((0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))));
  v19 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v24, 0, v24, v25, &v23, &v22, &v21, &v20, &v19, &v18);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(mlir::detail::InterfaceMap *a1@<X8>)
{
  *a1 = a1 + 16;
  *(a1 + 1) = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 16))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion(uint64_t a1, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 == v2)
  {
    return 0;
  }

  else
  {
    return ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(mlir::detail::InterfaceMap *a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getFunctionType;
  *(v2 + 1) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setFunctionTypeAttr;
  *(v2 + 2) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith;
  *(v2 + 3) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyBody;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyType;
  mlir::detail::FunctionOpInterfaceInterfaceTraits::Concept::initializeInterfaceConcept(v2, a1);
  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *(***(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8) + 32);
  *&v9 = a3;
  *(&v9 + 1) = a4;
  *&v8 = a5;
  *(&v8 + 1) = a6;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v9, &v8);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(mlir::Operation *a1)
{
  v27[26] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  v2 = (a1 + 16 * ((v1 >> 23) & 1) + 64);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  if (*v3 == v3)
  {
    return 1;
  }

  v4 = *(*(v2 + 1) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 8);
  v7 = v3[1];
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v24 = v6;
  v10 = v8 + 48;
  v9 = *(v8 + 48);
  if (v6 != ((*(v10 + 8) - v9) >> 3))
  {
    v25[0] = "entry block must have ";
    v26 = 259;
    mlir::Operation::emitOpError(v27, a1, v25);
    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v24);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<39ul>((v15 + 1), " arguments to match function signature");
    }

LABEL_14:
    v13 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
    return v13 & 1;
  }

  if (v6)
  {
    v11 = 0;
    while (1)
    {
      v12 = (*(*(v9 + 8 * v11) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(v5 + 8 * v11) != v12)
      {
        break;
      }

      if (v6 == ++v11)
      {
        goto LABEL_10;
      }
    }

    v23 = v11;
    v21 = "type of entry block argument #";
    v22 = 259;
    mlir::Operation::emitOpError(v27, a1, &v21);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v23);
    v16 = v17;
    if (*v17)
    {
      v26 = 264;
      LOBYTE(v25[0]) = 40;
      mlir::Diagnostic::operator<<((v17 + 1), v25);
      if (*v16)
      {
        LODWORD(v25[0]) = 4;
        v25[1] = v12;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), v25, 1);
        v19 = v16[3] + 24 * *(v16 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v16 + 8);
        if (*v16)
        {
          mlir::Diagnostic::operator<<<56ul>((v16 + 1), ") must match the type of the corresponding argument in ");
          if (*v16)
          {
            mlir::Diagnostic::operator<<<20ul>((v16 + 1), "function signature(");
            if (*v16)
            {
              mlir::Diagnostic::operator<<<mlir::Type const&>((v16 + 1), (v5 + 8 * v23));
              if (*v16)
              {
                v26 = 264;
                LOBYTE(v25[0]) = 41;
                mlir::Diagnostic::operator<<((v16 + 1), v25);
              }
            }
          }
        }
      }
    }

    goto LABEL_14;
  }

LABEL_10:
  v13 = 1;
  return v13 & 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[12] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[204];
}

uint64_t llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>();
    *algn_27FC19678 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AutomaticAllocationScope<Empty>]";
  v6 = 108;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v8 = *(*(a2 + 6) + 96);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = v8[3];

  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, v11, v12, v9, v13);
}

uint64_t mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_28;
  }

  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v6 + 8);
  if (!v7)
  {
    v14 = "requires attribute 'function_type'";
    goto LABEL_16;
  }

  v8 = *(v6 + 32);
  if (!v8)
  {
    v14 = "requires attribute 'sym_name'";
LABEL_16:
    v26[0] = v14;
    v27 = 259;
    mlir::Operation::emitOpError(v28, a1, v26);
    v15 = v29;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v9 = *v6;
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v12, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v9, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

  v28[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
  {
    goto LABEL_28;
  }

LABEL_17:
  if (mlir::detail::verifySymbol(a1, v13))
  {
    v17 = (((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    if (*v17 == v17 && !mlir::SymbolTable::getSymbolVisibility(a1, v16))
    {
      v22 = "symbol declaration cannot have public visibility";
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if (((*(**(v20 + 48) + 32))(*(v20 + 48), v21) & 1) != 0 || *(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_30;
      }

      v22 = "symbol's parent must have the SymbolTable trait";
    }

    v26[0] = v22;
    v27 = 259;
    mlir::Operation::emitOpError(v28, a1, v26);
    v23 = v29;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_30:
    v24 = mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(a1);
    return v24 & 1;
  }

LABEL_28:
  v24 = 0;
  return v24 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(mlir::Operation *this)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = this + 64;
  v3 = *(this + 11);
  v4 = (v3 >> 23) & 1;
  v5 = *(this + 2 * v4 + 8);
  if (v5)
  {
    v42 = *(*(*&v2[16 * v4 + 8] + 8) + 8);
    if (*(v5 + 16) != v42)
    {
      v41 = 257;
      mlir::Operation::emitOpError(&v43, this, v40);
      if (v43)
      {
        mlir::Diagnostic::operator<<<111ul>(v44, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      }

      goto LABEL_45;
    }

    if (v42)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6;
        v8 = *(*(v5 + 8) + 8 * v6);
        if (!v8 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          break;
        }

        v9 = v8[2];
        if (v9)
        {
          v10 = v8[1];
          v11 = &v10[2 * v9];
          while (1)
          {
            v12 = *v10;
            v13 = *(*v10 + 24);
            if (!v13)
            {
              break;
            }

            v14 = v10[1];
            v15 = *(v12 + 16);
            v16 = memchr(v15, 46, v13);
            if (!v16 || v16 - v15 == -1)
            {
              break;
            }

            v18 = *(v12 + 32);
            if (v18 && ((*(*v18 + 80))(v18, this, 0, v7, v12, v14) & 1) == 0)
            {
LABEL_56:
              v38 = 0;
              return v38 & 1;
            }

            v10 += 2;
            if (v10 == v11)
            {
              goto LABEL_17;
            }
          }

          v36 = "arguments may only have dialect attributes";
LABEL_51:
          v40[0] = v36;
          v41 = 259;
          mlir::Operation::emitOpError(&v43, this, v40);
          goto LABEL_52;
        }

LABEL_17:
        v6 = v7 + 1;
        if (v7 + 1 == v42)
        {
          v3 = *(this + 11);
          v4 = (v3 >> 23) & 1;
          goto LABEL_19;
        }
      }

      v41 = 257;
      mlir::Operation::emitOpError(&v43, this, v40);
      if (!v43)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

LABEL_19:
  v5 = *&v2[16 * v4 + 24];
  if (!v5)
  {
    goto LABEL_37;
  }

  v19 = *(*(*&v2[16 * ((v3 >> 23) & 1) + 8] + 8) + 12);
  v42 = v19;
  if (*(v5 + 16) != v19)
  {
    v41 = 257;
    mlir::Operation::emitOpError(&v43, this, v40);
    if (v43)
    {
      mlir::Diagnostic::operator<<<107ul>(v44, "expects result attribute array to have the same number of elements as the number of function results, got ");
    }

LABEL_45:
    v39 = *(v5 + 16);
    v33 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v43, &v39);
    v34 = v33;
    if (*v33)
    {
      mlir::Diagnostic::operator<<<16ul>((v33 + 1), ", but expected ");
    }

    v35 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(v34, &v42) + 200);
LABEL_53:
    v38 = v35 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    return v38 & 1;
  }

  if (v19)
  {
    v20 = 0;
    while (1)
    {
      v7 = v20;
      v21 = *(*(v5 + 8) + 8 * v20);
      if (!v21 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        break;
      }

      v22 = v21[2];
      if (v22)
      {
        v23 = v21[1];
        v24 = &v23[2 * v22];
        while (1)
        {
          v25 = *v23;
          v26 = *(*v23 + 24);
          if (!v26)
          {
            break;
          }

          v27 = v23[1];
          v28 = *(v25 + 16);
          v29 = memchr(v28, 46, v26);
          if (!v29 || v29 - v28 == -1)
          {
            break;
          }

          v31 = *(v25 + 32);
          if (v31 && ((*(*v31 + 88))(v31, this, 0, v7, v25, v27) & 1) == 0)
          {
            goto LABEL_56;
          }

          v23 += 2;
          if (v23 == v24)
          {
            goto LABEL_35;
          }
        }

        v36 = "results may only have dialect attributes";
        goto LABEL_51;
      }

LABEL_35:
      v20 = v7 + 1;
      if (v7 + 1 == v19)
      {
        LODWORD(v3) = *(this + 11);
        goto LABEL_37;
      }
    }

    v41 = 257;
    mlir::Operation::emitOpError(&v43, this, v40);
    if (!v43)
    {
      goto LABEL_52;
    }

LABEL_61:
    v39 = *(*(v5 + 8) + 8 * v7);
    if (v43)
    {
      mlir::Diagnostic::operator<<<mlir::Attribute>(v44, &v39);
      if (v43)
      {
      }
    }

LABEL_52:
    v35 = v45;
    goto LABEL_53;
  }

LABEL_37:
  if ((v3 & 0x7FFFFF) != 1)
  {
    v40[0] = "expects one region";
    v41 = 259;
    mlir::Operation::emitOpError(&v43, this, v40);
    v37 = (v45 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    return v37;
  }

  return mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(this);
}

void *mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "func.return", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E86240;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(InterfaceFor + 16);

  return v5();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[13] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1EFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EFF0))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>();
    _MergedGlobals_31 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1EFF0);
  }

  v10[4] = _MergedGlobals_31;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[12] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F008))
  {
    qword_27FC1EFF8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>();
    unk_27FC1F000 = v1;
    __cxa_guard_release(&qword_27FC1F008);
  }

  return qword_27FC1EFF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<Empty>]";
  v6 = 119;
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

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[221];
}

uint64_t llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>();
    unk_27FC19700 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ReturnLike<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v31, 0);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
      v11 = *(a2 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = (*(*a3 + 16))(a3);
    if (v10)
    {
      v13 = v12;
      (*(*a3 + 160))(a3, *(v11 + 24));
      v14 = v10 - 1;
      if (v14)
      {
        v15 = (v11 + 56);
        do
        {
          v16 = *(v13 + 4);
          if (*(v13 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v13 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v13, ", ", 2uLL);
          }

          v17 = *v15;
          v15 += 4;
          (*(*a3 + 160))(a3, v17);
          --v14;
        }

        while (v14);
      }
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if (*(v20 + 3) == v21)
    {
      llvm::raw_ostream::write(v20, ":", 1uLL);
    }

    else
    {
      *v21 = 58;
      ++*(v20 + 4);
    }

    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v24 = *(a2 + 68);
      if (v24)
      {
        v25 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v25 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v24 != 1)
        {
          v26 = v24 - 1;
          v27 = (v25 + 56);
          do
          {
            v28 = (*(*a3 + 16))(a3);
            v29 = *(v28 + 4);
            if (*(v28 + 3) - v29 > 1uLL)
            {
              *v29 = 8236;
              *(v28 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v28, ", ", 2uLL);
            }

            v30 = *v27;
            v27 += 4;
            (*(*a3 + 32))(a3, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v26;
          }

          while (v26);
        }
      }
    }
  }
}

uint64_t mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v48 = 257;
    mlir::Operation::emitOpError(&v52, a1, v47);
    if (v52)
    {
      mlir::Diagnostic::operator<<<19ul>(v53, "expects parent op ");
      if (v52)
      {
        v49 = "'";
        v51 = 259;
        mlir::Diagnostic::operator<<(v53, &v49);
        if (v52)
        {
          v51 = 262;
          v49 = "func.func";
          v50 = 9;
          mlir::Diagnostic::operator<<(v53, &v49);
          if (v52)
          {
            mlir::Diagnostic::operator<<<2ul>(v53, "'");
          }
        }
      }
    }

    v9 = v56;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v52);
    if (v9)
    {
      goto LABEL_18;
    }
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    v10 = *(a1 + 16);
    if (v10 && (v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = 0;
    }

    v15 = *(*(v12 + 16 * ((*(v12 + 44) >> 23) & 1) + 72) + 8);
    v16 = *(v15 + 12);
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v17 = *(a1 + 68);
    }

    else
    {
      v17 = 0;
    }

    if (v17 != v16)
    {
      v47[0] = "has ";
      v48 = 259;
      mlir::Operation::emitOpError(&v52, a1, v47);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v21 = *(a1 + 68);
      }

      else
      {
        v21 = 0;
      }

      if (v52)
      {
        LODWORD(v49) = 5;
        v50 = v21;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v54, &v49, 1);
        v23 = v54 + 24 * v55;
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++v55;
        if (v52)
        {
          mlir::Diagnostic::operator<<<37ul>(v53, " operands, but enclosing function (@");
        }
      }

      Attr = mlir::Operation::getAttr(v12, "sym_name", 8uLL);
      if (Attr)
      {
        if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v26 = Attr;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      if (v52)
      {
        v29 = v26 + 16;
        v27 = *(v26 + 16);
        v28 = *(v29 + 8);
        v51 = 261;
        v49 = v27;
        v50 = v28;
        mlir::Diagnostic::operator<<(v53, &v49);
        if (v52)
        {
          mlir::Diagnostic::operator<<<11ul>(v53, ") returns ");
        }
      }

      v49 = v16;
      v30 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(&v52, &v49) + 200);
LABEL_60:
      v13 = v30 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v52);
      return v13 & 1;
    }

    if (v16)
    {
      v18 = 0;
      v19 = *(v15 + 16) + 8 * *(v15 + 8);
      v20 = *(a1 + 72) + 24;
      while (*(v19 + 8 * v18) == (*(*v20 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        ++v18;
        v20 += 32;
        if (v16 == v18)
        {
          goto LABEL_28;
        }
      }

      v46 = v18;
      v48 = 257;
      mlir::Operation::emitError(&v52, a1, v47);
      if (v52)
      {
        mlir::Diagnostic::operator<<<24ul>(v53, "type of return operand ");
      }

      v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v52, &v46);
      v32 = v31;
      if (*v31)
      {
        mlir::Diagnostic::operator<<<3ul>((v31 + 1), " (");
        if (*v32)
        {
          v33 = *(*(*(a1 + 72) + 32 * v46 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          LODWORD(v49) = 4;
          v50 = v33;
          v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v49, 1);
          v35 = v32[3] + 24 * *(v32 + 8);
          v36 = *v34;
          *(v35 + 16) = *(v34 + 16);
          *v35 = v36;
          ++*(v32 + 8);
          if (*v32)
          {
            mlir::Diagnostic::operator<<<39ul>((v32 + 1), ") doesn't match function result type (");
            if (*v32)
            {
              v37 = *(v19 + 8 * v46);
              LODWORD(v49) = 4;
              v50 = v37;
              v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v49, 1);
              v39 = v32[3] + 24 * *(v32 + 8);
              v40 = *v38;
              *(v39 + 16) = *(v38 + 16);
              *v39 = v40;
              ++*(v32 + 8);
              if (*v32)
              {
                mlir::Diagnostic::operator<<<2ul>((v32 + 1), ")");
                if (*v32)
                {
                  mlir::Diagnostic::operator<<<15ul>((v32 + 1), " in function @");
                }
              }
            }
          }
        }
      }

      v41 = mlir::Operation::getAttr(v12, "sym_name", 8uLL);
      if (v41)
      {
        if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      if (*v32)
      {
        v45 = v42 + 16;
        v43 = *(v42 + 16);
        v44 = *(v45 + 8);
        v51 = 261;
        v49 = v43;
        v50 = v44;
        mlir::Diagnostic::operator<<((v32 + 1), &v49);
      }

      v30 = *(v32 + 200);
      goto LABEL_60;
    }

LABEL_28:
    v13 = 1;
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::InsertIntoBucketImpl<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    *(result + 8) = a2[1];
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v6 == v13)
    {
      result = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -4096 || v13 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == -8192;
        }

        if (v18 && v12 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v12 = *v11;
        v13 = v11[1];
        if (v5 == *v11 && v6 == v13)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::InsertIntoBucketImpl<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_8;
  }

  if (v6 + ~v5 - *(a1 + 12) <= v6 >> 3)
  {
LABEL_8:
    llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v8);
    v5 = *(a1 + 8);
    a3 = v8;
  }

  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096 || a3[1] != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {

    memset_pattern16(buffer, &unk_25D0A07E0, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_25D0A07E0, 16 * v6);
  }

  while (a2 != a3)
  {
    v7 = a2[1];
    if ((*a2 != -4096 || v7 != -4096) && (*a2 != -8192 || v7 != -8192))
    {
      v9 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v9);
      v8 = v9;
      *v9 = *a2;
      v8[1] = a2[1];
      ++*(a1 + 8);
    }

    a2 += 2;
  }
}

__guard mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>();
      mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[226];
}

uint64_t llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>()
{
  {
    llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ConvertToLLVMPatternInterface>();
    *algn_27FC19728 = v1;
  }

  return llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ConvertToLLVMPatternInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConvertToLLVMPatternInterface]";
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

__guard mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>();
      mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[231];
}

uint64_t llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>()
{
  {
    llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::bufferization::BufferizableOpInterface>();
    unk_27FC19750 = v1;
  }

  return llvm::getTypeName<mlir::bufferization::BufferizableOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::bufferization::BufferizableOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::bufferization::BufferizableOpInterface]";
  v6 = 106;
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

__n128 llvm::interleave<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = a1[1];
  v5 = a1[3];
  if (v4 == v5)
  {
    return result;
  }

  v9 = *a1;
  if (v4)
  {
    v10 = *(v9 + 8) & 7;
    if (v9)
    {
      v11 = v10 == 6;
    }

    else
    {
      v11 = 1;
    }

    v12 = *a1;
    v13 = a1[1];
    if (v11)
    {
      goto LABEL_9;
    }

    v14 = (5 - v10);
    v13 = v4 - v14;
    if (v4 > v14)
    {
      v12 = v9 - 16 * v14;
LABEL_9:
      v15 = v12 - 24 * v13;
      goto LABEL_12;
    }

    v15 = v9 - 16 * v4;
  }

  else
  {
    v15 = *a1;
  }

LABEL_12:
  v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v32) = 4;
  v33 = v16;
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a2 + 16, &v32, 1);
  v18 = (*(a2 + 16) + 24 * *(a2 + 24));
  result = *v17;
  v18[1].n128_u64[0] = v17[1].n128_u64[0];
  *v18 = result;
  ++*(a2 + 24);
  v20 = v4 + 1;
  if (v4 + 1 != v5)
  {
    v21 = v9 - 16 * v4 - 16;
    do
    {
      v22 = *a4;
      v35 = 1;
      if (*v22)
      {
        v32 = v22;
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v34 = v23;
      mlir::Diagnostic::operator<<(a3, &v32);
      if (v20)
      {
        if (!v9)
        {
          v25 = 0;
          v26 = v20;
          goto LABEL_24;
        }

        v24 = *(v9 + 8) & 7;
        v25 = v9;
        v26 = v20;
        if (v24 == 6)
        {
          goto LABEL_24;
        }

        v27 = (5 - v24);
        v28 = v21;
        v26 = v20 - v27;
        if (v20 > v27)
        {
          v25 = v9 - 16 * v27;
LABEL_24:
          v28 = v25 - 24 * v26;
        }
      }

      else
      {
        v28 = v9;
      }

      v29 = *(v28 + 8) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v32) = 4;
      v33 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a2 + 16, &v32, 1);
      v31 = (*(a2 + 16) + 24 * *(a2 + 24));
      result = *v30;
      v31[1].n128_u64[0] = v30[1].n128_u64[0];
      *v31 = result;
      ++*(a2 + 24);
      ++v20;
      v21 -= 16;
    }

    while (v5 != v20);
  }

  return result;
}

__n128 llvm::interleave<llvm::ArrayRef<mlir::Type>,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(llvm::ArrayRef<mlir::Type> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a2)
  {
    v10 = *a1;
    LODWORD(v21) = 4;
    v22 = v10;
    v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a3 + 16, &v21, 1);
    v12 = (*(a3 + 16) + 24 * *(a3 + 24));
    result = *v11;
    v12[1].n128_u64[0] = v11[1].n128_u64[0];
    *v12 = result;
    ++*(a3 + 24);
    if (a2 != 1)
    {
      v14 = a1 + 1;
      v15 = 8 * a2 - 8;
      do
      {
        v16 = *a5;
        v24 = 1;
        if (*v16)
        {
          v21 = v16;
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        v23 = v17;
        mlir::Diagnostic::operator<<(a4, &v21);
        v18 = *v14++;
        LODWORD(v21) = 4;
        v22 = v18;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a3 + 16, &v21, 1);
        v20 = (*(a3 + 16) + 24 * *(a3 + 24));
        result = *v19;
        v20[1].n128_u64[0] = v19[1].n128_u64[0];
        *v20 = result;
        ++*(a3 + 24);
        v15 -= 8;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::func::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  *&v9 = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v9 + 1) = a4;
  *&v8 = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v8 + 1) = a6;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v9, &v8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::InsertIntoBucketImpl<mlir::StringAttr>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 2;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::LookupBucketFor<mlir::StringAttr>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F030))
  {
    qword_27FC1F020 = llvm::detail::getTypeNameImpl<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>();
    *algn_27FC1F028 = v1;
    __cxa_guard_release(&qword_27FC1F030);
  }

  return qword_27FC1F020;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::CallIndirectOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallIndirectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F058))
  {
    qword_27FC1F048 = llvm::detail::getTypeNameImpl<mlir::func::detail::CallOpGenericAdaptorBase::Properties>();
    unk_27FC1F050 = v1;
    __cxa_guard_release(&qword_27FC1F058);
  }

  return qword_27FC1F048;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

BOOL mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v11 = 0;
  if (((*(*a1 + 440))(a1, &v11, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v11[3])
  {
    *a2 = v11;
    return 1;
  }

  else
  {
    *a2 = 0;
    v9 = "invalid kind of attribute specified";
    v10 = 259;
    (*(*a1 + 24))(v12, a1, v6, &v9);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v7;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F080))
  {
    qword_27FC1F070 = llvm::detail::getTypeNameImpl<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>();
    *algn_27FC1F078 = v1;
    __cxa_guard_release(&qword_27FC1F080);
  }

  return qword_27FC1F070;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F0A8))
  {
    qword_27FC1F098 = llvm::detail::getTypeNameImpl<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>();
    unk_27FC1F0A0 = v1;
    __cxa_guard_release(&qword_27FC1F0A8);
  }

  return qword_27FC1F098;
}

const char *llvm::detail::getTypeNameImpl<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::func::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

uint64_t **mlir::ODIE::Compiler::Analysis::MemoryReuse::MemoryReuse(uint64_t **a1, mlir::Operation *a2, int a3)
{
  v167 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 10) = 0;
  v152[0] = 0;
  v152[1] = 0;
  v151 = a2;
  v153 = 0;
  mlir::Liveness::build(&v151);
  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ExecAliasAnalysis(v162, a2);
  v156 = 1;
  v5 = &v157;
  v6 = -4096;
  v157 = -4096;
  v159 = -4096;
  v160 = -4096;
  v161 = -4096;
  v7 = *(a2 + 11);
  if ((v7 & 0x7FFFFF) == 0)
  {
    v60 = 1;
LABEL_77:
    v61 = v158;
    if (v60)
    {
      v62 = v162;
    }

    else
    {
      v62 = (v6 + 80 * v158);
    }

    if (v60)
    {
      v63 = &v157;
    }

    else
    {
      v63 = v6;
    }

    v64 = 4;
    if (!v60)
    {
      v64 = v158;
    }

    v65 = &v63[10 * v64];
    if (!v60)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v8 = (((a2 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
  v136 = &v8[3 * (v7 & 0x7FFFFF)];
  do
  {
    v9 = v8[1];
    if (*v8 == v8)
    {
      goto LABEL_13;
    }

    while (v9 != v8)
    {
      v10 = v9 - 1;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10[4] != v10 + 4)
      {
        break;
      }

      v9 = v9[1];
    }

    if (v9 == v8)
    {
LABEL_13:
      v12 = 0;
    }

    else
    {
      v11 = v9 - 1;
      if (!v9)
      {
        v11 = 0;
      }

      v12 = v11[5];
    }

    v165 = v8;
    *&v163 = v8;
    *(&v163 + 1) = v9;
    *(&v164 + 1) = v8;
    *&v164 = v12;
    v166 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v163);
    v147 = v163;
    v148 = v164;
    v149 = v165;
    v150 = v166;
    *&v163 = v8;
    *(&v163 + 1) = v8;
    *&v164 = 0;
    *(&v164 + 1) = v8;
    v138 = v8;
    v165 = v8;
    v166 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v163);
    v13 = v164;
    v142 = v147;
    v143 = v148;
    v144 = v149;
    v145 = v150;
    v146 = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Region::OpIterator>::unwrap;
    while (v143 != v13)
    {
      v14 = (v146)();
      v15 = (*(v14 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        goto LABEL_17;
      }

      v16 = v14;
      v17 = v15[2];
      if (v17)
      {
        v18 = v15[1];
        v19 = 8 * v17;
        while (*v18 != 0x8000000000000000)
        {
          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        *&v163 = v15[3];
        if (!mlir::Type::isIntOrFloat(&v163))
        {
          goto LABEL_17;
        }

        v20 = v15[2];
        if (v20)
        {
          v21 = v15[1];
          v22 = 8 * v20;
          v23 = 1;
          do
          {
            v24 = *v21++;
            v23 *= v24;
            v22 -= 8;
          }

          while (v22);
        }

        else
        {
          v23 = 1;
        }

        v25 = v15[4];
        if (v25 && (*v25)[17] == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
        {
          v23 = *v25[7];
        }

        *&v163 = v15[3];
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v163);
        if (!a3)
        {
          v27 = v23 * ((IntOrFloatBitWidth - (IntOrFloatBitWidth != 0) + 8 * (IntOrFloatBitWidth != 0)) & 0xFFFFFFF8);
          v8 = (((v27 - (v27 != 0) + ((v27 != 0) << 7)) >> 3) & 0x1FFFFFFFFFFFFFF0);
        }

        v28 = v15[6];
        v154 = 0;
        v30 = v154;
        if ((v29 & 1) == 0)
        {
          v155 = v154;
          v36 = v156;
          v37 = v158;
          v38 = v156 >> 1;
          v39 = v156 & 1;
          if (v156)
          {
            v40 = 4;
          }

          else
          {
            v40 = v158;
          }

          if (4 * v38 + 4 >= 3 * v40)
          {
            v40 *= 2;
          }

          else if (v40 + ~v38 - HIDWORD(v156) > v40 >> 3)
          {
LABEL_44:
            LODWORD(v156) = (v36 & 0xFFFFFFFE) + v39 + 2;
            if (*v30 != -4096)
            {
              --HIDWORD(v156);
            }

            *v30 = v28;
            *(v30 + 8) = v30 + 24;
            v31 = (v30 + 8);
            *(v30 + 16) = 0x100000000;
            v34 = (v30 + 16);
LABEL_47:
            *(&v163 + 1) = 0;
            v164 = 0uLL;
            *&v165 = 0;
            DWORD2(v165) = 0;
            *&v163 = &v163 + 8;
            v166 = 0;
            {
              if (*v34 >= *(v30 + 20))
              {
              }

              else
              {
                v41 = *v31 + 56 * *v34;
                *v41 = v163;
                v42 = *(&v163 + 1);
                *(v41 + 8) = *(&v163 + 1);
                v43 = v41 + 8;
                v44 = v164;
                *(v41 + 16) = v164;
                if (v44)
                {
                  *(v42 + 16) = v43;
                  *&v163 = &v163 + 8;
                  *(&v163 + 1) = 0;
                  *&v164 = 0;
                }

                else
                {
                  *v41 = v43;
                }

                *(v41 + 24) = 0;
                *(v41 + 32) = 0;
                *(v41 + 40) = 0;
                *(v41 + 24) = *(&v164 + 1);
                *(&v164 + 1) = 0;
                *(v41 + 32) = v165;
                LODWORD(v165) = 0;
                v45 = *(v41 + 36);
                *(v41 + 36) = DWORD1(v165);
                DWORD1(v165) = v45;
                v46 = *(v41 + 40);
                *(v41 + 40) = DWORD2(v165);
                DWORD2(v165) = v46;
                *(v41 + 48) = v166;
                ++*v34;
              }
            }

            MEMORY[0x25F891030](*(&v164 + 1), 8);
            goto LABEL_17;
          }

          if (v40 >= 5)
          {
            v47 = (v40 - 1) | ((v40 - 1) >> 1);
            v48 = v47 | (v47 >> 2) | ((v47 | (v47 >> 2)) >> 4);
            v49 = ((v48 | (v48 >> 8)) >> 16) | v48 | (v48 >> 8);
            if ((v49 + 1) > 0x40)
            {
              v40 = v49 + 1;
            }

            else
            {
              v40 = 64;
            }
          }

          if (v156)
          {
            v51 = 0;
            v52 = &v163;
            do
            {
              v53 = (&v156 + v51);
              v54 = *(&v156 + v51 + 8);
              if ((v54 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                *v52 = v54;
                v55 = v52 + 10;
                v52 = v55;
              }

              v51 += 80;
            }

            while (v51 != 320);
            if (v40 > 4)
            {
              LODWORD(v156) = v156 & 0xFFFFFFFE;
              v56 = v40;
              v57 = (80 * v40);
              v58 = v52;
              buffer = llvm::allocate_buffer(v57, 8uLL);
              v52 = v58;
              v157 = buffer;
              v158 = v56;
            }
          }

          else
          {
            v50 = v157;
            if (v40 > 4)
            {
              v157 = llvm::allocate_buffer((80 * v40), 8uLL);
              v158 = v40;
            }

            else
            {
              LODWORD(v156) = v156 | 1;
            }

            MEMORY[0x25F891030](v50, 8);
          }

          v36 = v156;
          v30 = v155;
          v39 = v156 & 1;
          goto LABEL_44;
        }

        v31 = (v154 + 8);
        v32 = *(v154 + 8);
        v34 = (v154 + 16);
        v33 = *(v154 + 16);
        if (!v33)
        {
          goto LABEL_47;
        }

        v35 = 56 * v33;
        {
          v32 += 7;
          v35 -= 56;
          if (!v35)
          {
            goto LABEL_47;
          }
        }
      }

LABEL_17:
      mlir::Region::OpIterator::operator++(&v142);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v142);
    }

    v8 = v138 + 3;
  }

  while (v138 + 3 != v136);
  v60 = v156;
  if (v156 <= 1)
  {
    v6 = v157;
    v5 = &v157;
    goto LABEL_77;
  }

  v5 = &v157;
  if (v156)
  {
    v65 = v162;
    v66 = &v157;
LABEL_91:
    while ((*v66 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v66 += 10;
      if (v66 == v65)
      {
        v66 = v65;
        break;
      }
    }

    v6 = v157;
    v61 = v158;
    v62 = v66;
    if ((v156 & 1) == 0)
    {
LABEL_95:
      v66 = (v6 + 80 * v61);
      goto LABEL_96;
    }

LABEL_86:
    v66 = v162;
    goto LABEL_96;
  }

  v66 = v157;
  v65 = (v157 + 80 * v158);
  if (v158)
  {
    goto LABEL_91;
  }

  v62 = v157;
LABEL_96:
  if (v62 == v66)
  {
    goto LABEL_191;
  }

  v141 = v66;
  while (2)
  {
    v67 = *(v62 + 4);
    if (v67)
    {
      v68 = 0;
      v69 = v62[1];
      v70 = v69 + 56 * v67;
      while (1)
      {
          ;
        }

        if (*(v69 + 32))
        {
          v71 = *(v69 + 40);
          if (v71)
          {
            v72 = 16 * v71;
            v73 = *(v69 + 24);
            while ((*v73 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v73 += 2;
              v72 -= 16;
              if (!v72)
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            v73 = *(v69 + 24);
          }

          v79 = *(v69 + 24) + 16 * v71;
LABEL_117:
          if (v73 != v79)
          {
            break;
          }
        }

LABEL_107:
        *&v147 = 0;
        v74 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(a1[3], *(a1 + 10), *v62, &v147);
        v75 = v147;
        if ((v74 & 1) == 0)
        {
          *&v142 = v147;
          v76 = *(a1 + 8);
          v77 = *(a1 + 10);
          if (4 * v76 + 4 >= (3 * v77))
          {
            v78 = 2 * v77;
          }

          else
          {
            v78 = *(a1 + 10);
            if (v77 + ~v76 - *(a1 + 9) > v77 >> 3)
            {
LABEL_110:
              *(a1 + 8) = v76 + 1;
              if (*v75 != -4096)
              {
                --*(a1 + 9);
              }

              *v75 = *v62;
              v75[1] = (v75 + 3);
              v75[2] = 0x600000000;
              goto LABEL_113;
            }
          }

          v107 = a1[3];
          v108 = (v78 - 1) | ((v78 - 1) >> 1);
          v109 = v108 | (v108 >> 2) | ((v108 | (v108 >> 2)) >> 4);
          v110 = ((v109 | (v109 >> 8)) >> 16) | v109 | (v109 >> 8);
          if ((v110 + 1) > 0x40)
          {
            v111 = v110 + 1;
          }

          else
          {
            v111 = 64;
          }

          *(a1 + 10) = v111;
          v112 = llvm::allocate_buffer((72 * v111), 8uLL);
          a1[3] = v112;
          if (v107)
          {
            a1[4] = 0;
            v113 = *(a1 + 10);
            if (v113)
            {
              v114 = 0;
              v115 = (72 * v113 - 72) / 0x48;
              v116 = vdupq_n_s64(v115);
              do
              {
                v117 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(vdupq_n_s64(v114), xmmword_25D0A0500)));
                if (v117.i8[0])
                {
                  *v112 = -4096;
                }

                if (v117.i8[4])
                {
                  v112[9] = -4096;
                }

                v114 += 2;
                v112 += 18;
              }

              while (((v115 + 2) & 0x7FFFFFFFFFFFFFELL) != v114);
            }

            if (v77)
            {
              v118 = v107 + 3;
              v119 = 72 * v77;
              do
              {
                v120 = *(v118 - 3);
                if ((v120 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  *&v163 = 0;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(a1[3], *(a1 + 10), v120, &v163);
                  v121 = v163;
                  *v163 = *(v118 - 3);
                  *(v121 + 16) = 0x600000000;
                  *(v121 + 8) = v121 + 24;
                  v122 = v121 + 8;
                  if (*(v118 - 2))
                  {
                    llvm::SmallVectorImpl<long long>::operator=(v122, (v118 - 2));
                  }

                  ++*(a1 + 8);
                  v123 = *(v118 - 2);
                  if (v118 != v123)
                  {
                    free(v123);
                  }
                }

                v118 += 9;
                v119 -= 72;
              }

              while (v119);
            }

            MEMORY[0x25F891030](v107, 8);
            v112 = a1[3];
            v124 = *(a1 + 10);
          }

          else
          {
            a1[4] = 0;
            v124 = *(a1 + 10);
            if (v124)
            {
              v125 = 0;
              v126 = (72 * v124 - 72) / 0x48;
              v127 = (v126 + 2) & 0x7FFFFFFFFFFFFFELL;
              v128 = vdupq_n_s64(v126);
              v129 = v112;
              do
              {
                v130 = vmovn_s64(vcgeq_u64(v128, vorrq_s8(vdupq_n_s64(v125), xmmword_25D0A0500)));
                if (v130.i8[0])
                {
                  *v129 = -4096;
                }

                if (v130.i8[4])
                {
                  v129[9] = -4096;
                }

                v125 += 2;
                v129 += 18;
              }

              while (v127 != v125);
            }
          }

          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::LookupBucketFor<mlir::Attribute>(v112, v124, *v62, &v142);
          v76 = *(a1 + 8);
          v75 = v142;
          goto LABEL_110;
        }

LABEL_113:
        llvm::SmallVectorTemplateBase<long long,true>::push_back((v75 + 1), *(v69 + 48));
        ++v68;
        v69 += 56;
        if (v69 == v70)
        {
          goto LABEL_183;
        }
      }

      *&v147 = 0;
      v80 = v73[1];
      v81 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), *v73, &v147);
      v82 = v147;
      if (v81)
      {
LABEL_124:
        *(v82 + 8) = v68;
        *(v82 + 16) = v80;
        while (1)
        {
          v73 += 2;
          if (v73 == v79)
          {
            goto LABEL_107;
          }

          if ((*v73 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            goto LABEL_117;
          }
        }
      }

      *&v142 = v147;
      v83 = *(a1 + 2);
      v84 = *(a1 + 4);
      if (4 * v83 + 4 >= (3 * v84))
      {
        v85 = 2 * v84;
      }

      else
      {
        v85 = *(a1 + 4);
        if (v84 + ~v83 - *(a1 + 3) > v84 >> 3)
        {
LABEL_121:
          *(a1 + 2) = v83 + 1;
          if (*v82 != -4096)
          {
            --*(a1 + 3);
          }

          *v82 = *v73;
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
          goto LABEL_124;
        }
      }

      v137 = *a1;
      v86 = (v85 - 1) | ((v85 - 1) >> 1);
      v87 = v86 | (v86 >> 2) | ((v86 | (v86 >> 2)) >> 4);
      v88 = ((v87 | (v87 >> 8)) >> 16) | v87 | (v87 >> 8);
      if ((v88 + 1) > 0x40)
      {
        v89 = v88 + 1;
      }

      else
      {
        v89 = 64;
      }

      *(a1 + 4) = v89;
      v90 = llvm::allocate_buffer((24 * v89), 8uLL);
      *a1 = v90;
      if (v137)
      {
        a1[1] = 0;
        v91 = *(a1 + 4);
        if (v91)
        {
          v92 = 0;
          v93 = (24 * v91 - 24) / 0x18;
          v94 = vdupq_n_s64(v93);
          do
          {
            v95 = vmovn_s64(vcgeq_u64(v94, vorrq_s8(vdupq_n_s64(v92), xmmword_25D0A0500)));
            if (v95.i8[0])
            {
              *v90 = -4096;
            }

            if (v95.i8[4])
            {
              v90[3] = -4096;
            }

            v92 += 2;
            v90 += 6;
          }

          while (((v93 + 2) & 0x1FFFFFFFFFFFFFFELL) != v92);
        }

        if (v84)
        {
          v96 = 24 * v84;
          v97 = v137;
          do
          {
            v98 = *v97;
            if ((*v97 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              *&v163 = 0;
              v139 = v96;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 4), v98, &v163);
              v99 = v163;
              *v163 = *v97;
              *(v99 + 8) = *(v97 + 8);
              v96 = v139;
              ++*(a1 + 2);
            }

            v97 += 24;
            v96 -= 24;
          }

          while (v96);
        }

        MEMORY[0x25F891030](v137, 8);
        v90 = *a1;
        v100 = *(a1 + 4);
      }

      else
      {
        a1[1] = 0;
        v100 = *(a1 + 4);
        if (v100)
        {
          v101 = 0;
          v102 = (24 * v100 - 24) / 0x18;
          v103 = (v102 + 2) & 0x1FFFFFFFFFFFFFFELL;
          v104 = vdupq_n_s64(v102);
          v105 = v90;
          do
          {
            v106 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(vdupq_n_s64(v101), xmmword_25D0A0500)));
            if (v106.i8[0])
            {
              *v105 = -4096;
            }

            if (v106.i8[4])
            {
              v105[3] = -4096;
            }

            v101 += 2;
            v105 += 6;
          }

          while (v103 != v101);
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::LookupBucketFor<mlir::Operation *>(v90, v100, *v73, &v142);
      v83 = *(a1 + 2);
      v82 = v142;
      goto LABEL_121;
    }

LABEL_183:
    v62 += 10;
    if (v62 == v65)
    {
      v5 = &v157;
      v131 = v141;
    }

    else
    {
      v5 = &v157;
      v131 = v141;
      do
      {
        if ((*v62 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v62 += 10;
      }

      while (v62 != v65);
    }

    if (v62 != v131)
    {
      continue;
    }

    break;
  }

  LOBYTE(v60) = v156;
LABEL_191:
  if (v60)
  {
    v132 = 4;
    goto LABEL_195;
  }

  v132 = v158;
  if (v158)
  {
    v5 = v157;
LABEL_195:
    v133 = 80 * v132;
    v134 = (v5 + 1);
    do
    {
      if ((*(v134 - 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v134 += 80;
      v133 -= 80;
    }

    while (v133);
    LOBYTE(v60) = v156;
  }

  if ((v60 & 1) == 0)
  {
    MEMORY[0x25F891030](v157, 8);
  }

  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(v162);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::destroyAll(v152);
  MEMORY[0x25F891030](v152[0], 8);
  return a1;
}

uint64_t mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::createAllocation(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x80000000)
  {
    v7 = *(a2 + 24);
    v48 = 257;
    emitDiag(v7, 2, v47, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<22ul>(v50, "Single tensor (size: ");
      if (v49)
      {
        LODWORD(v47[0]) = 2;
        v47[1] = a3;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v52, v47, 1);
        v9 = v52 + 24 * v53;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v53;
        if (v49)
        {
          mlir::Diagnostic::operator<<<56ul>(v50, ") would be too large for a contiguous memory allocation");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
    return 0;
  }

  v12 = a1 + 1;
  v13 = *a1;
  v47[0] = v13;
  if (v13 != (a1 + 1))
  {
    while (1)
    {
      v16 = v13[5] - 16;
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v17 = *(a2 + 68);
        if (v17)
        {
          break;
        }
      }

LABEL_13:
      if (mlir::Liveness::isDeadAfter(a4, (v13[5] - 16), a2))
      {
        mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::getAliasSet(a5, v16, &v49);
        v19 = 8;
        if (v51)
        {
          v19 = 12;
        }

        v20 = *&v50[v19 - 8];
        if (v20)
        {
          v21 = 8 * v20;
          v22 = v49;
          while (*v22 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v22 += 8;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v22 = v49;
        }

        v23 = v49 + 8 * v20;
        if (v22 == v23)
        {
LABEL_32:
          v26 = 0;
        }

        else
        {
          v24 = *v22;
          while (1)
          {
            isDeadAfter = mlir::Liveness::isDeadAfter(a4, v24, a2);
            if (!isDeadAfter)
            {
              break;
            }

            v22 += 8;
            if (v22 == v23)
            {
              break;
            }

            while (1)
            {
              v24 = *v22;
              if (*v22 < 0xFFFFFFFFFFFFFFFELL)
              {
                break;
              }

              v22 += 8;
              if (v22 == v23)
              {
                goto LABEL_32;
              }
            }

            if (v22 == v23)
            {
              LOBYTE(isDeadAfter) = 1;
              break;
            }
          }

          v26 = !isDeadAfter;
        }

        if ((v51 & 1) == 0)
        {
          free(v49);
        }

        if (!v26)
        {
          goto LABEL_42;
        }
      }

      if (v13 == *a1)
      {
        v31 = 0;
        v32 = v13[4];
      }

      else
      {
        v27 = *v13;
        v28 = v13;
        if (*v13)
        {
          do
          {
            v29 = v27;
            v27 = *(v27 + 8);
          }

          while (v27);
        }

        else
        {
          do
          {
            v29 = v28[2];
            v30 = *v29 == v28;
            v28 = v29;
          }

          while (v30);
        }

        v31 = v29[6] + v29[4];
        v32 = (v13[4] - v31);
      }

      if (v32 >= a3)
      {
        goto LABEL_65;
      }

      v34 = v13[1];
      if (v34)
      {
        do
        {
          v33 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v33 = v13[2];
          v30 = *v33 == v13;
          v13 = v33;
        }

        while (!v30);
      }

LABEL_50:
      v47[0] = v33;
      v13 = v33;
      if (v33 == v12)
      {
        goto LABEL_51;
      }
    }

    v18 = (*(a2 + 72) + 24);
    while (*v18 != v16)
    {
      v18 += 4;
      if (!--v17)
      {
        goto LABEL_13;
      }
    }

LABEL_42:
    goto LABEL_50;
  }

LABEL_51:
  if (a1[2])
  {
    v35 = *v12;
    if (*v12)
    {
      v36 = *v12;
      do
      {
        v37 = v36;
        v36 = v36[1];
      }

      while (v36);
    }

    else
    {
      v38 = v12;
      do
      {
        v37 = v38[2];
        v30 = *v37 == v38;
        v38 = v37;
      }

      while (v30);
    }

    v39 = v37[4];
    if (v35)
    {
      do
      {
        v40 = v35;
        v35 = v35[1];
      }

      while (v35);
    }

    else
    {
      v41 = v12;
      do
      {
        v40 = v41[2];
        v30 = *v40 == v41;
        v41 = v40;
      }

      while (v30);
    }

    v31 = v40[6] + v39;
  }

  else
  {
    v31 = 0;
  }

LABEL_65:
  if (a3 + v31 > 0x20000000)
  {
    return 0;
  }

  v43 = *v12;
  if (!*v12)
  {
LABEL_73:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v44 = v43;
      v45 = v43[4];
      if (v31 >= v45)
      {
        break;
      }

      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_73;
      }
    }

    if (v45 >= v31)
    {
      break;
    }

    v43 = v44[1];
    if (!v43)
    {
      goto LABEL_73;
    }
  }

  v44[5] = a2;
  v44[6] = a3;
  v46 = a1[6];
  if (v46 <= (a3 + v31))
  {
    v46 = (a3 + v31);
  }

  a1[6] = v46;
  return 1;
}

uint64_t *mlir::ODIE::Compiler::Analysis::MemoryReuse::getOffsetForAllocation@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::ODIE::Compiler::Analysis::MemoryReuse *this@<X0>, mlir::Operation *a3@<X1>)
{
  v12[25] = *MEMORY[0x277D85DE8];
  if (*(*(a3 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v6 = *(a3 + 3);
    v10 = 257;
    emitDiag(v6, 2, v9, &v11);
    if (v11)
    {
      if (v11)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v9);
        mlir::Diagnostic::appendOp(v12, a3, v9);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  }

  v11 = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>,mlir::Operation *,std::pair<int,long long>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<int,long long>>>::doFind<mlir::Operation const*>(this, &v11);
  if (!result || result == (*this + 24 * *(this + 4)))
  {
    v8 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = *(result + 1);
    v8 = 1;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t *mlir::ODIE::Compiler::Analysis::MemoryReuse::getTotalAllocationSize@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::doFind<mlir::Attribute>((a1 + 24), &v7);
  v6 = *(a1 + 24) + 72 * *(a1 + 40);
  if (result)
  {
    v6 = result;
  }

  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (*(v6 + 16))
  {
    return llvm::SmallVectorImpl<long long>::operator=(a3, v6 + 8);
  }

  return result;
}

void mlir::ODIE::Compiler::Analysis::MemoryReuse::getMemorySpaces(uint64_t *__return_ptr a1@<X8>, mlir::ODIE::Compiler::Analysis::MemoryReuse *this@<X0>)
{
  v4 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>>(this + 24);
  v6 = v5;
  v7 = *(this + 3) + 72 * *(this + 10);
  v8 = a1 + 2;
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v7 == v4)
  {
    v14 = 0;
  }

  else
  {
    v9 = v4;
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = v10;
      do
      {
        v11 += 9;
      }

      while (v11 != v6 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v10;
    }

    while (v11 != v7);
    if (v12 < 6)
    {
      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v8, v12 + 1, 8);
      v13 = *(a1 + 2);
      v8 = *a1;
    }

    v15 = &v8[v13];
    do
    {
      v16 = *v9;
      v9 += 9;
      *v15 = v16;
      while (v9 != v6 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 9;
      }

      ++v15;
    }

    while (v9 != v7);
    v14 = *(a1 + 2) + v10;
  }

  *(a1 + 2) = v14;
}

uint64_t *mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::finalizeRecord(uint64_t a1, uint64_t **a2)
{
  v4 = *a2;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  v18 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(v5, *(v6 + 16), v4[5], &v18))
  {
    goto LABEL_7;
  }

  v7 = v18;
  v8 = *(v6 + 16);
  v19 = v18;
  v9 = *(a1 + 32);
  if (4 * v9 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_17;
  }

  if (v8 + ~v9 - *(a1 + 36) <= v8 >> 3)
  {
LABEL_17:
    llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::grow(v6, v8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(*(a1 + 24), *(a1 + 40), v4[5], &v19);
    v9 = *(a1 + 32);
    v7 = v19;
  }

  *(a1 + 32) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a1 + 36);
  }

  v10 = v4[4];
  *v7 = v4[5];
  v7[1] = v10;
LABEL_7:
  v11 = *a2;
  v12 = v11[1];
  if (v12)
  {
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v14 = v11;
    do
    {
      v13 = v14[2];
      v15 = *v13 == v14;
      v14 = v13;
    }

    while (!v15);
  }

  if (*a1 == v11)
  {
    *a1 = v13;
  }

  v16 = *(a1 + 8);
  --*(a1 + 16);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v16, v11);
  operator delete(v11);
  return v13;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>,mlir::Operation *,long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,long long>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void std::__tree<std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>,std::__map_value_compare<long long,std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>,std::less<long long>,true>,std::allocator<std::__value_type<long long,mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion::Entry>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis *this)
{
  *this = &unk_286E86360;
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 72, *(this + 10));
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 40, *(this + 6));
  std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(this + 8, *(this + 2));
}

{
  mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::~ExecAliasAnalysis(this);

  JUMPOUT(0x25F891040);
}

void std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(a1, *a2);
    std::__tree<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue,llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValueComparator,std::allocator<llvm::EquivalenceClasses<mlir::Value,mlir::ODIE::Compiler::Analysis::ExecAliasAnalysis::ValueComparator>::ECValue>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[9 * v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 72 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      result += 9;
      v6 -= 72;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 56 * v3 - 48;
    v5 = -56 * v3;
    do
    {
      MEMORY[0x25F891030](*(v4 + 16), 8);
      v6 = *v4;
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 80 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 80 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>::SmallVector(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      v6 = *a2;
      if (*a2 == a2 + 2)
      {
        if (v5 < 2)
        {
          v10 = 1;
          v8 = v3;
        }

        else
        {
          v16 = 0;
          v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, v3, v5, 56, &v16);
          v9 = v16;
          if (*a1 != v3)
          {
            free(*a1);
          }

          *a1 = v8;
          *(a1 + 12) = v9;
          v6 = *a2;
          v10 = *(a2 + 2);
        }

        *(a1 + 8) = v5;
        v11 = *(a2 + 2);
        if (v11)
        {
          v12 = *a2 + 56 * v11 - 48;
          v13 = -56 * v11;
          do
          {
            MEMORY[0x25F891030](*(v12 + 16), 8);
            v14 = *v12;
            v12 -= 56;
            v13 += 56;
          }

          while (v13);
        }
      }

      else
      {
        *a1 = v6;
        v7 = *(a2 + 3);
        *(a1 + 8) = v5;
        *(a1 + 12) = v7;
        *a2 = (a2 + 2);
        *(a2 + 3) = 0;
      }

      *(a2 + 2) = 0;
    }
  }

  return a1;
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>,mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::ODIE::Compiler::Analysis::anonymous namespace::MemoryRegion,1u>>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 2);
    v9 = (result + 82);
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[80 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 80;
  v12 = vdupq_n_s64(v11 / 0x50);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 10) = -4096;
    }

    v10 += 2;
    v8 += 160;
  }

  while (((v11 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      v15 = v16;
      *v16 = *a2;
      *v5 += 2;
    }

    a2 += 10;
  }

  return result;
}