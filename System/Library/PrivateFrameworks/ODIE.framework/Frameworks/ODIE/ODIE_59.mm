void anonymous namespace::TruncIShrUIMulIToMulUIExtended::~TruncIShrUIMulIToMulUIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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
              v51 = mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>((a3 + 8), v50, &v64, &v60);
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

mlir::Operation *mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v41 = 1283;
    v40[0] = "arith.mului_extended";
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
  if (!mlir::arith::MulUIExtendedOp::inferReturnTypes(Dictionary, v14, v15, v12 & 0xFFFFFFFFFFFFFFF9, v11, v16, v17, v18, v23, v24, &v38))
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
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TruncIShrUIMulIToMulUIExtended>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulUIExtended]";
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

void anonymous namespace::AndOfExtUI::~AndOfExtUI(_anonymous_namespace_::AndOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AndOfExtUI::matchAndRewrite(_anonymous_namespace_::AndOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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
  v24 = mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
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

mlir::Operation *mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(a1, *(**a2 + 32));
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
  if (!mlir::arith::AndIOp::inferReturnTypes(Dictionary, v14, v15, v9 & 0xFFFFFFFFFFFFFFF9, v10, v16, v17, v18, v23, v24, &v37))
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
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.andi";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AndOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AndOfExtUI]";
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

void anonymous namespace::AndOfExtSI::~AndOfExtSI(_anonymous_namespace_::AndOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::AndOfExtSI::matchAndRewrite(_anonymous_namespace_::AndOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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
  v24 = mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::AndOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::AndOfExtSI]";
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

void anonymous namespace::OrOfExtUI::~OrOfExtUI(_anonymous_namespace_::OrOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::OrOfExtUI::matchAndRewrite(_anonymous_namespace_::OrOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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
  v24 = mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
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

mlir::Operation *mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v43 = 1283;
    v42[0] = "arith.ori";
    v42[1] = 9;
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
  if (!mlir::arith::OrIOp::inferReturnTypes(Dictionary, v15, v16, v10 & 0xFFFFFFFFFFFFFFF9, v11, v17, v18, v19, v24, v25, &v40))
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
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::OrOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::OrOfExtUI]";
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

void anonymous namespace::OrOfExtSI::~OrOfExtSI(_anonymous_namespace_::OrOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::OrOfExtSI::matchAndRewrite(_anonymous_namespace_::OrOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
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
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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
  v24 = mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v23, &v41, &v38);
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::OrOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::OrOfExtSI]";
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

void anonymous namespace::IndexCastOfIndexCast::~IndexCastOfIndexCast(_anonymous_namespace_::IndexCastOfIndexCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(_anonymous_namespace_::IndexCastOfIndexCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27[0] = v28;
  v27[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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
        goto LABEL_36;
      }

      v11 = *(v5 + 3);
LABEL_35:
      (*(*v10 + 88))(v10, v11, v12, &v24);
LABEL_36:
      v19 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(v9 + 24);
    goto LABEL_35;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, v9);
  if (*(v5 + 9))
  {
    v14 = v5 - 16;
  }

  else
  {
    v14 = 0;
  }

  if ((*(*(v13 + 24) + 8) ^ *(v14 + 1)) >= 8)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(a2 + 3);
    goto LABEL_35;
  }

  v15 = *(*(v27[0] + 1) + 24);
  v24 = *(*v27[0] + 24);
  v25 = v15;
  mlir::FusedLoc::get(&v24, 2, 0, *(a3 + 1));
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v21, v13, 0, v13, 1);
  v16 = v21;
  if (v22)
  {
    v17 = 8 * v22;
    do
    {
      v18 = *v16++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v24, v18);
      v17 -= 8;
    }

    while (v17);
    v16 = v21;
  }

  if (v16 != v23)
  {
    free(v16);
  }

  (**a3)(a3, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  if (v24 != v26)
  {
    free(v24);
  }

  v19 = 1;
LABEL_37:
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastOfIndexCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastOfIndexCast]";
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

void anonymous namespace::IndexCastOfExtSI::~IndexCastOfExtSI(_anonymous_namespace_::IndexCastOfExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastOfExtSI::matchAndRewrite(_anonymous_namespace_::IndexCastOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v56[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v29 = v5;
  v42[0] = v43;
  v42[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v42, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

      goto LABEL_40;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_40:
    v27 = 0;
    goto LABEL_41;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v42, v10);
  v12 = *(*(v42[0] + 1) + 24);
  v44 = *(*v42[0] + 24);
  v45 = v12;
  v13 = mlir::FusedLoc::get(&v44, 2, 0, *(a3 + 1));
  v39 = v41;
  v40 = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v36, *(v29 + 24));
  v30 = v32;
  v31 = 0x400000000;
  if (*(v6 + 9))
  {
    v14 = v6 - 16;
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v30, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a3 + 8, *(**v13 + 32));
  v44 = v13;
  v45 = v15;
  v46[0] = &v47;
  v46[1] = 0x400000000;
  v48[0] = &v49;
  v48[1] = 0x400000000;
  v50[0] = &v51;
  v50[1] = 0x400000000;
  v52 = 4;
  v53 = v55;
  v54 = 0x100000000;
  v55[1] = v56;
  v55[2] = 0x100000000;
  v56[2] = 0;
  v56[1] = 0;
  v56[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v56[4] = 0;
  v56[6] = 0;
  v16 = v31;
  v17 = v30 & 0xFFFFFFFFFFFFFFF9;
  v18 = v33;
  v19 = v34;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v46, v36 & 0xFFFFFFFFFFFFFFF9, 0, v36 & 0xFFFFFFFFFFFFFFF9, v37);
  v52 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v50, v18, &v18[16 * v19]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v48, v17 | 2, 0, v17 | 2, v16);
  v20 = mlir::Operation::create(&v44);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(&v44);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (*(v22 + 9))
  {
    v23 = (v22 - 16);
  }

  else
  {
    v23 = 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v23, 0, v23, 1);
  v24 = v44;
  if (v45)
  {
    v25 = 8 * v45;
    do
    {
      v26 = *v24++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v39, v26);
      v25 -= 8;
    }

    while (v25);
    v24 = v44;
  }

  if (v24 != v46)
  {
    free(v24);
  }

  (**a3)(a3, a2, v39 & 0xFFFFFFFFFFFFFFF9, v40);
  if (v39 != v41)
  {
    free(v39);
  }

  v27 = 1;
LABEL_41:
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  return v27;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.index_cast";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastOfExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastOfExtSI]";
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

void anonymous namespace::IndexCastUIOfIndexCastUI::~IndexCastUIOfIndexCastUI(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27[0] = v28;
  v27[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
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
        goto LABEL_36;
      }

      v11 = *(v5 + 3);
LABEL_35:
      (*(*v10 + 88))(v10, v11, v12, &v24);
LABEL_36:
      v19 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(v9 + 24);
    goto LABEL_35;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27, v9);
  if (*(v5 + 9))
  {
    v14 = v5 - 16;
  }

  else
  {
    v14 = 0;
  }

  if ((*(*(v13 + 24) + 8) ^ *(v14 + 1)) >= 8)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_36;
    }

    v11 = *(a2 + 3);
    goto LABEL_35;
  }

  v15 = *(*(v27[0] + 1) + 24);
  v24 = *(*v27[0] + 24);
  v25 = v15;
  mlir::FusedLoc::get(&v24, 2, 0, *(a3 + 1));
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v21, v13, 0, v13, 1);
  v16 = v21;
  if (v22)
  {
    v17 = 8 * v22;
    do
    {
      v18 = *v16++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v24, v18);
      v17 -= 8;
    }

    while (v17);
    v16 = v21;
  }

  if (v16 != v23)
  {
    free(v16);
  }

  (**a3)(a3, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  if (v24 != v26)
  {
    free(v24);
  }

  v19 = 1;
LABEL_37:
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v19;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastUIOfIndexCastUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfIndexCastUI]";
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

