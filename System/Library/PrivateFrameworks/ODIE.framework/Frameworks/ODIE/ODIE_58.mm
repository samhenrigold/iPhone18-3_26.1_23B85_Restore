uint64_t anonymous namespace::static_dag_matcher_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(*v8 + 88);
    goto LABEL_15;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  a5[1] = 1;
  v13 = *(*(a2 + 72) + 56);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (!v13)
  {
LABEL_12:
    v17 = *(a1 + 16);
    if (!v17 || v17[2] != 1)
    {
      return 0;
    }

    v9 = *(*v17 + 88);
LABEL_15:
    v9();
    return 0;
  }

  v14 = *(v13 + 8) & 7;
  if (v14 == 6)
  {
    v15 = v13 + 24 * *(v13 + 16);
    v16 = (v15 + 120);
    if (v15 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = (v13 + 16 * v14 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v16);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>@<X0>(uint64_t *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v5 = *a1;
  result = llvm::APInt::operator-=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddISubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddISubConstantRHS]";
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

void anonymous namespace::AddISubConstantLHS::~AddISubConstantLHS(_anonymous_namespace_::AddISubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddISubConstantLHS::matchAndRewrite(_anonymous_namespace_::AddISubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v40, v42, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v41 + 32), *(v19 + 8) & v41[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v39 + 24));
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

uint64_t anonymous namespace::static_dag_matcher_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v8 = *(a1 + 16);
    if (!v8 || v8[2] != 1)
    {
      return 0;
    }

    v9 = *(*v8 + 88);
    goto LABEL_13;
  }

  v10 = *(*(a2 + 72) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_10:
    v17 = *(a1 + 16);
    if (!v17 || v17[2] != 1)
    {
      return 0;
    }

    v9 = *(*v17 + 88);
LABEL_13:
    v9();
    return 0;
  }

  v14 = *(v10 + 8) & 7;
  if (v14 == 6)
  {
    v15 = v10 + 24 * *(v10 + 16);
    v16 = (v15 + 120);
    if (v15 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = (v10 + 16 * v14 + 16);
  }

  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a3, v16);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v18 = *(a2 + 72);
  }

  else
  {
    v18 = 0;
  }

  *a6 = v18 + 32;
  a6[1] = 1;
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    Attr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = Attr;
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SubIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1, v17);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v18 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::SubIOp::inferReturnTypes(v18, v19, v20, v9 & 0xFFFFFFFFFFFFFFF9, v10, v21, v22, v23, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v24 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v24);
  if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  return v25;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SubIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.subi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddISubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddISubConstantLHS]";
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

void anonymous namespace::AddIMulNegativeOneRhs::~AddIMulNegativeOneRhs(_anonymous_namespace_::AddIMulNegativeOneRhs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneRhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_64;
      }

      v12 = *(v5 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  if (*(v10[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_64;
    }

    v12 = v10[3];
    goto LABEL_63;
  }

  v14 = v10[9];
  v15 = *(v14 + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_22:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_64;
      }

      v12 = v10[3];
      goto LABEL_63;
    }
  }

  else
  {
    v18 = (v15 + 16 * v16 + 16);
  }

  {
LABEL_64:
    v35 = 0;
    goto LABEL_65;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v18);
  Attr = mlir::Operation::getAttr(v10, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v10);
  v20 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v39;
  getIntOrSplatIntValue(&v40, v39);
  if ((v42[0] & 1) == 0)
  {
    goto LABEL_60;
  }

  getIntOrSplatIntValue(&v45, v21);
  isAllOnes = llvm::APInt::isAllOnes(&v45);
  if (v47[0] == 1 && v46 >= 0x41 && v45)
  {
    MEMORY[0x25F891010](v45, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_60:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_64;
    }

    v12 = *(a2 + 3);
LABEL_63:
    (*(*v11 + 88))(v11, v12, v13, &v40);
    goto LABEL_64;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v48[0] + 1) + 24);
  v40 = *(*v48[0] + 24);
  v41 = v24;
  v25 = mlir::FusedLoc::get(&v40, 2, 0, v23);
  v45 = v47;
  v46 = 0x400000000;
  v43[0] = v44;
  v43[1] = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v43, *(v6 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v43, *(v14 + 24));
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  if (v26)
  {
    v28 = v26;
    v37 = "overflowFlags";
    v38 = 259;
    v29 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v40, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v25, v43, &v40);
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  if (*(v30 + 9))
  {
    v31 = v30 - 16;
  }

  else
  {
    v31 = 0;
  }

  v40 = v42;
  v41 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v40, v31, 0, v31, 1);
  v32 = v40;
  if (v41)
  {
    v33 = 8 * v41;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v40;
  }

  if (v32 != v42)
  {
    free(v32);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v35 = 1;
LABEL_65:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  return v35;
}

uint64_t anonymous namespace::static_dag_matcher_3(uint64_t a1, void *a2, void *a3)
{
  v11 = &v12;
  v12 = 0;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_8;
  }

  v6 = *(a2 - 1) & 7;
  if (v6 == 6)
  {
    v7 = &a2[3 * *a2 - 2];
    v8 = v7 + 15;
    if (v7 == -120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = &a2[2 * v6];
  }

  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, v8))
  {
    *a3 = v12;
    return 1;
  }

LABEL_8:
  v10 = *(a1 + 16);
  if (v10)
  {
    if (v10[2] == 1)
    {
    }
  }

  return 0;
}

uint64_t getIntOrSplatIntValue(uint64_t result, uint64_t a2)
{
  v2 = result;
  v6 = 1;
  v4 = &v5;
  v5 = 0;
  if (a2)
  {
    result = mlir::detail::constant_int_value_binder::match(&v4, a2);
    v3 = v6;
    if (result)
    {
      *(v2 + 8) = v6;
      *v2 = v5;
      *(v2 + 16) = 1;
    }

    else
    {
      *v2 = 0;
      *(v2 + 16) = 0;
      if (v3 >= 0x41)
      {
        result = v5;
        if (v5)
        {
          return MEMORY[0x25F891010](v5, 0x1000C8000313F17);
        }
      }
    }
  }

  else
  {
    *result = 0;
    *(result + 16) = 0;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIMulNegativeOneRhs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneRhs]";
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

void anonymous namespace::AddIMulNegativeOneLhs::~AddIMulNegativeOneLhs(_anonymous_namespace_::AddIMulNegativeOneLhs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneLhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v48[0] = v49;
  v48[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_66;
      }

      v11 = *(v5 + 3);
      goto LABEL_65;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_66;
    }

    v11 = v9[3];
    goto LABEL_65;
  }

  v13 = v9[9];
  v14 = *(v13 + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_66;
      }

      v11 = v9[3];
      goto LABEL_65;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
LABEL_66:
    v35 = 0;
    goto LABEL_67;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v17);
  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v48, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v19 = *(v5 + 9);
  }

  else
  {
    v19 = 0;
  }

  v20 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v39;
  getIntOrSplatIntValue(&v40, v39);
  if ((v42[0] & 1) == 0)
  {
    goto LABEL_62;
  }

  getIntOrSplatIntValue(&v45, v21);
  isAllOnes = llvm::APInt::isAllOnes(&v45);
  if (v47[0] == 1 && v46 >= 0x41 && v45)
  {
    MEMORY[0x25F891010](v45, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_62:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_66;
    }

    v11 = *(a2 + 3);
LABEL_65:
    (*(*v10 + 88))(v10, v11, v12, &v40);
    goto LABEL_66;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v48[0] + 1) + 24);
  v40 = *(*v48[0] + 24);
  v41 = v24;
  v25 = mlir::FusedLoc::get(&v40, 2, 0, v23);
  v45 = v47;
  v46 = 0x400000000;
  v43[0] = v44;
  v43[1] = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v43, *(v19 + 56));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v43, *(v13 + 24));
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  if (v26)
  {
    v28 = v26;
    v37 = "overflowFlags";
    v38 = 259;
    v29 = mlir::StringAttr::get(*(a3 + 1), &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v40, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v25, v43, &v40);
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  if (*(v30 + 9))
  {
    v31 = v30 - 16;
  }

  else
  {
    v31 = 0;
  }

  v40 = v42;
  v41 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v40, v31, 0, v31, 1);
  v32 = v40;
  if (v41)
  {
    v33 = 8 * v41;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v45, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v40;
  }

  if (v32 != v42)
  {
    free(v32);
  }

  (**a3)(a3, a2, v45 & 0xFFFFFFFFFFFFFFF9, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v35 = 1;
LABEL_67:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  return v35;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddIMulNegativeOneLhs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddIMulNegativeOneLhs]";
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator+=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

void anonymous namespace::AddUIExtendedToAddI::~AddUIExtendedToAddI(_anonymous_namespace_::AddUIExtendedToAddI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AddUIExtendedToAddI::matchAndRewrite(_anonymous_namespace_::AddUIExtendedToAddI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v42[0] = v43;
  v42[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v42, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddUIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v34 = *(*v42[0] + 24);
    v18 = mlir::FusedLoc::get(&v34, 1, 0, v17);
    v39 = v41;
    v40 = 0x400000000;
    v37[0] = v38;
    v37[1] = 0x400000000;
    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v32 = "overflowFlags";
      v33 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v32, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v34, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v37, &v34);
    if (v34 != v36)
    {
      free(v34);
    }

    if (v37[0] != v38)
    {
      free(v37[0]);
    }

    if (*(v23 + 9))
    {
      v24 = v23 - 16;
    }

    else
    {
      v24 = 0;
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v34, v24, 0, v24, 1);
    v25 = v34;
    if (v35)
    {
      v26 = 8 * v35;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v34;
    }

    if (v25 != v36)
    {
      free(v25);
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v34, v7, 0, v6, 1);
    v28 = v34;
    if (v35)
    {
      v29 = 8 * v35;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v34;
    }

    if (v28 != v36)
    {
      free(v28);
    }

    (**a3)(a3, a2, v39 & 0xFFFFFFFFFFFFFFF9, v40);
    if (v39 != v41)
    {
      free(v39);
    }

    v16 = 1;
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AddUIExtendedToAddI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AddUIExtendedToAddI]";
  v6 = 104;
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t *a2, void **a3)
{
  if (*(a2 + 2) > 0x40u)
  {
    operator new[]();
  }

  v4 = *a2;
  v8 = *(a2 + 2);
  v7 = v4;
  result = llvm::APInt::operator-=(&v7, a3);
  v6 = v7;
  *(a1 + 8) = v8;
  *a1 = v6;
  *(a1 + 16) = 1;
  return result;
}

void anonymous namespace::SubIRHSAddConstant::~SubIRHSAddConstant(_anonymous_namespace_::SubIRHSAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSAddConstant::matchAndRewrite(_anonymous_namespace_::SubIRHSAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v43 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v52[0] = v53;
  v52[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v35 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v44);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v52, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = (a3 + 8);
  v19 = *(a3 + 1);
  v21 = *(*(v52[0] + 1) + 24);
  v44 = *(*v52[0] + 24);
  v45 = v21;
  v22 = mlir::FusedLoc::get(&v44, 2, 0, v19);
  v49 = v51;
  v50 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = applyToIntegerAttrs(v23, v40, v43, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v44);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v39);
  v47[0] = v48;
  v47[1] = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, *(v41 + 24));
  if (*(v24 + 9))
  {
    v25 = v24 - 16;
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v47, v25);
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*v20, 0);
  if (v26)
  {
    v28 = v26;
    v37 = "overflowFlags";
    v38 = 259;
    v29 = mlir::StringAttr::get(*v20, &v37, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v44, v29, v28);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v47, &v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (*(v30 + 9))
  {
    v31 = v30 - 16;
  }

  else
  {
    v31 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v31, 0, v31, 1);
  v32 = v44;
  if (v45)
  {
    v33 = 8 * v45;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v49, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v44;
  }

  if (v32 != v46)
  {
    free(v32);
  }

  (**a3)(a3, a2, v49 & 0xFFFFFFFFFFFFFFF9, v50);
  if (v49 != v51)
  {
    free(v49);
  }

  v35 = 1;
LABEL_55:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  return v35;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSAddConstant]";
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

