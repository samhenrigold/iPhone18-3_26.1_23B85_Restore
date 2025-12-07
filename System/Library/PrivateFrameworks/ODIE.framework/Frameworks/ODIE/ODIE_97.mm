const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreGraphPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreGraphPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::ConstantConversion::~ConstantConversion(mlir::ODIE::Compiler::_anonymous_namespace_::ConstantConversion *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v11, a2);
  v11[7] = v9;
  v11[8] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[9] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v11, a2);
  v11[7] = a3;
  v11[8] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ConstantConversion::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v92 = *MEMORY[0x277D85DE8];
  v61 = a2;
  do
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v5 = *(v8 + 16);
        if (v5)
        {
          continue;
        }
      }
    }

    return 0;
  }

  while (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr((a4 + 1), 64);
  v10 = *(a1 + 96);
  ValueAttr = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v61);
  v13 = (*v12)(v12, ValueAttr);
  v14 = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v61);
  v15 = mlir::TypeConverter::convertTypeAttribute(v10, v13, v14);
  if (v16)
  {
    v17 = v15;
    v18 = (((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40));
    v19 = v18[1];
    if (*v18 == v18)
    {
      goto LABEL_22;
    }

    while (v19 != v18)
    {
      v20 = v19 - 1;
      if (!v19)
      {
        v20 = 0;
      }

      if (v20[4] != v20 + 4)
      {
        break;
      }

      v19 = v19[1];
    }

    if (v19 == v18)
    {
LABEL_22:
      v24 = 0;
    }

    else
    {
      v23 = v19 - 1;
      if (!v19)
      {
        v23 = 0;
      }

      v24 = v23[5];
    }

    v71 = ((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
    *v70 = v18;
    *&v70[8] = v19;
    *&v70[16] = v24;
    *&v70[24] = v18;
    v72 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v70);
    *v67 = *v70;
    *&v67[16] = *&v70[16];
    v68 = v71;
    v69 = v72;
    *v70 = v18;
    *&v70[8] = v18;
    *&v70[16] = 0;
    *&v70[24] = v18;
    v71 = v18;
    v72 = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::filter;
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v70);
    v25 = *&v70[16];
    *v70 = *v67;
    *&v70[16] = *&v67[16];
    v71 = v68;
    v72 = v69;
    v73 = mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::ConstOp,mlir::Region::OpIterator>::unwrap;
    while (1)
    {
      if (*&v70[16] == v25)
      {
        v26 = 0;
        v27 = 0;
        goto LABEL_29;
      }

      v64.__r_.__value_.__r.__words[0] = (v73)();
      if (*(v64.__r_.__value_.__r.__words[0] + 16 * ((*(v64.__r_.__value_.__r.__words[0] + 44) >> 23) & 1) + 64) == I64IntegerAttr && v17 == mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v64))
      {
        break;
      }

      mlir::Region::OpIterator::operator++(v70);
      llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(v70);
    }

    v41 = *(v64.__r_.__value_.__r.__words[0] + 16 * ((*(v64.__r_.__value_.__r.__words[0] + 44) >> 23) & 1) + 72);
    v27 = *(v41 + 16);
    v26 = *(v41 + 24);
LABEL_29:
    *v67 = &v67[24];
    *&v67[8] = xmmword_25D0A05A0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(v67, v27, &v27[v26]);
    v28 = &unk_25D0A0000;
    if (!*&v67[8])
    {
      v29 = a4 + 3;
      v60 = *(a4 + 3);
      v30 = *(((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40) + 8);
      if (v30)
      {
        v31 = v30 - 8;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v31 + 40);
      *v29 = v31;
      a4[4] = v32;
      *v70 = &v70[24];
      *&v70[8] = xmmword_25D0A05A0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(v70, "__const_", "");
      v33 = 0;
      v34 = *&v70[8];
      do
      {
        llvm::SmallVectorImpl<char>::resizeImpl<false>(v70, v34);
        llvm::SmallVectorTemplateBase<char,true>::push_back(v70, 95);
        std::to_string(&v64, v33);
        size = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v64;
        }

        else
        {
          v36 = v64.__r_.__value_.__r.__words[0];
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v64.__r_.__value_.__l.__size_;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v70, v36, v36 + size);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        ++v33;
      }

      while (mlir::SymbolTable::lookup(*(a1 + 120), *v70, *&v70[8]));
      llvm::SmallVectorImpl<char>::operator=(v67, v70);
      if (*v70 != &v70[24])
      {
        free(*v70);
      }

      v37 = *(v61 + 24);
      if (v17)
      {
        v38 = *v17;
        v39 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v40 = mlir::detail::InterfaceMap::lookup(v38 + 8, v39);
      }

      else
      {
        v40 = 0;
      }

      v42 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, *(**v37 + 32));
      if ((v43 & 1) == 0)
      {
        v66 = 1283;
        v64.__r_.__value_.__r.__words[2] = "exec.const";
        v59 = 10;
        goto LABEL_65;
      }

      *v70 = v37;
      *&v70[8] = v42;
      *&v70[16] = &v71;
      *&v70[24] = 0x400000000;
      v74 = v76;
      v75 = 0x400000000;
      v77 = v79;
      v78 = 0x400000000;
      v80 = 4;
      v81 = &v83;
      v82 = 0x100000000;
      v84 = &v86;
      v85 = 0x100000000;
      v88 = 0;
      v87 = 0;
      v89 = &mlir::detail::TypeIDResolver<void,void>::id;
      v90 = 0;
      v91 = 0;
      mlir::ODIE::Compiler::Exec::ConstOp::build(a4 + 1, v70, *v67, *&v67[8], v17, v40, I64IntegerAttr);
      v44 = mlir::Operation::create(v70);
      mlir::OpBuilder::insert((a4 + 1), v44);
      v45 = *(*(v44 + 6) + 16);
      mlir::OperationState::~OperationState(v70);
      if (v45 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      mlir::SymbolTable::insert(*(a1 + 120), v46, 0);
      if (v60)
      {
        *v29 = v60;
      }

      else
      {
        *v29 = 0;
        a4[4] = 0;
      }

      v28 = &unk_25D0A0000;
    }

    v47 = v61;
    v48 = *(a1 + 96);
    v49 = mlir::ODIE::Compiler::CoreML::ConstantOp::getValueAttr(&v61);
    v51 = (*v50)(v50, v49);
    v52 = mlir::TypeConverter::convertType(v48, v51);
    v53 = *(v47 + 24);
    v54 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, *(**v53 + 32));
    if (v55)
    {
      *v70 = v53;
      *&v70[8] = v54;
      *&v70[16] = &v71;
      *&v70[24] = 0x400000000;
      v74 = v76;
      v75 = 0x400000000;
      v77 = v79;
      v78 = 0x400000000;
      v80 = 4;
      v81 = &v83;
      v82 = v28[118];
      v84 = &v86;
      v85 = v82;
      v88 = 0;
      v87 = 0;
      v89 = &mlir::detail::TypeIDResolver<void,void>::id;
      v90 = 0;
      v91 = 0;
      mlir::ODIE::Compiler::Exec::AllocConstOp::build(a4 + 1, v70, v52, *v67, *&v67[8]);
      v56 = mlir::Operation::create(v70);
      mlir::OpBuilder::insert((a4 + 1), v56);
      v57 = *(*(v56 + 6) + 16);
      mlir::OperationState::~OperationState(v70);
      if (v57 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0;
      }

      (*(*a4 + 8))(a4, v47, v58);
      if (*v67 != &v67[24])
      {
        free(*v67);
      }

      return 1;
    }

    v66 = 1283;
    v64.__r_.__value_.__r.__words[2] = "exec.alloc_const";
    v59 = 16;
LABEL_65:
    v65 = v59;
    v63 = 259;
    llvm::operator+(&v64, &v62, v70);
    llvm::report_fatal_error(v70, 1);
  }

  *v70 = "Failure to convert an attribute";
  LOWORD(v71) = 259;
  *v67 = v70;
  v21 = a4[2];
  if (v21 && v21[2] == 1)
  {
    (*(*v21 + 88))(v21, *(v61 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::ODIE::Compiler::CoreML::ConstantOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v67);
  }

  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 56), *(a3 + 64), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ConstantConversion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ConstantConversion]";
  v6 = 125;
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

void mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern::~ShapeCastPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ShapeCastPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v7 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*v7 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = 24;
  }

  else
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = 8;
  }

  v9 = *(v7 + v10);
LABEL_7:
  v11 = *(a2 + 36);
  v12 = (a2 - 16);
  if (v11)
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(*v14 + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = 24;
  }

  else
  {
    if (v15 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v17 = 8;
  }

  v16 = *(v14 + v17);
LABEL_16:
  if (v9 == v16)
  {
    v35[0] = v36;
    v35[1] = 0x600000000;
    v18 = *(a1 + 96);
    if (!v11)
    {
      v12 = 0;
    }

    v37 = v12;
    v38 = 0;
    v39 = v12;
    v40 = v11;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v34, &v37);
    if (mlir::TypeConverter::convertTypes(v18, v34[0], v34[1], v35))
    {
      v19 = v35[0];
      v20 = *(a3 + 40);
      v21 = (v20 & 0xFFFFFFFFFFFFFFF8);
      v22 = v20 & 6;
      if (v22 || !v21)
      {
        if (v22 == 2 && v21)
        {
          v21 = v21[3];
        }
      }

      else
      {
        v21 = *v21;
      }

      IndexAttr = mlir::Builder::getIndexAttr((a4 + 1), 0);
      v27 = *(*a4[1] + 608);
      v28 = *(a2 + 24);
      v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocViewOp>((a4 + 1), *(**v28 + 32));
      v37 = v28;
      v38 = v29;
      v39 = &v41;
      v40 = 0x400000000;
      v42 = v44;
      v43 = 0x400000000;
      v44[4] = v45;
      v44[5] = 0x400000000;
      v45[8] = 4;
      v45[9] = v46;
      v45[10] = 0x100000000;
      v46[1] = v47;
      v46[2] = 0x100000000;
      v47[1] = 0;
      v47[2] = 0;
      v47[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v47[4] = 0;
      v47[6] = 0;
      mlir::ODIE::Compiler::Exec::AllocViewOp::build((a4 + 1), &v37, *v19, v21, IndexAttr, v27);
      v30 = mlir::Operation::create(&v37);
      mlir::OpBuilder::insert((a4 + 1), v30);
      v31 = *(*(v30 + 6) + 16);
      mlir::OperationState::~OperationState(&v37);
      if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      (*(*a4 + 8))(a4, a2, v32);
      v24 = 1;
    }

    else
    {
      v37 = "Failed to convert output types";
      v41 = 259;
      v34[0] = &v37;
      v25 = a4[2];
      if (v25 && v25[2] == 1)
      {
        (*(*v25 + 88))(v25, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::ODIE::Compiler::CoreML::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v34);
      }

      v24 = 0;
    }

    if (v35[0] != v36)
    {
      free(v35[0]);
    }
  }

  else
  {
    v37 = "Only shape casts can be bufferized as views";
    v41 = 259;
    v35[0] = &v37;
    v23 = a4[2];
    if (v23 && v23[2] == 1)
    {
      (*(*v23 + 88))(v23, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::ODIE::Compiler::CoreML::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v35);
    }

    return 0;
  }

  return v24;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ShapeCastPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ShapeCastPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>::~GenericConversionPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, mlir::ConversionPatternRewriter *this)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 6);
  v8 = v7[2];
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id)
  {
    v45 = "expected to be replaced by a specific pattern";
    v48 = 259;
    v50 = &v45;
    v14 = *(this + 2);
    if (v14 && v14[2] == 1)
    {
      (*(*v14 + 88))(v14, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v50);
    }
  }

  else
  {
    if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v19 = (v7[1] + 32);
    }

    else
    {
      v19 = v7 + 3;
    }

    v20 = *v19;
    if (!v20 || *(v20 + 24) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ExecDialect,void>::id)
    {
      v21 = a2;
      do
      {
        v22 = *(v21 + 2);
        if (v22)
        {
          v23 = *(v22 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v23)
          {
            v21 = *(v23 + 16);
            if (v21)
            {
              continue;
            }
          }
        }

        mlir::ConversionPatternRewriter::eraseOp(this, a2);
      }

      while (*(*(v21 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
      v50 = v52;
      v51 = 0x600000000;
      v24 = *(a1 + 96);
      v25 = *(a2 + 9);
      v26 = a2 - 16;
      if (!v25)
      {
        v26 = 0;
      }

      v45 = v26;
      v46 = 0;
      v47[0] = v26;
      v47[1] = v25;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(v53, &v45);
      if (mlir::TypeConverter::convertTypes(v24, v53[0], v53[1], &v50))
      {
        if (v49 == 1)
        {
          v27 = a2;
          while (1)
          {
            v28 = *(v27 + 2);
            if (!v28)
            {
              break;
            }

            v29 = *(v28 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (!v29)
            {
              break;
            }

            v27 = *(v29 + 16);
            if (!v27 || *(*(v27 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
            {
              goto LABEL_52;
            }
          }

          v27 = 0;
LABEL_52:
          v32 = *(*(a2 + 6) + 8);
          v42 = *(v32 + 16);
          v43 = *(a2 + 3);
          v41 = *(v32 + 24);
          v33 = v51;
          v34 = v50 & 0xFFFFFFFFFFFFFFF9;
          v35 = v45;
          v36 = v46;
          AttrDictionary = mlir::Operation::getAttrDictionary(a2);
          v39 = *(v38 + 36);
          if (v39)
          {
            v40 = (v38 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
          }

          else
          {
            v40 = 4;
          }

          mlir::ConversionPatternRewriter::replaceOp(this, a2, v40, v39);
        }

        v53[0] = "failed to get output intents";
        v54 = 259;
        v44 = v53;
        v31 = *(this + 2);
        if (v31 && v31[2] == 1)
        {
          (*(*v31 + 88))(v31, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v44);
        }

        if (v49 == 1 && v45 != v47)
        {
          free(v45);
        }
      }

      else
      {
        v45 = "Failed to convert output types";
        v48 = 259;
        v53[0] = &v45;
        v30 = *(this + 2);
        if (v30 && v30[2] == 1)
        {
          (*(*v30 + 88))(v30, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v53);
        }
      }

      if (v50 != v52)
      {
        free(v50);
      }
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::DelegateOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::GenericConversionPattern<mlir::ODIE::Compiler::CoreML::ConstantOp, mlir::ODIE::Compiler::CoreML::GraphOp, mlir::ODIE::Compiler::CoreML::OutputOp, mlir::ODIE::Compiler::CoreML::InvokeOp, mlir::ODIE::Compiler::CoreML::IsolatedGroupOp, mlir::ODIE::Compiler::CoreML::DelegateOp>]";
  v6 = 381;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern::~CoreInvokePattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreInvokePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::InvokeOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v15);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v10;
  v12 = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70[6] = *MEMORY[0x277D85DE8];
  v43 = a2;
  v7 = *(a3 + 72);
  v8 = *(a3 + 80);
  v68 = v70;
  v69 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v7, 0, v7, v8);
  v65 = v67;
  v66 = 0x600000000;
  v62 = v64;
  v63 = 0x600000000;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a2 + 68);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = 0;
  v11 = *(a2 + 72) + 24;
  do
  {
    v12 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(*v12 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      goto LABEL_11;
    }

    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v62, *(v68 + 8 * v10));
LABEL_11:
      llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v65, v10);
    }

    ++v10;
    v11 += 32;
  }

  while (v9 != v10);
  if (v66)
  {
    v15 = v69;
    v16 = 8 * v66;
    v17 = v65 - 8;
    do
    {
      v18 = (v68 + 8 * *&v17[v16]);
      v19 = (v68 + 8 * v15);
      if (v19 != v18 + 8)
      {
        memmove(v18, v18 + 8, v19 - (v18 + 8));
        v15 = v69;
      }

      LODWORD(v69) = --v15;
      v16 -= 8;
    }

    while (v16);
  }

LABEL_18:
  v20 = v63;
  v21 = (v62 & 0xFFFFFFFFFFFFFFF9);
  v22 = *(v43 + 9);
  v23 = v43 - 16;
  if (!v22)
  {
    v23 = 0;
  }

  v50 = v23;
  v51 = 0;
  v52 = v23;
  v53 = v22;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v47, &v50);
  v50 = v21;
  v51 = 0;
  v52 = v21;
  v53 = v20;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v56, &v50);
  v56 = v58;
  v57 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v59 & 0xFFFFFFFFFFFFFFF9 | 2, v60, &v56))
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(v43);
    v26 = *(AttrDictionary + 8);
    v25 = *(AttrDictionary + 16);
    v50 = &v52;
    v51 = 0x400000000;
    v55 = 0;
    dictionaryAttrSort<false>(v26, v25, &v50);
    v55 = 4;
    v27 = &unk_27FC18528;
    v28 = 48;
    do
    {
      mlir::NamedAttrList::erase(&v50, *(v27 - 1), *v27);
      v27 += 2;
      v28 -= 16;
    }

    while (v28);
    ResolvedCallee = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(&v43);
    if (ResolvedCallee)
    {
      v32 = v43;
      while (1)
      {
        v33 = *(v32 + 2);
        if (!v33)
        {
          break;
        }

        v34 = *(v33 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v34)
        {
          break;
        }

        v32 = *(v34 + 16);
        if (!v32 || *(*(v32 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
        {
          goto LABEL_39;
        }
      }

      v32 = 0;
LABEL_39:
      v37 = *(v43 + 3);
      v38 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(ResolvedCallee, v30, v31);
      v40 = *(v39 + 36);
      if (v40)
      {
        v41 = (v39 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v41 = 4;
      }

      mlir::ConversionPatternRewriter::replaceOp(a4, v43, v41, v40);
    }

    v44 = "failed to resolve the callee to a concrete symbol";
    v45 = 259;
    v46 = &v44;
    v36 = *(a4 + 16);
    if (v36 && v36[2] == 1)
    {
      (*(*v36 + 88))(v36, *(v43 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::InvokeOp &>(mlir::ODIE::Compiler::CoreML::InvokeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v46);
    }

    if (v49[48] == 1 && v47 != v49)
    {
      free(v47);
    }

    if (v50 != &v52)
    {
      free(v50);
    }
  }

  else
  {
    v50 = "Failed to convert output types";
    v54 = 259;
    v47 = &v50;
    v35 = *(a4 + 16);
    if (v35 && v35[2] == 1)
    {
      (*(*v35 + 88))(v35, *(v43 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::InvokeOp &>(mlir::ODIE::Compiler::CoreML::InvokeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v47);
    }
  }

  if (v56 != v58)
  {
    free(v56);
  }

  if (v59 != &v61)
  {
    free(v59);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v17);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v14 = v9;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  v11 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

void *mlir::ODIE::Compiler::anonymous namespace::TokenToHandleStateMap::setHandleStateAtToken(uint64_t *a1, void *a2, uint64_t *a3)
{
  v12 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1, &v12);
  *result = a3;
  if (*(*(a3[1] & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    v5 = *v12;
    if (*v12)
    {
      do
      {
        v6 = v5[2];
        if (v6)
        {
          v7 = *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id;
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          v8 = *(v6 + 72);
          v9 = v8[1];
          if (v9)
          {
            v10 = *v8;
            *v9 = *v8;
            if (v10)
            {
              *(v10 + 8) = v8[1];
            }
          }

          v8[3] = a3;
          v11 = *a3;
          *v8 = *a3;
          v8[1] = a3;
          if (v11)
          {
            *(v11 + 8) = v8;
          }

          *a3 = v8;
        }

        v5 = *v5;
      }

      while (v5);
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreInvokePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreInvokePattern]";
  v6 = 124;
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

void mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern::~WriteHandleOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::WriteHandleOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 6) != 0 || v8 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v8 != 0)
    {
      v8 = v8[3];
    }
  }

  else
  {
    v8 = *v8;
  }

  v11 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 1;
  v12 = mlir::ValueRange::offset_base(&v19, 1);
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 6) != 0 || !v13)
  {
    if ((v12 & 6) == 2 && v13)
    {
      v13 = v13[3];
    }
  }

  else
  {
    v13 = *v13;
  }

  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(**v11 + 32));
  v19 = v11;
  v20 = v14;
  v21 = v23;
  v22 = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
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
  mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v19, v13, v8);
  v15 = mlir::Operation::create(&v19);
  mlir::OpBuilder::insert((a4 + 8), v15);
  v16 = *(*(v15 + 6) + 16);
  mlir::OperationState::~OperationState(&v19);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
  {
    v15 = 0;
  }

  v17 = *(v15 + 9);
  if (v17)
  {
    v18 = (v15 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v18 = 4;
  }

  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v18, v17);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::WriteHandleOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::WriteHandleOpPattern]";
  v6 = 127;
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

void mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern::~ReadHandleOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::ReadHandleOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 6) != 0 || v8 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v8 != 0)
    {
      v8 = v8[3];
    }
  }

  else
  {
    v8 = *v8;
  }

  v42 = *(a3 + 40);
  v43 = 1;
  v11 = mlir::ValueRange::offset_base(&v42, 1);
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 6) != 0 || !v12)
  {
    if ((v11 & 6) == 2 && v12)
    {
      v12 = *(v12 + 24);
    }
  }

  else
  {
    v12 = *v12;
  }

  if ((~*(v12 + 8) & 7) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  HandleStateAtToken = v8;
  if (v13)
  {
    v15 = *(v13 + 8) & 7;
    if (v15 == 6)
    {
      HandleStateAtToken = v8;
      v16 = v13 + 24 * *(v13 + 16) + 120;
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = v13 + 16 * v15 + 16;
    }

    v17 = *(*(v16 + 48) + 16);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id;
    HandleStateAtToken = v8;
    if (!v18)
    {
      v19 = *(a1 + 104);
      v42 = v12;
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v19, &v42))
      {
      }

      else
      {
        HandleStateAtToken = v12;
      }
    }
  }