void anonymous namespace::IndexCastUIOfExtUI::~IndexCastUIOfExtUI(_anonymous_namespace_::IndexCastUIOfExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v63[8] = *MEMORY[0x277D85DE8];
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

  v32[0] = v5;
  v32[1] = v6;
  v49[0] = v50;
  v49[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
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
      if (v12 && v12[2] == 1)
      {
      }

      goto LABEL_41;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  {
LABEL_41:
    v30 = 0;
    goto LABEL_42;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v49, v11);
  v13 = *(a3 + 1);
  v14 = *(*(v49[0] + 1) + 24);
  v51 = *(*v49[0] + 24);
  v52 = v14;
  v15 = mlir::FusedLoc::get(&v51, 2, 0, v13);
  v46 = v48;
  v47 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v43, *(v32[0] + 24));
  v37 = v39;
  v38 = 0x400000000;
  if (*(v7 + 9))
  {
    v16 = v7 - 16;
  }

  else
  {
    v16 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v37, *(v16 + 1) & 0xFFFFFFFFFFFFFFF8);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, *(**v15 + 32));
  if ((v18 & 1) == 0)
  {
    v36 = 1283;
    v35[2] = "arith.index_castui";
    v35[3] = 18;
    v34 = 259;
    llvm::operator+(v35, &v33, &v51);
    llvm::report_fatal_error(&v51, 1);
  }

  v51 = v15;
  v52 = v17;
  v53[0] = &v54;
  v53[1] = 0x400000000;
  v55[0] = &v56;
  v55[1] = 0x400000000;
  v57[0] = &v58;
  v57[1] = 0x400000000;
  v59 = 4;
  v60 = v62;
  v61 = 0x100000000;
  v62[1] = v63;
  v62[2] = 0x100000000;
  v63[2] = 0;
  v63[1] = 0;
  v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v63[4] = 0;
  v63[6] = 0;
  v19 = v38;
  v20 = v37 & 0xFFFFFFFFFFFFFFF9;
  v21 = v40;
  v22 = v41;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v53, v43 & 0xFFFFFFFFFFFFFFF9, 0, v43 & 0xFFFFFFFFFFFFFFF9, v44);
  v59 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v57, v21, &v21[16 * v22]);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v55, v20 | 2, 0, v20 | 2, v19);
  v23 = mlir::Operation::create(&v51);
  mlir::OpBuilder::insert((a3 + 8), v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v51);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (*(v25 + 9))
  {
    v26 = (v25 - 16);
  }

  else
  {
    v26 = 0;
  }

  v51 = v53;
  v52 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v51, v26, 0, v26, 1);
  v27 = v51;
  if (v52)
  {
    v28 = 8 * v52;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v46, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v51;
  }

  if (v27 != v53)
  {
    free(v27);
  }

  (**a3)(a3, a2, v46 & 0xFFFFFFFFFFFFFFF9, v47);
  if (v46 != v48)
  {
    free(v46);
  }

  v30 = 1;
LABEL_42:
  if (v49[0] != v50)
  {
    free(v49[0]);
  }

  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::IndexCastUIOfExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfExtUI]";
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

void anonymous namespace::BitcastOfBitcast::~BitcastOfBitcast(_anonymous_namespace_::BitcastOfBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::BitcastOfBitcast::matchAndRewrite(_anonymous_namespace_::BitcastOfBitcast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v26, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
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
LABEL_17:
      (*(*v10 + 88))(v10, v11, v12, &v23);
LABEL_18:
      v13 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_18;
    }

    v11 = *(v9 + 24);
    goto LABEL_17;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v15 = *(v9 + 72);
  }

  else
  {
    v15 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v26, v9);
  v16 = *(*(v26[0] + 1) + 24);
  v23 = *(*v26[0] + 24);
  v24 = v16;
  mlir::FusedLoc::get(&v23, 2, 0, *(a3 + 1));
  v23 = v25;
  v24 = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v20, v15, 0, v15, 1);
  v17 = v20;
  if (v21)
  {
    v18 = 8 * v21;
    do
    {
      v19 = *v17++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v23, v19);
      v18 -= 8;
    }

    while (v18);
    v17 = v20;
  }

  if (v17 != v22)
  {
    free(v17);
  }

  (**a3)(a3, a2, v23 & 0xFFFFFFFFFFFFFFF9, v24);
  if (v23 != v25)
  {
    free(v23);
  }

  v13 = 1;
LABEL_19:
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::BitcastOfBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::BitcastOfBitcast]";
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

void anonymous namespace::CmpIExtSI::~CmpIExtSI(_anonymous_namespace_::CmpIExtSI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CmpIExtSI::matchAndRewrite(_anonymous_namespace_::CmpIExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44[0] = v45;
  v44[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(a2);
  if (!v6)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v7 = v6;
  v33 = v6;
  v8 = *(*(v5 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_10:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
LABEL_68:
    (*(*v12 + 88))(v12, v13, v14, &v36);
LABEL_69:
    v30 = 0;
    goto LABEL_70;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v11 + 24);
    goto LABEL_68;
  }

  if ((*(v11 + 46) & 0x80) != 0)
  {
    v15 = *(v11 + 72);
  }

  else
  {
    v15 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, v11);
  v16 = *(*(v5 + 9) + 56);
  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
LABEL_28:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
    goto LABEL_68;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v19 + 24);
    goto LABEL_68;
  }

  if ((*(v19 + 46) & 0x80) != 0)
  {
    v20 = *(v19 + 72);
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, v19);
  if ((*(*(v20 + 24) + 8) ^ *(*(v15 + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  if (mlir::IntegerAttr::getInt(&v33) && mlir::IntegerAttr::getInt(&v33) != 1)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v21 = *(*(v44[0] + 1) + 24);
  v36 = *(*v44[0] + 24);
  v37 = v21;
  v38[0] = *(*(v44[0] + 2) + 24);
  v32 = mlir::FusedLoc::get(&v36, 3, 0, *(a3 + 1));
  v41 = v43;
  v42 = 0x400000000;
  v39[0] = v40;
  v39[1] = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v34[0] = "predicate";
  v35[8] = 259;
  v23 = mlir::StringAttr::get(*(a3 + 1), v34, v22);
  llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v36, v23, v7);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v39, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v39, *(v20 + 24));
  v34[0] = v35;
  v34[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v24 = v5 - 16;
  }

  else
  {
    v24 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v34, *(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
  v25 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v32, v34, v39, &v36);
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (*(v25 + 9))
  {
    v26 = v25 - 16;
  }

  else
  {
    v26 = 0;
  }

  v36 = v38;
  v37 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v36, v26, 0, v26, 1);
  v27 = v36;
  if (v37)
  {
    v28 = 8 * v37;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v36;
  }

  if (v27 != v38)
  {
    free(v27);
  }

  (**a3)(a3, a2, v41 & 0xFFFFFFFFFFFFFFF9, v42);
  if (v41 != v43)
  {
    free(v41);
  }

  v30 = 1;
LABEL_70:
  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CmpIExtSI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CmpIExtSI]";
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

void anonymous namespace::CmpIExtUI::~CmpIExtUI(_anonymous_namespace_::CmpIExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CmpIExtUI::matchAndRewrite(_anonymous_namespace_::CmpIExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44[0] = v45;
  v44[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::Operation::getAttrOfType<mlir::arith::CmpIPredicateAttr>(a2);
  if (!v6)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v7 = v6;
  v33 = v6;
  v8 = *(*(v5 + 9) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_10:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
LABEL_68:
    (*(*v12 + 88))(v12, v13, v14, &v36);
LABEL_69:
    v30 = 0;
    goto LABEL_70;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v11 + 24);
    goto LABEL_68;
  }

  if ((*(v11 + 46) & 0x80) != 0)
  {
    v15 = *(v11 + 72);
  }

  else
  {
    v15 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, v11);
  v16 = *(*(v5 + 9) + 56);
  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
LABEL_28:
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v5 + 3);
    goto LABEL_68;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(v19 + 24);
    goto LABEL_68;
  }

  if ((*(v19 + 46) & 0x80) != 0)
  {
    v20 = *(v19 + 72);
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v44, v19);
  if ((*(*(v20 + 24) + 8) ^ *(*(v15 + 24) + 8)) >= 8)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  if (mlir::IntegerAttr::getInt(&v33) && mlir::IntegerAttr::getInt(&v33) != 1)
  {
    v12 = *(a3 + 2);
    if (!v12 || v12[2] != 1)
    {
      goto LABEL_69;
    }

    v13 = *(a2 + 3);
    goto LABEL_68;
  }

  v21 = *(*(v44[0] + 1) + 24);
  v36 = *(*v44[0] + 24);
  v37 = v21;
  v38[0] = *(*(v44[0] + 2) + 24);
  v32 = mlir::FusedLoc::get(&v36, 3, 0, *(a3 + 1));
  v41 = v43;
  v42 = 0x400000000;
  v39[0] = v40;
  v39[1] = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v34[0] = "predicate";
  v35[8] = 259;
  v23 = mlir::StringAttr::get(*(a3 + 1), v34, v22);
  llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::StringAttr,mlir::arith::CmpIPredicateAttr &>(&v36, v23, v7);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v39, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v39, *(v20 + 24));
  v34[0] = v35;
  v34[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v24 = v5 - 16;
  }

  else
  {
    v24 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v34, *(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
  v25 = mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v32, v34, v39, &v36);
  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (*(v25 + 9))
  {
    v26 = v25 - 16;
  }

  else
  {
    v26 = 0;
  }

  v36 = v38;
  v37 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v36, v26, 0, v26, 1);
  v27 = v36;
  if (v37)
  {
    v28 = 8 * v37;
    do
    {
      v29 = *v27++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v41, v29);
      v28 -= 8;
    }

    while (v28);
    v27 = v36;
  }

  if (v27 != v38)
  {
    free(v27);
  }

  (**a3)(a3, a2, v41 & 0xFFFFFFFFFFFFFFF9, v42);
  if (v41 != v43)
  {
    free(v41);
  }

  v30 = 1;