void anonymous namespace::SubILHSAddConstant::~SubILHSAddConstant(_anonymous_namespace_::SubILHSAddConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSAddConstant::matchAndRewrite(_anonymous_namespace_::SubILHSAddConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v39 = 0;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v39, v40, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v41 + 24));
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSAddConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSAddConstant]";
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

void anonymous namespace::SubIRHSSubConstantRHS::~SubIRHSSubConstantRHS(_anonymous_namespace_::SubIRHSSubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(_anonymous_namespace_::SubIRHSSubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v39, v42, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v41 + 32), *(v19 + 8) & v41[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v40 + 24));
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSSubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantRHS]";
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

void anonymous namespace::SubIRHSSubConstantLHS::~SubIRHSSubConstantLHS(_anonymous_namespace_::SubIRHSSubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(_anonymous_namespace_::SubIRHSSubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  v40 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v40, v42, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v41 + 32), *(v19 + 8) & v41[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v39 + 24));
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubIRHSSubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubIRHSSubConstantLHS]";
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

void anonymous namespace::SubILHSSubConstantRHS::~SubILHSSubConstantRHS(_anonymous_namespace_::SubILHSSubConstantRHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(_anonymous_namespace_::SubILHSSubConstantRHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v40 = 0;
  v41 = v5;
  v39 = 0;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v40, v39, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v41 + 24));
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSSubConstantRHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantRHS]";
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

void anonymous namespace::SubILHSSubConstantLHS::~SubILHSSubConstantLHS(_anonymous_namespace_::SubILHSSubConstantLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(_anonymous_namespace_::SubILHSSubConstantLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v51[0] = v52;
  v51[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_54;
      }

      v12 = *(v6 + 3);
      goto LABEL_24;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  {
LABEL_54:
    v34 = 0;
    goto LABEL_55;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v10);
  v14 = *(*(v6 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_21:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_54;
    }

    v12 = *(v6 + 3);
LABEL_24:
    (*(*v11 + 88))(v11, v12, v13, &v43);
    goto LABEL_54;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
    goto LABEL_54;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v51, v17);
  Attr = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v20 = *(a3 + 1);
  v21 = *(*(v51[0] + 1) + 24);
  v43 = *(*v51[0] + 24);
  v44 = v21;
  v22 = mlir::FusedLoc::get(&v43, 2, 0, v20);
  v48 = v50;
  v49 = 0x400000000;
  if (*(v6 + 9))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  v38 = applyToIntegerAttrs(v23, v39, v41, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>, &v43);
  v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v22, &v38);
  v25 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v42 + 32), *(v19 + 8) & v42[2]);
  v46[0] = v47;
  v46[1] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, *(v40 + 24));
  if (*(v24 + 9))
  {
    v26 = v24 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v46, v26);
  if (v25)
  {
    v36 = "overflowFlags";
    v37 = 259;
    v28 = mlir::StringAttr::get(*(a3 + 1), &v36, v27);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v43, v28, v25);
  }

  v29 = mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v22, v46, &v43);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (*(v29 + 9))
  {
    v30 = v29 - 16;
  }

  else
  {
    v30 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v30, 0, v30, 1);
  v31 = v43;
  if (v44)
  {
    v32 = 8 * v44;
    do
    {
      v33 = *v31++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v33);
      v32 -= 8;
    }

    while (v32);
    v31 = v43;
  }

  if (v31 != v45)
  {
    free(v31);
  }

  (**a3)(a3, a2, v48 & 0xFFFFFFFFFFFFFFF9, v49);
  if (v48 != v50)
  {
    free(v48);
  }

  v34 = 1;
LABEL_55:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  return v34;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubILHSSubConstantLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubILHSSubConstantLHS]";
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

void anonymous namespace::SubISubILHSRHSLHS::~SubISubILHSRHSLHS(_anonymous_namespace_::SubISubILHSRHSLHS *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(_anonymous_namespace_::SubISubILHSRHSLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v46[0] = v47;
  v46[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v46, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_32;
      }

      v11 = *(v5 + 3);
LABEL_31:
      (*(*v10 + 88))(v10, v11, v12, &v38);
LABEL_32:
      v19 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_32;
    }

    v11 = *(v9 + 24);
    goto LABEL_31;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || (v15 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v15 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v46, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v16 = *(v5 + 9);
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v17 || (v18 = v17, *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v18 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  if (*(v13 + 24) != *(v16 + 56))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_32;
    }

    v11 = *(a2 + 3);
    goto LABEL_31;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v46[0] + 1) + 24);
  v38 = *(*v46[0] + 24);
  v39 = v22;
  v23 = mlir::FusedLoc::get(&v38, 2, 0, v21);
  v43 = v45;
  v44 = 0x400000000;
  v37[0] = mlir::Builder::getZeroAttr((a3 + 8), (*(*(v13 + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  v37[1] = v24;
  v25 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v23, v37);
  v26 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v15 + 32), *(v18 + 8) & v15[2]);
  v41[0] = v42;
  v41[1] = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  if (*(v25 + 9))
  {
    v27 = v25 - 16;
  }

  else
  {
    v27 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v41, v27);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v41, *(v13 + 56));
  if (v26)
  {
    v35 = "overflowFlags";
    v36 = 259;
    v29 = mlir::StringAttr::get(*(a3 + 1), &v35, v28);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v38, v29, v26);
  }

  v30 = mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v41, &v38);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (*(v30 + 9))
  {
    v31 = v30 - 16;
  }

  else
  {
    v31 = 0;
  }

  v38 = v40;
  v39 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v38, v31, 0, v31, 1);
  v32 = v38;
  if (v39)
  {
    v33 = 8 * v39;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v43, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = v38;
  }

  if (v32 != v40)
  {
    free(v32);
  }

  (**a3)(a3, a2, v43 & 0xFFFFFFFFFFFFFFF9, v44);
  if (v43 != v45)
  {
    free(v43);
  }

  v19 = 1;
LABEL_33:
  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SubISubILHSRHSLHS>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SubISubILHSRHSLHS]";
  v6 = 102;
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

void anonymous namespace::MulIMulIConstant::~MulIMulIConstant(_anonymous_namespace_::MulIMulIConstant *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulIMulIConstant::matchAndRewrite(_anonymous_namespace_::MulIMulIConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = 0;
  v55[0] = v56;
  v55[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v55, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_39;
      }

      v11 = *(v5 + 3);
      goto LABEL_38;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  if (*(v9[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = v9[3];
    goto LABEL_38;
  }

  v13 = v9[9];
  v14 = *(v13 + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = (v16 + 120);
    if (v16 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_39;
      }

      v11 = v9[3];
      goto LABEL_38;
    }
  }

  else
  {
    v17 = (v14 + 16 * v15 + 16);
  }

  {
LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v55, v17);
  Attr = mlir::Operation::getAttr(v9, "overflowFlags", 0xDuLL);
  if (!Attr || (v19 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v55, v9);
  v20 = *(*(v5 + 9) + 56);
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
LABEL_35:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(v5 + 3);
LABEL_38:
    (*(*v10 + 88))(v10, v11, v12, &v47);
    goto LABEL_39;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = (v22 + 120);
    if (v22 == -120)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = (v20 + 16 * v21 + 16);
  }

  {
    goto LABEL_39;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v55, v23);
  v26 = mlir::Operation::getAttr(a2, "overflowFlags", 0xDuLL);
  if (!v26 || (v27 = v26, *(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id))
  {
    v27 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
  }

  v28 = *(a3 + 1);
  v29 = *(*(v55[0] + 1) + 24);
  v47 = *(*v55[0] + 24);
  v48 = v29;
  v30 = mlir::FusedLoc::get(&v47, 2, 0, v28);
  v52 = v54;
  v53 = 0x400000000;
  if (*(v5 + 9))
  {
    v31 = v5 - 16;
  }

  else
  {
    v31 = 0;
  }

  v44 = applyToIntegerAttrs(v31, v45, v46, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::multiplies<llvm::APInt>>, &v47);
  v32 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((a3 + 8), v30, &v44);
  v33 = mlir::arith::IntegerOverflowFlagsAttr::get(*(**v19 + 32), *(v27 + 8) & v19[2]);
  v50[0] = v51;
  v50[1] = 0x400000000;
  v47 = v49;
  v48 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v50, *(v13 + 24));
  if (*(v32 + 9))
  {
    v34 = v32 - 16;
  }

  else
  {
    v34 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v50, v34);
  if (v33)
  {
    v42 = "overflowFlags";
    v43 = 259;
    v36 = mlir::StringAttr::get(*(a3 + 1), &v42, v35);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v47, v36, v33);
  }

  v37 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v30, v50, &v47);
  if (v47 != v49)
  {
    free(v47);
  }

  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  if (*(v37 + 9))
  {
    v38 = v37 - 16;
  }

  else
  {
    v38 = 0;
  }

  v47 = v49;
  v48 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v47, v38, 0, v38, 1);
  v39 = v47;
  if (v48)
  {
    v40 = 8 * v48;
    do
    {
      v41 = *v39++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v52, v41);
      v40 -= 8;
    }

    while (v40);
    v39 = v47;
  }

  if (v39 != v49)
  {
    free(v39);
  }

  (**a3)(a3, a2, v52 & 0xFFFFFFFFFFFFFFF9, v53);
  if (v52 != v54)
  {
    free(v52);
  }

  v24 = 1;