LABEL_32:
  v20 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  v34 = 0;
  v35 = v20;
  {
    v21 = *(a2 + 24);
    v22 = *(**v21 + 32);
    v42 = v20;
    v36 = HandleStateAtToken;
    v37 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::MetaType,mlir::Type>(v22, &v42);
    v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, *(**v21 + 32));
    if ((v24 & 1) == 0)
    {
      v41 = 1283;
      v40[2] = "exec.get_type";
      v40[3] = 13;
      v39 = 259;
      llvm::operator+(v40, v38, &v42);
      llvm::report_fatal_error(&v42, 1);
    }

    v42 = v21;
    v43 = v23;
    v44 = v46;
    v45 = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v54 = &v56;
    v55 = 0x100000000;
    v57 = &v59;
    v58 = 0x100000000;
    v60 = 0;
    v61 = 0;
    v62 = &mlir::detail::TypeIDResolver<void,void>::id;
    v63 = 0;
    v64 = 0;
    mlir::ODIE::Compiler::Exec::GetTypeOp::build(a4 + 8, &v42, &v37 + 2, 1, &v36, 1, 0, 0);
    v25 = mlir::Operation::create(&v42);
    mlir::OpBuilder::insert((a4 + 8), v25);
    v26 = *(*(v25 + 6) + 16);
    mlir::OperationState::~OperationState(&v42);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v34 = v27 - 16;
  }

  v28 = mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type &,mlir::Value &>((a4 + 8), *(a2 + 24), &v35, &v34);
  v29 = *(a2 + 24);
  v38[0] = v20;
  v40[0] = HandleStateAtToken;
  v40[1] = v28 - 16;
  v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(**v29 + 32));
  v42 = v29;
  v43 = v30;
  v44 = v46;
  v45 = 0x400000000;
  v47 = v49;
  v48 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  v53 = 4;
  v54 = &v56;
  v55 = 0x100000000;
  v57 = &v59;
  v58 = 0x100000000;
  v60 = 0;
  v61 = 0;
  v62 = &mlir::detail::TypeIDResolver<void,void>::id;
  v63 = 0;
  v64 = 0;
  mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v42, v38 + 2, 1, v40, 2, 0, 0);
  v31 = mlir::Operation::create(&v42);
  mlir::OpBuilder::insert((a4 + 8), v31);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v42 = (v33 - 16);
  v43 = (v33 - 16);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v42, 2);
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::TokenToHandleStateMap::getHandleStateAtToken(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a1, &v9);
  v4 = *a1 + 16 * *(a1 + 16);
  if (v3)
  {
    v4 = v3;
  }

  result = *(v4 + 8);
  v10 = result;
  for (i = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136); i == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id; i = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136))
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(a1, &v10);
    v8 = *a1 + 16 * *(a1 + 16);
    if (v7)
    {
      v8 = v7;
    }

    result = *(v8 + 8);
    v10 = result;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::ReadHandleOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::ReadHandleOpPattern]";
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

void mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern::~CoreOutputPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreOutputPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::OutputOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a2;
  do
  {
    v6 = *((*(*(v6 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  while (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id);
  v45 = v6;
  v7 = *(*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72) + 8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 12);
  v46 = v48;
  v47 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
    v11 = v9;
    if (v10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v10, 8);
      v11 = *(v7 + 12);
    }
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = 0;
    v13 = v11;
    v14 = v8 - v9;
    while (1)
    {
      ArgAttr = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(&v45, v14 + v12, "coreml.intent", 0xDuLL);
      if (ArgAttr)
      {
        if (*(*ArgAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
        {
          v16 = ArgAttr;
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

      v17 = *(a3 + 48);
      v49 = *(a3 + 40);
      v50 = v17;
      v18 = mlir::ValueRange::dereference_iterator(&v49, v12);
      HandleStateAtToken = v18;
      if (v16 && *(v16 + 8) == 2)
      {
        goto LABEL_43;
      }

      v20 = *(((v45 + 16 * ((*(v45 + 44) >> 23) & 1) + ((*(v45 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v45 + 40) + 8);
      v21 = v20 - 8;
      if (!v20)
      {
        v21 = 0;
      }

      if (*(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

LABEL_43:
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, HandleStateAtToken);
      if (v13 == ++v12)
      {
        goto LABEL_44;
      }
    }

    v22 = *(*(v21 + 48) + 8 * (v14 + v12));
    v23 = *(a4 + 24);
    v24 = *(v18 + 8) & 7;
    if (v24 == 7)
    {
      v25 = 0;
    }

    else
    {
      v25 = v18;
    }

    if (v25)
    {
      v26 = *(v25 + 8) & 7;
      if (v26 == 6)
      {
        v27 = v25 + 24 * *(v25 + 16) + 120;
        if (!v27)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = v25 + 16 * v26 + 16;
      }

      *(a4 + 24) = vextq_s8(*(v27 + 8), *(v27 + 8), 8uLL);
      v24 = *(v18 + 8) & 7;
    }

LABEL_28:
    if (v24 == 7)
    {
      v28 = 0;
    }

    else
    {
      v28 = v18;
    }

    v44 = v23;
    if (!v28)
    {
      goto LABEL_34;
    }

    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
      if (!v30)
      {
LABEL_34:
        v31 = v18 + 32;
LABEL_37:
        v32 = *v31;
        v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(a4 + 8, *(***v31 + 32));
        v49 = v32;
        v50 = v33;
        v51 = v53;
        v52 = 0x400000000;
        v54 = v56;
        v55 = 0x400000000;
        v57 = v59;
        v58 = 0x400000000;
        v60 = 4;
        v61 = &v63;
        v62 = 0x100000000;
        v64 = &v66;
        v65 = 0x100000000;
        v67 = 0;
        v68 = 0;
        v69 = &mlir::detail::TypeIDResolver<void,void>::id;
        v70 = 0;
        v71 = 0;
        mlir::ODIE::Compiler::Exec::CopyOp::build(a4 + 8, &v49, HandleStateAtToken, v22);
        v34 = mlir::Operation::create(&v49);
        mlir::OpBuilder::insert((a4 + 8), v34);
        v35 = *(*(v34 + 6) + 16);
        mlir::OperationState::~OperationState(&v49);
        if (v44)
        {
          *(a4 + 24) = v44;
        }

        else
        {
          *(a4 + 24) = 0;
          *(a4 + 32) = 0;
        }

        if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id)
        {
          HandleStateAtToken = (v34 - 16);
        }

        else
        {
          HandleStateAtToken = -16;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }

    v31 = v30 + 24;
    goto LABEL_37;
  }

LABEL_44:
  v36 = *(a2 + 24);
  v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(a4 + 8, *(**v36 + 32));
  v49 = v36;
  v50 = v37;
  v51 = v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v57 = v59;
  v58 = 0x400000000;
  v60 = 4;
  v61 = &v63;
  v62 = 0x100000000;
  v64 = &v66;
  v65 = 0x100000000;
  v67 = 0;
  v68 = 0;
  v69 = &mlir::detail::TypeIDResolver<void,void>::id;
  v70 = 0;
  v71 = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v51, v46 & 0xFFFFFFFFFFFFFFF9, 0, v46 & 0xFFFFFFFFFFFFFFF9, v47);
  v38 = mlir::Operation::create(&v49);
  mlir::OpBuilder::insert((a4 + 8), v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(&v49);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  (*(*a4 + 8))(a4, a2, v40);
  if (v46 != v48)
  {
    free(v46);
  }

  return 1;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(uint64_t *a1, unsigned int a2, const void *a3, size_t a4)
{
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  result = (*(*(InterfaceFor + 48) + 24))();
  if (result)
  {
    v9 = *(*(result + 8) + 8 * a2);
    if (v9 && (v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v9 + 8), *(v9 + 8) + 16 * *(v9 + 16), a3, a4), (v11 & 1) != 0))
    {
      return *(v10 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreOutputPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreOutputPattern]";
  v6 = 124;
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

void mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern::~IsolatedGroupOpPattern(mlir::ODIE::Compiler::_anonymous_namespace_::IsolatedGroupOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 64), *(a3 + 72), &v13);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v9 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v9;
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v62[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 64);
  v7 = *(a3 + 72);
  v49 = v51;
  v50 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v49, v6, 0, v6, v7);
  v46 = v48;
  v47 = 0x600000000;
  v44[0] = v45;
  v44[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 68);
    if (v8)
    {
      v9 = 0;
      v10 = a2 + 64;
      v11 = 24;
      do
      {
        v12 = *(*(*(a2 + 72) + v11) + 8) & 0xFFFFFFFFFFFFFFF8;
        v13 = *(*v12 + 136);
        if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v46, v9);
          v15 = *(((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v15)
          {
            v16 = v15 - 8;
          }

          else
          {
            v16 = 0;
          }

          v17 = *(*(v16 + 48) + 8 * v9);
          Token = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateTokenOp>((a4 + 1), *(v17 + 32));
          mlir::RewriterBase::replaceAllUsesWith(a4, v17, Token - 16);
        }

        else
        {
          if (v12)
          {
            v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
          }

          else
          {
            v14 = 0;
          }

          if (v14)
          {
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v44, v12);
          }
        }

        ++v9;
        v11 += 32;
      }

      while (v8 != v9);
      if (v47)
      {
        v19 = 8 * v47;
        v20 = v46 - 8;
        do
        {
          v21 = *&v20[v19];
          v22 = v49 + 8 * v21;
          v23 = v50;
          v24 = v49 + 8 * v50;
          if (v24 != v22 + 8)
          {
            memmove(v22, v22 + 8, v24 - (v22 + 8));
            v23 = v50;
          }

          LODWORD(v50) = v23 - 1;
          v25 = *(((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
          if (v25)
          {
            v26 = (v25 - 8);
          }

          else
          {
            v26 = 0;
          }

          mlir::Block::eraseArgument(v26, v21);
          v19 -= 8;
        }

        while (v19);
      }
    }
  }

  v27 = *(a2 + 36);
  if (v27)
  {
    v28 = (a2 - 16);
  }

  else
  {
    v28 = 0;
  }

  v52 = v28;
  v53 = 0;
  v54 = v28;
  v55 = v27;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v38, &v52);
  v38 = v40;
  v39 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v41 & 0xFFFFFFFFFFFFFFF9 | 2, v42, &v38))
  {
    v29 = *(a2 + 24);
    v30 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>((a4 + 1), *(**v29 + 32));
    v52 = v29;
    v53 = v33;
    v54 = &v56;
    v55 = 0x400000000;
    v57 = v59;
    v58 = 0x400000000;
    v59[4] = v60;
    v59[5] = 0x400000000;
    v60[8] = 4;
    v60[9] = v61;
    v60[10] = 0x100000000;
    v61[1] = v62;
    v61[2] = 0x100000000;
    v62[2] = 0;
    v62[1] = 0;
    v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v62[4] = 0;
    v62[6] = 0;
    mlir::ODIE::Compiler::Exec::IsolatedGroupOp::build(a4 + 1, &v52, v38 & 0xFFFFFFFFFFFFFFF9 | 2, v39, v49 & 0xFFFFFFFFFFFFFFF9, v50, v31, v32);
  }

  v52 = "Failed to convert output types";
  v56 = 259;
  v37 = &v52;
  v34 = a4[2];
  if (v34 && *(v34 + 2) == 1)
  {
    (*(*v34 + 88))(v34, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &>(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v37);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != &v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  return 0;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 64), *(a3 + 72), &v15);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v9 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v10 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::IsolatedGroupOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::IsolatedGroupOpPattern]";
  v6 = 129;
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

void mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern::~CoreYieldPattern(mlir::ODIE::Compiler::_anonymous_namespace_::CoreYieldPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 88))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 96))(a1);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3 & 0xFFFFFFFFFFFFFFF9;
  v15 = a4;
  return (*(*a1 + 104))(a1);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = v4;
  v11 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = a3;
  v15 = a4;
  return (*(*a1 + 112))(a1);
}

{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v15);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v12 = *(a3 + 32);
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v13);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  v11 = v13 & 0xFFFFFFFFFFFFFFF9;
  v12 = v14;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v13 != v15)
  {
    free(v13);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v20 = v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v20, v7, 0, v7, v8);
  if (v21)
  {
    v9 = v20;
    v10 = 8 * v21;
    do
    {
      if (*(*(*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v12 = *(AttrDictionary + 8);
  v13 = *(AttrDictionary + 16);
  v14 = *(a2 + 3);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::YieldOp>(a4 + 8, *(**v14 + 32));
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v24;
  v23[3] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[4] = v26;
  v25[5] = 0x400000000;
  v26[8] = 4;
  v26[9] = v27;
  v26[10] = 0x100000000;
  v27[1] = v28;
  v27[2] = 0x100000000;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v28[4] = 0;
  v28[6] = 0;
  mlir::ODIE::Compiler::Exec::YieldOp::build(a4 + 8, v23, 2, 0, v20 & 0xFFFFFFFFFFFFFFF9, v21, v12, v13);
  v16 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert((a4 + 8), v16);
  v17 = *(*(v16 + 6) + 16);
  mlir::OperationState::~OperationState(v23);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::YieldOp,void>::id)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(*a4 + 8))(a4, a2, v18);
  if (v20 != v22)
  {
    free(v20);
  }

  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CoreYieldPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CoreYieldPattern]";
  v6 = 123;
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

void mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern::~CallDelegatePattern(mlir::ODIE::Compiler::_anonymous_namespace_::CallDelegatePattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[11] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v11, a2);
  v11[9] = v9;
  v11[10] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[11] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(v11, a2);
  v11[9] = a3;
  v11[10] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v15);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v10;
  v12 = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v89[8] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 3);
  v56 = a2;
  v78 = v80;
  v79 = 0x600000000;
  v75 = v77;
  v76 = 0x600000000;
  mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(&v56, v81);
  v73[0] = v74;
  v73[1] = 0x600000000;
  if (LODWORD(v81[1]))
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v73, v81);
  }

  if (v84 == 1 && v81[0] != v82)
  {
    free(v81[0]);
  }

  v8 = 0;
  for (i = 24; ; i += 32)
  {
    v10 = (*(v56 + 46) & 0x80) != 0 ? *(v56 + 17) : 0;
    if (v8 >= v10)
    {
      break;
    }

    if (*(*(*(*(*(v56 + 9) + i) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      *v81 = *(a3 + 72);
      v11 = mlir::ValueRange::dereference_iterator(v81, v8);
      if (*(*(v73[0] + v8) + 8) == 1)
      {
        v12 = &v75;
      }

      else
      {
        v12 = &v78;
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v12, v11);
    }

    ++v8;
  }

  v13 = *(v56 + 9);
  if (v13)
  {
    v14 = v56 - 16;
  }

  else
  {
    v14 = 0;
  }

  v70 = v72;
  v71 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v70, v14, 0, v14, v13);
  v15 = v71;
  if (v71)
  {
    v16 = 0;
    v17 = 0;
    v18 = 8 * v71;
    do
    {
      if (*(**(v70 + v16) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v19 = *(v75 + v17++);
        *(v70 + v16) = *(v19 + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      v16 += 8;
    }

    while (v18 != v16);
  }

  v67 = v69;
  v68 = 0x600000000;
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), v70 & 0xFFFFFFFFFFFFFFF9 | 2, v15, &v67))
  {
    v64 = v66;
    v65 = 0x600000000;
    if (LODWORD(v81[1]))
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(&v64, v81);
    }

    if (v84 == 1 && v81[0] != v82)
    {
      free(v81[0]);
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(v56);
    v22 = *(AttrDictionary + 8);
    v21 = *(AttrDictionary + 16);
    v60 = v62;
    v61 = 0x400000000;
    v63 = 0;
    dictionaryAttrSort<false>(v22, v21, &v60);
    v63 = 4;
    v23 = &unk_27FC18240;
    v24 = 64;
    do
    {
      mlir::NamedAttrList::erase(&v60, *(v23 - 1), *v23);
      v23 += 2;
      v24 -= 16;
    }

    while (v24);
    v26 = v56;
    while (1)
    {
      v27 = *(v26 + 2);
      if (!v27)
      {
        break;
      }

      v28 = *(v27 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v28)
      {
        break;
      }

      v26 = *(v28 + 16);
      if (!v26 || *(*(v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_44;
      }
    }

    v26 = 0;
LABEL_44:
    v31 = *(v56 + 2 * ((*(v56 + 11) >> 23) & 1) + 9);
    v32 = v56;
    v33 = *(v56 + 2 * ((*(v56 + 11) >> 23) & 1) + 9);
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    v36 = mlir::ArrayAttr::get(*(a4 + 8), v64, v65);
    v37 = *(v32 + 3);
    v38 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(a4 + 8, *(**v37 + 32));
    v81[0] = v37;
    v81[1] = v38;
    v82[0] = &v83;
    v82[1] = 0x400000000;
    v84 = v86;
    v85 = 0x400000000;
    v86[4] = v87;
    v86[5] = 0x400000000;
    v87[8] = 4;
    v87[9] = v88;
    v87[10] = 0x100000000;
    v88[1] = v89;
    v88[2] = 0x100000000;
    v89[2] = 0;
    v89[1] = 0;
    v89[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v89[4] = 0;
    v89[6] = 0;
    mlir::ODIE::Compiler::Exec::CallOp::build((a4 + 8), v81, v67 & 0xFFFFFFFFFFFFFFF9 | 2, v68, v34, v35, v78 & 0xFFFFFFFFFFFFFFF9, v79, v57 & 0xFFFFFFFFFFFFFFF9, v58, v36, 0);
    v39 = mlir::Operation::create(v81);
    mlir::OpBuilder::insert((a4 + 8), v39);
    v40 = *(*(v39 + 6) + 16);
    mlir::OperationState::~OperationState(v81);
    if (v40 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
    {
      v39 = 0;
    }

    (*(*a4 + 8))(a4, v32, v39);
    *(v39 + 7) = mlir::Operation::getDiscardableAttrDictionary(v56);
    v41 = *(v56 + 2 * ((*(v56 + 11) >> 23) & 1) + 11);
    v42 = mlir::detail::DenseArrayAttrImpl<signed char>::get((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), *(v41 + 24), *(v41 + 32));
    mlir::Operation::setAttr(v39, "resource", 8, v42);
    mlir::Operation::setAttr(v39, "delegate", 8, *(**(a4 + 8) + 608));
    v43 = v71;
    if (v71)
    {
      v44 = 0;
      v45 = -16;
      do
      {
        v46 = *(v56 + 9);
        v47 = v56 - 16;
        if (v46)
        {
          v48 = v56 - 16;
        }

        else
        {
          v48 = 0;
        }

        if (v45 == -16)
        {
          goto LABEL_60;
        }

        v49 = *(v48 + 1) & 7;
        if (v46)
        {
          v50 = v49 == 6;
        }

        else
        {
          v50 = 1;
        }

        v51 = v44;
        if (!v50)
        {
          v52 = (5 - v49);
          v51 = v44 - v52;
          if (v44 <= v52)
          {
            v48 = v56 + v45;
            goto LABEL_60;
          }

          v47 -= 16 * v52;
        }

        v48 = &v47[-24 * v51];
LABEL_60:
        if (*(*(*(v48 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          if (v44 <= 5)
          {
            v53 = v56 + v45;
          }

          else
          {
            v53 = v56 - 24 * (v44 - 5) - 96;
          }

          if (v44 <= 5)
          {
            v54 = &v39[v45];
          }

          else
          {
            v54 = &v39[-24 * (v44 - 5) - 96];
          }

          v43 = v71;
        }

        ++v44;
        v45 -= 16;
      }

      while (v44 < v43);
    }

    if (v57 != &v59)
    {
      free(v57);
    }

    if (v60 != v62)
    {
      free(v60);
    }

    if (v64 != v66)
    {
      free(v64);
    }

    v30 = 1;
  }

  else
  {
    v81[0] = "Failed to convert output types";
    v83 = 259;
    v60 = v81;
    v29 = *(a4 + 16);
    if (v29 && v29[2] == 1)
    {
      (*(*v29 + 88))(v29, *(v56 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::DelegateOp &>(mlir::ODIE::Compiler::CoreML::DelegateOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v60);
    }

    v30 = 0;
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  if (v73[0] != v74)
  {
    free(v73[0]);
  }

  if (v75 != v77)
  {
    free(v75);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  return v30;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::DelegateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 72), *(a3 + 80), &v17);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v9 = *(a3 + 64);
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v14 = v9;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  v11 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::anonymous namespace::CallDelegatePattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::(anonymous namespace)::CallDelegatePattern]";
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>,mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::IntentAttr,6u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 72 * a2;
    v3 = (a1 + 24);
    do
    {
      if ((*(v3 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 9;
      v2 -= 72;
    }

    while (v2);
  }
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler12_GLOBAL__N_117ConvertCoreToExec14runOnOperationEvE4__11NSC_6CoreML8ModuleOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(int a1, mlir::Operation *this)
{
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
  {
    v2 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
    v3 = v2 ? v2 - 8 : 0;
    if (*(v3 + 32) == v3 + 32)
    {
      if (*(this + 2))
      {
        *(this + 2) = 0;
        v5 = *this;
        v4 = *(this + 1);
        *v4 = *this;
        *(v5 + 8) = v4;
        *this = 0;
        *(this + 1) = 0;
      }

      mlir::Operation::destroy(this);
    }
  }
}

uint64_t llvm::SmallVector<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::TypeRange,mlir::ValueRange,mlir::Location,mlir::Type)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<mlir::Value ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -32 * v3;
    v5 = v2 + 32 * v3 - 32;
    do
    {
      v5 = std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::~__value_func[abi:nn200100](v5) - 32;
      v4 += 32;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void *mlir::ODIE::Compiler::materializeSourceConversion(uint64_t a1, size_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109[6] = *MEMORY[0x277D85DE8];
  v83 = a6;
  v84 = a1;
  v82 = a7;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    v13 = a2[4];
    v14 = a2 + 5;
  }

  else
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      return 0;
    }

    v12 = a2[3];
    if (*(v12 + 80) != 1)
    {
      return 0;
    }

    v13 = *(v12 + 16);
    v14 = (v12 + 24);
  }

  v15 = *v14;
  if (!*v14)
  {
    return 0;
  }

  v16 = (*(a3 + 16))(a3, a2);
  v18 = (*(v17 + 24))(v17, v16);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v83, v18, &v89);
  v19 = (*(a3 + 16))(a3, a2);
  v21 = (*(v20 + 24))(v20, v19);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v82, v21, &v87);
  v22 = (*(a3 + 16))(a3, a2);
  v24 = (*(v23 + 8))(v23, v22);
  if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v27 = *(v24 + 8) & 0x3FFFFFFF;
  }

  else
  {
    v25 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(v24);
    if (v25)
    {
      v27 = *((*v26)(v26, v25) + 12);
    }

    else
    {
      v27 = -1;
    }
  }

  v80 = 0;
  v81 = std::system_category();
  v29 = *v87 * v27 + 7;
  v30 = v29 >> 3;
  llvm::sys::Memory::allocateMappedMemory(v29 >> 3, 0, 50331648, &v80, &v78);
  v31 = v78;
  if ((*(a3 + 8))(a3, a2))
  {
    if (v29 >= 8)
    {
      v32 = &v31[v30];
      do
      {
        memmove(v31, v13, v15);
        v31 += v15;
      }

      while (v31 < v32);
    }

LABEL_75:
    v91 = v78;
    v92 = v79;
    llvm::sys::Memory::protectMappedMemory(&v91, 0x1000000);
    *&v91 = &v84;
    ElementsAttr = mlir::ODIE::Compiler::CoreML::createElementsAttr(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::materializeSourceConversion(mlir::Location,mlir::ElementsAttr,mlir::ShapedType,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::$_1>, &v91, a4, a5, &v78, v30);
    v31 = v78;
    goto LABEL_76;
  }

  v77 = v29 >> 3;
  v33 = __ROR8__(v27 - 8, 3);
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v60 = (*(a3 + 16))(a3, a2);
      v62 = (*(v61 + 24))(v61, v60);
      v64 = v63;
      v85 = v82;
      v86 = v83;
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v62, &v107);
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v85, v62, &v104);
      if (v64)
      {
        v65 = 8 * v64;
        v40 = 1;
        v66 = v62;
        do
        {
          v67 = *v66++;
          v40 *= v67;
          v65 -= 8;
        }

        while (v65);
      }

      else
      {
        v40 = 1;
      }

      *&v91 = v62;
      *(&v91 + 1) = v64;
      v92 = v94;
      v93 = 0x600000000;
      if (v108)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v92, &v107);
      }

      v74 = v29 >> 5;
      v75 = v15 >> 2;
      v95 = v86;
      v96 = v98;
      v97 = 0x600000000;
      if (v105)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v96, &v104);
      }

      v99 = v85;
      v100 = v31;
      v101 = v74;
      v102 = v13;
      v103 = v75;
    }

    else
    {
      if (v33 != 7)
      {
        goto LABEL_31;
      }

      v43 = (*(a3 + 16))(a3, a2);
      v45 = (*(v44 + 24))(v44, v43);
      v47 = v46;
      v85 = v82;
      v86 = v83;
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v45, &v107);
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v85, v45, &v104);
      if (v47)
      {
        v48 = 8 * v47;
        v40 = 1;
        v49 = v45;
        do
        {
          v50 = *v49++;
          v40 *= v50;
          v48 -= 8;
        }

        while (v48);
      }

      else
      {
        v40 = 1;
      }

      *&v91 = v45;
      *(&v91 + 1) = v47;
      v92 = v94;
      v93 = 0x600000000;
      if (v108)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v92, &v107);
      }

      v71 = v29 >> 6;
      v72 = v15 >> 3;
      v95 = v86;
      v96 = v98;
      v97 = 0x600000000;
      if (v105)
      {
        llvm::SmallVectorImpl<long long>::operator=(&v96, &v104);
      }

      v99 = v85;
      v100 = v31;
      v101 = v71;
      v102 = v13;
      v103 = v72;
    }

LABEL_67:
    llvm::parallelFor(0, v40, v70, &v91);
    if (v96 != v98)
    {
      free(v96);
    }

    v73 = v92;
    v30 = v77;
    if (v92 == v94)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (!v33)
  {
    v51 = (*(a3 + 16))(a3, a2);
    v53 = (*(v52 + 24))(v52, v51);
    v55 = v54;
    v85 = v82;
    v86 = v83;
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v53, &v107);
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v85, v53, &v104);
    if (v55)
    {
      v56 = 8 * v55;
      v57 = 1;
      v58 = v53;
      do
      {
        v59 = *v58++;
        v57 *= v59;
        v56 -= 8;
      }

      while (v56);
    }

    else
    {
      v57 = 1;
    }

    *&v91 = v53;
    *(&v91 + 1) = v55;
    v92 = v94;
    v93 = 0x600000000;
    if (v108)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v92, &v107);
    }

    v95 = v86;
    v96 = v98;
    v97 = 0x600000000;
    if (v105)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v96, &v104);
    }

    v99 = v85;
    v100 = v31;
    v30 = v29 >> 3;
    v101 = v29 >> 3;
    v102 = v13;
    v103 = v15;
    if (v96 != v98)
    {
      free(v96);
    }

    v73 = v92;
    if (v92 == v94)
    {
      goto LABEL_71;
    }

LABEL_70:
    free(v73);