LABEL_70:
  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  return v30;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CmpIExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CmpIExtUI]";
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

void CmpFIntToFPConst::~CmpFIntToFPConst(CmpFIntToFPConst *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t CmpFIntToFPConst::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 56);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v3 + 16 * v6 + 16;
    goto LABEL_8;
  }

  v7 = v3 + 24 * *(v3 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
LABEL_8:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if (!(*(**(v8 + 48) + 32))(*(v8 + 48), v9))
    {
      return 0;
    }

    v75 = v77;
    v76 = 0x100000000;
    mlir::Operation::fold(v8, 0, 0, &v75);
    v10 = *(*(*v75 & 0xFFFFFFFFFFFFFFF8) + 136);
    v11 = v10 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || (*v75 & 0xFFFFFFFFFFFFFFF8) == 0;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v12 = *v75 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v12 = 0;
    }

    if (v75 != v77)
    {
      free(v75);
    }

    if (v11)
    {
      return 0;
    }

    llvm::APFloat::Storage::Storage(&v75, (v12 + 16));
    if (v75 == &llvm::semPPCDoubleDouble)
    {
      v15 = v76;
    }

    else
    {
      v15 = &v75;
    }

    if ((*(v15 + 20) & 7) == 1)
    {
      goto LABEL_39;
    }

    v16 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v16)
    {
      v17 = *v16;
      v18 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
    }

    else
    {
      v19 = 0;
    }

    v21 = *((*v19)(v19, v16) + 8);
    if (v21 < 1)
    {
      goto LABEL_39;
    }

    v22 = (~*(*(*(a2 + 72) + 24) + 8) & 7) != 0 ? *(*(a2 + 72) + 24) : 0;
    if (!v22)
    {
      goto LABEL_39;
    }

    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16);
      v25 = v24 + 120;
      if (v24 == -120 || *(*(v24 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
        v25 = v22 + 24 * *(v22 + 16) + 120;
        if (v22 + 24 * *(v22 + 16) == -120)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v26 = v22 + 16 * v23;
      v25 = v26 + 16;
      if (*(*(v26 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
LABEL_38:
        if (*(*(v25 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id)
        {
LABEL_39:
          v13 = 0;
LABEL_40:
          llvm::APFloat::Storage::~Storage(&v75);
          return v13;
        }

        v27 = 1;
LABEL_43:
        v28 = *(*(v25 + 72) + 24);
        v73 = v28;
        v29 = (*((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x3FFFFFFF);
        v64 = v27 ^ 1;
        if (v29 > v21)
        {
          v30 = v29 - v64;
          if (v75 == &llvm::semPPCDoubleDouble)
          {
            v31 = v76;
          }

          else
          {
            v31 = &v75;
          }

          v32 = llvm::detail::ilogb(v31, v20);
          if (v32 == 0x7FFFFFFF)
          {
            llvm::APFloat::getLargest(v74, v75);
            if (v74[0] == &llvm::semPPCDoubleDouble)
            {
              v34 = v74[1];
            }

            else
            {
              v34 = v74;
            }

            v35 = llvm::detail::ilogb(v34, v33);
            llvm::APFloat::Storage::~Storage(v74);
            if (v35 < v30)
            {
              goto LABEL_39;
            }
          }

          else if (v21 <= v32 && v32 <= v30)
          {
            goto LABEL_39;
          }
        }

        v74[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
        Int = mlir::IntegerAttr::getInt(v74);
        if (Int == 14)
        {
          LOBYTE(v69) = 0;
          v13 = 1;
          goto LABEL_59;
        }

        if (Int == 7)
        {
          v13 = 1;
          LOBYTE(v69) = 1;
LABEL_59:
          LODWORD(v74[0]) = 1;
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v69, v74);
          goto LABEL_40;
        }

        v74[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
        v37 = mlir::IntegerAttr::getInt(v74);
        v38 = CmpFIntToFPConst::convertToIntegerPredicate(v37, v27);
        v72 = v38;
        if (v27)
        {
          llvm::APFloat::Storage::Storage<>(v74, v75);
          llvm::APInt::getAllOnes(&v69, v29);
          llvm::APFloat::convertFromAPInt(v74, &v69, 0, 1, v39, v40);
          if (v70 >= 0x41 && v69)
          {
            MEMORY[0x25F891010](v69, 0x1000C8000313F17);
          }

          if (!llvm::APFloat::compare(v74, &v75))
          {
            if (v38 <= 7)
            {
              v47 = 1 << v38;
              v48 = 194;
              goto LABEL_88;
            }

LABEL_92:
            LOBYTE(v66) = 0;
            goto LABEL_93;
          }

          llvm::APFloat::Storage::~Storage(v74);
          llvm::APFloat::Storage::Storage<>(v74, v75);
          v70 = v29;
          if (v29 >= 0x41)
          {
            operator new[]();
          }

          v69 = 0;
          llvm::APFloat::convertFromAPInt(v74, &v69, 0, 1, v41, v42);
          if (v70 >= 0x41 && v69)
          {
            MEMORY[0x25F891010](v69, 0x1000C8000313F17);
          }

          if (llvm::APFloat::compare(v74, &v75) == 2)
          {
            if (v38 <= 9)
            {
              v47 = 1 << v38;
              v48 = 770;
LABEL_88:
              if ((v47 & v48) != 0)
              {
                LOBYTE(v66) = 1;
                LODWORD(v69) = 1;
LABEL_94:
                mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v66, &v69);
                llvm::APFloat::Storage::~Storage(v74);
                v13 = 1;
                goto LABEL_40;
              }

              goto LABEL_92;
            }

            goto LABEL_92;
          }
        }

        else
        {
          llvm::APFloat::Storage::Storage<>(v74, v75);
          llvm::APInt::getSignedMaxValue(v29, &v69);
          llvm::APFloat::convertFromAPInt(v74, &v69, 1, 1, v43, v44);
          if (v70 >= 0x41 && v69)
          {
            MEMORY[0x25F891010](v69, 0x1000C8000313F17);
          }

          if (!llvm::APFloat::compare(v74, &v75))
          {
            if ((v38 - 1) <= 2)
            {
              LOBYTE(v66) = 1;
LABEL_93:
              LODWORD(v69) = 1;
              goto LABEL_94;
            }

            goto LABEL_92;
          }

          llvm::APFloat::Storage::~Storage(v74);
          llvm::APFloat::Storage::Storage<>(v74, v75);
          llvm::APInt::getSignedMinValue(v29, &v69);
          llvm::APFloat::convertFromAPInt(v74, &v69, 1, 1, v45, v46);
          if (v70 >= 0x41 && v69)
          {
            MEMORY[0x25F891010](v69, 0x1000C8000313F17);
          }

          if (llvm::APFloat::compare(v74, &v75) == 2)
          {
            if (v38 <= 5)
            {
              v47 = 1 << v38;
              v48 = 50;
              goto LABEL_88;
            }

            goto LABEL_92;
          }
        }

        llvm::APFloat::Storage::~Storage(v74);
        v68 = 0;
        v70 = v29;
        if (v29 >= 0x41)
        {
          operator new[]();
        }

        v69 = 0;
        v71 = v27;
        v49 = llvm::APFloat::convertToInteger(&v75, &v69, 0, &v68);
        v13 = 0;
        if (v49 == 1)
        {
LABEL_155:
          if (v70 >= 0x41 && v69)
          {
            MEMORY[0x25F891010](v69, 0x1000C8000313F17);
          }

          goto LABEL_40;
        }

        if (v75 == &llvm::semPPCDoubleDouble)
        {
          v50 = v76;
        }

        else
        {
          v50 = &v75;
        }

        if ((*(v50 + 20) & 7) == 3)
        {
          goto LABEL_153;
        }

        v51 = (*v19)(v19, v16);
        v67 = *((*v19)(v19, v16) + 12);
        if (v67 >= 0x41)
        {
          operator new[]();
        }

        v66 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(v74, v51, &v66);
        if (v67 >= 0x41 && v66)
        {
          MEMORY[0x25F891010](v66, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(v74, &v69, v64, 1, v52, v53);
        if (llvm::APFloat::compare(v74, &v75) == 1)
        {
LABEL_152:
          llvm::APFloat::Storage::~Storage(v74);
LABEL_153:
          v63 = *(a2 + 24);
          v66 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
          v65 = mlir::IntegerAttr::get(v66, &v69);
          v74[0] = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>((a3 + 1), v63, &v66, &v65);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a3, a2, &v72, &v73, v74);
LABEL_154:
          v13 = 1;
          goto LABEL_155;
        }

        if (v38 <= 4)
        {
          if (v38 > 1)
          {
            if (v38 == 2)
            {
              v58 = &v75;
              if (v75 == &llvm::semPPCDoubleDouble)
              {
                v58 = v76;
              }

              if ((*(v58 + 20) & 8) != 0)
              {
                goto LABEL_152;
              }

              v55 = 3;
            }

            else if (v38 == 3)
            {
              v54 = &v75;
              if (v75 == &llvm::semPPCDoubleDouble)
              {
                v54 = v76;
              }

              if ((*(v54 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              v55 = 2;
            }

            else
            {
              v60 = &v75;
              if (v75 == &llvm::semPPCDoubleDouble)
              {
                v60 = v76;
              }

              if ((*(v60 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              v55 = 5;
            }

            goto LABEL_151;
          }

          if (!v38)
          {
            goto LABEL_158;
          }

          goto LABEL_146;
        }

        if (v38 <= 6)
        {
          if (v38 == 5)
          {
            v57 = &v75;
            if (v75 == &llvm::semPPCDoubleDouble)
            {
              v57 = v76;
            }

            if ((*(v57 + 20) & 8) != 0)
            {
              goto LABEL_152;
            }

            v55 = 4;
            goto LABEL_151;
          }

          v62 = &v75;
          if (v75 == &llvm::semPPCDoubleDouble)
          {
            v62 = v76;
          }

          if ((*(v62 + 20) & 8) == 0)
          {
            v55 = 7;
            goto LABEL_151;
          }
        }

        else
        {
          if (v38 != 7)
          {
            if (v38 == 8)
            {
              v56 = &v75;
              if (v75 == &llvm::semPPCDoubleDouble)
              {
                v56 = v76;
              }

              if ((*(v56 + 20) & 8) == 0)
              {
                goto LABEL_152;
              }

              goto LABEL_146;
            }

            v61 = &v75;
            if (v75 == &llvm::semPPCDoubleDouble)
            {
              v61 = v76;
            }

            if ((*(v61 + 20) & 8) != 0)
            {
LABEL_146:
              LOBYTE(v65) = 1;
LABEL_159:
              LODWORD(v66) = 1;
              mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v65, &v66);
              llvm::APFloat::Storage::~Storage(v74);
              goto LABEL_154;
            }

            v55 = 8;
LABEL_151:
            v72 = v55;
            goto LABEL_152;
          }

          v59 = &v75;
          if (v75 == &llvm::semPPCDoubleDouble)
          {
            v59 = v76;
          }

          if ((*(v59 + 20) & 8) == 0)
          {
            goto LABEL_152;
          }
        }

LABEL_158:
        LOBYTE(v65) = 0;
        goto LABEL_159;
      }
    }

    v27 = 0;
    goto LABEL_43;
  }

  return 0;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int *a4)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(a1 + 8, *(**v8 + 32));
  v14[0] = v8;
  v14[1] = v9;
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
  mlir::arith::ConstantIntOp::build((a1 + 8), v14, *a3, *a4);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert((a1 + 8), v10);
  if (v10)
  {
    if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && (v11 = (*(v10 - 1) & 0xFFFFFFFFFFFFFFF8), *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v11[2] >> 30)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  mlir::OperationState::~OperationState(v14);
  v12 = *(*a1 + 8);

  return v12(a1, a2, v10);
}

uint64_t CmpFIntToFPConst::convertToIntegerPredicate(uint64_t a1, int a2)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 10)
    {
      if (a1 == 8)
      {
        return result;
      }

      if (a1 != 9)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = a2 == 0;
      v5 = 4;
      v6 = 8;
      goto LABEL_17;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        return 1;
      }

LABEL_15:
      v4 = a2 == 0;
      v5 = 3;
      v6 = 7;
      goto LABEL_17;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 != 2)
      {
LABEL_5:
        v4 = a2 == 0;
        v5 = 5;
        v6 = 9;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

  v4 = a2 == 0;
  v5 = 2;
  v6 = 6;
LABEL_17:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(void **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, void *a5)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::CmpIOp>((a1 + 1), *(**v10 + 32));
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::arith::CmpIOp::build(a1 + 1, v17, *a3, *a4, *a5 - 16);
  v12 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert((a1 + 1), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v17);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = (*a1)[1];

  return v15(a1, a2, v14);
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v8;
  v19[2] = &v20;
  v19[3] = 0x400000000;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  v9 = *a3;
  v10 = *a4;
  if (*a4)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = v9;
  v14 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v19);
  *v14 = v10;
  v14[1] = v13;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &v18, v19);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<CmpFIntToFPConst>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CmpFIntToFPConst]";
  v6 = 78;
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

void anonymous namespace::RedundantSelectFalse::~RedundantSelectFalse(_anonymous_namespace_::RedundantSelectFalse *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RedundantSelectFalse::matchAndRewrite(_anonymous_namespace_::RedundantSelectFalse *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35[0] = v36;
  v35[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v35, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = v6[11];
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
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_24;
      }

      v12 = *(v5 + 3);
LABEL_23:
      (*(*v11 + 88))(v11, v12, v13, &v27);
LABEL_24:
      v15 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(v10 + 24);
    goto LABEL_23;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 72);
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v35, v10);
  if (v6[3] != *(v14 + 24))
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(a2 + 3);
    goto LABEL_23;
  }

  v17 = *(*(v35[0] + 1) + 24);
  v27 = *(*v35[0] + 24);
  v28 = v17;
  v18 = mlir::FusedLoc::get(&v27, 2, 0, *(a3 + 1));
  v32 = v34;
  v33 = 0x400000000;
  v30[0] = v31;
  v30[1] = 0x400000000;
  v27 = v29;
  v28 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v30, v6[3]);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v30, v6[7]);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v30, *(v14 + 88));
  v25[0] = v26;
  v25[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v19 = v5 - 16;
  }

  else
  {
    v19 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v25, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v18, v25, v30, &v27);
  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  if (*(v20 + 9))
  {
    v21 = v20 - 16;
  }

  else
  {
    v21 = 0;
  }

  v27 = v29;
  v28 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v27, v21, 0, v21, 1);
  v22 = v27;
  if (v28)
  {
    v23 = 8 * v28;
    do
    {
      v24 = *v22++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v32, v24);
      v23 -= 8;
    }

    while (v23);
    v22 = v27;
  }

  if (v22 != v29)
  {
    free(v22);
  }

  (**a3)(a3, a2, v32 & 0xFFFFFFFFFFFFFFF9, v33);
  if (v32 != v34)
  {
    free(v32);
  }

  v15 = 1;
LABEL_25:
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  return v15;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(a1, *(**a2 + 32));
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
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RedundantSelectFalse>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RedundantSelectFalse]";
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

void anonymous namespace::RedundantSelectTrue::~RedundantSelectTrue(_anonymous_namespace_::RedundantSelectTrue *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RedundantSelectTrue::matchAndRewrite(_anonymous_namespace_::RedundantSelectTrue *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37[0] = v38;
  v37[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v37, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_26;
      }

      v12 = *(v5 + 3);
LABEL_25:
      (*(*v11 + 88))(v11, v12, v13, &v29);
LABEL_26:
      v17 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_26;
    }

    v12 = *(v10 + 24);
    goto LABEL_25;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 72);
    v15 = v14 + 32;
  }

  else
  {
    v14 = 0;
    v15 = 32;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v37, v10);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v16 = *(v5 + 9);
  }

  else
  {
    v16 = 0;
  }

  if (*(v6 + 24) != *(v14 + 24))
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_26;
    }

    v12 = *(a2 + 3);
    goto LABEL_25;
  }

  v19 = *(*(v37[0] + 1) + 24);
  v29 = *(*v37[0] + 24);
  v30 = v19;
  v26 = mlir::FusedLoc::get(&v29, 2, 0, *(a3 + 1));
  v34 = v36;
  v35 = 0x400000000;
  v32[0] = v33;
  v32[1] = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, *(v6 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, *(v15 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, *(v16 + 88));
  v27[0] = v28;
  v27[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v20 = v5 - 16;
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v27, *(v20 + 1) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v26, v27, v32, &v29);
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (*(v21 + 9))
  {
    v22 = v21 - 16;
  }

  else
  {
    v22 = 0;
  }

  v29 = v31;
  v30 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v29, v22, 0, v22, 1);
  v23 = v29;
  if (v30)
  {
    v24 = 8 * v30;
    do
    {
      v25 = *v23++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v34, v25);
      v24 -= 8;
    }

    while (v24);
    v23 = v29;
  }

  if (v23 != v31)
  {
    free(v23);
  }

  (**a3)(a3, a2, v34 & 0xFFFFFFFFFFFFFFF9, v35);
  if (v34 != v36)
  {
    free(v34);
  }

  v17 = 1;