LABEL_40:
  if (v55[0] != v56)
  {
    free(v55[0]);
  }

  return v24;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulIOp>(a1, *(**a2 + 32));
  v30 = a2;
  v31 = v8;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = &v35;
  v34[1] = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x400000000;
  v38 = 4;
  v39 = v41;
  v40 = 0x100000000;
  v41[1] = v42;
  v41[2] = 0x100000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v42[4] = 0;
  v42[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v38 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v36, v11, &v11[16 * v12]);
  if (v12)
  {
    v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(&v30);
    v14 = v31;
    v15 = *(v31 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v31;
    Dictionary = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      v27 = "Property conversion failed.";
LABEL_15:
      llvm::report_fatal_error(v27, 1, v17);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  v18 = mlir::NamedAttrList::getDictionary(v36, *(**v30 + 32));
  if (!mlir::arith::MulIOp::inferReturnTypes(v18, v19, v20, v9 & 0xFFFFFFFFFFFFFFF9, v10, v21, v22, v23, v28, v29, &v43))
  {
    v27 = "Failed to infer result type(s).";
    goto LABEL_15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v34, v43, &v43[v44]);
  if (v43 != v45)
  {
    free(v43);
  }

  v24 = mlir::Operation::create(&v30);
  mlir::OpBuilder::insert(a1, v24);
  if (*(*(v24 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(&v30);
  return v25;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.muli";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulIMulIConstant>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulIMulIConstant]";
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

void anonymous namespace::MulSIExtendedToMulI::~MulSIExtendedToMulI(_anonymous_namespace_::MulSIExtendedToMulI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulSIExtendedToMulI::matchAndRewrite(_anonymous_namespace_::MulSIExtendedToMulI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v42[0] = v43;
  v42[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v42, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v34 = *(*v42[0] + 24);
    v18 = mlir::FusedLoc::get(&v34, 1, 0, v17);
    v39 = v41;
    v40 = 0x400000000;
    v37[0] = v38;
    v37[1] = 0x400000000;
    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v32 = "overflowFlags";
      v33 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v32, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v34, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v37, &v34);
    if (v34 != v36)
    {
      free(v34);
    }

    if (v37[0] != v38)
    {
      free(v37[0]);
    }

    if (*(v23 + 9))
    {
      v24 = v23 - 16;
    }

    else
    {
      v24 = 0;
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v34, v24, 0, v24, 1);
    v25 = v34;
    if (v35)
    {
      v26 = 8 * v35;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v34;
    }

    if (v25 != v36)
    {
      free(v25);
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v34, v7, 0, v6, 1);
    v28 = v34;
    if (v35)
    {
      v29 = 8 * v35;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v34;
    }

    if (v28 != v36)
    {
      free(v28);
    }

    (**a3)(a3, a2, v39 & 0xFFFFFFFFFFFFFFF9, v40);
    if (v39 != v41)
    {
      free(v39);
    }

    v16 = 1;
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulSIExtendedToMulI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulSIExtendedToMulI]";
  v6 = 104;
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

void anonymous namespace::MulSIExtendedRHSOne::~MulSIExtendedRHSOne(_anonymous_namespace_::MulSIExtendedRHSOne *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(_anonymous_namespace_::MulSIExtendedRHSOne *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v82[8] = *MEMORY[0x277D85DE8];
  v70[0] = v71;
  v70[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_9:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  v72 = 0;
  v67 = &v72;
  if ((*(v10 - 1) & 7) == 7)
  {
LABEL_25:
    v20 = *(a3 + 2);
    if (!v20 || v20[2] != 1)
    {
      goto LABEL_29;
    }

    v12 = *(*v20 + 88);
    goto LABEL_28;
  }

  v13 = *(v10 - 1) & 7;
  if (v13 == 6)
  {
    v14 = &v10[3 * *v10 - 2];
    v15 = v14 + 120;
    if (v14 == -120)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = &v10[2 * v13];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v67, v15))
  {
    goto LABEL_25;
  }

  v16 = v72;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v10);
  getIntOrSplatIntValue(&v72, v16);
  if ((v74 & 1) == 0)
  {
    goto LABEL_69;
  }

  getIntOrSplatIntValue(&v67, v16);
  if (!llvm::APInt::isStrictlyPositive(&v67))
  {
    v19 = 1;
    goto LABEL_39;
  }

  p_src = &__src;
  getIntOrSplatIntValue(&__src, v16);
  v18 = v65;
  if (v65 >= 0x41)
  {
    if (v18 - llvm::APInt::countLeadingZerosSlowCase(&__src) > 0x40)
    {
      v19 = 1;
      goto LABEL_35;
    }

    p_src = __src;
  }

  v19 = *p_src != 1;
LABEL_35:
  if (v18 >= 0x41 && (v66[0] & 1) != 0 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

LABEL_39:
  if (v69[0] == 1 && v68 >= 0x41 && v67)
  {
    MEMORY[0x25F891010](v67, 0x1000C8000313F17);
  }

  if (v73 < 0x41 || !v72)
  {
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_69:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_29;
    }

LABEL_11:
    v12 = *(*v11 + 88);
LABEL_28:
    v12();
LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  MEMORY[0x25F891010](v72, 0x1000C8000313F17);
  if (v19)
  {
    goto LABEL_69;
  }

LABEL_46:
  v23 = *(a3 + 1);
  v72 = *(*v70[0] + 24);
  v24 = mlir::FusedLoc::get(&v72, 1, 0, v23);
  v67 = v69;
  v68 = 0x400000000;
  v72 = &v74;
  v73 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v72, v6, 0, v6, 1);
  v25 = v72;
  if (v73)
  {
    v26 = 8 * v73;
    do
    {
      v27 = *v25++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v27);
      v26 -= 8;
    }

    while (v26);
    v25 = v72;
  }

  if (v25 != &v74)
  {
    free(v25);
  }

  v60[0] = mlir::Builder::getZeroAttr((a3 + 8), (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v60[1] = v28;
  v29 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v24, v60);
  v30 = *(v6 + 24);
  if (*(v29 + 9))
  {
    v31 = v29 - 16;
  }

  else
  {
    v31 = 0;
  }

  v32 = mlir::IntegerType::get(*(a3 + 1), 64, 0);
  v33 = mlir::IntegerAttr::get(v32, 2);
  v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(a3 + 8, *(**v24 + 32));
  v59 = v24;
  v72 = v24;
  v73 = v34;
  v74 = &v76;
  v75 = 0x400000000;
  v77[0] = &v78;
  v77[1] = 0x400000000;
  v79[0] = v80;
  v79[1] = 0x400000000;
  v80[8] = 4;
  v80[9] = v81;
  v80[10] = 0x100000000;
  v81[1] = v82;
  v81[2] = 0x100000000;
  v82[1] = 0;
  v82[2] = 0;
  v82[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v82[4] = 0;
  v82[6] = 0;
  v61 = v31;
  v62[0] = v30;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v74, v62, 0, v62, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v74, &v61, 0, &v61, 1);
  *mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(&v72) = v33;
  __src = v66;
  v65 = 0x200000000;
  v35 = v75;
  v36 = v74;
  Dictionary = mlir::NamedAttrList::getDictionary(v79, *(**v72 + 32));
  if (!mlir::arith::CmpIOp::inferReturnTypes(Dictionary, v38, v39, v36 & 0xFFFFFFFFFFFFFFF9, v35, v40, v41, v42, v57, v58, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(&v72, v43);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v77, __src, __src + 8 * v65);
  if (__src != v66)
  {
    free(__src);
  }

  v44 = mlir::Operation::create(&v72);
  mlir::OpBuilder::insert((a3 + 8), v44);
  v45 = *(*(v44 + 6) + 16);
  mlir::OperationState::~OperationState(&v72);
  if (v45 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  __src = v66;
  v65 = 0x400000000;
  v72 = &v74;
  v73 = 0x400000000;
  v47 = *(v46 + 9);
  v48 = (v46 - 16);
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, v49);
  v62[0] = v63;
  v62[1] = 0x400000000;
  if (!*(v5 + 9) || (v50 = *(v5 - 1) & 7, v50 == 6) || v50 == 5)
  {
    v51 = -40;
  }

  else
  {
    v51 = -32;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v62, *(v5 + v51 + 8) & 0xFFFFFFFFFFFFFFF8);
  v52 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v59, v62, &__src, &v72);
  if (v62[0] != v63)
  {
    free(v62[0]);
  }

  if (v72 != &v74)
  {
    free(v72);
  }

  if (__src != v66)
  {
    free(__src);
  }

  if (*(v52 + 9))
  {
    v53 = v52 - 16;
  }

  else
  {
    v53 = 0;
  }

  v72 = &v74;
  v73 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v72, v53, 0, v53, 1);
  v54 = v72;
  if (v73)
  {
    v55 = 8 * v73;
    do
    {
      v56 = *v54++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v56);
      v55 -= 8;
    }

    while (v55);
    v54 = v72;
  }

  if (v54 != &v74)
  {
    free(v54);
  }

  (**a3)(a3, a2, v67 & 0xFFFFFFFFFFFFFFF9, v68);
  if (v67 != v69)
  {
    free(v67);
  }

  v21 = 1;
LABEL_30:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  return v21;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtSIOp>(a1, *(**a2 + 32));
  v21[0] = a2;
  v21[1] = v10;
  v22[0] = &v23;
  v22[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28 = 4;
  v29 = v31;
  v30 = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v22, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v28 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v26, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v24, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v19;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.cmpi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtSIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.extsi";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulSIExtendedRHSOne>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulSIExtendedRHSOne]";
  v6 = 104;
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

void anonymous namespace::MulUIExtendedToMulI::~MulUIExtendedToMulI(_anonymous_namespace_::MulUIExtendedToMulI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulUIExtendedToMulI::matchAndRewrite(_anonymous_namespace_::MulUIExtendedToMulI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v42[0] = v43;
  v42[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v42, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = *(v5 + 9);
  v10 = v5 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 7;
  if (v9)
  {
    v12 = v11 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  if (*(v5 + v14))
  {
    v15 = *(a3 + 2);
    if (v15 && v15[2] == 1)
    {
    }

    v16 = 0;
  }

  else
  {
    v17 = *(a3 + 1);
    v34 = *(*v42[0] + 24);
    v18 = mlir::FusedLoc::get(&v34, 1, 0, v17);
    v39 = v41;
    v40 = 0x400000000;
    v37[0] = v38;
    v37[1] = 0x400000000;
    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 24));
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v37, *(v8 + 56));
    v19 = mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    if (v19)
    {
      v21 = v19;
      v32 = "overflowFlags";
      v33 = 259;
      v22 = mlir::StringAttr::get(*(a3 + 1), &v32, v20);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(&v34, v22, v21);
    }

    v23 = mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v37, &v34);
    if (v34 != v36)
    {
      free(v34);
    }

    if (v37[0] != v38)
    {
      free(v37[0]);
    }

    if (*(v23 + 9))
    {
      v24 = v23 - 16;
    }

    else
    {
      v24 = 0;
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v34, v24, 0, v24, 1);
    v25 = v34;
    if (v35)
    {
      v26 = 8 * v35;
      do
      {
        v27 = *v25++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v27);
        v26 -= 8;
      }

      while (v26);
      v25 = v34;
    }

    if (v25 != v36)
    {
      free(v25);
    }

    v34 = v36;
    v35 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v34, v7, 0, v6, 1);
    v28 = v34;
    if (v35)
    {
      v29 = 8 * v35;
      do
      {
        v30 = *v28++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v30);
        v29 -= 8;
      }

      while (v29);
      v28 = v34;
    }

    if (v28 != v36)
    {
      free(v28);
    }

    (**a3)(a3, a2, v39 & 0xFFFFFFFFFFFFFFF9, v40);
    if (v39 != v41)
    {
      free(v39);
    }

    v16 = 1;
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulUIExtendedToMulI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulUIExtendedToMulI]";
  v6 = 104;
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

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t *a3, llvm::APInt *a4)
{
  v6 = *(a3 + 2);
  v13 = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a3;
  v12 = *a3;
  v8 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v9 = *(a4 + 2);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a4) == v9)
    {
LABEL_5:
      *v8 = 1;
      *(a1 + 8) = v6;
      *a1 = v7;
      *(a1 + 16) = 1;
      return;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::udiv(&v14, &v12, a4);
  v10 = v14;
  v11 = v13;
  *(a1 + 8) = v15;
  *a1 = v10;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t *a3, llvm::APInt *a4)
{
  v6 = *(a3 + 2);
  v13 = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a3;
  v12 = *a3;
  v8 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v9 = *(a4 + 2);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a4) == v9)
    {
LABEL_5:
      *v8 = 1;
      *(a1 + 8) = v6;
      *a1 = v7;
      *(a1 + 16) = 1;
      return;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::sdiv_ov(&v12, a4, v8, &v14);
  v10 = v14;
  v11 = v13;
  *(a1 + 8) = v15;
  *a1 = v10;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t *a3, llvm::APInt *a4)
{
  v7 = *(a3 + 2);
  v16 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v15 = *a3;
  v9 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v10 = *(a4 + 2);
  if (v10 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a4) == v10)
    {
LABEL_5:
      *v9 = 1;
      *(a1 + 8) = v7;
      *a1 = v8;
      *(a1 + 16) = 1;
      return;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::udiv(&v21, &v15, a4);
  llvm::APInt::urem(&v15, a4, &v19);
  v11 = v20;
  if (v20 > 0x40)
  {
    v12 = llvm::APInt::countLeadingZerosSlowCase(&v19);
    if (v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    if (v12 != v11)
    {
      goto LABEL_13;
    }
  }

  else if (v19)
  {
LABEL_13:
    v20 = v16;
    if (v16 > 0x40)
    {
      operator new[]();
    }

    v19 = v16 != 0;
    llvm::APInt::uadd_ov(&v21, &v19, *a2, &v17);
    if (v22 >= 0x41 && v21)
    {
      MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }

    goto LABEL_23;
  }

  v18 = v22;
  v17 = v21;
LABEL_23:
  v13 = v17;
  v14 = v16;
  *(a1 + 8) = v18;
  *a1 = v13;
  *(a1 + 16) = 1;
  if (v14 >= 0x41)
  {
    if (v15)
    {
      MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }
}

_DWORD *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(_DWORD *result, BOOL **a2, uint64_t a3, llvm::APInt *this)
{
  v6 = result;
  v7 = *(a3 + 8);
  v17 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v16 = *a3;
  v9 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v10 = *(this + 2);
  if (v10 > 0x40)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(this);
    if (result == v10)
    {
LABEL_5:
      *v9 = 1;
      v8 = v16;
LABEL_6:
      v6[2] = v7;
      *v6 = v8;
      *(v6 + 16) = 1;
      return result;
    }
  }

  else if (!*this)
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  v26 = v7;
  v25 = 0;
  v11 = llvm::APInt::compareSigned(&v16, &v25);
  v12 = llvm::APInt::compareSigned(this, &v25);
  if (v11 < 1 || v12 < 1)
  {
    *v24 = 0;
    if (v11 <= 0 && v12 <= 0)
    {
      llvm::APInt::ssub_ov(&v25, &v16, &v24[3], &v22);
      llvm::APInt::ssub_ov(&v25, this, &v24[2], v20);
      result = signedCeilNonnegInputs(&v18, &v22, v20, &v24[1]);
      if (!v24[3] && !v24[2])
      {
        v13 = v24[1];
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v11 > 0 || v12 < 1)
    {
      llvm::APInt::ssub_ov(&v25, this, &v24[2], &v22);
      llvm::APInt::sdiv_ov(&v16, &v22, &v24[1], v20);
      result = llvm::APInt::ssub_ov(&v25, v20, v24, &v18);
      if (v24[2])
      {
        goto LABEL_26;
      }
    }

    else
    {
      llvm::APInt::ssub_ov(&v25, &v16, &v24[3], &v22);
      llvm::APInt::sdiv_ov(&v22, this, &v24[1], v20);
      result = llvm::APInt::ssub_ov(&v25, v20, v24, &v18);
      if (v24[3])
      {
        goto LABEL_26;
      }
    }

    if (!v24[1])
    {
      v13 = v24[0];
LABEL_27:
      **a2 = v13;
      if (v21 >= 0x41)
      {
        result = *v20;
        if (*v20)
        {
          result = MEMORY[0x25F891010](*v20, 0x1000C8000313F17);
        }
      }

      if (v23 >= 0x41)
      {
        result = v22;
        if (v22)
        {
          result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
        }
      }

      goto LABEL_33;
    }

LABEL_26:
    v13 = 1;
    goto LABEL_27;
  }

  result = signedCeilNonnegInputs(&v18, &v16, this, *a2);
LABEL_33:
  if (v26 >= 0x41)
  {
    result = v25;
    if (v25)
    {
      result = MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }
  }

  v14 = v18;
  v15 = v17;
  v6[2] = v19;
  *v6 = v14;
  *(v6 + 16) = 1;
  if (v15 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

const void *signedCeilNonnegInputs(const llvm::APInt *a1, const void **this, const llvm::APInt *a3, BOOL *a4)
{
  v7 = *(this + 2);
  v14 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v13 = v7 != 0;
  llvm::APInt::ssub_ov(this, &v13, a4, &v9);
  llvm::APInt::sdiv_ov(&v9, a3, a4, &v11);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  result = llvm::APInt::sadd_ov(&v11, &v13, a4, a1);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v6 = result;
  v7 = *(a3 + 8);
  v13 = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a3;
  v12 = *a3;
  v9 = *(a4 + 2);
  if (v9 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_6;
    }

LABEL_10:
    **a2 = 1;
    *(v6 + 8) = v7;
    *v6 = v8;
    *(v6 + 16) = 1;
    return result;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(a4);
  if (result == v9)
  {
    goto LABEL_10;
  }

LABEL_6:
  result = llvm::APInt::sfloordiv_ov(&v12, a4, *a2, &v14);
  v10 = v14;
  v11 = v13;
  *(v6 + 8) = v15;
  *v6 = v10;
  v15 = 0;
  *(v6 + 16) = 1;
  if (v11 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t *a3, llvm::APInt *a4)
{
  v6 = *(a3 + 2);
  v13 = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a3;
  v12 = *a3;
  v8 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v9 = *(a4 + 2);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a4) == v9)
    {
LABEL_5:
      *v8 = 1;
      *(a1 + 8) = v6;
      *a1 = v7;
      *(a1 + 16) = 1;
      return;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::urem(&v12, a4, &v14);
  v10 = v14;
  v11 = v13;
  *(a1 + 8) = v15;
  *a1 = v10;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t *a3, llvm::APInt *a4)
{
  v6 = *(a3 + 2);
  v13 = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *a3;
  v12 = *a3;
  v8 = *a2;
  if (**a2)
  {
    goto LABEL_5;
  }

  v9 = *(a4 + 2);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a4) == v9)
    {
LABEL_5:
      *v8 = 1;
      *(a1 + 8) = v6;
      *a1 = v7;
      *(a1 + 16) = 1;
      return;
    }
  }

  else if (!*a4)
  {
    goto LABEL_5;
  }

  llvm::APInt::srem(&v12, a4, &v14);
  v10 = v14;
  v11 = v13;
  *(a1 + 8) = v15;
  *a1 = v10;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }
}