LABEL_71:
    if (v104 != &v106)
    {
      free(v104);
    }

    if (v107 != v109)
    {
      free(v107);
    }

    goto LABEL_75;
  }

  if (v33 == 1)
  {
    v34 = (*(a3 + 16))(a3, a2);
    v36 = (*(v35 + 24))(v35, v34);
    v38 = v37;
    v85 = v82;
    v86 = v83;
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v86, v36, &v107);
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v85, v36, &v104);
    if (v38)
    {
      v39 = 8 * v38;
      v40 = 1;
      v41 = v36;
      do
      {
        v42 = *v41++;
        v40 *= v42;
        v39 -= 8;
      }

      while (v39);
    }

    else
    {
      v40 = 1;
    }

    *&v91 = v36;
    *(&v91 + 1) = v38;
    v92 = v94;
    v93 = 0x600000000;
    if (v108)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v92, &v107);
    }

    v68 = v29 >> 4;
    v69 = v15 >> 1;
    v95 = v86;
    v96 = v98;
    v97 = 0x600000000;
    if (v105)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v96, &v104);
    }

    v99 = v85;
    v100 = v31;
    v101 = v68;
    v102 = v13;
    v103 = v69;
    goto LABEL_67;
  }

LABEL_31:
  ElementsAttr = 0;
LABEL_76:
  if (v31)
  {
    llvm::sys::Memory::releaseMappedMemory(&v78);
  }

  if (v87 != &v88)
  {
    free(v87);
  }

  if (v89 != &v90)
  {
    free(v89);
  }

  return ElementsAttr;
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned long long>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v25, a1[1]);
  v4 = a1[1];
  v5 = v25[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 8 * v17) = *(a1[22] + 8 * v8);
  if (v5 != v26)
  {
    free(v5);
  }
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned int>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v25, a1[1]);
  v4 = a1[1];
  v5 = v25[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 4 * v17) = *(a1[22] + 4 * v8);
  if (v5 != v26)
  {
    free(v5);
  }
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned short>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v25, a1[1]);
  v4 = a1[1];
  v5 = v25[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    v20 = v5;
    do
    {
      v22 = *v18++;
      v21 = v22;
      v24 = *v20++;
      v23 = v24;
      if (v21 == 1)
      {
        v17 += *v19 * v23;
      }

      else
      {
        v17 += v23 % v21 + *v19 * (v23 / v21);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + 2 * v17) = *(a1[22] + 2 * v8);
  if (v5 != v26)
  {
    free(v5);
  }
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void mlir::ODIE::Compiler::anonymous namespace::reLayout<unsigned char>(llvm::MutableArrayRef<char>,llvm::ArrayRef<char>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::{lambda(unsigned long)#1}>(uint64_t *a1, unint64_t a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v24[0] = v25;
  v24[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(v24, a1[1]);
  v4 = a1[1];
  v5 = v24[0];
  if (v4 - 1 >= 0)
  {
    v6 = *a1;
    v7 = (v4 - 1);
    do
    {
      v5[v7] = a2 % *(v6 + v7 * 8);
      a2 /= *(v6 + v7 * 8);
      --v7;
    }

    while (v7 != -1);
  }

  v8 = 0;
  if (v4)
  {
    v9 = *(a1[10] + 24);
    v10 = (a1[2] + 8);
    v11 = v5;
    v12 = v4;
    do
    {
      v14 = *v9++;
      v13 = v14;
      v16 = *v11++;
      v15 = v16;
      if (v13 == 1)
      {
        v8 += *v10 * v15;
      }

      else
      {
        v8 += v15 % v13 + *v10 * (v15 / v13);
      }

      ++v10;
      --v12;
    }

    while (v12);
    v17 = 0;
    v18 = *(a1[19] + 24);
    v19 = (a1[11] + 8);
    do
    {
      v21 = *v18++;
      v20 = v21;
      v23 = *v5++;
      v22 = v23;
      if (v20 == 1)
      {
        v17 += *v19 * v22;
      }

      else
      {
        v17 += v22 % v20 + *v19 * (v22 / v20);
      }

      ++v19;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = 0;
  }

  *(a1[20] + v17) = *(a1[22] + v8);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::materializeSourceConversion(mlir::Location,mlir::ElementsAttr,mlir::ShapedType,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr)::$_1>(void ****a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **a1;
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

void anonymous namespace::FuncOpPattern::~FuncOpPattern(_anonymous_namespace_::FuncOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[13] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[11] = v9;
  v11[12] = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v11[13] = *MEMORY[0x277D85DE8];
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[11] = a3;
  v11[12] = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[13] = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[11] = v9;
  v11[12] = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v11[13] = *MEMORY[0x277D85DE8];
  mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(v11, a2);
  v11[11] = a3;
  v11[12] = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::func::FuncOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 88), *(a3 + 96), &v15);
  v8 = *(a3 + 48);
  v11[2] = *(a3 + 32);
  v11[3] = v8;
  v11[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v10 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v10;
  v12 = v9;
  v13 = v15 & 0xFFFFFFFFFFFFFFF9;
  v14 = v16;
  (*(*a1 + 88))(a1, a2, v11, a4);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t anonymous namespace::FuncOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x600000000;
  v7 = a2 + 64;
  v8 = *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
  if (mlir::TypeConverter::convertTypes(*(a1 + 96), *(v8 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v8 + 8), &v20))
  {
    v17 = v19;
    v18 = 0x600000000;
    v9 = *(*(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
    if (mlir::TypeConverter::convertTypes(*(a1 + 96), (*(v9 + 16) + 8 * *(v9 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v9 + 12), &v17))
    {
      (*(*a4 + 40))(a4, a2);
      v10 = *(a1 + 24);
      *&v23[0] = v20 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v23[0] + 1) = v21;
      *&v25 = v17 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(&v25 + 1) = v18;
      v11 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>((v10 & 0xFFFFFFFFFFFFFFF8), v23, &v25);
      *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) = mlir::TypeAttr::get(v11);
      (*(*a4 + 48))(a4, a2);
      mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(a4[5], a4, (((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)), *(a1 + 96), 0);
      if (v12)
      {
        v13 = 1;
LABEL_15:
        if (v17 != v19)
        {
          free(v17);
        }

        goto LABEL_17;
      }

      *&v23[0] = "Failed to convert region types";
      v24 = 259;
      *&v25 = v23;
    }

    else
    {
      *&v23[0] = "Failed to convert result types";
      v24 = 259;
      *&v25 = v23;
    }

    v15 = a4[2];
    if (v15 && v15[2] == 1)
    {
      (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
    }

    v13 = 0;
    goto LABEL_15;
  }

  v17 = "Failed to convert input types";
  v19[8] = 259;
  *&v23[0] = &v17;
  v14 = a4[2];
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v23);
  }

  v13 = 0;
LABEL_17:
  if (v20 != v22)
  {
    free(v20);
  }

  return v13;
}

uint64_t mlir::OpConversionPattern<mlir::func::FuncOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 88), *(a3 + 96), &v17);
  v8 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v8;
  v13[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v10 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v10;
  v14 = v9;
  v15 = v17 & 0xFFFFFFFFFFFFFFF9;
  v16 = v18;
  v11 = (*(*a1 + 104))(a1, a2, v13, a4);
  if (v17 != v19)
  {
    free(v17);
  }

  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FuncOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FuncOpPattern]";
  v6 = 98;
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

char *mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v30 = a2;
  v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  v41 = v43;
  v42 = 0x600000000;
  llvm::SmallVectorImpl<long long>::assign(&v41, a4, 1);
  v11 = (*(v10 + 24))(v10, v7);
  v38 = v40;
  v39 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v38, v11, &v11[8 * v12]);
  if (a4 < v39)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (!v15)
      {
LABEL_11:
        v16 = (a2 + 32);
LABEL_20:
        v25 = *v16;
        v32 = 257;
        emitDiag(v25, 2, v31, &v35);
        if (v35)
        {
          mlir::Diagnostic::operator<<<63ul>(&v36, "incompatible broadcast - current value rank is > target rank: ");
        }

        *&v31[0] = v39;
        v26 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v35, v31);
        v27 = v26;
        if (*v26)
        {
          mlir::Diagnostic::operator<<<5ul>((v26 + 1), " vs ");
        }

        v34 = a4;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v27, &v34);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
        v24 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }

    v16 = (v15 + 24);
    goto LABEL_20;
  }

  if (v39 >= 1)
  {
    v17 = v39 + 1;
    v18 = &v38[8 * v39 - 8];
    v19 = &v41[8 * a4 - 8];
    do
    {
      v20 = *v18;
      v18 -= 8;
      *v19 = v20;
      v19 -= 8;
      --v17;
    }

    while (v17 > 1);
  }

  v35 = v37;
  v36 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long *,void>(&v35, v41, &v41[8 * v42]);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v35, v36, 1);
  v21 = v41;
  v22 = v42;
  v23 = (*(v10 + 8))(v10, v7);
  *&v31[0] = v21;
  *(&v31[0] + 1) = v22;
  v33 = 0;
  v34 = v23;
  *&v31[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v23 + 32), v31, &v34, &v33);
  v24 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], v31, &v30, &Tensor) - 16;
  if (v35 != v37)
  {
    free(v35);
  }

LABEL_25:
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return v24;
}

char *mlir::ODIE::Compiler::createTensorConstant<int>(mlir::OpBuilder *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3, int a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1 || a4)
  {
    v16[0] = a3;
    v8 = v16;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = mlir::IntegerType::get(*a1, 32, 1);
  *&v15 = v8;
  *(&v15 + 1) = v7;
  v13 = 0;
  v14 = v9;
  v14 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v15, &v14, &v13);
  v10 = mlir::TensorType::operator mlir::ShapedType(&v14);
  *&v15 = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v15) - 16;
}

{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1 || a4)
  {
    v16[0] = a3;
    v8 = v16;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = mlir::IntegerType::get(*a1, 32, 1);
  *&v15 = v8;
  *(&v15 + 1) = v7;
  v13 = 0;
  v14 = v9;
  v14 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v15, &v14, &v13);
  v10 = mlir::TensorType::operator mlir::ShapedType(&v14);
  *&v15 = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v15) - 16;
}

uint64_t mlir::ODIE::Compiler::broadcastValueTo(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v54[8] = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  if (!(*(v11 + 16))(v11, v8) || ((*(v11 + 24))(v11, v8), v13 = v12, (*(a4 + 24))(a4, a3), v13 != v14))
  {
    if ((~*(v6 + 8) & 7) != 0)
    {
      v29 = v6;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_30;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_30:
        v32 = (v6 + 32);
LABEL_33:
        v33 = *v32;
        v47 = 257;
        emitDiag(v33, 2, &v44, &v48);
        if (!v48)
        {
LABEL_36:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
          return 0;
        }

        v34 = "expected the value to be of the same rank as the target shape";
LABEL_35:
        mlir::Diagnostic::operator<<<62ul>(v49, v34);
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
    goto LABEL_33;
  }

  if (!(*(a4 + 16))(a4, a3))
  {
    goto LABEL_38;
  }

  v15 = (*(a4 + 24))(a4, a3);
  if (v16)
  {
    v17 = 8 * v16;
    while (*v15 != 0x8000000000000000)
    {
      ++v15;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_11;
      }
    }

LABEL_38:
    if ((~*(v6 + 8) & 7) != 0)
    {
      v36 = v6;
    }

    else
    {
      v36 = 0;
    }

    if (!v36)
    {
      goto LABEL_44;
    }

    v37 = *(v36 + 8) & 7;
    if (v37 == 6)
    {
      v38 = v36 + 24 * *(v36 + 16) + 120;
      if (!v38)
      {
LABEL_44:
        v39 = (v6 + 32);
LABEL_47:
        v40 = *v39;
        v47 = 257;
        emitDiag(v40, 2, &v44, &v48);
        if (!v48)
        {
          goto LABEL_36;
        }

        v34 = " cannot emit broadcast_in_dims op if target shape is dynamic.";
        goto LABEL_35;
      }
    }

    else
    {
      v38 = v36 + 16 * v37 + 16;
    }

    v39 = (v38 + 24);
    goto LABEL_47;
  }

LABEL_11:
  if (v8 != a3)
  {
    v44 = v46;
    v45 = 0xC00000000;
    v41 = v43;
    v42 = 0xC00000000;
    (*(a4 + 24))(a4, a3);
    if (v18 >= 1)
    {
      v19 = v18;
      for (i = 0; i != v19; ++i)
      {
        v21 = *((*(v11 + 24))(v11, v8) + 8 * i);
        if (v21 != *((*(a4 + 24))(a4, a3) + 8 * i))
        {
          v22 = (*(a4 + 24))(a4, a3);
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v44, *(v22 + 8 * i));
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v41, i);
        }
      }
    }

    v23 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v44, v45);
    v24 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v41, v42);
    v25 = *(a1 + 4);
    v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a1, *(**v25 + 32));
    v48 = v25;
    v49[0] = v26;
    v49[1] = v50;
    v49[2] = 0x400000000;
    v50[4] = v51;
    v50[5] = 0x400000000;
    v51[4] = v52;
    v51[5] = 0x400000000;
    v52[8] = 4;
    v52[9] = v53;
    v52[10] = 0x100000000;
    v53[1] = v54;
    v53[2] = 0x100000000;
    v54[1] = 0;
    v54[2] = 0;
    v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v54[4] = 0;
    v54[6] = 0;
    mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(a1, &v48, a3, v6, v23, v24);
    v27 = mlir::Operation::create(&v48);
    mlir::OpBuilder::insert(a1, v27);
    v28 = *(*(v27 + 6) + 16);
    v6 = (v27 - 16);
    mlir::OperationState::~OperationState(&v48);
    if (v28 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
    {
      v6 = -16;
    }

    if (v41 != v43)
    {
      free(v41);
    }

    if (v44 != v46)
    {
      free(v44);
    }
  }

  return v6;
}

char *mlir::ODIE::Compiler::create1DTensorConstant<int>(mlir::OpBuilder *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v12 = v13;
  *(&v12 + 1) = 1;
  v10 = 0;
  v11 = v6;
  v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v12, &v11, &v10);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v11);
  *&v12 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v12) - 16;
}

{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v12 = v13;
  *(&v12 + 1) = 1;
  v10 = 0;
  v11 = v6;
  v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v12, &v11, &v10);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v11);
  *&v12 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v12) - 16;
}

{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v12 = v13;
  *(&v12 + 1) = 1;
  v10 = 0;
  v11 = v6;
  v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v12, &v11, &v10);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v11);
  *&v12 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v12) - 16;
}

uint64_t mlir::ODIE::Compiler::broadcastIfNeeded(uint64_t a1, uint64_t *__s2, unint64_t a3, mlir::OpBuilder *a4)
{
  v7 = a1;
  v30[6] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v9 != a3 || memcmp(*(v8 + 8), __s2, 8 * a3))
  {
    v29[0] = v30;
    v29[1] = 0x600000000;
    if (mlir::OpTrait::util::getBroadcastedShape(v10, v9, __s2, a3, v29))
    {
      if (v9 >= a3 || (v7 = mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(a4, v7, __s2, a3), (v11 & 1) != 0))
      {
        v12 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
        v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
        v15 = v13;
        if (v13)
        {
          v13 = (*(v14 + 8))(v14, v13);
        }

        if (v15)
        {
          v21 = v13;
        }

        else
        {
          v21 = v12;
        }

        *&v28[0] = __s2;
        *(&v28[0] + 1) = a3;
        v25[0] = v21;
        v27 = 0;
        *&v28[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), v28, v25, &v27);
        v22 = mlir::TensorType::operator mlir::ShapedType(v28);
        v7 = mlir::ODIE::Compiler::broadcastValueTo(a4, v7, v22, v23);
      }

      goto LABEL_25;
    }

    if ((~*(v7 + 8) & 7) != 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *(v16 + 8) & 7;
    if (v17 == 6)
    {
      v18 = v16 + 24 * *(v16 + 16) + 120;
      if (!v18)
      {
LABEL_16:
        v19 = (v7 + 32);
LABEL_20:
        v20 = *v19;
        v25[0] = "Can't broadcast incompatible shapes";
        v26 = 259;
        emitDiag(v20, 2, v25, v28);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
        v7 = 0;
LABEL_25:
        if (v29[0] != v30)
        {
          free(v29[0]);
        }

        return v7;
      }
    }

    else
    {
      v18 = v16 + 16 * v17 + 16;
    }

    v19 = (v18 + 24);
    goto LABEL_20;
  }

  return v7;
}

void mlir::ODIE::Compiler::createGraphOpFromFunc(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = a2;
  v6 = *(a2 + 3);
  v12 = (**(a3 + 40))();
  v7 = (*a3)(a3, a2);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v10 = (*(*(a3 + 48) + 24))();
  v9 = (*(*(a3 + 48) + 32))();
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::ArrayAttr>(a1, v6, &v12, &v11, &v10, &v9);
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::ArrayAttr>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v12;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::GraphOp::build(a1, v13, *(*a3 + 16), *(*a3 + 24), *a4, 0, 0, 0, 0, 0, *a5, *a6);
}