LABEL_27:
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RedundantSelectTrue>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RedundantSelectTrue]";
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

void anonymous namespace::SelectNotCond::~SelectNotCond(_anonymous_namespace_::SelectNotCond *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SelectNotCond::matchAndRewrite(_anonymous_namespace_::SelectNotCond *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v45[0] = v46;
  v45[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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
      goto LABEL_26;
    }

    goto LABEL_24;
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

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
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
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v15 = (v12 + 16 * v13 + 16);
  }

  v37 = 0;
  v42 = &v37;
  if ((*(v15 - 1) & 7) == 7)
  {
LABEL_70:
    v33 = *(a3 + 2);
    if (!v33 || v33[2] != 1)
    {
      goto LABEL_26;
    }

    v16 = *(*v33 + 88);
    goto LABEL_25;
  }

  v19 = *(v15 - 1) & 7;
  if (v19 == 6)
  {
    v20 = &v15[3 * *v15 - 2];
    v21 = v20 + 120;
    if (v20 == -120)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v21 = &v15[2 * v19];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v42, v21))
  {
    goto LABEL_70;
  }

  v22 = v37;
  {
    goto LABEL_26;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v15);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v45, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v23 = *(v5 + 9);
    v24 = v23 + 32;
  }

  else
  {
    v23 = 0;
    v24 = 32;
  }

  getIntOrSplatIntValue(&v37, v22);
  if ((v39[0] & 1) == 0)
  {
    goto LABEL_73;
  }

  getIntOrSplatIntValue(&v42, v22);
  isAllOnes = llvm::APInt::isAllOnes(&v42);
  if (v44[0] == 1 && v43 >= 0x41 && v42)
  {
    MEMORY[0x25F891010](v42, 0x1000C8000313F17);
  }

  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x25F891010](v37, 0x1000C8000313F17);
  }

  if (!isAllOnes)
  {
LABEL_73:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_26;
    }