uint64_t mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
    return 0;
  }

  v2 = *(*(a2 + 72) + 24);
  v3 = *a1;
  LODWORD(result) = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(a2, 1u, (a1 + 1));
  if (v3 == v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(uint64_t a1, unsigned int a2, mlir::detail::constant_int_value_binder *this)
{
  v3 = *(*(a1 + 72) + 32 * a2 + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = (v5 + 120);
    if (v5 == -120)
    {
      return 0;
    }
  }

  else
  {
    v6 = (v3 + 16 * v4 + 16);
  }

  return mlir::detail::constant_int_value_binder::match(this, v6);
}

_DWORD *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(_DWORD *result, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 & *a2;
  result[2] = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

_DWORD *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(_DWORD *result, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 | *a2;
  result[2] = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

_DWORD *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(_DWORD *result, uint64_t a2, unint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a3 ^ *a2;
  result[2] = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

void anonymous namespace::XOrINotCmpI::~XOrINotCmpI(_anonymous_namespace_::XOrINotCmpI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrINotCmpI::matchAndRewrite(_anonymous_namespace_::XOrINotCmpI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v49[0] = v50;
  v49[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_18;
      }

      v11 = *(v5 + 3);
      goto LABEL_17;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
    goto LABEL_17;
  }

  v15 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(v9);
  if (!v15)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
LABEL_17:
    (*(*v10 + 88))(v10, v11, v12, &v41);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v16 = v15;
  if ((*(v9 + 46) & 0x80) != 0)
  {
    v17 = *(v9 + 72);
  }

  else
  {
    v17 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v9);
  v18 = *(*(v5 + 9) + 56);
  if ((~*(v18 + 8) & 7) == 0)
  {
    v18 = 0;
  }

  if (!v18)
  {
LABEL_30:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v5 + 3);
    goto LABEL_17;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 == 6)
  {
    v20 = v18 + 24 * *(v18 + 16);
    v21 = (v20 + 120);
    if (v20 == -120)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = (v18 + 16 * v19 + 16);
  }

  {
    goto LABEL_18;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v21);
  v22 = *(a3 + 1);
  v23 = *(*(v49[0] + 1) + 24);
  v41 = *(*v49[0] + 24);
  v42 = v23;
  v24 = mlir::FusedLoc::get(&v41, 2, 0, v22);
  v46 = v48;
  v47 = 0x400000000;
  v41 = v16;
  v25 = *(**v16 + 32);
  Int = mlir::IntegerAttr::getInt(&v41);
  v27 = mlir::arith::invertPredicate(Int);
  v28 = mlir::IntegerType::get(v25, 64, 0);
  v29 = mlir::IntegerAttr::get(v28, v27);
  v44[0] = v45;
  v44[1] = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  if (v29)
  {
    v31 = v29;
    v39[0] = "predicate";
    v40[8] = 259;
    v32 = mlir::StringAttr::get(*(a3 + 1), v39, v30);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v41, v32, v31);
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v17 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v44, *(v17 + 56));
  v39[0] = v40;
  v39[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v33 = v5 - 16;
  }

  else
  {
    v33 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v39, *(v33 + 1) & 0xFFFFFFFFFFFFFFF8);
  v34 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v24, v39, v44, &v41);
  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (*(v34 + 9))
  {
    v35 = v34 - 16;
  }

  else
  {
    v35 = 0;
  }

  v41 = v43;
  v42 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v41, v35, 0, v35, 1);
  v36 = v41;
  if (v42)
  {
    v37 = 8 * v42;
    do
    {
      v38 = *v36++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, v38);
      v37 -= 8;
    }

    while (v37);
    v36 = v41;
  }

  if (v36 != v43)
  {
    free(v36);
  }

  (**a3)(a3, a2, v46 & 0xFFFFFFFFFFFFFFF9, v47);
  if (v46 != v48)
  {
    free(v46);
  }

  v13 = 1;
LABEL_19:
  if (v49[0] != v50)
  {
    free(v49[0]);
  }

  return v13;
}