uint64_t mlir::Operation::removeAttr(uint64_t a1, const char *a2, const llvm::Twine *a3)
{
  v4 = *(***(a1 + 24) + 32);
  v8 = 261;
  v7[0] = a2;
  v7[1] = a3;
  v5 = mlir::StringAttr::get(v4, v7, a3);
  return mlir::Operation::removeAttr(a1, v5);
}

uint64_t mlir::ODIE::Compiler::copyAttributeInto(void **a1, uint64_t *a2, void *__dst, size_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = *(*a2 + 136);
  v10 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!a2 || !v10)
  {
    if (v8 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v21 = a2[4];
      if (a4 < v21)
      {
        v61 = 257;
        emitDiag(a1, 2, v60, &v63);
        if (v63)
        {
          mlir::Diagnostic::operator<<<61ul>(v64, "The dest size is not large enough for copying DenseArrayAttr");
        }

        goto LABEL_74;
      }

      if (!v21)
      {
        goto LABEL_71;
      }

      v23 = a2[3];
    }

    else
    {
      if (v8 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
      {
        v58 = "Unsupported attribute type: ";
        v59 = 259;
        emitDiag(a1, 2, &v58, &v63);
        if (v63)
        {
          LODWORD(v60[0]) = 0;
          v60[1] = a2;
          v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v65, v60, 1);
          v17 = v65 + 24 * v66;
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          ++v66;
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(v60, &v63);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
        v19 = v62 ^ 1;
        v20 = v60;
        goto LABEL_75;
      }

      v63 = a2;
      v60[0] = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v63);
      if (mlir::Type::isIntOrFloat(v60))
      {
        NumElements = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(&v63);
        v60[0] = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v63);
        if (NumElements * mlir::Type::getIntOrFloatBitWidth(v60) > (8 * a4))
        {
          v61 = 257;
          emitDiag(a1, 2, v60, &v63);
          if (v63)
          {
            mlir::Diagnostic::operator<<<72ul>(v64, "The dest size is not large enough for copying DenseResourceElementsAttr");
          }

          goto LABEL_74;
        }
      }

      v53 = a2[3];
      if ((*(v53 + 80) & 1) == 0)
      {
        v61 = 257;
        emitDiag(a1, 2, v60, &v63);
        if (v63)
        {
          mlir::Diagnostic::operator<<<19ul>(v64, "no blob on this op");
        }

        goto LABEL_74;
      }

      v21 = *(v53 + 24);
      if (!v21)
      {
        goto LABEL_71;
      }

      v23 = *(v53 + 16);
    }

    v41 = __dst;
    goto LABEL_70;
  }

  v63 = (*(a2[2] + 8))();
  if (mlir::Type::isIntOrFloat(&v63))
  {
    v11 = (*(a2[2] + 24))();
    if (v12)
    {
      v13 = 8 * v12;
      v14 = 1;
      do
      {
        v15 = *v11++;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v14 = 1;
    }

    v63 = (*(a2[2] + 8))();
    if (v14 * mlir::Type::getIntOrFloatBitWidth(&v63) > (8 * a4))
    {
      v61 = 257;
      emitDiag(a1, 2, v60, &v63);
      if (v63)
      {
        mlir::Diagnostic::operator<<<64ul>(v64, "The dest size is not large enough for copying DenseElementsAttr");
      }

LABEL_74:
      v19 = v67 ^ 1;
      v20 = &v63;
LABEL_75:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
      return v19 & 1;
    }
  }

  v55 = a2[4];
  v63 = (*(a2[2] + 8))();
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v63);
  v63 = (*(a2[2] + 8))();
  v25 = mlir::Type::getIntOrFloatBitWidth(&v63);
  v63 = (*(a2[2] + 8))();
  v26 = mlir::Type::getIntOrFloatBitWidth(&v63);
  v27 = (*(a2[2] + 24))();
  if (v28)
  {
    v29 = 8 * v28;
    v30 = 1;
    v31 = __dst;
    do
    {
      v32 = *v27++;
      v30 *= v32;
      v29 -= 8;
    }

    while (v29);
  }

  else
  {
    v30 = 1;
    v31 = __dst;
  }

  v33 = v26 - (v26 != 0);
  v34 = 3;
  if (v25 == 1)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

  v36 = v33 >> v35;
  if (v26)
  {
    ++v36;
  }

  v37 = IntOrFloatBitWidth != 1;
  if (IntOrFloatBitWidth == 1)
  {
    v34 = 0;
  }

  v38 = *(a2 + 24);
  v39 = v33 >> v34;
  if (v26)
  {
    ++v39;
  }

  v57 = v39 << v34;
  v23 = v55;
  if (((v37 ^ (v25 == 1)) & 1) != 0 || *(a2 + 24))
  {
    if (!v30)
    {
      goto LABEL_71;
    }

    v42 = 0;
    v43 = 0;
    v44 = v36 << v35;
    while (1)
    {
      v45 = v42 & 7;
      v46 = (v43 * v44) >> 3;
      if (v38)
      {
        v47 = 0;
      }

      else
      {
        v47 = (v43 * v57) >> 3;
        v48 = (v43 * v57) & 7;
        if (v48)
        {
          v49 = 0;
          goto LABEL_61;
        }
      }

      v48 = 0;
      if (v26 < 8 || ((v43 * v44) & 7) != 0)
      {
        break;
      }

      memmove(&v31[v46], &v23[v47], v26 >> 3);
      v23 = v55;
      v31 = __dst;
      if ((v26 & 7) != 0)
      {
        v48 = 0;
        v49 = v26 & 7;
        goto LABEL_61;
      }

LABEL_64:
      ++v43;
      v42 = v45 + v44;
      if (v43 == v30)
      {
        goto LABEL_71;
      }
    }

    v49 = 0;
LABEL_61:
    v50 = v26 - v49;
    if (v26 > v49)
    {
      v51 = v49 + v45;
      v52 = v48 + v49;
      do
      {
        v31[v46 + (v51 >> 3)] = v31[v46 + (v51 >> 3)] & ~(1 << (v51 & 7)) | (((v23[v47 + (v52 >> 3)] >> (v52 & 7)) & 1) << (v51 & 7));
        ++v51;
        ++v52;
        --v50;
      }

      while (v50);
    }

    goto LABEL_64;
  }

  v40 = v30 * v57 - (v30 * v57 != 0) + 8 * (v30 * v57 != 0);
  if (v40 >= 8)
  {
    v21 = v40 >> 3;
    v41 = v31;
LABEL_70:
    memmove(v41, v23, v21);
  }

LABEL_71:
  v19 = 1;
  return v19 & 1;
}

char ***mlir::ODIE::Compiler::getBroadcastedShape(char ***result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v35[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = v26;
    v24 = v26;
    v25 = 0x100000000;
    if (a3 == 1)
    {
      v7 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v24, a3);
      v7 = v25;
      v6 = v24;
    }

    if (v7 != a3)
    {
      v8 = (a3 << 6) - (v7 << 6);
      v9 = &v6[8 * v7 + 2];
      do
      {
        *(v9 - 16) = v9;
        *(v9 - 8) = 0x600000000;
        v9 += 64;
        v8 -= 64;
      }

      while (v8);
    }

    LODWORD(v25) = a3;
    v10 = 8 * a3;
    do
    {
      v11 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
      v12 = *(v11 + 8);
      v13 = &v12[8 * *(v11 + 16)];
      v33 = v35;
      v34 = 0x600000000;
      v14 = &v33;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v33, v12, v13);
      v15 = v24;
      if (v25 >= HIDWORD(v25))
      {
        if (v24 <= &v33 && &v24[8 * v25] > &v33)
        {
          v17 = &v33 - v24;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v24, v25 + 1);
          v15 = v24;
          v14 = (v24 + v17);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v24, v25 + 1);
          v15 = v24;
        }
      }

      v16 = &v15[8 * v25];
      *v16 = (v16 + 2);
      v16[1] = 0x600000000;
      if (*(v14 + 2))
      {
        llvm::SmallVectorImpl<long long>::operator=(v16, v14);
      }

      LODWORD(v25) = v25 + 1;
      if (v33 != v35)
      {
        free(v33);
      }

      a2 += 8;
      v10 -= 8;
    }

    while (v10);
    v18 = v25;
    if (v25)
    {
      v19 = v24;
      v33 = v35;
      v34 = 0x600000000;
      if (*(v24 + 2))
      {
        llvm::SmallVectorImpl<long long>::operator=(&v33, v24);
      }

      if (v18 == 1)
      {
LABEL_37:
        *v3 = (v3 + 2);
        v3[1] = 0x600000000;
        if (v34)
        {
          llvm::SmallVectorImpl<long long>::operator=(v3, &v33);
        }

        *(v3 + 64) = 1;
      }

      else
      {
        v20 = (v19 + 8);
        v21 = (v18 << 6) - 64;
        while (1)
        {
          v30 = v32;
          v31 = 0x600000000;
          if (*(v20 + 8))
          {
            llvm::SmallVectorImpl<long long>::operator=(&v30, v20);
          }

          v27 = v29;
          v28 = 0x600000000;
          if (v34)
          {
            llvm::SmallVectorImpl<long long>::operator=(&v27, &v33);
            v22 = v27;
            v23 = v28;
          }

          else
          {
            v23 = 0;
            v22 = v29;
          }

          if ((mlir::OpTrait::util::getBroadcastedShape(v22, v23, v30, v31, &v33) & 1) == 0)
          {
            break;
          }

          if (v27 != v29)
          {
            free(v27);
          }

          if (v30 != v32)
          {
            free(v30);
          }

          v20 += 64;
          v21 -= 64;
          if (!v21)
          {
            goto LABEL_37;
          }
        }

        *v3 = 0;
        *(v3 + 64) = 0;
        if (v27 != v29)
        {
          free(v27);
        }

        if (v30 != v32)
        {
          free(v30);
        }
      }

      if (v33 != v35)
      {
        free(v33);
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 64) = 0;
    }

    return llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(&v24);
  }

  else
  {
    *result = 0;
    *(result + 64) = 0;
  }

  return result;
}

void mlir::ODIE::Compiler::getBroadcastedValues(uint64_t *__src@<X0>, unint64_t a2@<X1>, mlir::OpBuilder *a3@<X2>, uint64_t a4@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = &__src[a2];
  if (a2 < 2)
  {
LABEL_5:
    *&__s2 = &v75;
    *(&__s2 + 1) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__s2, __src, v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (DWORD2(__s2))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a4, &__s2);
    }

    *(a4 + 64) = 1;
    v13 = __s2;
    if (__s2 != &v75)
    {
LABEL_8:
      free(v13);
    }
  }

  else
  {
    v9 = __src + 1;
    v60 = 8 * a2;
    v10 = 8 * a2 - 8;
    v11 = v10;
    v12 = __src + 1;
    while (*v12 == *(v12 - 1))
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v14 = __src;
    do
    {
      v15 = (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v15 = 0;
      }

      if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_20;
      }

      v16 = v15[2];
      if (v16)
      {
        v17 = v15[1];
        v18 = 8 * v16;
        while (*v17 != 0x8000000000000000)
        {
          ++v17;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_18;
          }
        }

LABEL_20:
        v58 = a4;
        if (*(*(*(*__src + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v19 = *(*__src + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v19 = 0;
        }

        v62 = *(v19 + 16);
        v20 = mlir::IntegerType::get(*a3, 32, 1);
        *&__s2 = &v62;
        *(&__s2 + 1) = 1;
        v69 = v20;
        v65 = 0;
        v21 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v20 + 32), &__s2, &v69, &v65);
        v22 = *(a3 + 4);
        Shape = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a3, *(**v22 + 32));
        *&__s2 = v22;
        *(&__s2 + 1) = Shape;
        v75 = v77;
        v76 = 0x400000000;
        v78 = v80;
        v79 = 0x400000000;
        v81 = v83;
        v82 = 0x400000000;
        v84 = 4;
        v85 = &v87;
        v86 = 0x100000000;
        v88 = &v90;
        v89 = 0x100000000;
        v92 = 0;
        v91 = 0;
        v93 = &mlir::detail::TypeIDResolver<void,void>::id;
        v94 = 0;
        v95 = 0;
        v59 = __src;
        mlir::ODIE::Compiler::CoreML::GetShapeOp::build(a3, &__s2, v21, *__src);
        v24 = mlir::Operation::create(&__s2);
        mlir::OpBuilder::insert(a3, v24);
        v25 = *(*(v24 + 6) + 16);
        v26 = (v24 - 16);
        mlir::OperationState::~OperationState(&__s2);
        if (v25 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
        {
          v26 = -16;
        }

        do
        {
          v61 = *v9;
          if (**((*(v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) <= *((*(v61 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
          {
            v27 = *((*(v61 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v27 = **((*(v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
          }

          v62 = *((*(v61 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
          v28 = mlir::IntegerType::get(*a3, 32, 1);
          *&__s2 = &v62;
          *(&__s2 + 1) = 1;
          v69 = v28;
          v65 = 0;
          *&__s2 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &__s2, &v69, &v65);
          v29 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a3, *(a3 + 4), &__s2, &v61);
          v73 = v27;
          v30 = mlir::IntegerType::get(*a3, 32, 1);
          *&__s2 = &v73;
          *(&__s2 + 1) = 1;
          v69 = v30;
          v65 = 0;
          v31 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), &__s2, &v69, &v65);
          v32 = *(a3 + 4);
          v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,void>::id, *(**v32 + 32));
          if ((v34 & 1) == 0)
          {
            v68 = 1283;
            v67[0] = "coreml.broadcast_shapes";
            v67[1] = 23;
            v64[8] = 259;
            llvm::operator+(&v65, &v62, &v69);
            llvm::report_fatal_error(&v69, 1);
          }

          *&__s2 = v32;
          *(&__s2 + 1) = v33;
          v75 = v77;
          v76 = 0x400000000;
          v78 = v80;
          v79 = 0x400000000;
          v81 = v83;
          v82 = 0x400000000;
          v84 = 4;
          v85 = &v87;
          v86 = 0x100000000;
          v88 = &v90;
          v89 = 0x100000000;
          v91 = 0;
          v92 = 0;
          v93 = &mlir::detail::TypeIDResolver<void,void>::id;
          v94 = 0;
          v95 = 0;
          mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::build(a3, &__s2, v31, v26, v29 - 16);
          v35 = mlir::Operation::create(&__s2);
          mlir::OpBuilder::insert(a3, v35);
          v36 = *(*(v35 + 6) + 16);
          v26 = (v35 - 16);
          mlir::OperationState::~OperationState(&__s2);
          if (v36 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,void>::id)
          {
            v26 = -16;
          }

          ++v9;
          v10 -= 8;
        }

        while (v10);
        v37 = v59;
        mlir::ODIE::Compiler::getBroadcastedShape(&v69, v59, a2);
        if ((v72 & 1) == 0)
        {
          *a4 = 0;
          *(a4 + 64) = 0;
          return;
        }

        v65 = v67;
        v66 = 0x600000000;
        if (v70)
        {
          llvm::SmallVectorImpl<long long>::operator=(&v65, &v69);
        }

        v62 = v64;
        v63 = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v62, a2);
        v38 = 0;
        do
        {
          v39 = v65;
          v40 = v66;
          v41 = (*(v37[v38 / 8] + 8) & 0xFFFFFFFFFFFFFFF8);
          v42 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v41);
          v44 = v42;
          if (v42)
          {
            v42 = (*(v43 + 8))(v43, v42);
          }

          if (v44)
          {
            v45 = v42;
          }

          else
          {
            v45 = v41;
          }

          *&__s2 = v39;
          *(&__s2 + 1) = v40;
          v61 = v45;
          v73 = 0;
          v46 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v45 + 32), &__s2, &v61, &v73);
          v47 = *(a3 + 4);
          v48 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a3, *(**v47 + 32));
          *&__s2 = v47;
          *(&__s2 + 1) = v48;
          v75 = v77;
          v76 = 0x400000000;
          v78 = v80;
          v79 = 0x400000000;
          v81 = v83;
          v82 = 0x400000000;
          v84 = 4;
          v85 = &v87;
          v86 = 0x100000000;
          v88 = &v90;
          v89 = 0x100000000;
          v91 = 0;
          v92 = 0;
          v93 = &mlir::detail::TypeIDResolver<void,void>::id;
          v94 = 0;
          v95 = 0;
          v37 = v59;
          mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a3, &__s2, v46, v59[v38 / 8], v26);
          v49 = mlir::Operation::create(&__s2);
          mlir::OpBuilder::insert(a3, v49);
          v50 = *(*(v49 + 6) + 16);
          mlir::OperationState::~OperationState(&__s2);
          if (v50 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
          {
            v51 = v49;
          }

          else
          {
            v51 = 0;
          }

          *(v62 + v38) = v51 - 16;
          v38 += 8;
        }

        while (v60 != v38);
        *v58 = v58 + 16;
        *(v58 + 8) = 0x600000000;
        if (v63)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v58, &v62);
        }

        *(v58 + 64) = 1;
        if (v62 != v64)
        {
          free(v62);
        }

        if (v65 != v67)
        {
          free(v65);
        }

        if (v72)
        {
          v13 = v69;
          p_s2 = &v69;
          goto LABEL_53;
        }

        return;
      }

LABEL_18:
      ++v14;
    }

    while (v14 != v7);
    while (*v9 == *(v9 - 1))
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    mlir::ODIE::Compiler::getBroadcastedShape(&__s2, __src, a2);
    if (v78 != 1)
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      return;
    }

    v69 = v71;
    v70 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v69, a2);
    v53 = 0;
    do
    {
      v54 = mlir::ODIE::Compiler::broadcastIfNeeded(__src[v53 / 8], __s2, DWORD2(__s2), a3);
      if ((v55 & 1) == 0)
      {
        v56 = 0;
        *a4 = 0;
        goto LABEL_68;
      }

      *(v69 + v53) = v54;
      v53 += 8;
    }

    while (v60 != v53);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (v70)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a4, &v69);
    }

    v56 = 1;