LABEL_24:
    v16 = *(*v10 + 88);
LABEL_25:
    v16();
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v26 = *(*(v45[0] + 1) + 24);
  v37 = *(*v45[0] + 24);
  v38 = v26;
  v34 = mlir::FusedLoc::get(&v37, 2, 0, *(a3 + 1));
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = v41;
  v40[1] = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v11 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v23 + 88));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v40, *(v24 + 24));
  v35[0] = v36;
  v35[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v27 = v5 - 16;
  }

  else
  {
    v27 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v35, *(v27 + 1) & 0xFFFFFFFFFFFFFFF8);
  v28 = mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v34, v35, v40, &v37);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (*(v28 + 9))
  {
    v29 = v28 - 16;
  }

  else
  {
    v29 = 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v37, v29, 0, v29, 1);
  v30 = v37;
  if (v38)
  {
    v31 = 8 * v38;
    do
    {
      v32 = *v30++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v32);
      v31 -= 8;
    }

    while (v31);
    v30 = v37;
  }

  if (v30 != v39)
  {
    free(v30);
  }

  (**a3)(a3, a2, v42 & 0xFFFFFFFFFFFFFFF9, v43);
  if (v42 != v44)
  {
    free(v42);
  }

  v17 = 1;
LABEL_27:
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SelectNotCond>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SelectNotCond]";
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

void anonymous namespace::SelectI1ToNot::~SelectI1ToNot(_anonymous_namespace_::SelectI1ToNot *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SelectI1ToNot::matchAndRewrite(_anonymous_namespace_::SelectI1ToNot *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43[0] = v44;
  v43[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
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
      goto LABEL_32;
    }

    goto LABEL_30;
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

  v38[0] = 0;
  IntegerAttr = v38;
  if ((*(v10 - 1) & 7) == 7)
  {
    goto LABEL_28;
  }

  v12 = *(v10 - 1) & 7;
  if (v12 == 6)
  {
    v13 = &v10[3 * *v10 - 2];
    v14 = v13 + 120;
    if (v13 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = &v10[2 * v12];
  }

  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&IntegerAttr, v14))
  {
LABEL_28:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v15 = v38[0];
  IntegerAttr = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 0'";
  v36 = 169;
  v16 = (a3 + 8);
  v17 = mlir::IntegerType::get(*(a3 + 1), 1, 0);
  if (mlir::Builder::getIntegerAttr(a3 + 8, v17, 0) != v15)
  {
    v40 = &IntegerAttr;
    v25 = *(a3 + 2);
    if (!v25 || v25[2] != 1)
    {
      goto LABEL_32;
    }

    v22 = *(*v25 + 88);
    goto LABEL_31;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, v10);
  v18 = *(*(v5 + 9) + 88);
  if ((~*(v18 + 8) & 7) == 0)
  {
    v18 = 0;
  }

  if (!v18)
  {
LABEL_25:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_32;
    }

LABEL_30:
    v22 = *(*v11 + 88);
LABEL_31:
    v22();
LABEL_32:
    v23 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 == 6)
  {
    v20 = v18 + 24 * *(v18 + 16);
    v21 = (v20 + 120);
    if (v20 == -120)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = (v18 + 16 * v19 + 16);
  }

  {
    goto LABEL_32;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v43, v21);
  IntegerAttr = *(*v43[0] + 24);
  v26 = mlir::FusedLoc::get(&IntegerAttr, 1, 0, *v16);
  v40 = v42;
  v41 = 0x400000000;
  v27 = mlir::IntegerType::get(*v16, 1, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a3 + 8, v27, 1);
  v28 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr>((a3 + 8), v26, &IntegerAttr);
  v38[0] = v39;
  v38[1] = 0x400000000;
  IntegerAttr = v37;
  v36 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, *(v6 + 24));
  if (*(v28 + 9))
  {
    v29 = v28 - 16;
  }

  else
  {
    v29 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v38, v29);
  v30 = mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v26, v38, &IntegerAttr);
  if (IntegerAttr != v37)
  {
    free(IntegerAttr);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  if (*(v30 + 9))
  {
    v31 = v30 - 16;
  }

  else
  {
    v31 = 0;
  }

  IntegerAttr = v37;
  v36 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&IntegerAttr, v31, 0, v31, 1);
  v32 = IntegerAttr;
  if (v36)
  {
    v33 = 8 * v36;
    do
    {
      v34 = *v32++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v40, v34);
      v33 -= 8;
    }

    while (v33);
    v32 = IntegerAttr;
  }

  if (v32 != v37)
  {
    free(v32);
  }

  (**a3)(a3, a2, v40 & 0xFFFFFFFFFFFFFFF9, v41);
  if (v40 != v42)
  {
    free(v40);
  }

  v23 = 1;