void *mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(uint64_t a1)
{
  result = mlir::Operation::getAttr(a1, "predicate", 9uLL);
  if (result)
  {
    v2 = result;
    if (mlir::arith::CmpIPredicateAttr::classof(result))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_12(uint64_t a1, void *a2)
{
  v12[0] = 0;
  v13[0] = v12;
  if ((*(a2 - 1) & 7) == 7)
  {
    goto LABEL_9;
  }

  v3 = *(a2 - 1) & 7;
  if (v3 == 6)
  {
    v4 = &a2[3 * *a2 - 2];
    v5 = v4 + 15;
    if (v4 == -120)
    {
LABEL_9:
      v9 = *(a1 + 16);
      if (!v9 || v9[2] != 1)
      {
        return 0;
      }

      v10 = *(*v9 + 88);
      goto LABEL_12;
    }
  }

  else
  {
    v5 = &a2[2 * v3];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(v13, v5))
  {
    goto LABEL_9;
  }

  v6 = v12[0];
  v13[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 1'";
  v13[1] = 169;
  v7 = mlir::IntegerType::get(*(a1 + 8), 1, 0);
  if (mlir::Builder::getIntegerAttr(a1 + 8, v7, 1) == v6)
  {
    return 1;
  }

  v12[1] = v13;
  v11 = *(a1 + 16);
  if (v11 && v11[2] == 1)
  {
    v10 = *(*v11 + 88);
LABEL_12:
    v10();
  }

  return 0;
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(result, a2, a3);
  }

  else
  {
    v4 = (*result + 16 * v3);
    *v4 = a2;
    v4[1] = a3;
    *(result + 8) = v3 + 1;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>(a1, *(**a2 + 32));
  v26 = a2;
  v27 = v10;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30[0] = &v31;
  v30[1] = 0x400000000;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34 = 4;
  v35 = v37;
  v36 = 0x100000000;
  v37[1] = v38;
  v37[2] = 0x100000000;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v38[4] = 0;
  v38[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v28, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v34 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v32, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v30, v13 | 2, 0, v13 | 2, v12);
  if (v17)
  {
    v18 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(&v26);
    v19 = v27;
    v20 = *(v27 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v27;
    Dictionary = mlir::NamedAttrList::getDictionary(v32, *(**v26 + 32));
    if (((*(*v20 + 144))(v20, v19, v18, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1, v22);
    }
  }

  v23 = mlir::Operation::create(&v26);
  mlir::OpBuilder::insert(a1, v23);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(&v26);
  return v24;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization4(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<23ul>(v5, ": constant attribute 1");
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrINotCmpI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrINotCmpI]";
  v6 = 96;
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

void anonymous namespace::XOrIOfExtUI::~XOrIOfExtUI(_anonymous_namespace_::XOrIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrIOfExtUI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v48[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v35[0] = v5;
  v35[1] = v6;
  v34[0] = v5;
  v34[1] = v6;
  v47[0] = v48;
  v47[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, v18);
  v19 = v34[0];
  v20 = v35[0];
  if ((*(*(v35[0] + 24) + 8) ^ *(*(v34[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v38);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v47[0] + 1) + 24);
  v38 = *(*v47[0] + 24);
  v39 = v22;
  v40[0] = *(*(v47[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v38, 3, 0, v21);
  v44 = v46;
  v45 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = v24 - 16;
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, v25);
  v36[0] = v37;
  v36[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v36, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v36, &v41, &v38);
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (*(v27 + 9))
  {
    v28 = v27 - 16;
  }

  else
  {
    v28 = 0;
  }

  v38 = v40;
  v39 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v38, v28, 0, v28, 1);
  v29 = v38;
  if (v39)
  {
    v30 = 8 * v39;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v44, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v38;
  }

  if (v29 != v40)
  {
    free(v29);
  }

  (**a3)(a3, a2, v44 & 0xFFFFFFFFFFFFFFF9, v45);
  if (v44 != v46)
  {
    free(v44);
  }

  v32 = 1;
LABEL_60:
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  return v32;
}

uint64_t anonymous namespace::static_dag_matcher_8(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_9(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(a1, *(**a2 + 32));
  v25[0] = a2;
  v25[1] = v8;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30[0] = &v31;
  v30[1] = 0x400000000;
  v32 = 4;
  v33 = v35;
  v34 = 0x100000000;
  v35[1] = v36;
  v35[2] = 0x100000000;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v36[4] = 0;
  v36[6] = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  v11 = *a4;
  v12 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, v9 & 0xFFFFFFFFFFFFFFF9, 0, v9 & 0xFFFFFFFFFFFFFFF9, v10);
  v32 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v30, v11, &v11[16 * v12]);
  v37 = v39;
  v38 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v30, *(**v25[0] + 32));
  if (!mlir::arith::XOrIOp::inferReturnTypes(Dictionary, v14, v15, v9 & 0xFFFFFFFFFFFFFFF9, v10, v16, v17, v18, v23, v24, &v37))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v19);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v28, v37, &v37[v38]);
  if (v37 != v39)
  {
    free(v37);
  }

  v20 = mlir::Operation::create(v25);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v21;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(a1, *(**a2 + 32));
  v21[0] = a2;
  v21[1] = v10;
  v22[0] = &v23;
  v22[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28 = 4;
  v29 = v31;
  v30 = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v22, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v28 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v26, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v24, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v19;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.xori";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.extui";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrIOfExtUI]";
  v6 = 96;
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

void anonymous namespace::XOrIOfExtSI::~XOrIOfExtSI(_anonymous_namespace_::XOrIOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::XOrIOfExtSI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v48[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v35[0] = v5;
  v35[1] = v6;
  v34[0] = v5;
  v34[1] = v6;
  v47[0] = v48;
  v47[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_59;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_59;
      }

      v13 = *(v7 + 3);
      goto LABEL_58;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_59:
    v32 = 0;
    goto LABEL_60;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v47, v18);
  v19 = v34[0];
  v20 = v35[0];
  if ((*(*(v35[0] + 24) + 8) ^ *(*(v34[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_59;
    }

    v13 = *(a2 + 3);
LABEL_58:
    (*(*v12 + 88))(v12, v13, v14, &v38);
    goto LABEL_59;
  }

  v21 = *(a3 + 1);
  v22 = *(*(v47[0] + 1) + 24);
  v38 = *(*v47[0] + 24);
  v39 = v22;
  v40[0] = *(*(v47[0] + 2) + 24);
  v23 = mlir::FusedLoc::get(&v38, 3, 0, v21);
  v44 = v46;
  v45 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, *(v19 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, *(v20 + 24));
  v24 = mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  if (*(v24 + 9))
  {
    v25 = v24 - 16;
  }

  else
  {
    v25 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, v25);
  v36[0] = v37;
  v36[1] = 0x400000000;
  if (*(v7 + 9))
  {
    v26 = v7 - 16;
  }

  else
  {
    v26 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v36, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
  v27 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, v36, &v41, &v38);
  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (*(v27 + 9))
  {
    v28 = v27 - 16;
  }

  else
  {
    v28 = 0;
  }

  v38 = v40;
  v39 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v38, v28, 0, v28, 1);
  v29 = v38;
  if (v39)
  {
    v30 = 8 * v39;
    do
    {
      v31 = *v29++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v44, v31);
      v30 -= 8;
    }

    while (v30);
    v29 = v38;
  }

  if (v29 != v40)
  {
    free(v29);
  }

  (**a3)(a3, a2, v44 & 0xFFFFFFFFFFFFFFF9, v45);
  if (v44 != v46)
  {
    free(v44);
  }

  v32 = 1;
LABEL_60:
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  return v32;
}

uint64_t anonymous namespace::static_dag_matcher_6(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t anonymous namespace::static_dag_matcher_7(_DWORD *a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    result = 1;
    *a3 = v6;
    a3[1] = 1;
  }

  else
  {
    if (a1)
    {
      if (a1[2] == 1)
      {
        *&v7[1] = v3;
        v8 = v4;
      }
    }

    return 0;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::XOrIOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::XOrIOfExtSI]";
  v6 = 96;
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

void *mlir::ElementsAttr::try_value_begin<llvm::APFloat>(uint64_t a1, uint64_t a2)
{
  mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID();
  result = (**(a2 + 8))(v8);
  if (v9 == 1)
  {
    v5 = v8[0];
    v6 = BYTE1(v8[0]);
    v7 = v8[1];
    if (LOBYTE(v8[0]) == 1)
    {
      *a1 = v8[0];
      *(a1 + 1) = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
    }

    else
    {
      *a1 = v8[0];
      *(a1 + 1) = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      v5 = 1;
    }

    *(a1 + 24) = v5;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(_DWORD *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 24, &v6);
  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

llvm::APFloat::Storage *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(llvm::APFloat::Storage *result, void *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = 24 * v2;
    do
    {
      if (*v5 == &llvm::semPPCDoubleDouble)
      {
        v7 = v5[1];
        v5[1] = 0;
        *a2 = &llvm::semPPCDoubleDouble;
        a2[1] = v7;
        *v5 = &llvm::semBogus;
      }

      else
      {
        *a2 = &llvm::semBogus;
        result = llvm::detail::IEEEFloat::operator=(a2, v5);
      }

      a2 += 3;
      v5 += 3;
      v6 -= 24;
    }

    while (v6);
    v8 = *(v4 + 2);
    if (v8)
    {
      v9 = *v4;
      v10 = -24 * v8;
      result = (v9 + 24 * v8 - 24);
      do
      {
        llvm::APFloat::Storage::~Storage(result);
        result = (v11 - 24);
        v10 += 24;
      }

      while (v10);
    }
  }

  return result;
}

llvm::detail::IEEEFloat *mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(llvm::APFloat::Storage *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a2 + 8);
  if (*a2 == 1)
  {
    return llvm::APFloat::Storage::Storage(a1, (v5 + 24 * v4));
  }

  else
  {
    return (*(*v5 + 24))(v5, v4);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::APFloat,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APFloat,false>>(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = v4 + a3;
  if (v4 + a3 > a1[3])
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v5);
    }
  }

  return a2;
}

char ***llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[3 * v3 - 3];
    do
    {
      llvm::APFloat::Storage::~Storage(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::detail::constant_float_predicate_matcher::match(uint64_t (**a1)(_BYTE *), uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v7, &llvm::semBogus);
  v6 = v7;
  if (mlir::detail::constant_float_value_binder::match(&v6, a2))
  {
    v4 = (*a1)(v7);
  }

  else
  {
    v4 = 0;
  }

  llvm::APFloat::Storage::~Storage(v7);
  return v4;
}

BOOL mlir::detail::constant_float_value_binder::match(void ***a1, uint64_t a2)
{
  v7 = *a1;
  if (mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(&v7, a2))
  {
    return 1;
  }

  v4 = *(*a2 + 136);
  v5 = v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v5 || *(a2 + 24) != 1)
  {
    return 0;
  }

  (*(*(a2 + 16) + 24))();
  v8[0] = a2;
  v8[1] = 0;
  v6 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(v8);
  return mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(&v7, v6);
}

BOOL mlir::detail::attr_value_binder<mlir::FloatAttr,llvm::APFloat,void>::match(void ***a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(v5, (a2 + 16));
    llvm::APFloat::Storage::operator=(*a1, v5);
    llvm::APFloat::Storage::~Storage(v5);
  }

  return v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::detail::DoubleAPFloat *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v6, a2);
  llvm::APFloat::add(&v6, a3, 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

char ***llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[3 * v3 - 3];
    do
    {
      llvm::APFloat::Storage::~Storage(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::detail::DoubleAPFloat *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v6, a2);
  llvm::APFloat::subtract(&v6, a3, 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat **this, llvm::APFloat **a3)
{
  v3 = this;
  v14 = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v5 = this[1];
  }

  else
  {
    v5 = this;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) == 1)
  {
    goto LABEL_10;
  }

  if (*a3 == &llvm::semPPCDoubleDouble)
  {
    v8 = a3[1];
  }

  else
  {
    v8 = a3;
  }

  v9 = *(v8 + 20);
  if ((v9 & 7) == 1)
  {
    this = a3;
LABEL_10:
    llvm::APFloat::makeQuiet(&v12, this);
    goto LABEL_23;
  }

  v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
  if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
  {
    if (llvm::APFloat::compare(this, a3))
    {
      this = v3;
    }

    else
    {
      this = a3;
    }
  }

  else if ((v6 & 8) != 0)
  {
    this = a3;
  }

  llvm::APFloat::Storage::Storage(&v12, this);
LABEL_23:
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    v11 = v13;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v11;
    v12 = &llvm::semBogus;
    v13 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v12);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v12);
}

llvm::detail::IEEEFloat *llvm::APFloat::makeQuiet(llvm::APFloat *this, const llvm::APFloat::Storage *a2)
{
  result = llvm::APFloat::Storage::Storage(this, a2);
  if (*result == &llvm::semPPCDoubleDouble)
  {
    v3 = *(result + 1);
  }

  else
  {
    v3 = result;
  }

  if (*(*v3 + 16) != 1)
  {
    v4 = *(*v3 + 8);
    v5 = (v3 + 8);
    if ((v4 - 64) <= 0xFFFFFF7F)
    {
      v5 = *v5;
    }

    v5[(v4 - 2) >> 6] |= 1 << (v4 - 2);
  }

  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&)>(llvm::ArrayRef<mlir::Attribute>,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&) &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  a2(&v6, a3, a4);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat **a2, llvm::APFloat *this)
{
  v3 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) == 1)
  {
    goto LABEL_10;
  }

  if (*this == &llvm::semPPCDoubleDouble)
  {
    v8 = *(this + 1);
  }

  else
  {
    v8 = this;
  }

  v9 = *(v8 + 20);
  if ((v9 & 7) == 1)
  {
    a2 = this;
LABEL_10:
    llvm::APFloat::makeQuiet(&v14, a2);
    goto LABEL_23;
  }

  v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
  if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
  {
    v11 = llvm::APFloat::compare(this, a2) == 0;
  }

  else
  {
    v11 = (v6 & 8) == 0;
  }

  if (v11)
  {
    v12 = this;
  }

  else
  {
    v12 = v3;
  }

  llvm::APFloat::Storage::Storage(&v14, v12);
LABEL_23:
  if (v14 == &llvm::semPPCDoubleDouble)
  {
    v13 = v15;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v13;
    v14 = &llvm::semBogus;
    v15 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v14);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v14);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm::APFloat *a2, llvm::APFloat **this)
{
  v3 = this;
  v15 = *MEMORY[0x277D85DE8];
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) != 1)
  {
    if (*this == &llvm::semPPCDoubleDouble)
    {
      v8 = this[1];
    }

    else
    {
      v8 = this;
    }

    v9 = *(v8 + 20);
    if ((v9 & 7) == 1)
    {
      v3 = a2;
    }

    else
    {
      v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
      if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
      {
        v11 = llvm::APFloat::compare(this, a2) == 0;
      }

      else
      {
        v11 = (v6 & 8) == 0;
      }

      if (!v11)
      {
        v3 = a2;
      }
    }
  }

  llvm::APFloat::Storage::Storage(&v13, v3);
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v12 = v14;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v12;
    v13 = &llvm::semBogus;
    v14 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v13);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v13);
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, const llvm::detail::IEEEFloat *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v6, a2);
  llvm::APFloat::multiply(&v6, a3, 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

void anonymous namespace::MulFOfNegF::~MulFOfNegF(_anonymous_namespace_::MulFOfNegF *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MulFOfNegF::matchAndRewrite(_anonymous_namespace_::MulFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v84[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v57[0] = v5;
  v57[1] = v6;
  v56[0] = v5;
  v56[1] = v6;
  v67[0] = v68;
  v67[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_63;
      }

      v13 = *(v7 + 3);
      goto LABEL_62;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_63;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_63;
      }

      v13 = *(v7 + 3);
      goto LABEL_62;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_63:
    v51 = 0;
    goto LABEL_64;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v67, v18);
  Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
  if (!Attr || (v20 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id))
  {
    v20 = mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v56[0];
  v22 = v57[0];
  if ((*(*(v57[0] + 24) + 8) ^ *(*(v56[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_63;
    }

    v13 = *(a2 + 3);
LABEL_62:
    (*(*v12 + 88))(v12, v13, v14, &v69);
    goto LABEL_63;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v67[0] + 1) + 24);
  v69 = *(*v67[0] + 24);
  v70 = v24;
  v71[0] = *(*(v67[0] + 2) + 24);
  v25 = mlir::FusedLoc::get(&v69, 3, 0, v23);
  v64 = v66;
  v65 = 0x400000000;
  v61 = v63;
  v62 = 0x400000000;
  v58 = v60;
  v59 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v61, *(v21 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v61, *(v22 + 24));
  if (v20)
  {
    v69 = "fastmath";
    v72 = 259;
    v27 = mlir::StringAttr::get(*(a3 + 1), &v69, v26);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(&v58, v27, v20);
  }

  v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulFOp>(a3 + 8, *(**v25 + 32));
  v69 = v25;
  v70 = v28;
  v71[0] = &v72;
  v71[1] = 0x400000000;
  v73[0] = &v74;
  v73[1] = 0x400000000;
  v75[0] = &v76;
  v75[1] = 0x400000000;
  v77 = 4;
  v78 = v80;
  v79 = 0x100000000;
  v80[1] = v81;
  v80[2] = 0x100000000;
  v81[2] = 0;
  v81[1] = 0;
  v81[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v81[4] = 0;
  v81[6] = 0;
  v29 = v61;
  v30 = v62;
  v31 = v58;
  v32 = v59;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v71, v61 & 0xFFFFFFFFFFFFFFF9, 0, v61 & 0xFFFFFFFFFFFFFFF9, v62);
  v77 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v75, v31, &v31[16 * v32]);
  if (v32)
  {
    v33 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(&v69);
    v34 = v70;
    v35 = *(v70 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v70;
    Dictionary = mlir::NamedAttrList::getDictionary(v75, *(**v69 + 32));
    if (((*(*v35 + 144))(v35, v34, v33, Dictionary, 0) & 1) == 0)
    {
      v53 = "Property conversion failed.";
LABEL_70:
      llvm::report_fatal_error(v53, 1, v37);
    }
  }

  v82 = v84;
  v83 = 0x200000000;
  v38 = mlir::NamedAttrList::getDictionary(v75, *(**v69 + 32));
  if (!mlir::arith::MulFOp::inferReturnTypes(v38, v39, v40, v29 & 0xFFFFFFFFFFFFFFF9, v30, v41, v42, v43, v54, v55, &v82))
  {
    v53 = "Failed to infer result type(s).";
    goto LABEL_70;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v73, v82, &v82[v83]);
  if (v82 != v84)
  {
    free(v82);
  }

  v44 = mlir::Operation::create(&v69);
  mlir::OpBuilder::insert((a3 + 8), v44);
  v45 = *(*(v44 + 6) + 16);
  mlir::OperationState::~OperationState(&v69);
  if (v45 == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  if (*(v46 + 9))
  {
    v47 = (v46 - 16);
  }

  else
  {
    v47 = 0;
  }

  v69 = v71;
  v70 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v69, v47, 0, v47, 1);
  v48 = v69;
  if (v70)
  {
    v49 = 8 * v70;
    do
    {
      v50 = *v48++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, v50);
      v49 -= 8;
    }

    while (v49);
    v48 = v69;
  }

  if (v48 != v71)
  {
    free(v48);
  }

  (**a3)(a3, a2, v64 & 0xFFFFFFFFFFFFFFF9, v65);
  if (v64 != v66)
  {
    free(v64);
  }

  v51 = 1;
LABEL_64:
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  return v51;
}

uint64_t anonymous namespace::static_dag_matcher_10(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    a3[1] = 1;
    Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a1 + 8), 0);
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (v4[2] == 1)
      {
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::static_dag_matcher_11(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    a3[1] = 1;
    Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a1 + 8), 0);
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (v4[2] == 1)
      {
      }
    }

    return 0;
  }
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(result, a2, a3);
  }

  else
  {
    v4 = (*result + 16 * v3);
    *v4 = a2;
    v4[1] = a3;
    *(result + 8) = v3 + 1;
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::MulFOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.mulf";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MulFOfNegF>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MulFOfNegF]";
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

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, const llvm::detail::IEEEFloat *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v6, a2);
  llvm::APFloat::divide(&v6, a3, 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

void anonymous namespace::DivFOfNegF::~DivFOfNegF(_anonymous_namespace_::DivFOfNegF *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DivFOfNegF::matchAndRewrite(_anonymous_namespace_::DivFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v58[0] = v5;
  v58[1] = v6;
  v57[0] = v5;
  v57[1] = v6;
  v70[0] = v71;
  v70[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_64;
      }

      v13 = *(v7 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
    goto LABEL_64;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v11);
  v15 = *(*(v7 + 9) + 56);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
LABEL_21:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_64;
      }

      v13 = *(v7 + 3);
      goto LABEL_63;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  {
LABEL_64:
    v52 = 0;
    goto LABEL_65;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v18);
  Attr = mlir::Operation::getAttr(a2, "fastmath", 8uLL);
  if (!Attr || (v20 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id))
  {
    v20 = mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
  }

  v21 = v57[0];
  v22 = v58[0];
  if ((*(*(v58[0] + 24) + 8) ^ *(*(v57[0] + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_64;
    }

    v13 = *(a2 + 3);
LABEL_63:
    (*(*v12 + 88))(v12, v13, v14, &v72);
    goto LABEL_64;
  }

  v23 = *(a3 + 1);
  v24 = *(*(v70[0] + 1) + 24);
  v72 = *(*v70[0] + 24);
  v73 = v24;
  v74[0] = *(*(v70[0] + 2) + 24);
  v25 = mlir::FusedLoc::get(&v72, 3, 0, v23);
  v67 = v69;
  v68 = 0x400000000;
  v64 = v66;
  v65 = 0x400000000;
  v61 = v63;
  v62 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, *(v21 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, *(v22 + 24));
  if (v20)
  {
    v72 = "fastmath";
    v75 = 259;
    v27 = mlir::StringAttr::get(*(a3 + 1), &v72, v26);
    llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::FastMathFlagsAttr &>(&v61, v27, v20);
  }

  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, *(**v25 + 32));
  if ((v29 & 1) == 0)
  {
    v88 = 1283;
    v87[0] = "arith.divf";
    v87[1] = 10;
    v60 = 259;
    llvm::operator+(&v85, &v59, &v72);
    llvm::report_fatal_error(&v72, 1);
  }

  v72 = v25;
  v73 = v28;
  v74[0] = &v75;
  v74[1] = 0x400000000;
  v76[0] = &v77;
  v76[1] = 0x400000000;
  v78[0] = &v79;
  v78[1] = 0x400000000;
  v80 = 4;
  v81 = v83;
  v82 = 0x100000000;
  v83[1] = v84;
  v83[2] = 0x100000000;
  v84[2] = 0;
  v84[1] = 0;
  v84[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v84[4] = 0;
  v84[6] = 0;
  v30 = v64;
  v31 = v65;
  v32 = v61;
  v33 = v62;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v74, v64 & 0xFFFFFFFFFFFFFFF9, 0, v64 & 0xFFFFFFFFFFFFFFF9, v65);
  v80 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v78, v32, &v32[16 * v33]);
  if (v33)
  {
    v34 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(&v72);
    v35 = v73;
    v36 = *(v73 + 16) == &mlir::detail::TypeIDResolver<void,void>::id ? 0 : v73;
    Dictionary = mlir::NamedAttrList::getDictionary(v78, *(**v72 + 32));
    if (((*(*v36 + 144))(v36, v35, v34, Dictionary, 0) & 1) == 0)
    {
      v54 = "Property conversion failed.";
LABEL_72:
      llvm::report_fatal_error(v54, 1, v38);
    }
  }

  v85 = v87;
  v86 = 0x200000000;
  v39 = mlir::NamedAttrList::getDictionary(v78, *(**v72 + 32));
  if (!mlir::arith::DivFOp::inferReturnTypes(v39, v40, v41, v30 & 0xFFFFFFFFFFFFFFF9, v31, v42, v43, v44, v55, v56, &v85))
  {
    v54 = "Failed to infer result type(s).";
    goto LABEL_72;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v76, v85, &v85[8 * v86]);
  if (v85 != v87)
  {
    free(v85);
  }

  v45 = mlir::Operation::create(&v72);
  mlir::OpBuilder::insert((a3 + 8), v45);
  v46 = *(*(v45 + 6) + 16);
  mlir::OperationState::~OperationState(&v72);
  if (v46 == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  if (v61 != v63)
  {
    free(v61);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if (*(v47 + 9))
  {
    v48 = (v47 - 16);
  }

  else
  {
    v48 = 0;
  }

  v72 = v74;
  v73 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v72, v48, 0, v48, 1);
  v49 = v72;
  if (v73)
  {
    v50 = 8 * v73;
    do
    {
      v51 = *v49++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v51);
      v50 -= 8;
    }

    while (v50);
    v49 = v72;
  }

  if (v49 != v74)
  {
    free(v49);
  }

  (**a3)(a3, a2, v67 & 0xFFFFFFFFFFFFFFF9, v68);
  if (v67 != v69)
  {
    free(v67);
  }

  v52 = 1;
LABEL_65:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  return v52;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DivFOfNegF>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DivFOfNegF]";
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

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, const llvm::APFloat::Storage *a2, llvm::APFloat **a3)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v6, a2);
  llvm::APFloat::mod(&v6, a3);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v5 = v7;
    *a1 = &llvm::semPPCDoubleDouble;
    *(a1 + 8) = v5;
    v6 = &llvm::semBogus;
    v7 = 0;
  }

  else
  {
    *a1 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(a1, &v6);
  }

  *(a1 + 24) = 1;
  llvm::APFloat::Storage::~Storage(&v6);
}