LABEL_68:
    *(a4 + 64) = v56;
    if (v69 != v71)
    {
      free(v69);
    }

    if (v78)
    {
      v13 = __s2;
      p_s2 = &__s2;
LABEL_53:
      if (v13 != p_s2 + 16)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t mlir::ODIE::Compiler::castValueToElementType(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v10 != a3)
  {
    v11 = *(v4 + 8);
    v12 = v11 & 0xFFFFFFFFFFFFFFF8;
    if (*(*(v11 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v12 = 0;
    }

    v19 = v12;
    if (v12)
    {
      LOBYTE(v23) = 0;
      v24 = 0;
      v21[0] = mlir::TensorType::cloneWith(&v19, &v23, a3);
      return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::TensorType,mlir::Value &>(a1, a1[4], v21, &v20) - 16;
    }

    if ((~v11 & 7) != 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *(v14 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v14 + 24 * *(v14 + 16) + 120;
      if (!v16)
      {
LABEL_18:
        v17 = (v4 + 32);
LABEL_21:
        v18 = *v17;
        v22 = 257;
        emitDiag(v18, 2, v21, &v23);
        if (v23)
        {
          mlir::Diagnostic::operator<<<46ul>(&v23 + 8, "expecting RankedTensorType for value to cast.");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
        return 0;
      }
    }

    else
    {
      v16 = v14 + 16 * v15 + 16;
    }

    v17 = (v16 + 24);
    goto LABEL_21;
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::castValueToElementTypeOfOther(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
  v8 = v6;
  if (v6)
  {
    v6 = (*(v7 + 8))(v7, v6);
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  return mlir::ODIE::Compiler::castValueToElementType(a1, a2, v9);
}

char *mlir::ODIE::Compiler::getMultiplyWithScalar(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v33 = a2;
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v38 = 257;
        emitDiag(v9, 2, v36, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v41, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v41, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        return 0;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v14 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
  v17 = v15;
  if (v15)
  {
    v15 = (*(v16 + 8))(v16, v15);
  }

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v18);
  if ((v20 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16) + 120;
      if (!v24)
      {
LABEL_31:
        v25 = (a2 + 32);
LABEL_41:
        v30 = *v25;
        v38 = 257;
        emitDiag(v30, 2, v36, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v41, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v41, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v41, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v41, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = v22 + 16 * v23 + 16;
    }

    v25 = (v24 + 24);
    goto LABEL_41;
  }

  v21 = v19;
  v32 = v19;
  __src = v19;
  v41[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v36);
  if ((v39 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = 0;
    }

    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = *(v26 + 8) & 7;
    if (v27 == 6)
    {
      v28 = v26 + 24 * *(v26 + 16) + 120;
      if (!v28)
      {
LABEL_38:
        v29 = (a2 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v28 = v26 + 16 * v27 + 16;
    }

    v29 = (v28 + 24);
LABEL_48:
    v31 = *v29;
    v35 = 257;
    emitDiag(v31, 2, v34, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v41, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v41, v21);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v41, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v41, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_54;
  }

  v32 = *v36[0];
  __src = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v33, &v32) - 16;
LABEL_54:
  if (v39 == 1 && v36[0] != &v37)
  {
    free(v36[0]);
  }

  return v10;
}

uint64_t mlir::ODIE::Compiler::getDivideWithScalar(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v42 = 257;
        emitDiag(v9, 2, v40, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v45, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v45, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        return 0;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v14 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
  v17 = v15;
  if (v15)
  {
    v15 = (*(v16 + 8))(v16, v15);
  }

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v18);
  if ((v20 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
      if (!v30)
      {
LABEL_33:
        v31 = (a2 + 32);
LABEL_43:
        v36 = *v31;
        v42 = 257;
        emitDiag(v36, 2, v40, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v45, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v45, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v45, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v45, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }

    v31 = (v30 + 24);
    goto LABEL_43;
  }

  v21 = v19;
  __src = v19;
  v45[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v40);
  if ((v43 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_40;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16) + 120;
      if (!v34)
      {
LABEL_40:
        v35 = (a2 + 32);
        goto LABEL_50;
      }
    }

    else
    {
      v34 = v32 + 16 * v33 + 16;
    }

    v35 = (v34 + 24);
LABEL_50:
    v37 = *v35;
    v39 = 257;
    emitDiag(v37, 2, v38, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v45, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v45, v21);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v45, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v45, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_56;
  }

  v22 = *v40[0];
  v23 = *(a2 + 8);
  v24 = *(a1 + 4);
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**v24 + 32));
  __src = v24;
  v45[0] = v25;
  v45[1] = v46;
  v45[2] = 0x400000000;
  v46[4] = v47;
  v46[5] = 0x400000000;
  v47[4] = v48;
  v47[5] = 0x400000000;
  v48[8] = 4;
  v48[9] = v49;
  v48[10] = 0x100000000;
  v49[1] = v50;
  v49[2] = 0x100000000;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v50[4] = 0;
  v50[6] = 0;
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, &__src, v23 & 0xFFFFFFFFFFFFFFF8, a2, v22);
  v26 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v26);
  v27 = *(*(v26 + 6) + 16);
  v10 = (v26 - 16);
  mlir::OperationState::~OperationState(&__src);
  if (v27 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
  {
    v10 = -16;
  }

LABEL_56:
  if (v43 == 1 && v40[0] != &v41)
  {
    free(v40[0]);
  }

  return v10;
}

char *mlir::ODIE::Compiler::getAddWithScalar(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v40[25] = *MEMORY[0x277D85DE8];
  v32 = a2;
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v37 = 257;
        emitDiag(v9, 2, v35, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v40, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v40, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        return 0;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v14 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
  v17 = v15;
  if (v15)
  {
    v15 = (*(v16 + 8))(v16, v15);
  }

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v18);
  if ((v20 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16) + 120;
      if (!v24)
      {
LABEL_31:
        v25 = (a2 + 32);
LABEL_41:
        v30 = *v25;
        v37 = 257;
        emitDiag(v30, 2, v35, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v40, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v40, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v40, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v40, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = v22 + 16 * v23 + 16;
    }

    v25 = (v24 + 24);
    goto LABEL_41;
  }

  v21 = v19;
  __src = v19;
  v40[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v35);
  if ((v38 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = 0;
    }

    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = *(v26 + 8) & 7;
    if (v27 == 6)
    {
      v28 = v26 + 24 * *(v26 + 16) + 120;
      if (!v28)
      {
LABEL_38:
        v29 = (a2 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v28 = v26 + 16 * v27 + 16;
    }

    v29 = (v28 + 24);
LABEL_48:
    v31 = *v29;
    v34 = 257;
    emitDiag(v31, 2, v33, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v40, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v40, v21);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v40, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v40, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_54;
  }

  __src = *v35[0];
  v33[0] = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v33, &v32, &__src) - 16;
LABEL_54:
  if (v38 == 1 && v35[0] != &v36)
  {
    free(v35[0]);
  }

  return v10;
}

uint64_t mlir::ODIE::Compiler::getCoreMLLeakyRelu(mlir::OpBuilder *a1, char *a2, uint64_t a3)
{
  v84[25] = *MEMORY[0x277D85DE8];
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  v7 = Tensor;
  v72 = a2;
  v8 = *(Tensor + 1);
  if (*(*(v8 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v8 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v8 & 7) != 0)
    {
      v9 = Tensor;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *(v9 + 1) & 7;
    if (v10 == 6)
    {
      v11 = &v9[24 * *(v9 + 2) + 120];
      if (!v11)
      {
LABEL_9:
        v12 = (Tensor + 32);
LABEL_12:
        v13 = *v12;
        v81 = 257;
        emitDiag(v13, 2, v79, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v84, v7);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v84, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v14 = 0;
        v15 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = &v9[16 * v10 + 16];
    }

    v12 = (v11 + 24);
    goto LABEL_12;
  }

  v28 = (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8);
  v29 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28);
  v31 = v29;
  if (v29)
  {
    v29 = (*(v30 + 8))(v30, v29);
  }

  if (v31)
  {
    v36 = v29;
  }

  else
  {
    v36 = v28;
  }

  v37 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v36);
  if ((v38 & 1) == 0)
  {
    if ((~*(a2 + 2) & 7) != 0)
    {
      v40 = a2;
    }

    else
    {
      v40 = 0;
    }

    if (!v40)
    {
      goto LABEL_62;
    }

    v41 = *(v40 + 8) & 7;
    if (v41 == 6)
    {
      v42 = v40 + 24 * *(v40 + 16) + 120;
      if (!v42)
      {
LABEL_62:
        v43 = (a2 + 32);
LABEL_92:
        v62 = *v43;
        v81 = 257;
        emitDiag(v62, 2, v79, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v84, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v84, v7);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v84, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v84, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v42 = v40 + 16 * v41 + 16;
    }

    v43 = (v42 + 24);
    goto LABEL_92;
  }

  v39 = v37;
  v75 = v37;
  __src = v37;
  v84[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v79);
  if ((v82 & 1) == 0)
  {
    if ((~*(a2 + 2) & 7) != 0)
    {
      v54 = a2;
    }

    else
    {
      v54 = 0;
    }

    if (!v54)
    {
      goto LABEL_82;
    }

    v55 = *(v54 + 8) & 7;
    if (v55 == 6)
    {
      v56 = v54 + 24 * *(v54 + 16) + 120;
      if (!v56)
      {
LABEL_82:
        v57 = (a2 + 32);
        goto LABEL_106;
      }
    }

    else
    {
      v56 = v54 + 16 * v55 + 16;
    }

    v57 = (v56 + 24);
LABEL_106:
    v64 = *v57;
    v78 = 257;
    emitDiag(v64, 2, &MultiplyWithScalar, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v84, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v84, v39);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v84, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v84, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v14 = 0;
    v15 = 0;
    goto LABEL_112;
  }

  v75 = *v79[0];
  __src = *(a2 + 1) & 0xFFFFFFFFFFFFFFF8;
  v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v75, &v72) - 16;
  v15 = 1;
LABEL_112:
  if (v82 == 1 && v79[0] != v80)
  {
    free(v79[0]);
  }

LABEL_16:
  v72 = v14;
  v73 = v15;
  v75 = a2;
  v16 = *(v7 + 8);
  if (*(*(v16 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v16 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v16 & 7) != 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *(v17 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v17 + 24 * *(v17 + 16) + 120;
      if (!v19)
      {
LABEL_24:
        v20 = (v7 + 32);
LABEL_27:
        v21 = *v20;
        v81 = 257;
        emitDiag(v21, 2, v79, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v84, v7);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v84, " is not a scalar tensor");
          }
        }

LABEL_30:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        goto LABEL_31;
      }
    }

    else
    {
      v19 = v17 + 16 * v18 + 16;
    }

    v20 = (v19 + 24);
    goto LABEL_27;
  }

  v32 = (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8);
  v33 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v32);
  v35 = v33;
  if (v33)
  {
    v33 = (*(v34 + 8))(v34, v33);
  }

  if (v35)
  {
    v44 = v33;
  }

  else
  {
    v44 = v32;
  }

  v45 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v44);
  if ((v46 & 1) == 0)
  {
    if ((~*(a2 + 2) & 7) != 0)
    {
      v50 = a2;
    }

    else
    {
      v50 = 0;
    }

    if (!v50)
    {
      goto LABEL_75;
    }

    v51 = *(v50 + 8) & 7;
    if (v51 == 6)
    {
      v52 = v50 + 24 * *(v50 + 16) + 120;
      if (!v52)
      {
LABEL_75:
        v53 = (a2 + 32);
LABEL_99:
        v63 = *v53;
        v81 = 257;
        emitDiag(v63, 2, v79, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v84, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v84, v7);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v84, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v84, a2);
              }
            }
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v52 = v50 + 16 * v51 + 16;
    }

    v53 = (v52 + 24);
    goto LABEL_99;
  }

  v47 = v45;
  v74 = v45;
  __src = v45;
  v84[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v79);
  v48 = v82;
  if (v82)
  {
    v74 = *v79[0];
    __src = *(a2 + 1) & 0xFFFFFFFFFFFFFFF8;
    v49 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v74, &v75) - 16;
    goto LABEL_123;
  }

  if ((~*(a2 + 2) & 7) != 0)
  {
    v58 = a2;
  }

  else
  {
    v58 = 0;
  }

  if (!v58)
  {
    goto LABEL_89;
  }

  v59 = *(v58 + 8) & 7;
  if (v59 == 6)
  {
    v60 = v58 + 24 * *(v58 + 16) + 120;
    if (!v60)
    {
LABEL_89:
      v61 = (a2 + 32);
      goto LABEL_117;
    }
  }

  else
  {
    v60 = v58 + 16 * v59 + 16;
  }

  v61 = (v60 + 24);
LABEL_117:
  v65 = *v61;
  v78 = 257;
  emitDiag(v65, 2, &MultiplyWithScalar, &__src);
  if (__src)
  {
    mlir::Diagnostic::operator<<<23ul>(v84, "failed to broadcast - ");
    if (__src)
    {
      mlir::Diagnostic::operator<<(v84, v47);
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v84, " and ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v84, a2);
        }
      }
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v49 = 0;
LABEL_123:
  if (v82 == 1 && v79[0] != v80)
  {
    free(v79[0]);
  }

  if (!v15 || (v48 & 1) == 0)
  {
LABEL_31:
    if ((~*(a2 + 2) & 7) != 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_37;
    }

    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16) + 120;
      if (!v24)
      {
LABEL_37:
        v25 = (a2 + 32);
LABEL_40:
        v26 = *v25;
        v81 = 257;
        emitDiag(v26, 2, v79, &__src);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<42ul>(v84, "failed to compute maximum and minimum of ");
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<(v84, a2);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<6ul>(v84, " and ");
        if (!__src)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v24 = v22 + 16 * v23 + 16;
    }

    v25 = (v24 + 24);
    goto LABEL_40;
  }

  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v49, a3);
  v77 = v66;
  if ((v66 & 1) == 0)
  {
    if ((~*(a2 + 2) & 7) != 0)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0;
    }

    if (!v67)
    {
      goto LABEL_136;
    }

    v68 = *(v67 + 8) & 7;
    if (v68 == 6)
    {
      v69 = v67 + 24 * *(v67 + 16) + 120;
      if (!v69)
      {
LABEL_136:
        v70 = (a2 + 32);
LABEL_139:
        v71 = *v70;
        v81 = 257;
        emitDiag(v71, 2, v79, &__src);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<20ul>(v84, "failed to multiply ");
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<(v84, v49);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<6ul>(v84, " and ");
        if (!__src)
        {
          goto LABEL_45;
        }

LABEL_44:
        mlir::Diagnostic::operator<<(v84, a3);
LABEL_45:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        return 0;
      }
    }

    else
    {
      v69 = v67 + 16 * v68 + 16;
    }

    v70 = (v69 + 24);
    goto LABEL_139;
  }

  __src = *(a2 + 1) & 0xFFFFFFFFFFFFFFF8;
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &__src, &v72, &MultiplyWithScalar) - 16;
}

char *mlir::ODIE::Compiler::wrapAroundDimension(mlir::OpBuilder *a1, char *a2, int a3)
{
  Tensor = a2;
  v12 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v9);
  if (v11 == 1)
  {
    v6 = v9;
    if ((*v9 & 0x80000000) != 0)
    {
      v8 = *v9 + a3;
      Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v8, 1, 0);
      if ((v11 & 1) == 0)
      {
        return Tensor;
      }

      v6 = v9;
    }

    if (v6 != &v10)
    {
      free(v6);
    }
  }

  return Tensor;
}