LABEL_33:
  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  return v23;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
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
  v7 = *a3;
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  mlir::arith::ConstantOp::build(v6, v14, v7, v10);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
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

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization3(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v2 = *a1;
  v8 = 261;
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v7);
  return mlir::Diagnostic::operator<<<23ul>(v5, ": constant attribute 0");
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SelectI1ToNot>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SelectI1ToNot]";
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

void SelectToExtUI::~SelectToExtUI(SelectToExtUI *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t SelectToExtUI::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v3[2] & 0x3FFFFFFF) == 1)
  {
    return 0;
  }

  v6 = *(a2 + 72);
  v7 = v6[7];
  v36 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  v11 = mlir::detail::constant_int_predicate_matcher::match(&v36, v10);
  v6 = *(a2 + 72);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v6[11];
  v35 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v12 + 8) & 7) == 0)
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v14 = v12 + 24 * *(v12 + 16);
    v15 = (v14 + 120);
    if (v14 == -120)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = (v12 + 16 * v13 + 16);
  }

  v16 = mlir::detail::constant_int_predicate_matcher::match(&v35, v15);
  v6 = *(a2 + 72);
  if (v16)
  {
    v17 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v35 = v6[3];
    v36 = v17;
    v18 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v36, &v35);
    (*(*a3 + 8))(a3, a2, v18);
    return 1;
  }

LABEL_20:
  v20 = v6[7];
  v36 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = (v22 + 120);
    if (v22 == -120)
    {
      return 0;
    }
  }

  else
  {
    v23 = (v20 + 16 * v21 + 16);
  }

  if (!mlir::detail::constant_int_predicate_matcher::match(&v36, v23))
  {
    return 0;
  }

  v24 = *(*(a2 + 72) + 88);
  v35 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v24 + 8) & 7) == 0)
  {
    v24 = 0;
  }

  if (!v24)
  {
    return 0;
  }

  v25 = *(v24 + 8) & 7;
  if (v25 == 6)
  {
    v26 = v24 + 24 * *(v24 + 16);
    v27 = (v26 + 120);
    if (v26 == -120)
    {
      return 0;
    }
  }

  else
  {
    v27 = (v24 + 16 * v25 + 16);
  }

  if (!mlir::detail::constant_int_predicate_matcher::match(&v35, v27))
  {
    return 0;
  }

  v36 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = *(a2 + 24);
  v34 = *(*(a2 + 72) + 24);
  v19 = 1;
  v32 = 1;
  v31 = *(v34 + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>((a3 + 8), v28, &v32, &v31);
  v35 = mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>((a3 + 8), v28, &v34, &v33);
  v29 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>((a3 + 8), *(a2 + 24), &v36, &v35);
  (*(*a3 + 8))(a3, a2, v29);
  return v19;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(a1, *(**a2 + 32));
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
  mlir::arith::XOrIOp::build(v8, v12, *a3, *a4 - 16);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, int *a3, uint64_t **a4)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(a1, *(**a2 + 32));
  v21[0] = a2;
  v21[1] = v8;
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
  v9 = *a4;
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v9, *a3);
  v11 = IntegerAttr;
  if (IntegerAttr)
  {
    v12 = *IntegerAttr;
    v13 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  }

  else
  {
    v14 = 0;
  }

  v20 = v9;
  v15 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v21);
  *v15 = v11;
  v15[1] = v14;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v23, &v20, v21);
  v16 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v16);
  if (v16 && *(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && (v17 = (*(v16 - 1) & 0xFFFFFFFFFFFFFFF8), *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    if (v17[2] >> 30)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ExtUIOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4 - 16;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

const char *llvm::detail::getTypeNameImpl<SelectToExtUI>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = SelectToExtUI]";
  v6 = 75;
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

llvm::APInt **mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, const void **this, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = *a4;
  }

  v10 = *v9 < v8;
LABEL_6:
  **a2 = v10;
  result = llvm::APInt::shl(&v12, this, a4);
  *(a1 + 8) = v13;
  *a1 = v12;
  *(a1 + 16) = 1;
  return result;
}

llvm::APInt **llvm::APInt::shl@<X0>(const void **__return_ptr a1@<X8>, const void **this@<X0>, uint64_t ***a3@<X1>)
{
  v4 = *(this + 2);
  *(a1 + 2) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a1 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a3, v4);

  return llvm::APInt::operator<<=(a1, LimitedValue, v6, v7);
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, const void **this, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = *a4;
  }

  v10 = *v9 < v8;
LABEL_6:
  **a2 = v10;
  llvm::APInt::lshr(&v11, this, a4);
  *(a1 + 8) = v12;
  *a1 = v11;
  *(a1 + 16) = 1;
}

void llvm::APInt::lshr(const void **__return_ptr a1@<X8>, const void **this@<X0>, uint64_t ***a3@<X1>)
{
  v4 = *(this + 2);
  *(a1 + 2) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a1 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a3, v4);

  llvm::APInt::lshrInPlace(a1, LimitedValue, v6, v7);
}

uint64_t *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, const void **this, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = *a4;
  }

  v10 = *v9 < v8;
LABEL_6:
  **a2 = v10;
  result = llvm::APInt::ashr(&v12, this, a4);
  *(a1 + 8) = v13;
  *a1 = v12;
  *(a1 + 16) = 1;
  return result;
}