uint64_t *getTypeIfLike<mlir::IntegerType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v5 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v7)
  {
    v1 = (*(v8 + 8))(v8, v7);
  }

  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::ExtSIOfExtUI::~ExtSIOfExtUI(_anonymous_namespace_::ExtSIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtSIOfExtUI::matchAndRewrite(_anonymous_namespace_::ExtSIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v34[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v33[0] = v34;
  v33[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v33, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 9) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_11:
      v11 = *(a3 + 2);
      if (v11 && v11[2] == 1)
      {
      }

      goto LABEL_37;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v33, v10);
  v12 = *(*(v33[0] + 1) + 24);
  v25 = *(*v33[0] + 24);
  v26 = v12;
  v13 = mlir::FusedLoc::get(&v25, 2, 0, *(a3 + 1));
  v30 = v32;
  v31 = 0x400000000;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v25 = v27;
  v26 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v28, *(v22 + 24));
  v23[0] = v24;
  v23[1] = 0x400000000;
  if (*(v6 + 9))
  {
    v14 = v6 - 16;
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v23, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
  v15 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v13, v23, v28, &v25);
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (*(v15 + 9))
  {
    v16 = v15 - 16;
  }

  else
  {
    v16 = 0;
  }

  v25 = v27;
  v26 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v25, v16, 0, v16, 1);
  v17 = v25;
  if (v26)
  {
    v18 = 8 * v26;
    do
    {
      v19 = *v17++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v30, v19);
      v18 -= 8;
    }

    while (v18);
    v17 = v25;
  }

  if (v17 != v27)
  {
    free(v17);
  }

  (**a3)(a3, a2, v30 & 0xFFFFFFFFFFFFFFF9, v31);
  if (v30 != v32)
  {
    free(v30);
  }

  v20 = 1;