char *mlir::ODIE::Compiler::wrapAroundDimensions(mlir::OpBuilder *a1, char *a2, int a3)
{
  v4 = a2;
  v15 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v11);
  if (v14 != 1)
  {
    return v4;
  }

  v6 = v11;
  if (!v12)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = v11 + 4 * v12;
  v9 = v11;
  do
  {
    while ((*v9 & 0x80000000) != 0)
    {
      *v9 += a3;
      v9 += 4;
      v7 = 1;
      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }

    v9 += 4;
  }

  while (v9 != v8);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v4 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v6, v12);
  if (v14)
  {
    v6 = v11;
LABEL_12:
    if (v6 != &v13)
    {
      free(v6);
    }
  }

  return v4;
}

void mlir::ODIE::Compiler::castAndBroadcast(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v8 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  v11 = v9;
  if (v9)
  {
    v9 = (*(v10 + 8))(v10, v9);
  }

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  v13 = mlir::ODIE::Compiler::castValueToElementType(a2, a4, v12);
  if (v14)
  {
    v15 = v13;
    __src = a3;
    v25[0] = v13;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a2, &v20);
    if (v23)
    {
      *(a1 + 64) = 0;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      if (v21)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v20);
      }

      *(a1 + 64) = 1;
    }

    else
    {
      v17 = *(a2 + 4);
      v19 = 257;
      emitDiag(v17, 2, v18, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<26ul>(v25, " Unable to broadcast LHS ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v25, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<10ul>(v25, " and RHS ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(v25, v15);
            }
          }
        }
      }

      *a1 = 0;
      *(a1 + 64) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v23 == 1 && v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v16 = *(a2 + 4);
    v22[8] = 257;
    emitDiag(v16, 2, &v20, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<16ul>(v25, "failed to cast ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v25, a3);
        if (__src)
        {
          mlir::Diagnostic::operator<<<19ul>(v25, " to same dtype as ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v25, a4);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }
}

char *mlir::ODIE::Compiler::getGreaterOps(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::castAndBroadcast(&v24, a1, a2, a3);
  if (v26)
  {
    v6 = *v24;
    v17 = v24[1];
    v18 = v6;
    v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      v8 = *v7;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = mlir::IntegerType::get(*a1, 1, 0);
    v14 = *v10;
    LOBYTE(v21) = 0;
    v23 = 0;
    v21 = v14(v10, v7, &v21, v13);
    v22 = v15;
    v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), &v21, &v18, &v17) - 16;
  }

  else
  {
    v11 = *(a1 + 4);
    v20 = 257;
    emitDiag(v11, 2, v19, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<26ul>(&v22, " Unable to broadcast LHS ");
      if (v21)
      {
        mlir::Diagnostic::operator<<(&v22, a2);
        if (v21)
        {
          mlir::Diagnostic::operator<<<10ul>(&v22, " and RHS ");
          if (v21)
          {
            mlir::Diagnostic::operator<<(&v22, a3);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    v12 = 0;
  }

  if (v26 == 1 && v24 != &v25)
  {
    free(v24);
  }

  return v12;
}

uint64_t mlir::ODIE::Compiler::getGreaterOrEqualOps(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::castAndBroadcast(&v34, a1, a2, a3);
  if (v36)
  {
    v6 = *v34;
    v7 = *(v34 + 1);
    v30 = v7;
    v31 = v6;
    v8 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = *v8;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = mlir::IntegerType::get(*a1, 1, 0);
    v15 = *v11;
    LOBYTE(v37) = 0;
    LOBYTE(v39) = 0;
    v16 = v15(v11, v8, &v37, v14);
    v32[0] = v16;
    v32[1] = v17;
    v29 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v32, &v31, &v30);
    v18 = *(a1 + 4);
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(a1, *(**v18 + 32));
    v37 = v18;
    v38 = v19;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = v47;
    v46 = 0x400000000;
    v48 = 4;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = &v54;
    v53 = 0x100000000;
    v55 = 0;
    v56 = 0;
    v57 = &mlir::detail::TypeIDResolver<void,void>::id;
    v58 = 0;
    v59 = 0;
    mlir::ODIE::Compiler::CoreML::EqualOp::build(a1, &v37, v16, v6, v7);
    v20 = mlir::Operation::create(&v37);
    mlir::OpBuilder::insert(a1, v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(&v37);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a1 + 4);
    v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(a1, *(**v23 + 32));
    v37 = v23;
    v38 = v24;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = v47;
    v46 = 0x400000000;
    v48 = 4;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = &v54;
    v53 = 0x100000000;
    v55 = 0;
    v56 = 0;
    v57 = &mlir::detail::TypeIDResolver<void,void>::id;
    v58 = 0;
    v59 = 0;
    mlir::ODIE::Compiler::CoreML::OrOp::build(a1, &v37, v16, v29 - 16, (v22 - 16));
    v25 = mlir::Operation::create(&v37);
    mlir::OpBuilder::insert(a1, v25);
    v26 = *(*(v25 + 6) + 16);
    v27 = v25 - 16;
    mlir::OperationState::~OperationState(&v37);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id)
    {
      v13 = v27;
    }

    else
    {
      v13 = -16;
    }
  }

  else
  {
    v12 = *(a1 + 4);
    v33 = 257;
    emitDiag(v12, 2, v32, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<26ul>(&v38, " Unable to broadcast LHS ");
      if (v37)
      {
        mlir::Diagnostic::operator<<(&v38, a2);
        if (v37)
        {
          mlir::Diagnostic::operator<<<10ul>(&v38, " and RHS ");
          if (v37)
          {
            mlir::Diagnostic::operator<<(&v38, a3);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    v13 = 0;
  }

  if (v36 == 1 && v34 != &v35)
  {
    free(v34);
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::getComparisonWithZero(mlir::OpBuilder *a1, uint64_t a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = *v4;
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v7 + 8))(v7, v4);
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  v10 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v8);
  if (v11)
  {
    *&__src = a2;
    *(&__src + 1) = v10;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v39);
    if (v41)
    {
      v12 = *v39[0];
      v13 = *(v39[0] + 1);
      v14 = (*(v7 + 24))(v7, v4);
      v16 = v15;
      v17 = mlir::IntegerType::get(*(**(*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 32), 1, 0);
      *&__src = v14;
      *(&__src + 1) = v16;
      v36[0] = v17;
      v38 = 0;
      v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v17 + 32), &__src, v36, &v38);
      v19 = *(a1 + 4);
      v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, *(**v19 + 32));
      *&__src = v19;
      *(&__src + 1) = v20;
      v43 = v45;
      v44 = 0x400000000;
      v45[4] = v46;
      v45[5] = 0x400000000;
      v46[4] = v47;
      v46[5] = 0x400000000;
      v47[8] = 4;
      v47[9] = v48;
      v47[10] = 0x100000000;
      v48[1] = v49;
      v48[2] = 0x100000000;
      v49[1] = 0;
      v49[2] = 0;
      v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v49[4] = 0;
      v49[6] = 0;
      mlir::ODIE::Compiler::CoreML::NotEqualOp::build(a1, &__src, v18, v12, v13);
      v21 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v21);
      v22 = *(*(v21 + 6) + 16);
      v23 = v21 - 16;
      mlir::OperationState::~OperationState(&__src);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id)
      {
        v24 = v23;
      }

      else
      {
        v24 = -16;
      }

LABEL_33:
      if (v41 == 1 && v39[0] != v40)
      {
        free(v39[0]);
      }

      return v24;
    }

    if ((~*(a2 + 8) & 7) != 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_22;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_22:
        v32 = (a2 + 32);
LABEL_30:
        v34 = *v32;
        v37 = 257;
        emitDiag(v34, 2, v36, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&__src + 8, "Unable to broadcast input and zero to same shape");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v24 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
    goto LABEL_30;
  }

  if ((~*(a2 + 8) & 7) != 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = *(v25 + 8) & 7;
  if (v26 != 6)
  {
    v27 = v25 + 16 * v26 + 16;
    goto LABEL_24;
  }

  v27 = v25 + 24 * *(v25 + 16) + 120;
  if (v27)
  {
LABEL_24:
    v28 = (v27 + 24);
    goto LABEL_25;
  }

LABEL_15:
  v28 = (a2 + 32);
LABEL_25:
  v33 = *v28;
  v40[8] = 257;
  emitDiag(v33, 2, v39, &__src);
  if (__src)
  {
    mlir::Diagnostic::operator<<<41ul>(&__src + 8, "Unable to cast zero scalar to input type");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  return 0;
}

uint64_t mlir::ODIE::Compiler::negateValue(mlir::OpBuilder *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3[3];
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v4[2] & 0x3FFFFFFF) == 1)
  {
    goto LABEL_5;
  }

  ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(a1, a2);
  if (v6)
  {
    v13 = ComparisonWithZero;
LABEL_5:
    v7 = v3[1];
    v8 = v3[2];
    v9 = mlir::IntegerType::get(*a1, 1, 0);
    v10 = v3[4];
    *&v17[0] = v7;
    *(&v17[0] + 1) = v8;
    v14[0] = v9;
    v16 = v10;
    *&v17[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), v17, v14, &v16);
    return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::NotOp,mlir::RankedTensorType,mlir::Value &>(a1, *(a1 + 4), v17, &v13) - 16;
  }

  v12 = *(a1 + 4);
  v15 = 257;
  emitDiag(v12, 2, v14, v17);
  if (*&v17[0])
  {
    mlir::Diagnostic::operator<<<41ul>(v17 + 8, "unable to compare input tensor with zero");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  return 0;
}

void mlir::ODIE::Compiler::getShapedRankedType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((~*(a1 + 8) & 7) != 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 != 6)
  {
    v8 = v6 + 16 * v7 + 16;
    goto LABEL_9;
  }

  v8 = v6 + 24 * *(v6 + 16) + 120;
  if (v8)
  {
LABEL_9:
    v9 = (v8 + 24);
    goto LABEL_10;
  }

LABEL_7:
  v9 = (a1 + 32);
LABEL_10:
  v14 = v3;
  v15 = v4;
  v10 = *v9;
  v11 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v11;
  v13 = *(a2 + 32);
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v10, v12, a3);
}

void mlir::ODIE::Compiler::getShapedRankedType(uint64_t *a1@<X0>, void **a2@<X1>, const char **a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v8 && (v10 = v8, v11 = v9, ((*(v9 + 16))(v9, v8) & 1) != 0))
  {
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = 1;
  }

  else
  {
    v17 = 257;
    emitDiag(a2, 2, &v15, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<(&v19, a3);
      if (v18)
      {
        v15 = 4;
        v16 = a1;
        v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
        v13 = v20 + 24 * v21;
        v14 = *v12;
        *(v13 + 16) = *(v12 + 16);
        *v13 = v14;
        ++v21;
      }
    }

    *a4 = 0;
    *(a4 + 16) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }
}

char *mlir::ODIE::Compiler::getSingleElementConstantWithDtype(mlir::OpBuilder *a1, uint64_t *a2, float a3)
{
  v11 = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v11, 1);
  result = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, a2);
  if ((v7 & 1) == 0)
  {
    v8 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::createTensorConstant<float>(v8, v9, v10);
  }

  return result;
}

char *mlir::ODIE::Compiler::createTensorConstant<float>(mlir::OpBuilder *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v15[0] = a3;
    v7 = v15;
    v6 = 1;
  }

  v8 = *(**a1 + 440);
  *&v14 = v7;
  *(&v14 + 1) = v6;
  v12 = 0;
  v13 = v8;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v14, &v13, &v12);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v14) - 16;
}

{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v15[0] = a3;
    v7 = v15;
    v6 = 1;
  }

  v8 = *(**a1 + 440);
  *&v14 = v7;
  *(&v14 + 1) = v6;
  v12 = 0;
  v13 = v8;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v14, &v13, &v12);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, *(a1 + 4), &v14) - 16;
}

uint64_t mlir::ODIE::Compiler::getSignOfTensor(mlir::OpBuilder *a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v51[25] = *MEMORY[0x277D85DE8];
  v47[0] = a3;
  v47[1] = a4;
  LODWORD(v50) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v50, 1);
  v7 = (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v11);
  if ((v13 & 1) == 0)
  {
    v34 = *(a1 + 4);
    v49 = 257;
    emitDiag(v34, 2, v48, &v50);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v51, "Unable to cast ");
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<(v51, Tensor);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<19ul>(v51, " to same dtype as ");
    goto LABEL_21;
  }

  v14 = v12;
  GreaterOps = mlir::ODIE::Compiler::getGreaterOps(a1, a2, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = GreaterOps;
  v18 = v47[0];
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v47[0]);
  if (v19)
  {
    v18 = (*(v20 + 8))(v20, v19);
  }

  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v17, v18);
  v45 = v21;
  v46 = v22;
  if ((v22 & 1) == 0)
  {
    v37 = v21;
    v38 = *(a1 + 4);
    v49 = 257;
    emitDiag(v38, 2, v48, &v50);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v51, "Unable to cast ");
    if (!v50)
    {
      goto LABEL_42;
    }

    v39 = v37;
    goto LABEL_32;
  }

  v23 = mlir::ODIE::Compiler::getGreaterOps(a1, v14, a2);
  if ((v24 & 1) == 0)
  {
LABEL_23:
    v36 = *(a1 + 4);
    v49 = 257;
    emitDiag(v36, 2, v48, &v50);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<21ul>(v51, "Unable to construct ");
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<(v51, a2);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<4ul>(v51, " > ");
    if (!v50)
    {
      goto LABEL_42;
    }

    v35 = v14;
    goto LABEL_28;
  }

  v25 = v23;
  v26 = v47[0];
  v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v47[0]);
  if (v27)
  {
    v26 = (*(v28 + 8))(v28, v27);
  }

  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v25, v26);
  if ((v30 & 1) == 0)
  {
    v40 = *(a1 + 4);
    v49 = 257;
    emitDiag(v40, 2, v48, &v50);
    if (!v50)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v51, "Unable to cast ");
    if (!v50)
    {
      goto LABEL_42;
    }

    v39 = v29;
LABEL_32:
    mlir::Diagnostic::operator<<(v51, v39);
    if (v50)
    {
      mlir::Diagnostic::operator<<<19ul>(v51, " to same dtype as ");
      if (v50)
      {
        mlir::Diagnostic::operator<<<mlir::ShapedType &>(v51, v47);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v50) = -1082130432;
  a2 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v50, 1);
  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v29, a2);
  v43 = MultiplyWithScalar;
  v44 = v32;
  if (v32)
  {
    return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v47, &v45, &v43) - 16;
  }

  v41 = MultiplyWithScalar;
  v42 = *(a1 + 4);
  v49 = 257;
  emitDiag(v42, 2, v48, &v50);
  if (!v50)
  {
    goto LABEL_42;
  }

  mlir::Diagnostic::operator<<<20ul>(v51, "Unable to multiply ");
  if (!v50)
  {
    goto LABEL_42;
  }

  mlir::Diagnostic::operator<<(v51, v41);
  if (!v50)
  {
    goto LABEL_42;
  }

  mlir::Diagnostic::operator<<<7ul>(v51, " with ");
LABEL_21:
  if (v50)
  {
    v35 = a2;
LABEL_28:
    mlir::Diagnostic::operator<<(v51, v35);
  }

LABEL_42:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
  return 0;
}