uint64_t *llvm::APInt::ashr@<X0>(const void **__return_ptr a1@<X8>, const void **this@<X0>, uint64_t ***a3@<X1>)
{
  v4 = *(this + 2);
  *(a1 + 2) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a1 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a3, v4);

  return llvm::APInt::ashrInPlace(a1, LimitedValue);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F9A0))
  {
    qword_27FC1F990 = llvm::detail::getTypeNameImpl<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>();
    *algn_27FC1F998 = v1;
    __cxa_guard_release(&qword_27FC1F9A0);
  }

  return qword_27FC1F990;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::AddFOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::arith::FastMathFlagsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::FastMathFlagsAttr]";
  v6 = 92;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith17FastMathFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2, uint64_t a3)
{
  v4 = mlir::arith::FastMathFlagsAttr::parse(*a1);
  *a2 = v4;
  return v4 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F9C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F9C8))
  {
    qword_27FC1F9B8 = llvm::detail::getTypeNameImpl<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>();
    unk_27FC1F9C0 = v1;
    __cxa_guard_release(&qword_27FC1F9C8);
  }

  return qword_27FC1F9B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::AddIOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::arith::IntegerOverflowFlagsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::IntegerOverflowFlagsAttr]";
  v6 = 99;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2, uint64_t a3)
{
  v4 = mlir::arith::IntegerOverflowFlagsAttr::parse(*a1);
  *a2 = v4;
  return v4 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FA08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FA08))
  {
    qword_27FC1F9F8 = llvm::detail::getTypeNameImpl<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>();
    unk_27FC1FA00 = v1;
    __cxa_guard_release(&qword_27FC1FA08);
  }

  return qword_27FC1F9F8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::arith::CmpFPredicateAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::CmpFPredicateAttr]";
  v6 = 92;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FA48))
  {
    qword_27FC1FA38 = llvm::detail::getTypeNameImpl<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>();
    unk_27FC1FA40 = v1;
    __cxa_guard_release(&qword_27FC1FA48);
  }

  return qword_27FC1FA38;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::arith::CmpIPredicateAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::CmpIPredicateAttr]";
  v6 = 92;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FA88))
  {
    qword_27FC1FA78 = llvm::detail::getTypeNameImpl<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>();
    unk_27FC1FA80 = v1;
    __cxa_guard_release(&qword_27FC1FA88);
  }

  return qword_27FC1FA78;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FAB0))
  {
    qword_27FC1FAA0 = llvm::detail::getTypeNameImpl<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>();
    *algn_27FC1FAA8 = v1;
    __cxa_guard_release(&qword_27FC1FAB0);
  }

  return qword_27FC1FAA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::DivFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::DivFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FAD8))
  {
    qword_27FC1FAC8 = llvm::detail::getTypeNameImpl<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>();
    unk_27FC1FAD0 = v1;
    __cxa_guard_release(&qword_27FC1FAD8);
  }

  return qword_27FC1FAC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ExtFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FB00))
  {
    qword_27FC1FAF0 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>();
    *algn_27FC1FAF8 = v1;
    __cxa_guard_release(&qword_27FC1FB00);
  }

  return qword_27FC1FAF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaxNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FB28))
  {
    qword_27FC1FB18 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>();
    unk_27FC1FB20 = v1;
    __cxa_guard_release(&qword_27FC1FB28);
  }

  return qword_27FC1FB18;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaximumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FB50))
  {
    qword_27FC1FB40 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>();
    *algn_27FC1FB48 = v1;
    __cxa_guard_release(&qword_27FC1FB50);
  }

  return qword_27FC1FB40;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FB78))
  {
    qword_27FC1FB68 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>();
    unk_27FC1FB70 = v1;
    __cxa_guard_release(&qword_27FC1FB78);
  }

  return qword_27FC1FB68;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinimumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FBA0))
  {
    qword_27FC1FB90 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>();
    *algn_27FC1FB98 = v1;
    __cxa_guard_release(&qword_27FC1FBA0);
  }

  return qword_27FC1FB90;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MulFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FBC8))
  {
    qword_27FC1FBB8 = llvm::detail::getTypeNameImpl<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>();
    unk_27FC1FBC0 = v1;
    __cxa_guard_release(&qword_27FC1FBC8);
  }

  return qword_27FC1FBB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::MulIOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FBF0))
  {
    qword_27FC1FBE0 = llvm::detail::getTypeNameImpl<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>();
    *algn_27FC1FBE8 = v1;
    __cxa_guard_release(&qword_27FC1FBF0);
  }

  return qword_27FC1FBE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::NegFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::NegFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FC18))
  {
    qword_27FC1FC08 = llvm::detail::getTypeNameImpl<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>();
    unk_27FC1FC10 = v1;
    __cxa_guard_release(&qword_27FC1FC18);
  }

  return qword_27FC1FC08;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::RemFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FC40))
  {
    qword_27FC1FC30 = llvm::detail::getTypeNameImpl<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>();
    *algn_27FC1FC38 = v1;
    __cxa_guard_release(&qword_27FC1FC40);
  }

  return qword_27FC1FC30;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FC68))
  {
    qword_27FC1FC58 = llvm::detail::getTypeNameImpl<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>();
    unk_27FC1FC60 = v1;
    __cxa_guard_release(&qword_27FC1FC68);
  }

  return qword_27FC1FC58;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::SubFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FC90))
  {
    qword_27FC1FC80 = llvm::detail::getTypeNameImpl<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>();
    *algn_27FC1FC88 = v1;
    __cxa_guard_release(&qword_27FC1FC90);
  }

  return qword_27FC1FC80;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::SubIOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FCB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FCB8))
  {
    qword_27FC1FCA8 = llvm::detail::getTypeNameImpl<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>();
    unk_27FC1FCB0 = v1;
    __cxa_guard_release(&qword_27FC1FCB8);
  }

  return qword_27FC1FCA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::arith::RoundingModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::RoundingModeAttr]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void mlir::arith::ArithDialect::~ArithDialect(mlir::arith::ArithDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::arith::FastMathFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::arith::FastMathFlagsAttr::parse(mlir::AsmParser *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v3 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v9))
    {
      goto LABEL_30;
    }

    v4 = mlir::arith::symbolizeFastMathFlags(v9, v10);
    if ((v4 & 0x100000000) == 0)
    {
      v8[16] = 257;
      (*(*a1 + 24))(&v12, a1, v2, v8);
      if (v12)
      {
        mlir::Diagnostic::operator<<<10ul>(v13, "expected ");
        if (v12)
        {
          mlir::Diagnostic::operator<<<29ul>(v13, "::mlir::arith::FastMathFlags");
          if (v12)
          {
            mlir::Diagnostic::operator<<<16ul>(v13, " to be one of: ");
            if (v12)
            {
              mlir::Diagnostic::operator<<<5ul>(v13, "none");
              if (v12)
              {
                mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                if (v12)
                {
                  mlir::Diagnostic::operator<<<8ul>(v13, "reassoc");
                  if (v12)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                    if (v12)
                    {
                      mlir::Diagnostic::operator<<<5ul>(v13, "nnan");
                      if (v12)
                      {
                        mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                        if (v12)
                        {
                          mlir::Diagnostic::operator<<<5ul>(v13, "ninf");
                          if (v12)
                          {
                            mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                            if (v12)
                            {
                              mlir::Diagnostic::operator<<<4ul>(v13, "nsz");
                              if (v12)
                              {
                                mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                                if (v12)
                                {
                                  mlir::Diagnostic::operator<<<5ul>(v13, "arcp");
                                  if (v12)
                                  {
                                    mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                                    if (v12)
                                    {
                                      mlir::Diagnostic::operator<<<9ul>(v13, "contract");
                                      if (v12)
                                      {
                                        mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                                        if (v12)
                                        {
                                          mlir::Diagnostic::operator<<<4ul>(v13, "afn");
                                          if (v12)
                                          {
                                            mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                                            if (v12)
                                            {
                                              mlir::Diagnostic::operator<<<5ul>(v13, "fast");
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
LABEL_30:
      v7 = (*(*a1 + 40))(a1);
      v13[12] = 259;
      (*(*a1 + 24))(v11, a1, v7, &v12);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      return 0;
    }

    v3 |= v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  return mlir::arith::FastMathFlagsAttr::get(*v5, v3);
}

llvm::raw_ostream *mlir::arith::FastMathFlagsAttr::print(mlir::arith::FastMathFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  mlir::arith::stringifyFastMathFlags(*(*this + 8), &__p);
  v6 = (*(*a2 + 16))(a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(v6, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v10 = *(result + 4);
  if (*(result + 3) == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::get(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::parse(mlir::AsmParser *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v3 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v9))
    {
      goto LABEL_18;
    }

    v4 = mlir::arith::symbolizeIntegerOverflowFlags(v9, v10);
    if ((v4 & 0x100000000) == 0)
    {
      v8[16] = 257;
      (*(*a1 + 24))(&v12, a1, v2, v8);
      if (v12)
      {
        mlir::Diagnostic::operator<<<10ul>(v13, "expected ");
        if (v12)
        {
          mlir::Diagnostic::operator<<<36ul>(v13, "::mlir::arith::IntegerOverflowFlags");
          if (v12)
          {
            mlir::Diagnostic::operator<<<16ul>(v13, " to be one of: ");
            if (v12)
            {
              mlir::Diagnostic::operator<<<5ul>(v13, "none");
              if (v12)
              {
                mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                if (v12)
                {
                  mlir::Diagnostic::operator<<<4ul>(v13, "nsw");
                  if (v12)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v13, ", ");
                    if (v12)
                    {
                      mlir::Diagnostic::operator<<<4ul>(v13, "nuw");
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
LABEL_18:
      v7 = (*(*a1 + 40))(a1);
      v13[12] = 259;
      (*(*a1 + 24))(v11, a1, v7, &v12);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
      return 0;
    }

    v3 |= v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  return mlir::arith::IntegerOverflowFlagsAttr::get(*v5, v3);
}

llvm::raw_ostream *mlir::arith::IntegerOverflowFlagsAttr::print(mlir::arith::IntegerOverflowFlagsAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  mlir::arith::stringifyIntegerOverflowFlags(*(*this + 8), &__p);
  v6 = (*(*a2 + 16))(a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(v6, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = (*(*a2 + 16))(a2);
  v10 = *(result + 4);
  if (*(result + 3) == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::arith::ArithDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v17, a2, 0);
  v14 = "fastmath";
  v15 = 8;
  if (v21[2])
  {
    goto LABEL_2;
  }

  v6 = v20;
  if (v20 == 8)
  {
    if (*v19 == 0x6874616D74736166)
    {
      v8 = mlir::arith::FastMathFlagsAttr::parse(a2);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v20)
  {
LABEL_11:
    v14 = "overflow";
    v15 = 8;
LABEL_12:
    if (v6 != 8 || *v19 != 0x776F6C667265766FLL)
    {
      goto LABEL_18;
    }

    v8 = mlir::arith::IntegerOverflowFlagsAttr::parse(a2);
LABEL_16:
    v5 = v8;
    v21[0] = v8 != 0;
    *&v21[1] = 257;
    goto LABEL_3;
  }

  (*(*v17 + 648))(v17, &v14, 1);
  v14 = "overflow";
  v15 = 8;
  if (v21[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  v6 = v20;
  if (v20)
  {
    goto LABEL_12;
  }

  (*(*v17 + 648))(v17, &v14, 1);
  if (v21[2])
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_19;
  }

  v6 = v20;
LABEL_18:
  v5 = 0;
  v7 = v19;
  *v21 = 0;
  v21[2] = 1;
LABEL_19:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v17) & 0x100) == 0)
  {
    v13 = 257;
    (*(*a2 + 24))(&v17, a2, v4, v12);
    if (v17)
    {
      if (v17)
      {
        v16 = 261;
        v14 = v7;
        v15 = v6;
        mlir::Diagnostic::operator<<(&v18, &v14);
        if (v17)
        {
          if (v17)
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v16 = 261;
            v14 = v9;
            v15 = v10;
            mlir::Diagnostic::operator<<(&v18, &v14);
            if (v17)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    return 0;
  }

  return v5;
}

void mlir::arith::ArithDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v9 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 7uLL)
    {
      *v8 = 0x6874616D74736166;
      *(v7 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "fastmath", 8uLL);
    }

    mlir::arith::FastMathFlagsAttr::print(&v9, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v9 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 7uLL)
    {
      *v6 = 0x776F6C667265766FLL;
      *(v5 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v5, "overflow", 8uLL);
    }

    mlir::arith::IntegerOverflowFlagsAttr::print(&v9, a3);
  }
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>(uint64_t a1)
{
  v5 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v6 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v2 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id;
  v6 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v3 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id;
  v6 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>(uint64_t a1)
{
  v6 = &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id;
  v7 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v6, v8);
  v2 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v6 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v7 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v6, v8);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v6 = &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id;
  v7 = v3;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v6, v8);
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v6 = &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id;
  v7 = v4;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v6, v8);
}

mlir::Operation *mlir::arith::ArithDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ub::PoisonOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v8;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v10 = *a4;
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  mlir::ub::PoisonOp::build(a1, v17, v9, v10, v13);
  v14 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v15;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FCE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FCE0))
  {
    v1 = llvm::getTypeName<mlir::VectorUnrollOpInterface>();
    _MergedGlobals_36 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FCE0);
  }

  return _MergedGlobals_36;
}

uint64_t llvm::getTypeName<mlir::VectorUnrollOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1FCF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FCF8))
  {
    qword_27FC1FCE8 = llvm::detail::getTypeNameImpl<mlir::VectorUnrollOpInterface>();
    unk_27FC1FCF0 = v1;
    __cxa_guard_release(&qword_27FC1FCF8);
  }

  return qword_27FC1FCE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::VectorUnrollOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::VectorUnrollOpInterface]";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "arith.addf";
      v22 = 10;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::AddFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[19] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[18] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 18);
  return v4 == a1;
}

__guard mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[333];
}

uint64_t llvm::getTypeName<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>();
    unk_27FC19A80 = v1;
  }

  return llvm::getTypeName<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithFastMathInterface::Trait<Empty>]";
  v6 = 111;
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

uint64_t mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD08))
  {
    v1 = llvm::getTypeName<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>();
    qword_27FC1FD00 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FD08);
  }

  return qword_27FC1FD00;
}

uint64_t llvm::getTypeName<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FD20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD20))
  {
    qword_27FC1FD10 = llvm::detail::getTypeNameImpl<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1FD18 = v1;
    __cxa_guard_release(&qword_27FC1FD20);
  }

  return qword_27FC1FD10;
}

const char *llvm::detail::getTypeNameImpl<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::VectorUnrollOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

uint64_t mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD30))
  {
    v1 = llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface>();
    qword_27FC1FD28 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FD30);
  }

  return qword_27FC1FD28;
}

uint64_t llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1FD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD48))
  {
    qword_27FC1FD38 = llvm::detail::getTypeNameImpl<mlir::arith::ArithIntegerOverflowFlagsInterface>();
    unk_27FC1FD40 = v1;
    __cxa_guard_release(&qword_27FC1FD48);
  }

  return qword_27FC1FD38;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithIntegerOverflowFlagsInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface]";
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::AddIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "arith.addi";
      v22 = 10;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::AddIOpGenericAdaptorBase::AddIOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::AddIOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[20] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[18] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[19] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 19);
  return v5 == a2;
}