LABEL_38:
  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  return v20;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtSIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtSIOfExtUI]";
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

uint64_t convertFloatValue(uint64_t a1, void **a2, void *a3, unsigned int a4)
{
  v9 = 0;
  result = llvm::APFloat::convert(a2, a3, a4, &v9);
  if (v9 || result)
  {
    v7 = 0;
    *a1 = 0;
  }

  else
  {
    if (*a2 == &llvm::semPPCDoubleDouble)
    {
      v8 = a2[1];
      *a1 = &llvm::semPPCDoubleDouble;
      *(a1 + 8) = v8;
      *a2 = &llvm::semBogus;
      a2[1] = 0;
    }

    else
    {
      *a1 = &llvm::semBogus;
      result = llvm::detail::IEEEFloat::operator=(a1, a2);
    }

    v7 = 1;
  }

  *(a1 + 24) = v7;
  return result;
}

uint64_t *getTypeIfLike<mlir::FloatType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v5 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v7)
  {
    v1 = (*(v8 + 8))(v8, v7);
  }

  v9 = *v1;
  v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::TruncIExtSIToExtSI::~TruncIExtSIToExtSI(_anonymous_namespace_::TruncIExtSIToExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(_anonymous_namespace_::TruncIExtSIToExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40[0] = v41;
  v40[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v40, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_63;
      }

      v11 = *(v5 + 3);
LABEL_62:
      (*(*v10 + 88))(v10, v11, v12, &v32);
LABEL_63:
      v28 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 24);
    goto LABEL_62;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v40, v9);
  if (*(v9 + 36))
  {
    v14 = v9 - 16;
  }

  else
  {
    v14 = 0;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(v14);
  if (*(v5 + 9))
  {
    v16 = v5 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (ScalarOrElementWidth <= getScalarOrElementWidth(v16) || (*(v5 + 9) ? (v17 = v5 - 16) : (v17 = 0), getScalarOrElementWidth(v17) <= 0))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  if (*(v5 + 9))
  {
    v18 = v5 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = getScalarOrElementWidth(v18);
  if (v19 <= getScalarOrElementWidth(*(v13 + 24)) || getScalarOrElementWidth(*(v13 + 24)) <= 0)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  v20 = *(*(v40[0] + 1) + 24);
  v32 = *(*v40[0] + 24);
  v33 = v20;
  v21 = mlir::FusedLoc::get(&v32, 2, 0, *(a3 + 1));
  v37 = v39;
  v38 = 0x400000000;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v35, *(v13 + 24));
  v30[0] = v31;
  v30[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v22 = v5 - 16;
  }

  else
  {
    v22 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v30, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v21, v30, v35, &v32);
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (*(v23 + 9))
  {
    v24 = v23 - 16;
  }

  else
  {
    v24 = 0;
  }

  v32 = v34;
  v33 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v32, v24, 0, v24, 1);
  v25 = v32;
  if (v33)
  {
    v26 = 8 * v33;
    do
    {
      v27 = *v25++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v37, v27);
      v26 -= 8;
    }

    while (v26);
    v25 = v32;
  }

  if (v25 != v34)
  {
    free(v25);
  }

  (**a3)(a3, a2, v37 & 0xFFFFFFFFFFFFFFF9, v38);
  if (v37 != v39)
  {
    free(v37);
  }

  v28 = 1;
LABEL_64:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return v28;
}

uint64_t getScalarOrElementWidth(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  v4 = v2;
  if (v2)
  {
    v2 = (*(v3 + 8))(v3, v2);
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  v7 = v5;
  if (mlir::Type::isIntOrFloat(&v7))
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7);
  }

  else
  {
    return -1;
  }
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIExtSIToExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIExtSIToExtSI]";
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

void anonymous namespace::TruncIExtUIToExtUI::~TruncIExtUIToExtUI(_anonymous_namespace_::TruncIExtUIToExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(_anonymous_namespace_::TruncIExtUIToExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40[0] = v41;
  v40[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v40, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_63;
      }

      v11 = *(v5 + 3);
LABEL_62:
      (*(*v10 + 88))(v10, v11, v12, &v32);
LABEL_63:
      v28 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 24);
    goto LABEL_62;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v40, v9);
  if (*(v9 + 36))
  {
    v14 = v9 - 16;
  }

  else
  {
    v14 = 0;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(v14);
  if (*(v5 + 9))
  {
    v16 = v5 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (ScalarOrElementWidth <= getScalarOrElementWidth(v16) || (*(v5 + 9) ? (v17 = v5 - 16) : (v17 = 0), getScalarOrElementWidth(v17) <= 0))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  if (*(v5 + 9))
  {
    v18 = v5 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = getScalarOrElementWidth(v18);
  if (v19 <= getScalarOrElementWidth(*(v13 + 24)) || getScalarOrElementWidth(*(v13 + 24)) <= 0)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_63;
    }

    v11 = *(a2 + 3);
    goto LABEL_62;
  }

  v20 = *(*(v40[0] + 1) + 24);
  v32 = *(*v40[0] + 24);
  v33 = v20;
  v21 = mlir::FusedLoc::get(&v32, 2, 0, *(a3 + 1));
  v37 = v39;
  v38 = 0x400000000;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v35, *(v13 + 24));
  v30[0] = v31;
  v30[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v22 = v5 - 16;
  }

  else
  {
    v22 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v30, *(v22 + 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v21, v30, v35, &v32);
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (*(v23 + 9))
  {
    v24 = v23 - 16;
  }

  else
  {
    v24 = 0;
  }

  v32 = v34;
  v33 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v32, v24, 0, v24, 1);
  v25 = v32;
  if (v33)
  {
    v26 = 8 * v33;
    do
    {
      v27 = *v25++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v37, v27);
      v26 -= 8;
    }

    while (v26);
    v25 = v32;
  }

  if (v25 != v34)
  {
    free(v25);
  }

  (**a3)(a3, a2, v37 & 0xFFFFFFFFFFFFFFF9, v38);
  if (v37 != v39)
  {
    free(v37);
  }

  v28 = 1;
LABEL_64:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return v28;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIExtUIToExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIExtUIToExtUI]";
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

void anonymous namespace::TruncIShrSIToTrunciShrUI::~TruncIShrSIToTrunciShrUI(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v60[4] = *MEMORY[0x277D85DE8];
  v59[0] = v60;
  v59[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v59, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_9:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v11 = *(v9 + 72);
  v12 = *(v11 + 56);
  if ((~*(v12 + 8) & 7) == 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = (v14 + 120);
    if (v14 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v15 = (v12 + 16 * v13 + 16);
  }

  v53 = 0;
  v50 = &v53;
  if ((*(v15 - 1) & 7) == 7)
  {
    goto LABEL_41;
  }

  v16 = *(v15 - 1) & 7;
  if (v16 == 6)
  {
    v17 = &v15[3 * *v15 - 2];
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = &v15[2 * v16];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v50, v18))
  {
LABEL_41:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v19 = v53;
  v50 = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'TypedAttr instance'";
  v51 = 167;
  v20 = *v53;
  v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v21))
  {
    v56 = &v50;
    v31 = *(a3 + 2);
    if (!v31 || v31[2] != 1)
    {
      goto LABEL_45;
    }

    v28 = *(*v31 + 88);
    goto LABEL_44;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v59, v15);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v59, v9);
  getIntOrSplatIntValue(&v50, v19);
  if ((v52[0] & 1) == 0)
  {
    goto LABEL_91;
  }

  ScalarOrElementWidth = getScalarOrElementWidth(*(v11 + 24));
  if (*(v5 + 9))
  {
    v23 = v5 - 16;
  }

  else
  {
    v23 = 0;
  }

  v24 = getScalarOrElementWidth(v23);
  v25 = &v56;
  getIntOrSplatIntValue(&v56, v19);
  v26 = v57;
  if (v57 >= 0x41)
  {
    if (v26 - llvm::APInt::countLeadingZerosSlowCase(&v56) > 0x40)
    {
      v27 = 1;
      goto LABEL_53;
    }

    v25 = v56;
  }

  v27 = *v25 != ScalarOrElementWidth - v24;
LABEL_53:
  if (v26 >= 0x41 && (v58[0] & 1) != 0 && v56)
  {
    MEMORY[0x25F891010](v56, 0x1000C8000313F17);
  }

  if (v51 < 0x41 || !v50)
  {
    if (!v27)
    {
      goto LABEL_60;
    }

LABEL_91:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_45;
    }

LABEL_43:
    v28 = *(*v10 + 88);
LABEL_44:
    v28();
LABEL_45:
    v29 = 0;
    goto LABEL_46;
  }

  MEMORY[0x25F891010](v50, 0x1000C8000313F17);
  if (v27)
  {
    goto LABEL_91;
  }