uint64_t mlir::ODIE::Compiler::getCeilOfTensor(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v43[0] = a3;
  v43[1] = a4;
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(a1, a2, 1.0);
  if ((v8 & 1) == 0)
  {
    v24 = a1[4];
    v45 = 257;
    emitDiag(v24, 2, v44, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<50ul>(&v47, "unable to create constant of 1 with same type as ");
      goto LABEL_10;
    }

LABEL_39:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    return 0;
  }

  v9 = TensorConstantWithSameTypeAs;
  v10 = *(a2 + 8);
  v11 = a1[4];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**v11 + 32));
  v46 = v11;
  v47 = v12;
  v48 = v50;
  v49 = 0x400000000;
  v51 = v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v57 = 4;
  v58 = &v60;
  v59 = 0x100000000;
  v61 = &v63;
  v62 = 0x100000000;
  v64 = 0;
  v65 = 0;
  v66 = &mlir::detail::TypeIDResolver<void,void>::id;
  v67 = 0;
  v68 = 0;
  mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, &v46, v10 & 0xFFFFFFFFFFFFFFF8, a2, v9);
  v13 = mlir::Operation::create(&v46);
  mlir::OpBuilder::insert(a1, v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(&v46);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - 16);
  GreaterOps = mlir::ODIE::Compiler::getGreaterOps(a1, a2, (v15 - 16));
  if ((v18 & 1) == 0)
  {
    v25 = a1[4];
    v45 = 257;
    emitDiag(v25, 2, v44, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<34ul>(&v47, "unable to create compute greater(");
      if (v46)
      {
        mlir::Diagnostic::operator<<(&v47, a2);
        if (v46)
        {
          mlir::Diagnostic::operator<<<4ul>(&v47, " , ");
          if (v46)
          {
            mlir::Diagnostic::operator<<(&v47, v16);
            if (v46)
            {
              mlir::Diagnostic::operator<<<2ul>(&v47, ")");
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

  v19 = GreaterOps;
  v20 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
  v23 = v21;
  if (v21)
  {
    v21 = (*(v22 + 8))(v22, v21);
  }

  if (v23)
  {
    v26 = v21;
  }

  else
  {
    v26 = v20;
  }

  v27 = mlir::ODIE::Compiler::castValueToElementType(a1, v19, v26);
  if ((v28 & 1) == 0)
  {
    v38 = a1[4];
    v45 = 257;
    emitDiag(v38, 2, v44, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<16ul>(&v47, "unable to cast ");
      if (v46)
      {
        mlir::Diagnostic::operator<<(&v47, v19);
        if (v46)
        {
          mlir::Diagnostic::operator<<<19ul>(&v47, " to same dtype as ");
LABEL_10:
          if (v46)
          {
            mlir::Diagnostic::operator<<(&v47, a2);
          }

          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

  v29 = v27;
  v30 = a1[4];
  v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**v30 + 32));
  v46 = v30;
  v47 = v31;
  v48 = v50;
  v49 = 0x400000000;
  v51 = v53;
  v52 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v57 = 4;
  v58 = &v60;
  v59 = 0x100000000;
  v61 = &v63;
  v62 = 0x100000000;
  v64 = 0;
  v65 = 0;
  v66 = &mlir::detail::TypeIDResolver<void,void>::id;
  v67 = 0;
  v68 = 0;
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, &v46, v10 & 0xFFFFFFFFFFFFFFF8, v16, v29);
  v32 = mlir::Operation::create(&v46);
  mlir::OpBuilder::insert(a1, v32);
  v33 = *(*(v32 + 6) + 16);
  v34 = (v32 - 16);
  mlir::OperationState::~OperationState(&v46);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v34 = -16;
  }

  v35 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  v37 = v35;
  if (v35)
  {
    v35 = (*(v36 + 8))(v36, v35);
  }

  if (v37)
  {
    v39 = v35;
  }

  else
  {
    v39 = a3;
  }

  result = mlir::ODIE::Compiler::castValueToElementType(a1, v34, v39);
  if ((v41 & 1) == 0)
  {
    v42 = a1[4];
    v45 = 257;
    emitDiag(v42, 2, v44, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<16ul>(&v47, "unable to cast ");
      if (v46)
      {
        mlir::Diagnostic::operator<<(&v47, v34);
        if (v46)
        {
          mlir::Diagnostic::operator<<<19ul>(&v47, " to same dtype as ");
          if (v46)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v47, v43);
          }
        }
      }
    }

    goto LABEL_39;
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(mlir::OpBuilder *a1, uint64_t a2, float a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *v17 = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, v17, 1);
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v10);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v16[0] = v11;
  v16[1] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(v16, 2uLL, a1, v17);
  if (v18[48] == 1)
  {
    v13 = *v17[0] & 0xFFFFFFFFFFFFFF00;
    v14 = *v17[0];
    if (v17[0] != v18)
    {
      free(v17[0]);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return v14 | v13;
}

uint64_t mlir::ODIE::Compiler::getShapeAsValue(uint64_t *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  (*(v6 + 24))(v6, v3);
  v14[0] = v7;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v13 = v14;
  *(&v13 + 1) = 1;
  v11 = 0;
  v12 = v8;
  *&v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v13, &v12, &v11);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], &v13, &v10) - 16;
}

uint64_t mlir::ODIE::Compiler::getSliceOfTensorShape(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  ShapeAsValue = mlir::ODIE::Compiler::getShapeAsValue(a1, a2);
  v17 = ShapeAsValue;
  LODWORD(v20) = a3;
  v16 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v20, 1);
  LODWORD(v20) = a4;
  v15 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v20, 1);
  LODWORD(v20) = 1;
  v14 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v20, 1);
  v21[0] = a4 - a3;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v20 = v21;
  *(&v20 + 1) = 1;
  v18 = 0;
  v19 = v8;
  *&v20 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v20, &v19, &v18);
  if ((~*(ShapeAsValue + 8) & 7) != 0)
  {
    v9 = ShapeAsValue;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 != 6)
  {
    v11 = v9 + 16 * v10 + 16;
    goto LABEL_9;
  }

  v11 = v9 + 24 * *(v9 + 16) + 120;
  if (v11)
  {
LABEL_9:
    v12 = (v11 + 24);
    return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *v12, &v20, &v17, &v16, &v15, &v14) - 16;
  }

LABEL_7:
  v12 = (ShapeAsValue + 32);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *v12, &v20, &v17, &v16, &v15, &v14) - 16;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v18[0] = a2;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v18, *a3, *a4, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v16;
}

uint64_t mlir::ODIE::Compiler::getDimensionLengthOfTensor(uint64_t *a1, uint64_t a2, int a3)
{
  ShapeAsValue = mlir::ODIE::Compiler::getShapeAsValue(a1, a2);
  LODWORD(v11) = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v11, 1, 0);
  v5 = mlir::IntegerType::get(*a1, 32, 1);
  v11 = 0uLL;
  v9 = 0;
  v10 = v5;
  *&v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v5 + 32), &v11, &v10, &v9);
  LODWORD(v9) = 0;
  v10 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v9, 1, 0);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], &v11, &ShapeAsValue, &v10, &Tensor) - 16;
}

BOOL mlir::ODIE::Compiler::isConstFalse(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = v3 + 120;
    if (v3 == -120)
    {
      return 0;
    }
  }

  else
  {
    v4 = v1 + 16 * v2 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v8, v4);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 24) != 1)
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v7, &v8);
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v6 = v10;
  }

  return ((*(v8 + (v6 >> 3)) >> (v6 & 7)) & 1) == 0;
}

void llvm::SmallVectorImpl<int>::append<long long *,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v9 = (*a1 + 4 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  Shape = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = Shape;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::GetShapeOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.broadcast_to";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::TensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.divide";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.maximum";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.minimum";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::GreaterOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.greater";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.or";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.not_equal";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::NotOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::NotOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.not";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v14, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.floor_divide";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.slice";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v12;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, v16, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.select";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::ODIE::Compiler::replaceLayerNormImpl(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = *MEMORY[0x277D85DE8];
  v90 = a4;
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  v89[0] = v8;
  v89[1] = v11;
  v12 = (*(v11 + 8))(v11, v8);
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  v17 = (*(v16 + 24))(v16, v13);
  if (v18)
  {
    v19 = 8 * v18;
    v20 = 1;
    do
    {
      v21 = *v17++;
      v20 *= v21;
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v20 = 1;
  }

  (*(v11 + 24))(v11, v8);
  v23 = v22;
  v98 = v100;
  v99 = 0xC00000000;
  llvm::SmallVectorImpl<int>::resizeImpl<false>(&v98, v20);
  v24 = v98;
  if (v20 >= 1)
  {
    v25 = v23 - v20;
    v26 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = vdupq_n_s64(v20 - 1);
    v28 = xmmword_25D0A04F0;
    v29 = xmmword_25D0A0500;
    v30 = v98 + 8;
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v27, v29));
      if (vuzp1_s16(v32, *v27.i8).u8[0])
      {
        *(v30 - 2) = v25;
      }

      if (vuzp1_s16(v32, *&v27).i8[2])
      {
        *(v30 - 1) = v25 + 1;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
      {
        *v30 = v25 + 2;
        v30[1] = v25 + 3;
      }

      v28 = vaddq_s64(v28, v31);
      v29 = vaddq_s64(v29, v31);
      v25 += 4;
      v30 += 4;
      v26 -= 4;
    }

    while (v26);
  }

  v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v24, v99);
  *&__src = a2;
  *(&__src + 1) = a4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v95);
  if ((v97 & 1) == 0)
  {
    v79 = *(a1 + 4);
    v94[8] = 257;
    emitDiag(v79, 2, &v92, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<56ul>(&__src + 8, "unable to broadcast the eps operand to normalized shape");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v78 = 0;
    goto LABEL_61;
  }

  v88 = v33;
  v90 = *(v95[0] + 1);
  v34 = (*(v11 + 24))(v11, v8);
  v92 = v94;
  v93 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v92, v34, &v34[8 * v35]);
  v36 = v92;
  if (v23 - v20 < v23)
  {
    memset_pattern16(v92 + 8 * (v23 - v20), &unk_25D0A0900, ((8 * v20 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8);
  }

  *&__src = v36;
  *(&__src + 1) = v93;
  v101 = v12;
  v91 = 0;
  v37 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v12 + 32), &__src, &v101, &v91);
  LOBYTE(__src) = 1;
  v38 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &__src, 1);
  v39 = *(a1 + 4);
  v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v39 + 32));
  *&__src = v39;
  *(&__src + 1) = v40;
  v105 = v107;
  v106 = 0x400000000;
  v108 = v110;
  v109 = 0x400000000;
  v111 = v113;
  v112 = 0x400000000;
  v114 = 4;
  v115 = &v117;
  v116 = 0x100000000;
  v118 = &v120;
  v119 = 0x100000000;
  v122 = 0;
  v121 = 0;
  v123 = &mlir::detail::TypeIDResolver<void,void>::id;
  v124 = 0;
  v125 = 0;
  mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &__src, v37, a2, v88, v38);
  v41 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v41);
  v42 = *(*(v41 + 6) + 16);
  v43 = v41 - 16;
  mlir::OperationState::~OperationState(&__src);
  v44 = -16;
  if (v42 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
  {
    v44 = v43;
  }

  v101 = a2;
  v102 = v44;
  mlir::ODIE::Compiler::getBroadcastedValues(&v101, 2uLL, a1, &__src);
  std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v95, &__src);
  if (v108 == 1 && __src != &v105)
  {
    free(__src);
  }

  if (v97)
  {
    v45 = *(v95[0] + 1);
    v46 = *(a1 + 4);
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v46 + 32));
    *&__src = v46;
    *(&__src + 1) = v47;
    v105 = v107;
    v106 = 0x400000000;
    v108 = v110;
    v109 = 0x400000000;
    v111 = v113;
    v112 = 0x400000000;
    v114 = 4;
    v115 = &v117;
    v116 = 0x100000000;
    v118 = &v120;
    v119 = 0x100000000;
    v122 = 0;
    v121 = 0;
    v123 = &mlir::detail::TypeIDResolver<void,void>::id;
    v124 = 0;
    v125 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v89[0], a2, v45);
    v48 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v48);
    v49 = *(*(v48 + 6) + 16);
    v87 = a2;
    mlir::OperationState::~OperationState(&__src);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = *(a1 + 4);
    v52 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v51 + 32));
    *&__src = v51;
    *(&__src + 1) = v52;
    v105 = v107;
    v106 = 0x400000000;
    v108 = v110;
    v109 = 0x400000000;
    v111 = v113;
    v112 = 0x400000000;
    v114 = 4;
    v115 = &v117;
    v116 = 0x100000000;
    v118 = &v120;
    v119 = 0x100000000;
    v122 = 0;
    v121 = 0;
    v123 = &mlir::detail::TypeIDResolver<void,void>::id;
    v124 = 0;
    v125 = 0;
    v86 = (v50 - 16);
    mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v89[0], (v50 - 16), (v50 - 16));
    v53 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v53);
    v54 = *(*(v53 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    if (v54 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    v56 = *(a1 + 4);
    v57 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v56 + 32));
    *&__src = v56;
    *(&__src + 1) = v57;
    v105 = v107;
    v106 = 0x400000000;
    v108 = v110;
    v109 = 0x400000000;
    v111 = v113;
    v112 = 0x400000000;
    v114 = 4;
    v115 = &v117;
    v116 = 0x100000000;
    v118 = &v120;
    v119 = 0x100000000;
    v122 = 0;
    v121 = 0;
    v123 = &mlir::detail::TypeIDResolver<void,void>::id;
    v124 = 0;
    v125 = 0;
    mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &__src, v37, (v55 - 16), v88, v38);
    v58 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v58);
    v59 = *(*(v58 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    v60 = -16;
    if (v59 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
    {
      v60 = (v58 - 16);
    }

    v101 = v87;
    v102 = v60;
    mlir::ODIE::Compiler::getBroadcastedValues(&v101, 2uLL, a1, &__src);
    std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v95, &__src);
    if (v108 == 1 && __src != &v105)
    {
      free(__src);
    }

    if (v97)
    {
      v91 = *(v95[0] + 1);
      v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 4), v89, &v91, &v90);
      v62 = *(a1 + 4);
      v63 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(a1, *(**v62 + 32));
      *&__src = v62;
      *(&__src + 1) = v63;
      v105 = v107;
      v106 = 0x400000000;
      v108 = v110;
      v109 = 0x400000000;
      v111 = v113;
      v112 = 0x400000000;
      v114 = 4;
      v115 = &v117;
      v116 = 0x100000000;
      v118 = &v120;
      v119 = 0x100000000;
      v122 = 0;
      v121 = 0;
      v123 = &mlir::detail::TypeIDResolver<void,void>::id;
      v124 = 0;
      v125 = 0;
      mlir::ODIE::Compiler::CoreML::SqrtOp::build(a1, &__src, v89[0], v61 - 16);
      v64 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v64);
      v65 = *(*(v64 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v65 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0;
      }

      SingleElementConstantWithDtype = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v12, 1.0);
      v101 = v87;
      v102 = SingleElementConstantWithDtype;
      mlir::ODIE::Compiler::getBroadcastedValues(&v101, 2uLL, a1, &__src);
      std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v95, &__src);
      if (v108 == 1 && __src != &v105)
      {
        free(__src);
      }

      if ((v97 & 1) == 0)
      {
        v83 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::ODIE::Compiler::create1DTensorConstant<int>(v83, v84, v85);
      }

      v68 = *(v95[0] + 1);
      v69 = *(a1 + 4);
      v70 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**v69 + 32));
      *&__src = v69;
      *(&__src + 1) = v70;
      v105 = v107;
      v106 = 0x400000000;
      v108 = v110;
      v109 = 0x400000000;
      v111 = v113;
      v112 = 0x400000000;
      v114 = 4;
      v115 = &v117;
      v116 = 0x100000000;
      v118 = &v120;
      v119 = 0x100000000;
      v122 = 0;
      v121 = 0;
      v123 = &mlir::detail::TypeIDResolver<void,void>::id;
      v124 = 0;
      v125 = 0;
      mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, &__src, v89[0], v68, (v66 - 16));
      v71 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v71);
      v72 = *(*(v71 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v72 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
      {
        v71 = 0;
      }

      v73 = *(a1 + 4);
      v74 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v73 + 32));
      *&__src = v73;
      *(&__src + 1) = v74;
      v105 = v107;
      v106 = 0x400000000;
      v108 = v110;
      v109 = 0x400000000;
      v111 = v113;
      v112 = 0x400000000;
      v114 = 4;
      v115 = &v117;
      v116 = 0x100000000;
      v118 = &v120;
      v119 = 0x100000000;
      v122 = 0;
      v121 = 0;
      v123 = &mlir::detail::TypeIDResolver<void,void>::id;
      v124 = 0;
      v125 = 0;
      mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v89[0], v86, (v71 - 16));
      v75 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v75);
      v76 = *(*(v75 + 6) + 16);
      v77 = v75 - 16;
      mlir::OperationState::~OperationState(&__src);
      if (v76 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
      {
        v78 = v77;
      }

      else
      {
        v78 = -16;
      }

      goto LABEL_59;
    }

    v81 = *(a1 + 4);
    v103 = 257;
    emitDiag(v81, 2, &v101, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<66ul>(&__src + 8, "unable to get broadcast the input variance to same shape as input");
    }
  }

  else
  {
    v80 = *(a1 + 4);
    v103 = 257;
    emitDiag(v80, 2, &v101, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<58ul>(&__src + 8, "unable to broadcast the input mean to same shape as input");
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v78 = 0;
LABEL_59:
  if (v92 != v94)
  {
    free(v92);
  }

LABEL_61:
  if (v97 == 1 && v95[0] != &v96)
  {
    free(v95[0]);
  }

  if (v98 != v100)
  {
    free(v98);
  }

  return v78;
}