__guard mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[340];
}

uint64_t llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>();
    *algn_27FC19AB8 = v1;
  }

  return llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::InferIntRangeInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD58))
  {
    v1 = llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>();
    qword_27FC1FD50 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FD58);
  }

  return qword_27FC1FD50;
}

uint64_t llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD70))
  {
    qword_27FC1FD60 = llvm::detail::getTypeNameImpl<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>();
    *algn_27FC1FD68 = v1;
    __cxa_guard_release(&qword_27FC1FD70);
  }

  return qword_27FC1FD60;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::AddUIExtendedOp::fold(&v17, v18, a5);
  v15 = *(a5 + 8);
  if (((v14 & 1) == 0 || !v15) && !v15 && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v14;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[15] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[14] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 14);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddUIExtendedOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::AndIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "arith.andi";
      v22 = 10;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v21 = a2;
  v22[0] = v9;
  v22[1] = v10;
  v23 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v24 = v13;
  v25 = v12;
  v26 = a3;
  v27 = a4;
  v14 = mlir::arith::AndIOp::fold(&v21, v22);
  v15 = v14;
  if (v14 < 8 || a2 - 16 == (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    if (*(a5 + 8))
    {
      return v15 > 7;
    }

    if (mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
    {
      return 1;
    }

    if (*(a5 + 8))
    {
      return v15 > 7;
    }

    v20 = mlir::OpTrait::impl::foldIdempotent(a2, v19);
    if (v20 < 8)
    {
      return v15 > 7;
    }

    v17 = v20;
    if (a2 - 16 == (v20 & ((v20 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v16 = a5;
  }

  else
  {
    v16 = a5;
    v17 = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(v16, v17);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v9[19] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1FD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD80))
  {
    v7 = llvm::getTypeName<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>>();
    qword_27FC1FD78 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v7, v8);
    __cxa_guard_release(&qword_27FC1FD80);
  }

  v9[7] = qword_27FC1FD78;
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v9[13] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v9[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v9[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v9[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v9[18] = v2;
  do
  {
    v4 = v9[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 18);
  return v4 == a1;
}

uint64_t llvm::getTypeName<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FD98))
  {
    qword_27FC1FD88 = llvm::detail::getTypeNameImpl<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>>();
    unk_27FC1FD90 = v1;
    __cxa_guard_release(&qword_27FC1FD98);
  }

  return qword_27FC1FD88;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsIdempotent<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

__guard mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::CastOpInterface>();
      mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[395];
}

uint64_t llvm::getTypeName<mlir::CastOpInterface>()
{
  {
    llvm::getTypeName<mlir::CastOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::CastOpInterface>();
    unk_27FC19C70 = v1;
  }

  return llvm::getTypeName<mlir::CastOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::CastOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::CastOpInterface]";
  v6 = 83;
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::BitcastOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>(uint64_t a1)
{
  v7[16] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[15] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 15);
  return v4 == a1;
}

__guard mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[347];
}

uint64_t llvm::getTypeName<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>();
    unk_27FC19AF0 = v1;
  }

  return llvm::getTypeName<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>(void)::Name;
}