LABEL_60:
  v32 = *(a3 + 1);
  v33 = *(*(v59[0] + 1) + 24);
  v50 = *(*v59[0] + 24);
  v51 = v33;
  v34 = mlir::FusedLoc::get(&v50, 2, 0, v32);
  v56 = v58;
  v57 = 0x400000000;
  v35 = *v19;
  v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v47[0] = v19;
  v47[1] = mlir::detail::InterfaceMap::lookup(v35 + 8, v36);
  v37 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>((a3 + 8), v34, v47);
  v53 = v55;
  v54 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, *(v11 + 24));
  if (*(v37 + 9))
  {
    v38 = v37 - 16;
  }

  else
  {
    v38 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, v38);
  v39 = mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v34, &v53, &v50);
  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  v53 = v55;
  v54 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  if (*(v39 + 9))
  {
    v40 = v39 - 16;
  }

  else
  {
    v40 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, v40);
  v48[0] = v49;
  v48[1] = 0x400000000;
  v41 = v5 - 16;
  if (!*(v5 + 9))
  {
    v41 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v48, *(v41 + 1) & 0xFFFFFFFFFFFFFFF8);
  v42 = mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v34, v48, &v53, &v50);
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (*(v42 + 9))
  {
    v43 = v42 - 16;
  }

  else
  {
    v43 = 0;
  }

  v50 = v52;
  v51 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v50, v43, 0, v43, 1);
  v44 = v50;
  if (v51)
  {
    v45 = 8 * v51;
    do
    {
      v46 = *v44++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v56, v46);
      v45 -= 8;
    }

    while (v45);
    v44 = v50;
  }

  if (v44 != v52)
  {
    free(v44);
  }

  (**a3)(a3, a2, v56 & 0xFFFFFFFFFFFFFFF9, v57);
  if (v56 != v58)
  {
    free(v56);
  }

  v29 = 1;
LABEL_46:
  if (v59[0] != v60)
  {
    free(v59[0]);
  }

  return v29;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v43 = 1283;
    v42[0] = "arith.shrui";
    v42[1] = 11;
    v27 = 259;
    llvm::operator+(&v40, &v26, v28);
    llvm::report_fatal_error(v28, 1);
  }

  v28[0] = a2;
  v28[1] = v8;
  v29[0] = &v30;
  v29[1] = 0x400000000;
  v31[0] = &v32;
  v31[1] = 0x400000000;
  v33[0] = &v34;
  v33[1] = 0x400000000;
  v35 = 4;
  v36 = v38;
  v37 = 0x100000000;
  v38[1] = v39;
  v38[2] = 0x100000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v39[4] = 0;
  v39[6] = 0;
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a4;
  v13 = *(a4 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v29, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v35 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v33, v12, &v12[16 * v13]);
  v40 = v42;
  v41 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary(v33, *(**v28[0] + 32));
  if (!mlir::arith::ShRUIOp::inferReturnTypes(Dictionary, v15, v16, v10 & 0xFFFFFFFFFFFFFFF9, v11, v17, v18, v19, v24, v25, &v40))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v20);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v31, v40, &v40[8 * v41]);
  if (v40 != v42)
  {
    free(v40);
  }

  v21 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert(a1, v21);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v22;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::TruncIOp>(a1, *(**a2 + 32));
  v21[0] = a2;
  v21[1] = v10;
  v22[0] = &v23;
  v22[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28 = 4;
  v29 = v31;
  v30 = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = v11 & 0xFFFFFFFFFFFFFFF9;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v22, v14 & 0xFFFFFFFFFFFFFFF9, 0, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  v28 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v26, v16, &v16[16 * v17]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v24, v13 | 2, 0, v13 | 2, v12);
  v18 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v18);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v19;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization5(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<21ul>(v5, ": TypedAttr instance");
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::TruncIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.trunci";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrSIToTrunciShrUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrSIToTrunciShrUI]";
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

void anonymous namespace::TruncIShrUIMulIToMulSIExtended::~TruncIShrUIMulIToMulSIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v71[4] = *MEMORY[0x277D85DE8];
  v63 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v62[0] = v5;
  v62[1] = v6;
  v61[0] = v5;
  v61[1] = v6;
  v70[0] = v71;
  v70[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(v7 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = (v10 + 120);
    if (v10 == -120)
    {
LABEL_11:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = *(v7 + 3);
      goto LABEL_110;
    }
  }

  else
  {
    v11 = (v8 + 16 * v9 + 16);
  }

  if (*(v11[6] + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v11[3];
    goto LABEL_110;
  }

  v15 = *(v11[9] + 24);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_24:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v11[3];
      goto LABEL_110;
    }
  }

  else
  {
    v18 = (v15 + 16 * v16 + 16);
  }

  v19 = *(v18[6] + 16);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_111;
    }

    v13 = v18[3];
    goto LABEL_110;
  }

  v21 = *(v18[9] + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_40;
  }

  v22 = *(v21 + 8) & 7;
  if (v22 == 6)
  {
    v23 = v21 + 24 * *(v21 + 16);
    v24 = v23 + 120;
    if (v23 == -120)
    {
LABEL_40:
      v12 = *(a3 + 2);
      if (!v12 || v12[2] != 1)
      {
        goto LABEL_111;
      }

      v13 = v18[3];
      goto LABEL_110;
    }
  }

  else
  {
    v24 = v21 + 16 * v22 + 16;
  }

  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v24);
    v25 = *(v18[9] + 56);
    if ((~*(v25 + 8) & 7) == 0)
    {
      v25 = 0;
    }

    if (!v25)
    {
      goto LABEL_50;
    }

    v26 = *(v25 + 8) & 7;
    if (v26 == 6)
    {
      v27 = v25 + 24 * *(v25 + 16);
      v28 = v27 + 120;
      if (v27 == -120)
      {
LABEL_50:
        v12 = *(a3 + 2);
        if (!v12 || v12[2] != 1)
        {
          goto LABEL_111;
        }

        v13 = v18[3];
        goto LABEL_110;
      }
    }

    else
    {
      v28 = v25 + 16 * v26 + 16;
    }

    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v28);
      Attr = mlir::Operation::getAttr(v18, "overflowFlags", 0xDuLL);
      if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v18);
      v30 = *(v11[9] + 56);
      if ((~*(v30 + 8) & 7) == 0)
      {
        v30 = 0;
      }

      if (!v30)
      {
        goto LABEL_63;
      }

      v31 = *(v30 + 8) & 7;
      if (v31 == 6)
      {
        v32 = v30 + 24 * *(v30 + 16);
        v33 = (v32 + 120);
        if (v32 == -120)
        {
LABEL_63:
          v12 = *(a3 + 2);
          if (!v12 || v12[2] != 1)
          {
            goto LABEL_111;
          }

          v13 = v11[3];
LABEL_110:
          (*(*v12 + 88))(v12, v13, v14, &v67);
          goto LABEL_111;
        }
      }

      else
      {
        v33 = (v30 + 16 * v31 + 16);
      }

      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v33);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v70, v11);
        v34 = 0;
        if (*(v7 + 9))
        {
          v35 = v7 - 16;
        }

        else
        {
          v35 = 0;
        }

        v36 = v62[0];
        v37 = *(*(v62[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v67 = (*(v35 + 1) & 0xFFFFFFFFFFFFFFF8);
        v68 = v37;
        v38 = v61[0];
        v69[0] = *(*(v61[0] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          if (*(&v67 + v34 + 8) != *(&v67 + v34))
          {
            v12 = *(a3 + 2);
            if (v12 && v12[2] == 1)
            {
              v13 = *(a2 + 3);
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          v34 += 8;
        }

        while (v34 != 16);
        if (*(v20 + 9))
        {
          v39 = (v20 - 2);
        }

        else
        {
          v39 = 0;
        }

        ScalarOrElementWidth = getScalarOrElementWidth(v39);
        if (ScalarOrElementWidth <= getScalarOrElementWidth(*(v36 + 24)) || getScalarOrElementWidth(*(v36 + 24)) <= 0)
        {
          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }

        else
        {
          v59 = v38;
          v41 = v63;
          getIntOrSplatIntValue(&v67, v63);
          if (v69[0])
          {
            if (*(v20 + 9))
            {
              v42 = (v20 - 2);
            }

            else
            {
              v42 = 0;
            }

            v43 = getScalarOrElementWidth(v42);
            v44 = getScalarOrElementWidth(*(v36 + 24));
            v45 = &v64;
            getIntOrSplatIntValue(&v64, v41);
            v46 = v65;
            if (v65 < 0x41)
            {
LABEL_86:
              v47 = *v45 != v43 - v44;
            }

            else
            {
              if (v46 - llvm::APInt::countLeadingZerosSlowCase(&v64) <= 0x40)
              {
                v45 = v64;
                goto LABEL_86;
              }

              v47 = 1;
            }

            if (v46 >= 0x41 && (v66[0] & 1) != 0 && v64)
            {
              MEMORY[0x25F891010](v64, 0x1000C8000313F17);
            }

            if (v68 >= 0x41 && v67)
            {
              MEMORY[0x25F891010](v67, 0x1000C8000313F17);
              if (!v47)
              {
                goto LABEL_102;
              }
            }

            else if (!v47)
            {
LABEL_102:
              v48 = *(*(v70[0] + 1) + 24);
              v67 = *(*v70[0] + 24);
              v68 = v48;
              v49 = *(*(v70[0] + 3) + 24);
              v69[0] = *(*(v70[0] + 2) + 24);
              v69[1] = v49;
              v69[2] = *(*(v70[0] + 4) + 24);
              v50 = mlir::FusedLoc::get(&v67, 5, 0, *(a3 + 1));
              v67 = v69;
              v68 = 0x400000000;
              v64 = *(v36 + 24);
              v60 = *(v59 + 24);
              v51 = mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>((a3 + 8), v50, &v64, &v60);
              if (!*(v51 + 9) || (v52 = *(v51 - 1) & 7, v52 == 6) || v52 == 5)
              {
                v53 = -40;
              }

              else
              {
                v53 = -32;
              }

              v64 = v66;
              v65 = 0x400000000;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v64, v51 + v53, 0, v51 + v53, 1);
              v56 = v64;
              if (v65)
              {
                v57 = 8 * v65;
                do
                {
                  v58 = *v56++;
                  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, v58);
                  v57 -= 8;
                }

                while (v57);
                v56 = v64;
              }

              if (v56 != v66)
              {
                free(v56);
              }

              (**a3)(a3, a2, v67 & 0xFFFFFFFFFFFFFFF9, v68);
              if (v67 != v69)
              {
                free(v67);
              }

              v54 = 1;
              goto LABEL_112;
            }
          }

          v12 = *(a3 + 2);
          if (v12 && v12[2] == 1)
          {
            v13 = *(a2 + 3);
            goto LABEL_110;
          }
        }
      }
    }
  }

LABEL_111:
  v54 = 0;
LABEL_112:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  return v54;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v41 = 1283;
    v40[0] = "arith.mulsi_extended";
    v40[1] = 20;
    v26 = 259;
    llvm::operator+(&v38, v25, v28);
    llvm::report_fatal_error(v28, 1);
  }

  v28[0] = a2;
  v28[1] = v8;
  v29 = &v31;
  v30 = 0x400000000;
  v32[0] = &v33;
  v32[1] = 0x400000000;
  v34[0] = v35;
  v34[1] = 0x400000000;
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
  v10 = *a4;
  v25[0] = *a3;
  v27 = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v29, v25, 0, v25, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v29, &v27, 0, &v27, 1);
  v38 = v40;
  v39 = 0x200000000;
  v11 = v30;
  v12 = v29;
  Dictionary = mlir::NamedAttrList::getDictionary(v34, *(**v28[0] + 32));
  if (!mlir::arith::MulSIExtendedOp::inferReturnTypes(Dictionary, v14, v15, v12 & 0xFFFFFFFFFFFFFFF9, v11, v16, v17, v18, v23, v24, &v38))
  {
    mlir::detail::reportFatalInferReturnTypesError(v28, v19);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v32, v38, &v38[8 * v39]);
  if (v38 != v40)
  {
    free(v38);
  }

  v20 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert(a1, v20);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrUIMulIToMulSIExtended>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulSIExtended]";
  v6 = 115;
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