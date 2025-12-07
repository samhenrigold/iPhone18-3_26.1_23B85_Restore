ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetAttributeTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateAttributeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::CreateTypesOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = (result + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL));
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v10->i64[0] = -4096;
          v10 = (v10 + 8);
        }

        while (v10 != (result + 8 * v11));
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0x9DDFEA08EB382D69 * ((8 * *v19 - 0xAE502812AA7333) ^ HIDWORD(*v19));
          v30 = 0x9DDFEA08EB382D69 * (HIDWORD(v28) ^ (v29 >> 47) ^ v29);
          v31 = (-348639895 * ((v30 >> 47) ^ v30)) & v18;
          v27 = &result->i8[8 * v31];
          v32 = *v27;
          if (v28 != *v27)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v27;
              }

              v36 = v31 + v34++;
              v31 = v36 & v18;
              v27 = &result->i8[8 * (v36 & v18)];
              v32 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v33)
            {
              v27 = v33;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = (result + 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL));
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = (result + 8 * v20);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v26);
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::BoolNode]";
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::IsNotNullOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, size_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckOperationNameOp::build(a1, v21, *a3, *a4, a4[1], *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypesOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckTypeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::CheckAttributeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckOperandCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::pdl_interp::CheckResultCountOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::pdl_interp::AreEqualOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, unsigned __int8 *a6, uint64_t *a7, uint64_t *a8)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(v25, v27, v26);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::ValueRange::ValueRange(v27, *a3, *(a3 + 8));
  v20 = *a4;
  v19 = a4[1];
  mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyConstraintOp::build(a1, v25, v27[0], v27[1], v20, v19, v26[0], v26[1], *a6, *a7, *a8);
  v21 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v22;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SwitchNode]";
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

void createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, uint64_t a4)
{
  v12 = a2;
  v13 = a1;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  if (*(a4 + 32))
  {
    operator new();
  }

  v8 = 0;
  v9 = 0;
  __p = 0;
  v11 = 0;
  Loc = mlir::Value::getLoc(&v13);
  mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(a3, Loc, &v13, &v9, &v12, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v100 = *(a2 - 1);
      v101 = *v10;
      if (*(*(*(**a3 + 72) + 16 * v100) + 8) > *(*(*(**a3 + 72) + 16 * v101) + 8))
      {
        *v10 = v100;
        *(a2 - 1) = v101;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v110 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v111 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v112 = 0;
            v113 = *(*v110 + 72);
            v114 = v10;
            do
            {
              v117 = *v114;
              v116 = v114[1];
              v114 = v111;
              v118 = *(v113 + 16 * v116);
              if (*(v118 + 8) > *(*(v113 + 16 * v117) + 8))
              {
                v119 = v112;
                do
                {
                  *(v10 + v119 + 4) = v117;
                  if (!v119)
                  {
                    v115 = v10;
                    goto LABEL_124;
                  }

                  v117 = *(v10 + v119 - 4);
                  v119 -= 4;
                }

                while (*(v118 + 8) > *(*(v113 + 16 * v117) + 8));
                v115 = (v10 + v119 + 4);
LABEL_124:
                *v115 = v116;
              }

              v111 = v114 + 1;
              v112 += 4;
            }

            while (v114 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v157 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v158 = *(*v110 + 72);
          do
          {
            v160 = *v9;
            v159 = v9[1];
            v9 = v157;
            v161 = *(v158 + 16 * v159);
            if (*(v161 + 8) > *(*(v158 + 16 * v160) + 8))
            {
              v162 = v9;
              do
              {
                *v162 = v160;
                v160 = *(v162 - 2);
                --v162;
              }

              while (*(v161 + 8) > *(*(v158 + 16 * v160) + 8));
              *v162 = v159;
            }

            v157 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v120 = (v11 - 2) >> 1;
        v121 = *a3;
        v122 = v120;
        do
        {
          v123 = v122;
          if (v120 >= v122)
          {
            v124 = (2 * v122) | 1;
            v125 = &v10[v124];
            v126 = *v125;
            if (2 * v123 + 2 >= v11)
            {
              v127 = *(*v121 + 72);
            }

            else
            {
              v127 = *(*v121 + 72);
              if (*(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
              {
                v126 = v125[1];
                ++v125;
                v124 = 2 * v123 + 2;
              }
            }

            v128 = &v10[v123];
            v129 = *v128;
            v130 = *(v127 + 16 * v129);
            if (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8))
            {
              do
              {
                v131 = v125;
                *v128 = v126;
                if (v120 < v124)
                {
                  break;
                }

                v132 = (2 * v124) | 1;
                v125 = &v10[v132];
                v133 = 2 * v124 + 2;
                v126 = *v125;
                if (v133 < v11 && *(*(v127 + 16 * v126) + 8) > *(*(v127 + 16 * v125[1]) + 8))
                {
                  v126 = v125[1];
                  ++v125;
                  v132 = v133;
                }

                v128 = v131;
                v124 = v132;
              }

              while (*(*(v127 + 16 * v126) + 8) <= *(v130 + 8));
              *v131 = v129;
              v121 = *a3;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        do
        {
          v135 = 0;
          v136 = *v10;
          v137 = *a3;
          v138 = (v11 - 2) >> 1;
          v139 = v10;
          do
          {
            while (1)
            {
              v144 = &v139[v135];
              v143 = v144 + 1;
              v142 = v144[1];
              result = 2 * v135;
              v145 = (2 * v135) | 1;
              v135 = 2 * v135 + 2;
              if (v135 < v11)
              {
                break;
              }

              v135 = v145;
              *v139 = v142;
              v139 = v144 + 1;
              if (v145 > v138)
              {
                goto LABEL_158;
              }
            }

            v141 = v144[2];
            v140 = v144 + 2;
            result = v141;
            if (*(*(*(*v137 + 72) + 16 * v142) + 8) <= *(*(*(*v137 + 72) + 16 * v141) + 8))
            {
              v135 = v145;
            }

            else
            {
              LODWORD(v142) = result;
              v143 = v140;
            }

            *v139 = v142;
            v139 = v143;
          }

          while (v135 <= v138);
LABEL_158:
          if (v143 == --a2)
          {
            *v143 = v136;
          }

          else
          {
            *v143 = *a2;
            *a2 = v136;
            v146 = (v143 - v10 + 4) >> 2;
            v134 = v146 < 2;
            v147 = v146 - 2;
            if (!v134)
            {
              v148 = v147 >> 1;
              v149 = &v10[v148];
              v150 = *v149;
              v151 = *v143;
              v152 = *(**a3 + 72);
              v153 = *(v152 + 16 * v151);
              if (*(*(v152 + 16 * v150) + 8) > *(v153 + 8))
              {
                do
                {
                  v154 = v149;
                  *v143 = v150;
                  if (!v148)
                  {
                    break;
                  }

                  v148 = (v148 - 1) >> 1;
                  v149 = &v10[v148];
                  v150 = *v149;
                  result = *(v153 + 8);
                  v143 = v154;
                }

                while (*(*(v152 + 16 * v150) + 8) > result);
                *v154 = v151;
              }
            }
          }

          v134 = v11-- <= 2;
        }

        while (!v134);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(**a3 + 72);
    v15 = *(a2 - 1);
    v16 = *(*(v14 + 16 * v15) + 8);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(*(v14 + 16 * v21) + 8);
      v24 = *(v14 + 16 * v22);
      if (v23 > *(v24 + 8))
      {
        if (v16 > v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v40 = *(a2 - 1);
        if (*(*(v14 + 16 * v40) + 8) > *(v24 + 8))
        {
          *v10 = v40;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 <= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v27 = *v10;
      v28 = *v13;
      if (*(*(v14 + 16 * v27) + 8) <= *(*(v14 + 16 * v28) + 8))
      {
        goto LABEL_38;
      }

      *v13 = v27;
      *v10 = v28;
      --a4;
      v29 = v28;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v61 = *(v14 + 16 * v29);
      v62 = *(v61 + 8);
      if (*(*(v14 + 16 * *(v10 - 1)) + 8) > v62)
      {
        goto LABEL_62;
      }

      if (v62 <= *(*(v14 + 16 * *(a2 - 1)) + 8))
      {
        v83 = (v10 + 1);
        do
        {
          v10 = v83;
          if (v83 >= a2)
          {
            break;
          }

          v83 += 4;
        }

        while (v62 <= *(*(v14 + 16 * *v10) + 8));
      }

      else
      {
        do
        {
          v82 = v10[1];
          ++v10;
        }

        while (v62 <= *(*(v14 + 16 * v82) + 8));
      }

      v84 = a2;
      if (v10 < a2)
      {
        v84 = a2;
        do
        {
          v85 = *--v84;
        }

        while (v62 > *(*(v14 + 16 * v85) + 8));
      }

      if (v10 < v84)
      {
        v86 = *v10;
        v87 = *v84;
        do
        {
          *v10 = v87;
          *v84 = v86;
          v88 = *(v61 + 8);
          do
          {
            v89 = v10[1];
            ++v10;
            v86 = v89;
          }

          while (v88 <= *(*(v14 + 16 * v89) + 8));
          do
          {
            v90 = *--v84;
            v87 = v90;
          }

          while (v88 > *(*(v14 + 16 * v90) + 8));
        }

        while (v10 < v84);
      }

      v91 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v91;
      }

      a5 = 0;
      *v91 = v29;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(*(v14 + 16 * v17) + 8);
      v20 = *(v14 + 16 * v18);
      if (v19 <= *(v20 + 8))
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(*(v14 + 16 * v25) + 8) > *(*(v14 + 16 * v26) + 8))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 <= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v30 = *(a2 - 1);
          if (*(*(v14 + 16 * v30) + 8) <= *(v20 + 8))
          {
            goto LABEL_29;
          }

          *v12 = v30;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v31 = v12 - 1;
      v32 = *(v12 - 1);
      v33 = v10[1];
      v34 = *(*(v14 + 16 * v32) + 8);
      v35 = *(v14 + 16 * v33);
      v36 = *(a2 - 2);
      v37 = *(*(v14 + 16 * v36) + 8);
      if (v34 <= *(v35 + 8))
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v10[1];
          if (*(*(v14 + 16 * v38) + 8) > *(*(v14 + 16 * v39) + 8))
          {
            v10[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 <= v34)
        {
          v10[1] = v32;
          *v31 = v33;
          v41 = *(a2 - 2);
          if (*(*(v14 + 16 * v41) + 8) <= *(v35 + 8))
          {
            goto LABEL_43;
          }

          *v31 = v41;
        }

        else
        {
          v10[1] = v36;
        }

        *(a2 - 2) = v33;
      }

LABEL_43:
      v44 = v12[1];
      v42 = v12 + 1;
      v43 = v44;
      v45 = v10[2];
      v46 = *(*(v14 + 16 * v44) + 8);
      v47 = *(v14 + 16 * v45);
      v48 = *(a2 - 3);
      v49 = *(*(v14 + 16 * v48) + 8);
      if (v46 <= *(v47 + 8))
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v10[2];
          if (*(*(v14 + 16 * v50) + 8) > *(*(v14 + 16 * v51) + 8))
          {
            v10[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 <= v46)
        {
          v10[2] = v43;
          *v42 = v45;
          v52 = *(a2 - 3);
          if (*(*(v14 + 16 * v52) + 8) <= *(v47 + 8))
          {
            goto LABEL_52;
          }

          *v42 = v52;
        }

        else
        {
          v10[2] = v48;
        }

        *(a2 - 3) = v45;
      }

LABEL_52:
      v53 = *v13;
      v54 = *v31;
      v55 = *(*(v14 + 16 * v53) + 8);
      v56 = *(v14 + 16 * v54);
      v57 = *v42;
      v58 = *(v14 + 16 * v57);
      result = *(v58 + 8);
      if (v55 <= *(v56 + 8))
      {
        if (result <= v55)
        {
          goto LABEL_60;
        }

        *v13 = v57;
        *v42 = v53;
        v42 = v13;
        LODWORD(v53) = v54;
        if (*(v58 + 8) > *(v56 + 8))
        {
LABEL_59:
          *v31 = v57;
          *v42 = v54;
LABEL_60:
          v60 = *v10;
          *v10 = v53;
          *v13 = v60;
          --a4;
          v29 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v81 = *v10;
        *v10 = v57;
        *v13 = v81;
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (result > v55)
      {
        goto LABEL_59;
      }

      *v31 = v53;
      *v13 = v54;
      v31 = v13;
      LODWORD(v53) = v57;
      if (*(v58 + 8) > *(v56 + 8))
      {
        goto LABEL_59;
      }

      v59 = *v10;
      *v10 = v54;
      *v13 = v59;
      --a4;
      v29 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v63 = 0;
      v64 = *(**a3 + 72);
      v65 = *(v64 + 16 * v29);
      v66 = *(v65 + 8);
      do
      {
        v67 = v10[++v63];
      }

      while (*(*(v64 + 16 * v67) + 8) > v66);
      v68 = &v10[v63];
      v69 = a2;
      if (v63 == 1)
      {
        v69 = a2;
        do
        {
          if (v68 >= v69)
          {
            break;
          }

          v71 = *--v69;
        }

        while (*(*(v64 + 16 * v71) + 8) <= v66);
      }

      else
      {
        do
        {
          v70 = *--v69;
        }

        while (*(*(v64 + 16 * v70) + 8) <= v66);
      }

      if (v68 >= v69)
      {
        v79 = v68 - 1;
        if (v68 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v79;
        goto LABEL_80;
      }

      v72 = *v69;
      v73 = v67;
      v74 = v68;
      v75 = v69;
      do
      {
        *v74 = v72;
        *v75 = v73;
        v76 = *(v65 + 8);
        do
        {
          v77 = v74[1];
          ++v74;
          v73 = v77;
        }

        while (*(*(v64 + 16 * v77) + 8) > v76);
        do
        {
          v78 = *--v75;
          v72 = v78;
        }

        while (*(*(v64 + 16 * v78) + 8) <= v76);
      }

      while (v74 < v75);
      v79 = v74 - 1;
      if (v74 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v79 = v29;
      if (v68 < v69)
      {
        goto LABEL_83;
      }

      v10 = v79 + 1;
      if (result)
      {
        a2 = v79;
        if (!v80)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v80)
      {
LABEL_83:
        a5 = 0;
        v10 = v79 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v109 = *(**a3 + 72);
    }

    if (v11 == 5)
    {
      v92 = *(a2 - 1);
      v93 = v10[3];
      v94 = *(**a3 + 72);
      if (*(*(v94 + 16 * v92) + 8) > *(*(v94 + 16 * v93) + 8))
      {
        v10[3] = v92;
        *(a2 - 1) = v93;
        v96 = v10[2];
        v95 = v10[3];
        v97 = *(v94 + 16 * v95);
        if (*(v97 + 8) > *(*(v94 + 16 * v96) + 8))
        {
          v10[2] = v95;
          v10[3] = v96;
          v98 = v10[1];
          if (*(v97 + 8) > *(*(v94 + 16 * v98) + 8))
          {
            v10[1] = v95;
            v10[2] = v98;
            v99 = *v10;
            if (*(v97 + 8) > *(*(v94 + 16 * v99) + 8))
            {
              *v10 = v95;
              v10[1] = v99;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v102 = *(**a3 + 72);
  v103 = *v10;
  v104 = v10[1];
  v105 = *(*(v102 + 16 * v104) + 8);
  v106 = *(v102 + 16 * v103);
  v107 = *(a2 - 1);
  v108 = *(*(v102 + 16 * v107) + 8);
  if (v105 <= *(v106 + 8))
  {
    if (v108 > v105)
    {
      v10[1] = v107;
      *(a2 - 1) = v104;
      v156 = *v10;
      v155 = v10[1];
      if (*(*(v102 + 16 * v155) + 8) > *(*(v102 + 16 * v156) + 8))
      {
        *v10 = v155;
        v10[1] = v156;
      }
    }
  }

  else
  {
    if (v108 <= v105)
    {
      *v10 = v104;
      v10[1] = v103;
      v163 = *(a2 - 1);
      if (*(*(v102 + 16 * v163) + 8) <= *(v106 + 8))
      {
        return result;
      }

      v10[1] = v163;
    }

    else
    {
      *v10 = v107;
    }

    *(a2 - 1) = v103;
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*(a5 + 16 * v5) + 8);
  v8 = *(a5 + 16 * v6);
  v9 = *a3;
  v10 = *(*(a5 + 16 * *a3) + 8);
  if (v7 <= *(v8 + 8))
  {
    if (v10 <= v7)
    {
      v6 = *a3;
      goto LABEL_14;
    }

    *a2 = v9;
    *a3 = v5;
    v11 = *a2;
    v12 = *result;
    if (*(*(a5 + 16 * v11) + 8) <= *(*(a5 + 16 * v12) + 8))
    {
      v6 = v5;
      v9 = v5;
      goto LABEL_14;
    }

    *result = v11;
    *a2 = v12;
    v6 = *a3;
  }

  else
  {
    if (v10 <= v7)
    {
      *result = v5;
      *a2 = v6;
      v9 = *a3;
      if (*(*(a5 + 16 * *a3) + 8) <= *(v8 + 8))
      {
        v6 = *a3;
        goto LABEL_14;
      }

      *a2 = v9;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
  }

  v9 = v6;
LABEL_14:
  v13 = *a4;
  if (*(*(a5 + 16 * v13) + 8) > *(*(a5 + 16 * v6) + 8))
  {
    *a3 = v13;
    *a4 = v9;
    v14 = *a3;
    v15 = *a2;
    if (*(*(a5 + 16 * v14) + 8) > *(*(a5 + 16 * v15) + 8))
    {
      *a2 = v14;
      *a3 = v15;
      v16 = *a2;
      v17 = *result;
      if (*(*(a5 + 16 * v16) + 8) > *(*(a5 + 16 * v17) + 8))
      {
        *result = v16;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v18 = *(**a3 + 72);
        v19 = *a1;
        v20 = a1[1];
        v21 = *(*(v18 + 16 * v20) + 8);
        v22 = *(v18 + 16 * v19);
        v23 = *(a2 - 1);
        v24 = *(*(v18 + 16 * v23) + 8);
        if (v21 <= *(v22 + 8))
        {
          if (v24 > v21)
          {
            a1[1] = v23;
            *(a2 - 1) = v20;
            v39 = *a1;
            v38 = a1[1];
            if (*(*(v18 + 16 * v38) + 8) > *(*(v18 + 16 * v39) + 8))
            {
              *a1 = v38;
              a1[1] = v39;
              return 1;
            }
          }
        }

        else
        {
          if (v24 > v21)
          {
            *a1 = v23;
            *(a2 - 1) = v19;
            return 1;
          }

          *a1 = v20;
          a1[1] = v19;
          v48 = *(a2 - 1);
          if (*(*(v18 + 16 * v48) + 8) > *(v22 + 8))
          {
            a1[1] = v48;
            *(a2 - 1) = v19;
          }
        }

        return 1;
      case 4:
        return 1;
      case 5:
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = *(**a3 + 72);
        if (*(*(v12 + 16 * v10) + 8) > *(*(v12 + 16 * v11) + 8))
        {
          a1[3] = v10;
          *(a2 - 1) = v11;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v12 + 16 * v13);
          if (*(v15 + 8) > *(*(v12 + 16 * v14) + 8))
          {
            a1[2] = v13;
            a1[3] = v14;
            v16 = a1[1];
            if (*(v15 + 8) > *(*(v12 + 16 * v16) + 8))
            {
              a1[1] = v13;
              a1[2] = v16;
              v17 = *a1;
              if (*(v15 + 8) > *(*(v12 + 16 * v17) + 8))
              {
                *a1 = v13;
                a1[1] = v17;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *a1;
      if (*(*(*(**a3 + 72) + 16 * v4) + 8) > *(*(*(**a3 + 72) + 16 * v5) + 8))
      {
        *a1 = v4;
        *(a2 - 1) = v5;
        return 1;
      }

      return 1;
    }
  }

  v25 = a1 + 2;
  v26 = a1[2];
  v27 = a1[1];
  v28 = *(**a3 + 72);
  v29 = *a1;
  v30 = *(*(v28 + 16 * v27) + 8);
  v31 = *(v28 + 16 * v29);
  v32 = *(v28 + 16 * v26);
  v33 = *(v32 + 8);
  if (v30 <= *(v31 + 8))
  {
    if (v33 <= v30)
    {
      goto LABEL_28;
    }

    a1[1] = v26;
    *v25 = v27;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1;
    v35 = a1 + 1;
LABEL_26:
    if (v36 <= v37)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v34 = a1;
  v35 = a1 + 2;
  if (v33 <= v30)
  {
    *a1 = v27;
    a1[1] = v29;
    v36 = *(v32 + 8);
    v37 = *(v31 + 8);
    v34 = a1 + 1;
    v35 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v34 = v26;
  *v35 = v29;
LABEL_28:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  for (i = 12; ; i += 4)
  {
    v43 = *v40;
    v44 = *v25;
    v45 = *(v28 + 16 * v43);
    if (*(v45 + 8) > *(*(v28 + 16 * v44) + 8))
    {
      break;
    }

LABEL_37:
    v25 = v40++;
    if (v40 == a2)
    {
      return 1;
    }
  }

  v46 = i;
  do
  {
    *(a1 + v46) = v44;
    v47 = v46 - 4;
    if (v46 == 4)
    {
      *a1 = v43;
      if (++v41 != 8)
      {
        goto LABEL_37;
      }

      return v40 + 1 == a2;
    }

    v44 = *(a1 + v46 - 8);
    v46 -= 4;
  }

  while (*(v45 + 8) > *(*(v28 + 16 * v44) + 8));
  *(a1 + v47) = v43;
  if (++v41 != 8)
  {
    goto LABEL_37;
  }

  return v40 + 1 == a2;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a3;
  v5 = **a4;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    v9 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    a1 = v9;
    LODWORD(v6) = *(v9 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = v4;
  v7[1] = v5;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 16 * v7 - 16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperandCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 2;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchResultCountOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (*(a4 + 8) - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchOperationNameOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypesOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchTypeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = (a4[1] - *a4) >> 3;
  v18 = *a5;
  mlir::BlockRange::BlockRange(v25, *a6, (a6[1] - *a6) >> 3);
  mlir::pdl_interp::SwitchAttributeOp::build(a1, v24, v15, v16, v17, v18, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

const char *llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl_to_pdl_interp::SuccessNode]";
  v6 = 86;
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

double mlir::Region::getOps<mlir::pdl::OperationOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a1, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a2 + 64) = v17;
  *(a2 + 80) = v6;
  *(a2 + 96) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a2 = v13;
  *(a2 + 16) = v8;
  result = *&v15;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v7;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(v24, v26, v25);
  }

  mlir::OperationState::OperationState(v24, a2, v18);
  mlir::ValueRange::ValueRange(v26, *a3, (a3[1] - *a3) >> 3);
  mlir::ValueRange::ValueRange(v25, *a4, *(a4 + 8));
  mlir::pdl_interp::RecordMatchOp::build(a1, v24, v26[0], v26[1], v25[0], v25[1], *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v21;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,char const(&)[23],mlir::FunctionType>(mlir::StringAttr **a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v15, a2, v9);
    v11 = strlen(a3);
    mlir::pdl_interp::FuncOp::build(a1, v15, a3, v11, *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(v15, v14, v13);
}

void *anonymous namespace::PatternLowering::generateRewriter(mlir::pdl::PatternOp,llvm::SmallVectorImpl<mlir::pdl_to_pdl_interp::Position *> &)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  v30 = a2;
  v3 = *(a1 + 8);
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](*a1, &v30);
  result = *v4;
  if (!*v4)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v30);
    v7 = *(*(DefiningOp + 48) + 16);
    if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
    {
      v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      if (v29)
      {
        v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(v3, *(DefiningOp + 24), &v29);
LABEL_14:
        result = (v8 - 16);
        *v4 = result;
        return result;
      }
    }

    else if (DefiningOp && v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
    {
      v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      if (v29)
      {
        v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v3, *(DefiningOp + 24), &v29);
        goto LABEL_14;
      }
    }

    else if (DefiningOp)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
      {
        v29 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        if (v29)
        {
          v9 = *(DefiningOp + 24);
          v28 = *(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8;
          v8 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v3, v9, &v28, &v29);
          goto LABEL_14;
        }
      }
    }

    v10 = *(v3 + 216);
    if (v10)
    {
      v11 = *(v3 + 200);
      v12 = 0x9DDFEA08EB382D69 * ((8 * v30 - 0xAE502812AA7333) ^ HIDWORD(v30));
      v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v30) ^ (v12 >> 47) ^ v12);
      LODWORD(v12) = -348639895 * ((v13 >> 47) ^ v13);
      v14 = v10 - 1;
      v15 = v12 & (v10 - 1);
      v16 = *(v11 + 16 * v15);
      if (v30 == v16)
      {
LABEL_17:
        v17 = *(v11 + 16 * v15 + 8);
        v18 = *(a1 + 16);
        v19 = *(v18 + 8);
        if (v19 < *(v18 + 12))
        {
          goto LABEL_18;
        }

LABEL_27:
        v27 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v18, (v18 + 16), v19 + 1, 8);
        v17 = v27;
        LODWORD(v19) = *(v18 + 8);
LABEL_18:
        *(*v18 + 8 * v19) = v17;
        ++*(v18 + 8);
        v20 = **(a1 + 24);
        v21 = *(((v20 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40) + 8);
        if (v21)
        {
          v22 = v21 - 8;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(v30 + 8);
        Loc = mlir::Value::getLoc(&v30);
        mlir::Block::addArgument(v22, v23 & 0xFFFFFFFFFFFFFFF8, Loc);
      }

      v25 = 1;
      while (v16 != -4096)
      {
        v26 = v15 + v25++;
        v15 = v26 & v14;
        v16 = *(v11 + 16 * v15);
        if (v30 == v16)
        {
          goto LABEL_17;
        }
      }
    }

    v17 = 0;
    v18 = *(a1 + 16);
    v19 = *(v18 + 8);
    if (v19 < *(v18 + 12))
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v14 = *a3;
  v13 = a3[1];
  v15 = *a4;
  mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v14, v13, v15, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::CreateTypesOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::StringAttr,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(v21, &v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(&v23, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v22, v23, v24);
  v16 = *a4;
  mlir::ValueRange::ValueRange(&v23, *a5, *(a5 + 8));
  mlir::pdl_interp::ApplyRewriteOp::build(a1, v21, v22[0], v22[1], v16, v23, v24);
  v17 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::EraseOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(mlir::MLIRContext **a1, uint64_t a2, size_t *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  v20 = *a3;
  v19 = a3[1];
  mlir::ValueRange::ValueRange(v30, *a4, *(a4 + 8));
  v21 = *a5;
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::pdl_interp::CreateOperationOp::build(a1, v28, v20, v19, v30[0], v30[1], v21, v22, v29[0], v29[1], v27[0], v27[1], *a8);
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetResultsOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::GetResultsOp &>(mlir::MLIRContext **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::pdl_interp::GetValueTypeOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type &,mlir::Value &,unsigned long>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::pdl_interp::GetResultsOp::build(a1, v19, *a3, *a4, *a5 | 0x100000000);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::CreateRangeOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::pdl_interp::ReplaceOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

int32x2_t **llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(int32x2_t **result)
{
  v1 = result;
  (*result)[3] = result[1];
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    if (v2[1])
    {
      *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](v3, &v2[2]) = v2[1];
    }

    else
    {
      v4 = v3[2].i32[0];
      if (v4)
      {
        v5 = *v3;
        v6 = v2[2];
        v7 = v4 - 1;
        v8 = ((v6.i32[0] >> 4) ^ (v6.i32[0] >> 9)) & (v4 - 1);
        v9 = *(*v3 + 16 * v8);
        if (*&v6 == v9)
        {
LABEL_8:
          *(*&v5 + 16 * v8) = -8192;
          v3[1] = vadd_s32(v3[1], 0x1FFFFFFFFLL);
        }

        else
        {
          v10 = 1;
          while (v9 != -4096)
          {
            v11 = v8 + v10++;
            v8 = v11 & v7;
            v9 = *(*&v5 + 16 * v8);
            if (*&v6 == v9)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    v1[2] = *v2;
    llvm::deallocate_buffer(v2, 0x20);
  }

  return result;
}

double mlir::Region::getOps<mlir::pdl::PatternOp>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::Position::getOperationDepth(uint64_t this)
{
  while (!this || *(this + 16))
  {
    this = *(this + 8);
    if (!this)
    {
      return this;
    }
  }

  return *(this + 32);
}

__n128 mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 3;
  *a1 = &unk_1F1A05820;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F1A05708;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F1A05840;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 24) = *a2;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F1A05728;
  *(a1 + 8) = v3;
  return result;
}

__n128 mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(uint64_t a1, __n128 *a2)
{
  *(a1 + 16) = 2;
  *a1 = &unk_1F1A05860;
  *(a1 + 8) = 0;
  result = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  *(a1 + 24) = result;
  v3 = a2->n128_u64[0];
  *a1 = &unk_1F1A05748;
  *(a1 + 8) = v3;
  return result;
}

void mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v30[80] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v28 = v30;
  v29 = 0x1000000000;
  mlir::Region::getOps<mlir::pdl::PatternOp>(&v23, (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v7));
  v19 = v23;
  *v20 = v24;
  v21 = v25;
  v22 = v26;
  if (v24 != v27)
  {
    ZinIrHalH13g::~ZinIrHalH13g(v24);
    v8 = (*(&v22 + 1))();
    v17 = 0;
    v18 = v8;
    __p[0] = 0;
    __p[1] = 0;
    buildPredicateList(v8, a3, __p, a4);
  }

  if (v29)
  {
    v9 = v28;
    while (1)
    {
      v10 = v9[2];
      if (v10 != v9[3])
      {
        break;
      }

      v9 += 5;
      if (v9 == (v28 + 40 * v29))
      {
        operator new();
      }
    }

    v11 = v10[1];
    *&v23 = *v10;
    *(&v23 + 1) = v11;
    *&v24 = 0;
    DWORD2(v24) = 0;
    v25 = 0uLL;
    LODWORD(v26) = 0;
    __p[0] = 0;
    buffer = llvm::allocate_buffer(0xE00uLL, 8uLL);
    *buffer = -4096;
    buffer[1] = -4096;
    buffer[2] = 0;
    *(buffer + 6) = 0;
    buffer[4] = 0;
    buffer[5] = 0;
    *(buffer + 12) = 0;
    llvm::deallocate_buffer(0, 0);
  }

  *a2 = 0;
  foldSwitchToBool(a2);
  v13 = a2;
  do
  {
    v14 = *v13;
    v13 = (*v13 + 24);
  }

  while (v14);
  operator new();
}

void foldSwitchToBool(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    while (1)
    {
      v5 = *(v1 + 40);
      {
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
          goto LABEL_10;
        }
      }

      else
      {
        foldSwitchToBool();
        if (v5 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id)
        {
LABEL_10:
          v8 = *(v1 + 80);
          if (v8)
          {
            v9 = *(v1 + 72) + 8;
            v10 = 16 * v8;
            do
            {
              foldSwitchToBool(v9);
              v9 += 16;
              v10 -= 16;
            }

            while (v10);
            if (*(v1 + 80) == 1)
            {
              operator new();
            }
          }

          goto LABEL_3;
        }
      }

      v6 = *v2;
      v7 = *(*v2 + 40);
      {
        break;
      }

      if (v7 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
      {
        goto LABEL_8;
      }

LABEL_3:
      v3 = *v2;
      v4 = *(v3 + 24);
      v2 = v3 + 24;
      v1 = v4;
      if (!v4)
      {
        return;
      }
    }

    foldSwitchToBool();
    if (v7 != mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

LABEL_8:
    foldSwitchToBool(v6 + 56);
    goto LABEL_3;
  }
}

void mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(mlir::pdl_to_pdl_interp::MatcherNode *this)
{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::BoolNode::~BoolNode(mlir::pdl_to_pdl_interp::BoolNode *this)
{
  *this = &unk_1F1A058A0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F1A05880;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_1F1A058A0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F1A05880;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::SuccessNode::~SuccessNode(mlir::pdl_to_pdl_interp::SuccessNode *this)
{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::SwitchNode::~SwitchNode(mlir::pdl_to_pdl_interp::SwitchNode *this)
{
  *this = &unk_1F1A058E0;
  v2 = *(this + 9);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

{
  *this = &unk_1F1A058E0;
  v2 = *(this + 9);
  v3 = *(this + 20);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 9);
  }

  if (v2 != this + 88)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 6), (16 * *(this + 16)));
}

void *sub_1A6D3E408()
{
  *v0 = &unk_1F1A05880;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return v0;
}

void sub_1A6D3E548()
{
  *v0 = &unk_1F1A05880;
  v1 = v0[4];
  v0[4] = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = v0[3];
  v0[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1AC55A070);
}

void getTreePredicates(uint64_t a1, uint64_t a2, mlir::detail::StorageUniquerImpl ***a3, uint64_t *a4, mlir::pdl_to_pdl_interp::OperationPosition *a5)
{
  v76 = a5;
  v77 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>(a4, &v77, &v76, &v74);
  if ((v75 & 1) == 0)
  {
    v11 = *(*(mlir::Value::getDefiningOp(&v77) + 48) + 16);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
    {
      return;
    }

    v16 = (v74 + 8);
    v17 = v76;
    OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*(v74 + 8));
    v19 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v17);
    v20 = OperationDepth >= v19;
    v21 = &v76;
    if (OperationDepth >= v19)
    {
      v22 = v16;
    }

    else
    {
      v22 = &v76;
    }

    if (!v20)
    {
      v21 = v16;
    }

    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(a3, *v21);
    v25 = *(a1 + 8);
    v26 = *(a1 + 16);
    if (v25 >= v26)
    {
      v33 = *a1;
      v34 = 0xAAAAAAAAAAAAAAABLL * (&v25[-*a1] >> 3);
      v35 = v34 + 1;
      if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_97;
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v33) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (v37 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_98;
      }

      v54 = (8 * (&v25[-*a1] >> 3));
      *v54 = *v22;
      v54[1] = EqualTo;
      v54[2] = v24;
      v27 = 24 * v34 + 24;
      v55 = 24 * v34 - (v25 - v33);
      memcpy(v54 - (v25 - v33), v33, v25 - v33);
      *a1 = v55;
      *(a1 + 8) = v27;
      *(a1 + 16) = 0;
      if (v33)
      {
        v56 = v33;
LABEL_68:
        operator delete(v56);
      }
    }

    else
    {
      *v25 = *v22;
      *(v25 + 1) = EqualTo;
      *(v25 + 2) = v24;
      v27 = (v25 + 24);
    }

LABEL_95:
    *(a1 + 8) = v27;
    return;
  }

  v8 = v76;
  v9 = *(v76 + 4);
  if (v76)
  {
    v10 = v9 == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v79[0] = v77;
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v30 = *(a1 + 8);
    v31 = *(a1 + 16);
    if (v30 < v31)
    {
      *v30 = v8;
      *(v30 + 1) = IsNotNull;
      v32 = (v30 + 24);
      *(v30 + 2) = v29;
      goto LABEL_72;
    }

    v49 = *a1;
    v50 = 0xAAAAAAAAAAAAAAABLL * (&v30[-*a1] >> 3);
    v51 = v50 + 1;
    if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_97;
    }

    v52 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v49) >> 3);
    if (2 * v52 > v51)
    {
      v51 = 2 * v52;
    }

    if (v52 >= 0x555555555555555)
    {
      v53 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v53 = v51;
    }

    if (!v53)
    {
      v58 = (8 * (&v30[-*a1] >> 3));
      *v58 = v8;
      v58[1] = IsNotNull;
      v58[2] = v29;
      v32 = 24 * v50 + 24;
      v59 = 24 * v50 - (v30 - v49);
      memcpy(v58 - (v30 - v49), v49, v30 - v49);
      *a1 = v59;
      *(a1 + 8) = v32;
      *(a1 + 16) = 0;
      if (v49)
      {
        operator delete(v49);
      }

LABEL_72:
      *(a1 + 8) = v32;
      DefiningOp = mlir::Value::getDefiningOp(v79);
      if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id)
      {
        v61 = DefiningOp;
      }

      else
      {
        v61 = 0;
      }

      v80 = v61;
      if (!v61)
      {
        return;
      }

      ODSOperandIndexAndLength = mlir::pdl::ApplyNativeConstraintOp::getODSOperandIndexAndLength(&v80, 0);
      v63 = *(v80 + 44);
      if ((v63 & 0x800000) != 0)
      {
        v64 = *(v80 + 72);
        v65 = ODSOperandIndexAndLength;
        if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v64 = 0;
        v65 = ODSOperandIndexAndLength;
        if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
        {
          goto LABEL_81;
        }
      }

      v66 = *(v64 + 32 * v65 + 24);
      if (v66)
      {
        v78[0] = v8;
        v67 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*a3, 0, 0, v78);
        getTreePredicates(a1, v66, a3, a4, v67);
        return;
      }

LABEL_81:
      v68 = *(v80 + 16 * ((v63 >> 23) & 1) + 64);
      if (!v68)
      {
        return;
      }

      AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(a3, v68);
      v42 = *(a1 + 8);
      v69 = *(a1 + 16);
      if (v42 >= v69)
      {
        v44 = *a1;
        v45 = 0xAAAAAAAAAAAAAAABLL * (&v42[-*a1] >> 3);
        v70 = v45 + 1;
        if (v45 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v71 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v44) >> 3);
          if (2 * v71 > v70)
          {
            v70 = 2 * v71;
          }

          if (v71 >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v70;
          }

          if (v48)
          {
            if (v48 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_98;
            }

            goto LABEL_92;
          }

          goto LABEL_93;
        }

LABEL_97:
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

LABEL_83:
      *v42 = v8;
      *(v42 + 1) = AttributeConstraint;
      v27 = (v42 + 24);
      *(v42 + 2) = v41;
      goto LABEL_95;
    }

    if (v53 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_98:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v76 && !v9)
  {
    getTreePredicates(a1, v77, a3, a4, v76, 0);
    return;
  }

  if (v9 != 7)
  {
    v83 = v76;
    v84 = v77;
    v82 = *(*(*(v77 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
    v57 = mlir::Value::getDefiningOp(&v84);
    v79[3] = a4;
    v80 = v57;
    v81 = 0;
    v79[0] = &v83;
    v79[1] = a1;
    v79[2] = a3;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v80, v79);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v80, v79);
    v78[0] = a1;
    v78[1] = &v83;
    v78[2] = a3;
    v78[3] = &v82;
    v78[4] = a4;
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v80, v78);
    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(&v80, v78);
    return;
  }

  v78[0] = v77;
  v38 = mlir::Value::getDefiningOp(v78);
  if (v38 && *(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id || (v38 = mlir::Value::getDefiningOp(v78)) != 0 && *(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
  {
    v39 = *(v38 + 16 * ((*(v38 + 44) >> 23) & 1) + 64);
    if (v39)
    {
      AttributeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(a3, v39);
      v42 = *(a1 + 8);
      v43 = *(a1 + 16);
      if (v42 >= v43)
      {
        v44 = *a1;
        v45 = 0xAAAAAAAAAAAAAAABLL * (&v42[-*a1] >> 3);
        v46 = v45 + 1;
        if (v45 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (v48 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_98;
            }

LABEL_92:
            operator new();
          }

LABEL_93:
          v72 = 24 * v45;
          *v72 = v8;
          *(v72 + 8) = AttributeConstraint;
          *(v72 + 16) = v41;
          v27 = 24 * v45 + 24;
          v73 = (v72 - (v42 - v44));
          memcpy(v73, v44, v42 - v44);
          *a1 = v73;
          *(a1 + 8) = v27;
          *(a1 + 16) = 24 * v48;
          if (!v44)
          {
            goto LABEL_95;
          }

          v56 = v44;
          goto LABEL_68;
        }

        goto LABEL_97;
      }

      goto LABEL_83;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = *a1 + 32 * v5;
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v7 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7 == -8192;
      }

      if (v13)
      {
        v11 = v6;
      }

      v14 = v5 + v12++;
      v5 = v14 & (v2 - 1);
      v6 = *a1 + 32 * v5;
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 8;
      }
    }

    if (v11)
    {
      v6 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v6 = v17;
    ++*(v16 + 8);
    if (*v6 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  if (*v6 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v10 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = v10;
  *(v6 + 24) = 0;
  return v6 + 8;
}

void std::deque<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (!(v8 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
}

void std::__split_buffer<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *>>::emplace_back<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (result + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
LABEL_3:
      *a4 = v7;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v8 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 == -8192;
        }

        if (v11)
        {
          v9 = v7;
        }

        v12 = v6 + v10++;
        v6 = v12 & (a2 - 1);
        v7 = (result + 32 * v6);
        v8 = *v7;
        if (*v7 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v9)
      {
        v7 = v9;
      }

      *a4 = v7;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v25 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          LODWORD(v26) = -348639895 * ((v27 >> 47) ^ v27);
          v28 = *(a1 + 16) - 1;
          v29 = v28 & v26;
          v22 = *a1 + 32 * v29;
          v30 = *v22;
          if (*v22 != v25)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v22;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v22 = *a1 + 32 * v29;
              v30 = *v22;
              if (*v22 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v22 = v31;
            }
          }

LABEL_24:
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          *v22 = v25;
          *(v22 + 24) = 0;
          *(v22 + 8) = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v22 + 16) = *(v16 + 4);
          *(v16 + 4) = 0;
          v23 = *(v22 + 20);
          *(v22 + 20) = *(v16 + 5);
          *(v16 + 5) = v23;
          v24 = *(v22 + 24);
          *(v22 + 24) = *(v16 + 6);
          *(v16 + 6) = v24;
          ++*(a1 + 8);
          llvm::deallocate_buffer(0, (24 * v24));
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::Value,llvm::SmallVector<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::RootDepth,1u>>,false>::grow(uint64_t **a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 2);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 40, &v25);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = 40 * v6;
  do
  {
    v10 = &v4[v7 / 8];
    v11 = &v5[v7 / 8];
    *v10 = v5[v7 / 8];
    v12 = &v4[v7 / 8 + 3];
    v4[v7 / 8 + 1] = v12;
    v13 = &v4[v7 / 8 + 1];
    v10[2] = 0x100000000;
    if (v5 != v4)
    {
      v14 = *(v11 + 4);
      if (v14)
      {
        v15 = v11[1];
        v16 = &v5[v7 / 8];
        v17 = &v5[v7 / 8 + 3];
        if (v17 != v15)
        {
          *v13 = v15;
          v9 = *(v16 + 5);
          *(v10 + 4) = v14;
          *(v10 + 5) = v9;
          v11[1] = v17;
          *(v16 + 5) = 0;
LABEL_4:
          *(v11 + 4) = 0;
          goto LABEL_5;
        }

        if (v14 < 2)
        {
          v19 = 16;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v4[v7 / 8 + 1], &v4[v7 / 8 + 3], *(v11 + 4), 16);
          v18 = *(v11 + 4);
          if (!v18)
          {
LABEL_14:
            *(v10 + 4) = v14;
            goto LABEL_4;
          }

          v15 = v11[1];
          v12 = *v13;
          v19 = 16 * v18;
        }

        memcpy(v12, v15, v19);
        goto LABEL_14;
      }
    }

LABEL_5:
    v7 += 40;
  }

  while (v8 != v7);
  v5 = *a1;
  v20 = *(a1 + 2);
  if (v20)
  {
    v21 = &v5[5 * v20 - 2];
    v22 = -40 * v20;
    do
    {
      v23 = *(v21 - 16);
      if (v21 != v23)
      {
        free(v23);
      }

      v21 -= 40;
      v22 += 40;
    }

    while (v22);
    v5 = *a1;
  }

LABEL_21:
  v24 = v25;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v24;
}

void llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  if (v1)
  {
    v3 = 32 * v1;
    while ((*v2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v2 = (v2 + 32);
      v3 -= 32;
      if (!v3)
      {
        llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
      }
    }

    llvm::deallocate_buffer(*(v2 + 1), (24 * *(v2 + 6)));
  }

  llvm::deallocate_buffer(*a1, 0);
}

void sub_1A6D3FBC4()
{
  v2 = *(v1 + 16);
  *(v0 + 16) = v2;
  if (!v2)
  {
    JUMPOUT(0x1A6D3FBD0);
  }

  JUMPOUT(0x1A6D3FB7CLL);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>>(uint64_t *result, uint64_t *a2)
{
  result[1] = a2[1];
  v2 = *(result + 4);
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = *a2;
    do
    {
      v6 = v4 + 32 * v3;
      v7 = (v5 + 32 * v3);
      v8 = *v7;
      *v6 = *v7;
      if ((v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        llvm::deallocate_buffer(0, 0);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == -8192;
      }

      if (v18)
      {
        v16 = v11;
      }

      v19 = v10 + v17++;
      v10 = v19 & v9;
      v11 = (v6 + 16 * (v19 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      v11 = v16;
    }

LABEL_5:
    v23 = v11;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        v15 = *a3;
        *v11 = *a2;
        v11[1] = v15;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v20 = result;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v20, a2, &v23);
    a3 = v22;
    result = v20;
    a4 = v21;
    v11 = v23;
    ++*(v20 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(mlir::detail::StorageUniquerImpl ***this, mlir::pdl_to_pdl_interp::Position *a2)
{
  v7 = a2;
  v3 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(*this, 0, 0, &v7);
  v4 = *this;
  {
    v6 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v4 = v6;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 20;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(uint64_t **this)
{
  v2 = *this;
  {
    v6 = v2;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v2 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v2, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id);
  v4 = *this;
  {
    v7 = v4;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull();
    v4 = v7;
  }

  mlir::StorageUniquer::getSingletonImpl(v4, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint(uint64_t **a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 7;
  v6 = *v2;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F1A05958;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypePosition::~TypePosition(mlir::pdl_to_pdl_interp::TypePosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 22;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void getTreePredicates(void **a1, uint64_t a2, uint64_t **a3, uint64_t a4, mlir::pdl_to_pdl_interp::OperationPosition *a5, uint64_t a6)
{
  v161 = *MEMORY[0x1E69E9840];
  v152 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v152);
  v146 = a3;
  if (*(a5 + 8))
  {
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a3);
    v14 = a1[1];
    v13 = a1[2];
    if (v14 >= v13)
    {
      v16 = *a1;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v21 = (8 * ((v14 - *a1) >> 3));
      *v21 = a5;
      v21[1] = IsNotNull;
      v21[2] = v12;
      v15 = 24 * v17 + 24;
      v22 = v21 - (v14 - v16);
      memcpy(v22, v16, v14 - v16);
      *a1 = v22;
      a1[1] = v15;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = a5;
      *(v14 + 1) = IsNotNull;
      v15 = (v14 + 24);
      *(v14 + 2) = v12;
    }

    a1[1] = v15;
  }

  mlir::pdl::OperationOp::getOpName(&DefiningOp, &v157);
  if (v158 == 1)
  {
    OperationName = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(a3, v157.n128_u64[0], v157.n128_i64[1]);
    v26 = a1[1];
    v25 = a1[2];
    if (v26 >= v25)
    {
      v28 = *a1;
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *a1) >> 3);
      v30 = v29 + 1;
      if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v31 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v28) >> 3);
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      if (v31 >= 0x555555555555555)
      {
        v32 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        if (v32 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v33 = (8 * ((v26 - *a1) >> 3));
      *v33 = a5;
      v33[1] = OperationName;
      v33[2] = v24;
      v27 = 24 * v29 + 24;
      v34 = v33 - (v26 - v28);
      memcpy(v34, v28, v26 - v28);
      *a1 = v34;
      a1[1] = v27;
      a1[2] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v26 = a5;
      *(v26 + 1) = OperationName;
      v27 = (v26 + 24);
      *(v26 + 2) = v24;
    }

    a1[1] = v27;
  }

  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 0);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v36 = *(DefiningOp + 72);
  }

  else
  {
    v36 = 0;
  }

  v37 = ODSOperandIndexAndLength;
  v38 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v144 = v36 + 32 * ODSOperandIndexAndLength;
  v148 = v38 - ODSOperandIndexAndLength;
  mlir::ValueRange::ValueRange(v155.n128_u64, v144, v148);
  v156 = v155;
  mlir::ValueRange::getTypes(&v157, &v156);
  v39 = v157.n128_i64[1];
  v40 = v159;
  v153 = v157;
  v142 = v38;
  v143 = v37;
  if (v157.n128_u64[1] == v159)
  {
    if (v38 != v37)
    {
      goto LABEL_57;
    }

    v41 = 0;
  }

  else
  {
    v41 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v153, v39) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v41;
      }

      v39 = v153.n128_u64[1] + 1;
      v153.n128_u64[1] = v39;
    }

    while (v39 != v40);
    if (v148 != v41)
    {
      if (!v41)
      {
        goto LABEL_57;
      }

      OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(a3, v41);
      v45 = a1[1];
      v44 = a1[2];
      if (v45 < v44)
      {
        goto LABEL_42;
      }

LABEL_45:
      v47 = *a1;
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *a1) >> 3);
      v49 = v48 + 1;
      if (v48 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_149;
      }

      v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v47) >> 3);
      if (2 * v50 > v49)
      {
        v49 = 2 * v50;
      }

      if (v50 >= 0x555555555555555)
      {
        v51 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (v51 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v52 = a1;
      v53 = (8 * ((v45 - *a1) >> 3));
      *v53 = a5;
      v53[1] = OperandCountAtLeast;
      v53[2] = v43;
      v46 = 24 * v48 + 24;
      v54 = v53 - (v45 - v47);
      memcpy(v54, v47, v45 - v47);
      *v52 = v54;
      v52[1] = v46;
      v52[2] = 0;
      a1 = v52;
      if (v47)
      {
        operator delete(v47);
      }

      goto LABEL_56;
    }
  }

  OperandCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(a3, v41);
  v45 = a1[1];
  v44 = a1[2];
  if (v45 >= v44)
  {
    goto LABEL_45;
  }

LABEL_42:
  *v45 = a5;
  *(v45 + 1) = OperandCountAtLeast;
  v46 = (v45 + 24);
  *(v45 + 2) = v43;
LABEL_56:
  a1[1] = v46;
LABEL_57:
  v55 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 2u);
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v56 = *(DefiningOp + 72);
  }

  else
  {
    v56 = 0;
  }

  v57 = (HIDWORD(v55) + v55) - v55;
  v140 = v56 + 32 * v55;
  mlir::ValueRange::ValueRange(v155.n128_u64, v140, v57);
  v156 = v155;
  mlir::ValueRange::getTypes(&v157, &v156);
  v58 = v157.n128_i64[1];
  v59 = v159;
  v153 = v157;
  v147 = a5;
  *v145 = v57;
  if (v157.n128_u64[1] != v159)
  {
    v61 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v153, v58) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        ++v61;
      }

      v58 = v153.n128_u64[1] + 1;
      v153.n128_u64[1] = v58;
    }

    while (v58 != v59);
    v60 = v57;
    if (v57 == v61)
    {
      goto LABEL_67;
    }

    if (!v61)
    {
      goto LABEL_96;
    }

    ResultCountAtLeast = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(a3, v61);
    v70 = a1[1];
    v69 = a1[2];
    if (v70 < v69)
    {
      *v70 = a5;
      *(v70 + 1) = ResultCountAtLeast;
      v66 = (v70 + 24);
      *(v70 + 2) = v68;
      goto LABEL_95;
    }

    v79 = *a1;
    v80 = 0xAAAAAAAAAAAAAAABLL * ((v70 - *a1) >> 3);
    v81 = v80 + 1;
    if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_149;
    }

    v82 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v79) >> 3);
    if (2 * v82 > v81)
    {
      v81 = 2 * v82;
    }

    if (v82 >= 0x555555555555555)
    {
      v83 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v83 = v81;
    }

    if (!v83)
    {
      v84 = (8 * ((v70 - *a1) >> 3));
      *v84 = a5;
      v84[1] = ResultCountAtLeast;
      v84[2] = v68;
      v66 = 24 * v80 + 24;
      v85 = v84 - (v70 - v79);
      memcpy(v85, v79, v70 - v79);
      *a1 = v85;
      a1[1] = v66;
      a1[2] = 0;
      if (!v79)
      {
        goto LABEL_95;
      }

      v78 = v79;
      goto LABEL_94;
    }

    if (v83 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_150:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v57)
  {
    goto LABEL_96;
  }

  v60 = 0;
LABEL_67:
  ResultCount = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(a3, v60);
  v64 = a1[1];
  v65 = a1[2];
  if (v64 >= v65)
  {
    v71 = *a1;
    v72 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    v73 = v72 + 1;
    if (v72 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v74 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v71) >> 3);
      if (2 * v74 > v73)
      {
        v73 = 2 * v74;
      }

      if (v74 >= 0x555555555555555)
      {
        v75 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v75 = v73;
      }

      if (v75)
      {
        if (v75 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_150;
      }

      v76 = (8 * ((v64 - *a1) >> 3));
      *v76 = v147;
      v76[1] = ResultCount;
      v76[2] = v63;
      v66 = 24 * v72 + 24;
      v77 = v76 - (v64 - v71);
      memcpy(v77, v71, v64 - v71);
      *a1 = v77;
      a1[1] = v66;
      a1[2] = 0;
      if (!v71)
      {
        goto LABEL_95;
      }

      v78 = v71;
LABEL_94:
      operator delete(v78);
      goto LABEL_95;
    }

LABEL_149:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *v64 = a5;
  *(v64 + 1) = ResultCount;
  v66 = (v64 + 24);
  *(v64 + 2) = v63;
LABEL_95:
  a1[1] = v66;
LABEL_96:
  v141 = a6;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&DefiningOp);
  v87 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(&DefiningOp, 1u);
  v88 = a1;
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v89 = *(DefiningOp + 72);
  }

  else
  {
    v89 = 0;
  }

  v153.n128_u64[0] = AttributeValueNames;
  v153.n128_u64[1] = v89 + 32 * v87;
  v154 = (HIDWORD(v87) + v87) - v87;
  Value = mlir::ArrayAttr::getValue(&v153);
  v91 = v153.n128_u64[1];
  v92 = mlir::ArrayAttr::getValue(&v153);
  v94 = v92 + 8 * v93;
  if (v94 != Value && v154)
  {
    v95 = (v91 + 24);
    v96 = v154 - 1;
    v97 = Value + 8;
    do
    {
      v98 = *v95;
      v95 += 4;
      v150 = *(v97 - 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v150);
      v156.n128_u64[0] = v147;
      v101 = *v146;
      v100 = v146[1];
      v160 = 261;
      v157.n128_u64[0] = AttrData;
      v157.n128_u64[1] = v102;
      v155.n128_u64[0] = mlir::StringAttr::get(v100, v157.n128_u64);
      v103 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(v101, 0, 0, &v156, &v155);
      getTreePredicates(v88, v98, v146, a4, v103);
      v105 = v96-- != 0;
      if (v97 == v94)
      {
        break;
      }

      v97 += 8;
    }

    while (v105);
  }

  if (v148 == 1 && (v106 = *(v144 + 24), *(*(*(v106 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
  {
    v114 = v147;
    if (*(v147 + 8))
    {
      v107 = v146;
      if (!mlir::pdl_to_pdl_interp::OperationPosition::isOperandDefiningOp(v147))
      {
        goto LABEL_122;
      }

      v106 = *(v144 + 24);
      v114 = v147;
    }

    else
    {
      v107 = v146;
    }

    v157.n128_u64[0] = 0;
    v153.n128_u64[0] = v114;
    v156.n128_u8[0] = 1;
    v115 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v107, 0, 0, &v153, &v157, &v156);
    getTreePredicates(v88, v106, v107, a4, v115);
  }

  else
  {
    v107 = v146;
    if (v142 != v143)
    {
      v108 = 0;
      v109 = 0;
      v110 = (v144 + 24);
      do
      {
        v112 = *v110;
        v113 = *(*(*(*v110 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v108 |= v113 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
        if ((v141 & 0x100000000) == 0 || v141 != v109)
        {
          if (v108)
          {
            v157.n128_u64[0] = v109 | 0x100000000;
            v153.n128_u64[0] = v147;
            v156.n128_u8[0] = v113 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
            v111 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v146, 0, 0, &v153, &v157, &v156);
          }

          else
          {
            v157.n128_u64[0] = v147;
            v153.n128_u32[0] = v109;
            v111 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v146, 0, 0, &v157, &v153);
          }

          getTreePredicates(v88, v112, v146, a4, v111);
        }

        ++v109;
        v110 += 4;
      }

      while (v148 != v109);
    }
  }

LABEL_122:
  v116 = v147;
  if (*v145)
  {
    v117 = v88;
    if (*v145 != 1 || (v118 = *(v140 + 24), *(*(*(v118 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
    {
      v119 = 0;
      v120 = 0;
      v121 = (v140 + 24);
      v122 = *v145;
      while (1)
      {
        v125 = *v121;
        v126 = *(*(*(*v121 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v149 = v119 | (v126 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
        if (v119 & 1 | (v126 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
        {
          v157.n128_u64[0] = v120 | 0x100000000;
          v153.n128_u64[0] = v116;
          v156.n128_u8[0] = v126 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
          v127 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v107, 0, 0, &v153, &v157, &v156);
          v128 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v107);
          v131 = v117[1];
          v130 = v117[2];
          if (v131 < v130)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v157.n128_u64[0] = v116;
          v153.n128_u32[0] = v120;
          v127 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v107, 0, 0, &v157, &v153);
          v128 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v107);
          v131 = v117[1];
          v130 = v117[2];
          if (v131 < v130)
          {
LABEL_126:
            *v131 = v127;
            v131[1] = v128;
            v123 = (v131 + 3);
            v131[2] = v129;
            goto LABEL_127;
          }
        }

        v132 = *v117;
        v133 = 0xAAAAAAAAAAAAAAABLL * ((v131 - *v117) >> 3);
        v134 = v133 + 1;
        if (v133 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_149;
        }

        v135 = 0xAAAAAAAAAAAAAAABLL * ((v130 - v132) >> 3);
        if (2 * v135 > v134)
        {
          v134 = 2 * v135;
        }

        if (v135 >= 0x555555555555555)
        {
          v136 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v136 = v134;
        }

        if (v136)
        {
          if (v136 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_150;
        }

        v137 = (8 * ((v131 - *v117) >> 3));
        *v137 = v127;
        v137[1] = v128;
        v137[2] = v129;
        v123 = 24 * v133 + 24;
        v138 = 24 * v133 - (v131 - v132);
        memcpy(v137 - (v131 - v132), v132, v131 - v132);
        *v117 = v138;
        v117[1] = v123;
        v117[2] = 0;
        if (v132)
        {
          operator delete(v132);
        }

        v107 = v146;
        v116 = v147;
        v122 = *v145;
LABEL_127:
        v117[1] = v123;
        v157.n128_u64[0] = v127;
        v124 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v107, 0, 0, &v157);
        getTreePredicates(v117, v125, v107, a4, v124);
        ++v120;
        v121 += 4;
        v119 = v149;
        if (v122 == v120)
        {
          return;
        }
      }
    }

    v157.n128_u64[0] = 0;
    v153.n128_u64[0] = v147;
    v156.n128_u8[0] = 1;
    v157.n128_u64[0] = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v107, 0, 0, &v153, &v157, &v156);
    v139 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v107, 0, 0, &v157);
    getTreePredicates(v88, v118, v107, a4, v139);
  }
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName(uint64_t **a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  {
    v10 = v6;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName();
    v6 = v10;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v6, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id);
  v8 = *a1;
  mlir::OperationName::OperationName(&v11, a2, a3, a1[1]);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v8, 0, 0, &v11);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast(mlir::detail::StorageUniquerImpl ***this, int a2)
{
  v7 = a2;
  v3 = *this;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(*this, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 24;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

_DWORD *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 4;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 27;
  Slow[2] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v15[0] = *a4;
  v15[1] = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((LODWORD(v15[0]) >> 4) ^ (LODWORD(v15[0]) >> 9)) << 32));
  v14 = v15;
  v13[0] = v15;
  v13[1] = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::AttributePosition::AttributePosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t a6, char *a7)
{
  v18 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  if (*(a6 + 4) == 1)
  {
    LOBYTE(v20) = 1;
    *(&v20 + 1) = *a6;
    v12 = *(&v20 + 1) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * (((8 * v20) | 5) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  else
  {
    v14 = 0xB2B24F688DC4164DLL;
  }

  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v11, a4, v14);
  v20 = v19;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v20, v15, a4, *a7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v20, v16, a4);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(char *a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 1 - v8;
    v32 = &a1[1 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 1 - v8;
  v32 = &a1[1 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 48;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 48;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandGroupPosition::OperandGroupPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  a2[10] += 40;
  v5 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 40;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = v4;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    v14 = v12;
    v5 = Slow;
    v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(Slow, v14);
    v9 = *(a1 + 8);
    v10 = *v9;
    if (!*v9)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *a2 = v6;
  v8 = mlir::pdl_to_pdl_interp::OperandPosition::OperandPosition(v5, v4);
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
LABEL_6:
    v10(*(v9 + 8), v5, v8);
  }

  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v12 = a3;
    v13 = a6;
    v11 = a5;
    v14 = a2;
    v15 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>();
    a2 = v14;
    a4 = v15;
    a3 = v12;
    a6 = v13;
    a5 = v11;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id;
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a4;
  v18 = v8;
  v19[0] = *a6;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>(v21, 0, v21, v22, &v17, &v18, v19);
  v16 = &v17;
  *&v21[0] = &v17;
  *(&v21[0] + 1) = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v4 = *(a2 + 36);
  v5 = *(v2 + 12);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return *(a2 + 40) == *(v2 + 16);
    }

    return 0;
  }

  if (*(a2 + 32) != *(v2 + 2))
  {
    return 0;
  }

  return *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 48;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 48;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 6;
  *Slow = &unk_1F1A059F8;
  *(Slow + 8) = 0;
  v6 = *v2;
  *(Slow + 40) = *(v2 + 2);
  *(Slow + 24) = v6;
  v7 = *v2;
  *Slow = &unk_1F1A059A8;
  *(Slow + 8) = v7;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultGroupPosition::~ResultGroupPosition(mlir::pdl_to_pdl_interp::ResultGroupPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::Position,std::tuple<mlir::pdl_to_pdl_interp::OperationPosition *,std::optional<unsigned int>,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)6>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
  v14 = &v15;
  v13[0] = &v15;
  v13[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 5;
  *Slow = &unk_1F1A05A68;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F1A05A18;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ResultPosition::~ResultPosition(mlir::pdl_to_pdl_interp::ResultPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::OperationPosition *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)5>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(uint64_t **a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = v3;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint();
    v3 = v6;
  }

  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(v3, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id);
  mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(*a1, 0, 0, &v7);
  return SingletonImpl;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 26;
  *(Slow + 8) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, uint64_t a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id)
  {
    v3 = result;
    v27 = *result;
    v4 = *a2;
    v5 = *(a2 + 8);
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v9 >= v10)
    {
      v12 = *v5;
      v13 = 0xAAAAAAAAAAAAAAABLL * (&v9[-*v5] >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      v17 = (8 * (&v9[-*v5] >> 3));
      *v17 = *v4;
      v17[1] = IsNotNull;
      v17[2] = v8;
      v11 = 24 * v13 + 24;
      v18 = v17 - (v9 - v12);
      memcpy(v18, v12, v9 - v12);
      *v5 = v18;
      *(v5 + 8) = v11;
      *(v5 + 16) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v9 = *v4;
      *(v9 + 1) = IsNotNull;
      *(v9 + 2) = v8;
      v11 = (v9 + 24);
    }

    *(v5 + 8) = v11;
    ODSOperandIndexAndLength = mlir::pdl::ApplyNativeConstraintOp::getODSOperandIndexAndLength(&v27, 0);
    if ((*(v27 + 46) & 0x80) != 0)
    {
      v20 = *(v27 + 72);
    }

    else
    {
      v20 = 0;
    }

    result = v3;
    v21 = a2;
    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength)
    {
      v22 = *(v20 + 32 * ODSOperandIndexAndLength + 24);
      if (v22)
      {
        v23 = *(a2 + 16);
        v24 = *(a2 + 24);
        v25 = *(v21 + 8);
        v28 = **v21;
        v26 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v23, 0, 0, &v28);
        getTreePredicates(v25, v22, v23, v24, v26);
        result = v3;
      }
    }

    result[8] = 1;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(_BYTE *result, void *a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id)
  {
    v3 = result;
    v19 = *result;
    v4 = *a2;
    if (*(**a2 + 36))
    {
      v5 = a2[1];
      v6 = a2;
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(a2[2]);
      v9 = *(v5 + 8);
      v10 = *(v5 + 16);
      if (v9 >= v10)
      {
        v12 = *v5;
        v13 = 0xAAAAAAAAAAAAAAABLL * (&v9[-*v5] >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        v17 = (8 * (&v9[-*v5] >> 3));
        *v17 = *v4;
        v17[1] = IsNotNull;
        v17[2] = v8;
        v11 = 24 * v13 + 24;
        v18 = v17 - (v9 - v12);
        memcpy(v18, v12, v9 - v12);
        *v5 = v18;
        *(v5 + 8) = v11;
        *(v5 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v9 = *v4;
        *(v9 + 1) = IsNotNull;
        *(v9 + 2) = v8;
        v11 = (v9 + 24);
      }

      a2 = v6;
      *(v5 + 8) = v11;
    }

    llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(&v19, v3 + 8, a2);
    return v3;
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
  {
    v49 = result;
    v50 = *result;
    Index = mlir::pdl::ResultOp::getIndex(&v50);
    v6 = *a2;
    v5 = *(a2 + 8);
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
    v10 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*v6] >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_48;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_49;
      }

      v17 = (8 * (&v10[-*v6] >> 3));
      *v17 = *v5;
      v17[1] = IsNotNull;
      v17[2] = v8;
      v11 = 24 * v13 + 24;
      v18 = v17 - (v10 - v12);
      memcpy(v18, v12, v10 - v12);
      *v6 = v18;
      *(v6 + 8) = v11;
      *(v6 + 16) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v10 = *v5;
      *(v10 + 1) = IsNotNull;
      *(v10 + 2) = v8;
      v11 = (v10 + 24);
    }

    *(v6 + 8) = v11;
    v19 = **(a2 + 16);
    v52 = **(a2 + 8);
    v51 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v52) + 1;
    v20 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v19, 0, 0, &v52, &v51);
    v21 = *a2;
    v22 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
    v25 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v25 >= v24)
    {
      v27 = *v21;
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v21) >> 3);
      v29 = v28 + 1;
      if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_48;
      }

      v30 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 3);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x555555555555555)
      {
        v31 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_49;
      }

      v32 = (8 * ((v25 - *v21) >> 3));
      *v32 = v20;
      v32[1] = v22;
      v32[2] = v23;
      v26 = 24 * v28 + 24;
      v33 = 24 * v28 - (v25 - v27);
      memcpy(v32 - (v25 - v27), v27, v25 - v27);
      *v21 = v33;
      *(v21 + 8) = v26;
      *(v21 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v25 = v20;
      v25[1] = v22;
      v26 = (v25 + 3);
      v25[2] = v23;
    }

    *(v21 + 8) = v26;
    v34 = *(a2 + 16);
    v52 = v20;
    v51 = Index;
    v35 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v34, 0, 0, &v52, &v51);
    v36 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(*(a2 + 16), **(a2 + 8));
    v40 = *(v36 + 8);
    v39 = *(v36 + 16);
    if (v40 < v39)
    {
      *v40 = v35;
      v40[1] = EqualTo;
      v41 = (v40 + 3);
      v40[2] = v38;
LABEL_46:
      *(v36 + 8) = v41;
      getTreePredicates(*a2, *(*(v50 + 72) + 24), *(a2 + 16), *(a2 + 32), v20);
      result = v49;
      v49[8] = 1;
      return result;
    }

    v42 = *v36;
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v36) >> 3);
    v44 = v43 + 1;
    if (v43 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v42) >> 3);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x555555555555555)
      {
        v46 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v46 = v44;
      }

      if (!v46)
      {
        v47 = (8 * ((v40 - *v36) >> 3));
        *v47 = v35;
        v47[1] = EqualTo;
        v47[2] = v38;
        v41 = 24 * v43 + 24;
        v48 = (24 * v43 - (v40 - v42));
        memcpy(v48, v42, v40 - v42);
        *v36 = v48;
        *(v36 + 8) = v41;
        *(v36 + 16) = 0;
        if (v42)
        {
          operator delete(v42);
        }

        goto LABEL_46;
      }

      if (v46 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_49:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

LABEL_48:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::ResultsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_1 &>(_BYTE *result, uint64_t a2)
{
  if ((result[8] & 1) == 0 && *result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
  {
    v50 = result;
    v51 = *result;
    Index = mlir::pdl::ResultsOp::getIndex(&v51);
    if ((Index & 0x100000000) != 0)
    {
      v6 = *a2;
      v5 = *(a2 + 8);
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
      v10 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (v10 >= v9)
      {
        v12 = *v6;
        v13 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*v6] >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_50;
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_51;
        }

        v17 = (8 * (&v10[-*v6] >> 3));
        *v17 = *v5;
        v17[1] = IsNotNull;
        v17[2] = v8;
        v11 = 24 * v13 + 24;
        v18 = v17 - (v10 - v12);
        memcpy(v18, v12, v10 - v12);
        *v6 = v18;
        *(v6 + 8) = v11;
        *(v6 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = *v5;
        *(v10 + 1) = IsNotNull;
        *(v10 + 2) = v8;
        v11 = (v10 + 24);
      }

      *(v6 + 8) = v11;
    }

    v19 = **(a2 + 16);
    v54 = **(a2 + 8);
    LODWORD(v53) = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v54) + 1;
    v20 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(v19, 0, 0, &v54, &v53);
    v21 = *a2;
    v22 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(*(a2 + 16));
    v25 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v25 >= v24)
    {
      v27 = *v21;
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v21) >> 3);
      v29 = v28 + 1;
      if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_50;
      }

      v30 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 3);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x555555555555555)
      {
        v31 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (v31 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_51;
      }

      v32 = (8 * ((v25 - *v21) >> 3));
      *v32 = v20;
      v32[1] = v22;
      v32[2] = v23;
      v26 = 24 * v28 + 24;
      v33 = 24 * v28 - (v25 - v27);
      memcpy(v32 - (v25 - v27), v27, v25 - v27);
      *v21 = v33;
      *(v21 + 8) = v26;
      *(v21 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v25 = v20;
      v25[1] = v22;
      v26 = (v25 + 3);
      v25[2] = v23;
    }

    *(v21 + 8) = v26;
    v34 = *(a2 + 16);
    v35 = **(a2 + 24);
    v53 = v20;
    v54 = Index & 0xFFFFFFFFFFLL;
    v52 = v35;
    v36 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(*v34, 0, 0, &v53, &v54, &v52);
    v37 = *a2;
    EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(*(a2 + 16), **(a2 + 8));
    v41 = *(v37 + 8);
    v40 = *(v37 + 16);
    if (v41 < v40)
    {
      *v41 = v36;
      v41[1] = EqualTo;
      v42 = (v41 + 3);
      v41[2] = v39;
LABEL_48:
      *(v37 + 8) = v42;
      getTreePredicates(*a2, *(*(v51 + 72) + 24), *(a2 + 16), *(a2 + 32), v20);
      result = v50;
      v50[8] = 1;
      return result;
    }

    v43 = *v37;
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v37) >> 3);
    v45 = v44 + 1;
    if (v44 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v43) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x555555555555555)
      {
        v47 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v47 = v45;
      }

      if (!v47)
      {
        v48 = (8 * ((v41 - *v37) >> 3));
        *v48 = v36;
        v48[1] = EqualTo;
        v48[2] = v39;
        v42 = 24 * v44 + 24;
        v49 = (24 * v44 - (v41 - v43));
        memcpy(v49, v43, v41 - v43);
        *v37 = v49;
        *(v37 + 8) = v42;
        *(v37 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        goto LABEL_48;
      }

      if (v47 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_51:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

LABEL_50:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a5;
  v15 = *a4;
  v16 = v5;
  v6 = __ROR8__(__PAIR64__(v5, HIDWORD(v15)) + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v15 ^ 0xFF51AFD7ED558CCDLL)));
  v14 = &v15;
  v18[0] = &v15;
  v18[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id, (-348639895 * ((v7 >> 47) ^ v7)) ^ HIDWORD(v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 0;
  *Slow = &unk_1F1A056E8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F1A05698;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 32 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 32 * v8);
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v13 = *result + 32 * v20;
        v21 = *v13;
        if (v16 != *v13)
        {
          v22 = 0;
          v23 = 1;
          while (v21 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21 == -8192;
            }

            if (v24)
            {
              v22 = v13;
            }

            v25 = v20 + v23++;
            v20 = v25 & v19;
            v13 = *result + 32 * v20;
            v21 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v13 = v22;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (24 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UsersPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position *&,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UsersPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 10;
  *Slow = &unk_1F1A05AD8;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F1A05A88;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::UsersPosition::~UsersPosition(mlir::pdl_to_pdl_interp::UsersPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,BOOL>,(mlir::pdl_to_pdl_interp::Predicates::Kind)10>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ForEachPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ForEachPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 11;
  *Slow = &unk_1F1A05B48;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  v6 = *v2;
  *Slow = &unk_1F1A05AF8;
  *(Slow + 8) = v6;
  v7 = *(a1 + 8);
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ForEachPosition::~ForEachPosition(mlir::pdl_to_pdl_interp::ForEachPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::Position*,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)11>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 8;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F1A05B68;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::AttributeLiteralPosition::~AttributeLiteralPosition(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getConstraint(mlir::detail::StorageUniquerImpl ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *a1;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v10 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(v9, 0, 0, &v14);
  v11 = *a1;
  {
    v13 = v11;
    mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo();
    v11 = v13;
  }

  mlir::StorageUniquer::getSingletonImpl(v11, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id);
  return v10;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    v10 = a4;
    v11 = a2;
    v9 = a3;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>();
    a4 = v10;
    a2 = v11;
    a3 = v9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id;
  v17[0] = a2;
  v17[1] = a3;
  v6 = a4[1];
  v13 = *a4;
  v14 = v6;
  v15 = a4[2];
  v16 = *(a4 + 6);
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(v18, 0, v18, v19, &v13, &v14, &v15, &v16);
  v12 = &v13;
  *&v18[0] = &v13;
  *(&v18[0] + 1) = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v5, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>(char *a1, unint64_t a2, void *a3, char *a4, llvm::hashing::detail **a5, uint64_t a6, uint64_t a7, char *a8)
{
  v22 = a2;
  v14 = llvm::hash_value(*a5, a5[1]);
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, v14);
  v23 = v22;
  v16 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a6, *a6 + 8 * *(a6 + 8));
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, v16);
  v24 = v23;
  v18 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(*a7, (*a7 + 8 * *(a7 + 8)));
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v17, a4, v18);
  v25 = v24;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v25, v19, a4, *a8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v20, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && (!v3 || !memcmp(*(a2 + 8), *v2, v3)))
  {
    v5 = *(a2 + 32);
    if (v5 == *(v2 + 24) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5))
    {
      v6 = *(a2 + 48);
      if (v6 == *(v2 + 40))
      {
        if (!v6)
        {
          return *(a2 + 56) == *(v2 + 48);
        }

        v7 = *(a2 + 40);
        v8 = *(v2 + 32);
        v9 = 8 * v6;
        while (*v7 == *v8)
        {
          ++v7;
          ++v8;
          v9 -= 8;
          if (!v9)
          {
            return *(a2 + 56) == *(v2 + 48);
          }
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v10 = *(*a1 + 6);
  v9[1] = v4;
  v9[2] = v5;
  v9[0] = v3;
  v6 = mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(a2, v9);
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 1), v6);
  }

  return v6;
}

unint64_t mlir::pdl_to_pdl_interp::ConstraintQuestion::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    v4 = 0;
    v10 = a2[3];
    v11 = *a1;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v3 = *a2;
  a1[10] += v2 + 1;
  v4 = *a1;
  v5 = v2 + 1 + *a1;
  if (*a1)
  {
    v6 = v5 > a1[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a1 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_23:
    v7 = v4;
    v8 = v3;
    goto LABEL_24;
  }

  v23 = a1;
  v24 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v2 + 1, v2 + 1, 0);
  a2 = v24;
  v4 = Slow;
  a1 = v23;
  if (v2 < 8)
  {
    goto LABEL_23;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) < 0x20)
  {
    goto LABEL_24;
  }

  if (v2 < 0x20)
  {
    v9 = 0;
LABEL_17:
    v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
    v19 = (v3 + v9);
    v20 = (v4 + v9);
    v21 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v22 = *v19++;
      *v20++ = v22;
      v21 += 8;
    }

    while (v21);
    if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v26 = *v8++;
      *v7++ = v26;
    }

    while (v8 != (v3 + v2));
    goto LABEL_25;
  }

  v9 = v2 & 0xFFFFFFFFFFFFFFE0;
  v15 = (v3 + 16);
  v16 = (v4 + 16);
  v17 = v2 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v18 = *v15;
    *(v16 - 1) = *(v15 - 1);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 32;
  }

  while (v17);
  if (v2 != v9)
  {
    if ((v2 & 0x18) == 0)
    {
      v8 = (v3 + v9);
      v7 = (v4 + v9);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_25:
  *(v4 + v2) = 0;
  v10 = a2[3];
  v11 = *a1;
  if (v10)
  {
LABEL_26:
    v27 = a2[2];
    v28 = 8 * v10;
    a1[10] += 8 * v10;
    v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = v12 + 8 * v10;
    if (v11)
    {
      v30 = v29 > a1[1];
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v40 = a1;
      v41 = a2;
      v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v10, 8 * v10, 3);
      a2 = v41;
      v12 = v42;
      a1 = v40;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a1 = v29;
      v31 = v28 - 8;
      if ((v28 - 8) >= 0x18)
      {
LABEL_31:
        v32 = v12;
        v33 = v27;
        if (v12 - v27 >= 0x20)
        {
          v34 = (v31 >> 3) + 1;
          v35 = 8 * (v34 & 0x3FFFFFFFFFFFFFFCLL);
          v32 = (v12 + v35);
          v33 = (v27 + v35);
          v36 = (v27 + 16);
          v37 = (v12 + 16);
          v38 = v34 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v39 = *v36;
            *(v37 - 1) = *(v36 - 1);
            *v37 = v39;
            v36 += 2;
            v37 += 2;
            v38 -= 4;
          }

          while (v38);
          if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v11 = *a1;
            v13 = a2[5];
            if (v13)
            {
              goto LABEL_40;
            }

LABEL_12:
            v14 = 0;
            goto LABEL_52;
          }
        }

        do
        {
LABEL_38:
          v43 = *v33++;
          *v32++ = v43;
        }

        while (v33 != (v27 + 8 * v10));
        goto LABEL_39;
      }
    }

    v32 = v12;
    v33 = v27;
    goto LABEL_38;
  }

LABEL_11:
  v12 = 0;
  v13 = a2[5];
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_40:
  v44 = a2[4];
  v45 = 8 * v13;
  a1[10] += 8 * v13;
  if (v11 && (v14 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8, v14 + v45 <= a1[1]))
  {
    *a1 = v14 + v45;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
LABEL_43:
      v47 = v14;
      v48 = v44;
      if (v14 - v44 >= 0x20)
      {
        v49 = (v46 >> 3) + 1;
        v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
        v47 = (v14 + v50);
        v48 = (v44 + v50);
        v51 = (v44 + 16);
        v52 = (v14 + 16);
        v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v54 = *v51;
          *(v52 - 1) = *(v51 - 1);
          *v52 = v54;
          v51 += 2;
          v52 += 2;
          v53 -= 4;
        }

        while (v53);
        if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }
  }

  else
  {
    v55 = a1;
    v56 = a2;
    v57 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v13, 8 * v13, 3);
    a2 = v56;
    v14 = v57;
    a1 = v55;
    v46 = v45 - 8;
    if ((v45 - 8) >= 0x18)
    {
      goto LABEL_43;
    }
  }

  v47 = v14;
  v48 = v44;
  do
  {
LABEL_50:
    v58 = *v48++;
    *v47++ = v58;
  }

  while (v48 != (v44 + 8 * v13));
LABEL_51:
  v11 = *a1;
LABEL_52:
  v59 = *(a2 + 48);
  a1[10] += 64;
  v60 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = v60 + 64;
  if (v11)
  {
    v62 = v61 > a1[1];
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v60 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 64, 64, 3);
  }

  else
  {
    *a1 = v61;
  }

  *v60 = 21;
  *(v60 + 8) = v4;
  *(v60 + 16) = v2;
  *(v60 + 24) = v12;
  *(v60 + 32) = v10;
  *(v60 + 40) = v14;
  *(v60 + 48) = v13;
  *(v60 + 56) = v59;
  return v60;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintPosition,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintPosition *)>,mlir::TypeID,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 40;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 16) = 4;
  *Slow = &unk_1F1A05C08;
  *(Slow + 8) = 0;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F1A05BB8;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::ConstraintPosition::~ConstraintPosition(mlir::pdl_to_pdl_interp::ConstraintPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::pdl_to_pdl_interp::PredicateBase<mlir::pdl_to_pdl_interp::ConstraintPosition,mlir::pdl_to_pdl_interp::Position,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>,(mlir::pdl_to_pdl_interp::Predicates::Kind)4>::~PredicateBase(ZinIrHalH13g *a1)
{
  ZinIrHalH13g::~ZinIrHalH13g(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id, (v11 >> 4) ^ (v11 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 0;
  *(Slow + 16) = 9;
  *(Slow + 24) = *v2;
  *Slow = &unk_1F1A05C28;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

void mlir::pdl_to_pdl_interp::TypeLiteralPosition::~TypeLiteralPosition(mlir::pdl_to_pdl_interp::TypeLiteralPosition *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t getOrCreateChild(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
    v6 = *(a2 + 16 * v5);
    if (v6 == a4)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v5 + v7++;
      v5 = v8 & (a3 - 1);
      v6 = *(a2 + 16 * v5);
      if (v6 == a4)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = a3;
LABEL_8:
  v9 = *(a2 + 16 * v5 + 8);
  v17 = v9;
  v18 = 0;
  v20 = v9;
  v21 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>((a1 + 48), &v20, &v21, &v22);
  if (v23 == 1)
  {
    v10 = *(a1 + 80);
    *(v22 + 8) = v10;
    v19 = &v18;
    v20 = &v17;
    if (v10 >= *(a1 + 84))
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>&&>>((a1 + 72), &std::piecewise_construct, &v20, &v19);
      v14 = *(a1 + 72) + 16 * *(a1 + 80) - 16;
      v15 = v18;
      v18 = 0;
      if (!v15)
      {
        return v14 + 8;
      }
    }

    else
    {
      v11 = *(a1 + 72);
      v12 = (v11 + 16 * v10);
      *v12 = v9;
      v18 = 0;
      v12[1] = 0;
      v13 = v10 + 1;
      *(a1 + 80) = v13;
      v14 = v11 + 16 * v13 - 16;
      v15 = v18;
      v18 = 0;
      if (!v15)
      {
        return v14 + 8;
      }
    }

    (*(*v15 + 8))(v15);
    return v14 + 8;
  }

  return *(a1 + 72) + 16 * *(v22 + 8) + 8;
}

char *llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>&&>>(char **a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v34 = 0;
  v7 = (a1 + 2);
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 16, &v34);
  v9 = *(a1 + 2);
  v10 = 2 * v9;
  v11 = &v8[16 * v9];
  v12 = **a3;
  v13 = **a4;
  **a4 = 0;
  *v11 = v12;
  *(v11 + 1) = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || (v14 + 1 < &v8[v10 * 8] ? (v24 = v8 + 8 >= &v14[v10]) : (v24 = 1), v24 ? (v25 = 0) : (v25 = 1), v14 < &v8[v10 * 8 - 8] ? (v26 = v8 >= &v14[v10 - 1]) : (v26 = 1), !v26 || (v25 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      v17[1] = 0;
      *v16 = v18;
      v16 += 16;
      v17 += 2;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v27 = v15 + 1;
  v28 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = &v8[16 * v28];
  v17 = &v14[2 * v28];
  v29 = v28;
  v30 = v8;
  v31 = *a1;
  do
  {
    v32 = *v31;
    v33 = *(v31 + 1);
    v31[1] = 0;
    v31[3] = 0;
    *v30 = v32;
    *(v30 + 1) = v33;
    v30 += 32;
    v31 += 4;
    v29 -= 2;
  }

  while (v29);
  if (v27 != v28)
  {
    goto LABEL_4;
  }

LABEL_5:
  v19 = v14 - 1;
  do
  {
    v20 = v19[v10];
    v19[v10] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v10 -= 2;
  }

  while (v10 * 8);
  v14 = *a1;
LABEL_10:
  v21 = v34;
  if (v14 != v7)
  {
    free(v14);
  }

  *a1 = v8;
  v22 = *(a1 + 2) + 1;
  *(a1 + 2) = v22;
  *(a1 + 3) = v21;
  return &v8[16 * v22 - 16];
}

void mlir::pdl_to_pdl_interp::ExitNode::~ExitNode(mlir::pdl_to_pdl_interp::ExitNode *this)
{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_1F1A05880;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void llvm::SmallVectorTemplateBase<mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::PatternPredicates,false>::growAndEmplaceBack<mlir::pdl::PatternOp &,mlir::Value&,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>>(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v24 = 0;
  v8 = (a1 + 16);
  v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v24);
  v10 = *a2;
  v11 = &v9[40 * *(a1 + 8)];
  v12 = *a3;
  v13 = *(a4 + 2);
  v14 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 1) = v14;
  *(v11 + 4) = v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = &v15[40 * v16];
    v18 = v9;
    do
    {
      *v18 = *v15;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      *(v18 + 2) = 0;
      *(v18 + 1) = *(v15 + 1);
      *(v18 + 4) = *(v15 + 4);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = 0;
      v18 += 40;
      v15 += 40;
    }

    while (v15 != v17);
    v15 = *a1;
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = &v15[40 * v19 - 24];
      v21 = -40 * v19;
      do
      {
        v22 = *v20;
        if (*v20)
        {
          *(v20 + 8) = v22;
          operator delete(v22);
        }

        v20 -= 40;
        v21 += 40;
      }

      while (v21);
      v15 = *a1;
    }
  }

  v23 = v24;
  if (v15 != v8)
  {
    free(v15);
  }

  *a1 = v9;
  ++*(a1 + 8);
  *(a1 + 12) = v23;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>,anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>::LookupBucketFor<anonymous namespace::OrderedPredicate>(uint64_t result, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = a3[1];
    v5 = __ROR8__(v4 + 16, 16);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ *a3 ^ 0xFF51AFD7ED558CCDLL)));
    v7 = a2 - 1;
    v8 = (a2 - 1) & ((-348639895 * ((v6 >> 47) ^ v6)) ^ v4);
    v9 = (result + 56 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (*a3 != *v9 || v4 != v11)
    {
      v13 = 0;
      v14 = 1;
      while (v10 != -4096 || v11 != -4096)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v11 == -8192;
        }

        if (v15 && v10 == -8192)
        {
          v13 = v9;
        }

        v17 = v8 + v14++;
        v8 = v17 & v7;
        v9 = (result + 56 * (v17 & v7));
        v10 = *v9;
        v11 = v9[1];
        if (*a3 == *v9 && v4 == v11)
        {
          goto LABEL_7;
        }
      }

      if (v13)
      {
        v9 = v13;
      }
    }

LABEL_7:
    *a4 = v9;
    llvm::deallocate_buffer(0, 0);
  }

  *a4 = 0;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,false>(uint64_t result, uint64_t **a2, uint64_t a3, char a4)
{
  v426 = result;
LABEL_2:
  v5 = a2;
  v414 = a2 - 1;
  j = v426;
  while (1)
  {
    v7 = v5 - j;
    v8 = v7 - 2;
    v426 = j;
    if (v7 > 2)
    {
      v9 = j;
      switch(v7)
      {
        case 3:

        case 4:

        case 5:
      }
    }

    else
    {
      if (v7 < 2)
      {
        return result;
      }

      v5 = a2;
      v9 = j;
      if (v7 == 2)
      {
        v199 = *(a2 - 1);
        v200 = *j;
        v201 = **j;
        OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v201);
        v203 = *(v201 + 16);
        v204 = *v200[1];
        v206 = *(v199 + 16);
        v205 = *(v199 + 20);
        v207 = *(v200 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v199);
        v208 = *(v200 + 4);
        if (v208 < v206 || v206 >= v208 && ((v356 = *(v200 + 5), v356 < v205) || v205 >= v356 && (result < OperationDepth || OperationDepth >= result && ((v357 = *(*v199 + 16), v357 < v203) || v203 >= v357 && ((v358 = **(v199 + 8), v358 < v204) || v204 >= v358 && *(v199 + 24) < v207)))))
        {
          v209 = *v426;
          *v426 = *(a2 - 1);
          *(a2 - 1) = v209;
        }

        return result;
      }
    }

    if (v7 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 != v5)
      {
        v246 = v8 >> 1;
        v247 = v8 >> 1;
        v423 = v7;
        do
        {
          v249 = v247;
          if (v246 >= v247)
          {
            v416 = (2 * v247) | 1;
            v248 = &v426[v416];
            if (2 * v247 + 2 < v7)
            {
              v250 = *v248;
              v251 = v248[1];
              v252 = *v251;
              v253 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v251);
              v408 = *(v252 + 16);
              v255 = *(v250 + 4);
              v254 = *(v250 + 5);
              v396 = *(v251 + 6);
              v402 = *v251[1];
              v256 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v250);
              v257 = *(v251 + 4);
              if (v257 < v255 || v255 >= v257 && ((v299 = *(v251 + 5), v299 < v254) || v254 >= v299 && (v256 < v253 || v253 >= v256 && ((v300 = *(*v250 + 16), v300 < v408) || v408 >= v300 && ((v301 = *v250[1], v301 < v402) || (v402 >= v301 ? (v302 = *(v250 + 6) >= v396) : (v302 = 1), !v302))))))
              {
                ++v248;
                v416 = 2 * v249 + 2;
              }
            }

            v258 = *v248;
            v259 = v426[v249];
            v260 = *v259;
            v261 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v259);
            v262 = *(v260 + 16);
            v409 = *v259[1];
            v263 = *(v258 + 4);
            v264 = *(v258 + 5);
            v265 = *(v259 + 6);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v258);
            v266 = *(v259 + 4);
            v7 = v423;
            if (v266 >= v263)
            {
              if (v263 < v266 || (v295 = *(v259 + 5), v295 >= v264) && (v264 < v295 || result >= v261 && (v261 < result || (v296 = *(*v258 + 16), v296 >= v262) && (v262 < v296 || (v297 = *v258[1], v297 >= v409) && (v409 >= v297 ? (v298 = *(v258 + 6) >= v265) : (v298 = 1), v298)))))
              {
                v410 = v426[v249];
                v426[v249] = *v248;
                v267 = v416;
                while (v246 >= v267)
                {
                  v417 = v248;
                  v268 = 2 * v267;
                  v267 = (2 * v267) | 1;
                  v248 = &v426[v267];
                  v269 = v268 + 2;
                  if (v268 + 2 < v7)
                  {
                    v270 = *v248;
                    v271 = v248[1];
                    v272 = *v271;
                    v273 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v271);
                    v397 = *(v272 + 16);
                    v403 = v273;
                    v392 = *v271[1];
                    v275 = *(v270 + 4);
                    v274 = *(v270 + 5);
                    v391 = *(v271 + 6);
                    v276 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v270);
                    v277 = *(v271 + 4);
                    if (v277 < v275 || v275 >= v277 && ((v291 = *(v271 + 5), v291 < v274) || v274 >= v291 && (v276 < v403 || v403 >= v276 && ((v292 = *(*v270 + 16), v292 < v397) || v397 >= v292 && ((v293 = *v270[1], v293 < v392) || (v392 >= v293 ? (v294 = *(v270 + 6) >= v391) : (v294 = 1), !v294))))))
                    {
                      ++v248;
                      v267 = v269;
                    }
                  }

                  v278 = v249;
                  v279 = v246;
                  v280 = *v248;
                  v281 = *v410;
                  v282 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v410);
                  v283 = *(v281 + 16);
                  v284 = *(v280 + 4);
                  v285 = *(v280 + 5);
                  v398 = *(v410 + 6);
                  v404 = *v410[1];
                  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v280);
                  v286 = *(v410 + 4);
                  if (v286 < v284)
                  {
                    v248 = v417;
                    v7 = v423;
                    v246 = v279;
                    v249 = v278;
                    break;
                  }

                  v47 = v284 >= v286;
                  v7 = v423;
                  v246 = v279;
                  v249 = v278;
                  if (v47)
                  {
                    v287 = *(v410 + 5);
                    if (v287 < v285 || v285 >= v287 && (result < v282 || v282 >= result && ((v288 = *(*v280 + 16), v288 < v283) || v283 >= v288 && ((v289 = *v280[1], v289 < v404) || (v404 >= v289 ? (v290 = *(v280 + 6) >= v398) : (v290 = 1), !v290)))))
                    {
                      v248 = v417;
                      break;
                    }
                  }

                  *v417 = *v248;
                }

                *v248 = v410;
              }
            }
          }

          v247 = v249 - 1;
        }

        while (v249);
        do
        {
          v304 = 0;
          v393 = *v426;
          v305 = (v7 - 2) >> 1;
          v306 = v426;
          do
          {
            v307 = v306;
            v308 = &v306[v304];
            v306 = v308 + 1;
            v309 = 2 * v304;
            v304 = (2 * v304) | 1;
            v310 = v309 + 2;
            if (v309 + 2 < v7)
            {
              v313 = v308[2];
              v312 = v308 + 2;
              v311 = v313;
              v314 = *(v312 - 1);
              v315 = *v313;
              v316 = v7;
              v317 = v306;
              v418 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v313);
              v411 = *(v315 + 16);
              v318 = *(v314 + 16);
              v424 = *(v314 + 20);
              v399 = *(v313 + 6);
              v405 = *v313[1];
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v314);
              v7 = v316;
              v319 = *(v313 + 4);
              if (v319 < v318 || (v306 = v317, v318 >= v319) && ((v320 = *(v311 + 5), v320 < v424) || v424 >= v320 && (result < v418 || v418 >= result && ((v321 = *(*v314 + 16), v321 < v411) || v411 >= v321 && ((v322 = **(v314 + 8), v322 < v405) || (v405 >= v322 ? (v323 = *(v314 + 24) >= v399) : (v323 = 1), !v323))))))
              {
                v306 = v312;
                v304 = v310;
              }
            }

            *v307 = *v306;
          }

          while (v304 <= v305);
          v324 = a2 - 1;
          v211 = v306 == --a2;
          if (v211)
          {
            *v306 = v393;
          }

          else
          {
            *v306 = *v324;
            *v324 = v393;
            v325 = (v306 - v426 + 8) >> 3;
            v326 = v325 - 2;
            if (v325 >= 2)
            {
              v327 = v326 >> 1;
              v328 = &v426[v326 >> 1];
              v329 = *v328;
              v330 = *v306;
              v331 = **v306;
              v425 = v7;
              v332 = v306;
              v333 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v331);
              v334 = *(v331 + 16);
              v419 = *v330[1];
              v336 = *(v329 + 4);
              v335 = *(v329 + 5);
              v412 = *(v330 + 6);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v329);
              v7 = v425;
              v337 = *(v330 + 4);
              if (v337 < v336 || v336 >= v337 && ((v352 = *(v330 + 5), v352 < v335) || v335 >= v352 && (result < v333 || v333 >= result && ((v353 = *(*v329 + 16), v353 < v334) || v334 >= v353 && ((v354 = *v329[1], v354 < v419) || (v419 >= v354 ? (v355 = *(v329 + 6) >= v412) : (v355 = 1), !v355))))))
              {
                v338 = *v332;
                *v332 = *v328;
                if (v326 >= 2)
                {
                  while (1)
                  {
                    v340 = v327 - 1;
                    v327 = (v327 - 1) >> 1;
                    v339 = &v426[v327];
                    v341 = *v339;
                    v342 = *v338;
                    v343 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v338);
                    v344 = *(v342 + 16);
                    v420 = *v338[1];
                    v345 = *(v341 + 4);
                    v346 = *(v341 + 5);
                    v413 = *(v338 + 6);
                    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v341);
                    v347 = *(v338 + 4);
                    if (v347 >= v345)
                    {
                      if (v345 < v347)
                      {
                        break;
                      }

                      v348 = *(v338 + 5);
                      if (v348 >= v346)
                      {
                        if (v346 < v348)
                        {
                          break;
                        }

                        if (result >= v343)
                        {
                          if (v343 < result)
                          {
                            break;
                          }

                          v349 = *(*v341 + 16);
                          if (v349 >= v344)
                          {
                            if (v344 < v349)
                            {
                              break;
                            }

                            v350 = *v341[1];
                            if (v350 >= v420 && (v420 < v350 || *(v341 + 6) >= v413))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    *v328 = *v339;
                    v328 = &v426[v327];
                    if (v340 <= 1)
                    {
                      goto LABEL_380;
                    }
                  }
                }

                v339 = v328;
LABEL_380:
                *v339 = v338;
                v7 = v425;
              }
            }
          }
        }

        while (v7-- > 2);
      }

      return result;
    }

    v10 = v7 >> 1;
    v11 = &v9[v7 >> 1];
    if (v7 < 0x81)
    {
      v406 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      v32 = 0;
      v33 = *v9;
      while (1)
      {
        v34 = v9[v32 + 1];
        v35 = *v33;
        v36 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
        v37 = *(v35 + 16);
        v38 = *v33[1];
        v40 = *(v34 + 4);
        v39 = *(v34 + 5);
        v41 = *(v33 + 6);
        v42 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v34);
        v43 = *(v33 + 4);
        if (v43 >= v40)
        {
          if (v40 < v43)
          {
            break;
          }

          v44 = *(v33 + 5);
          if (v44 >= v39)
          {
            if (v39 < v44)
            {
              break;
            }

            if (v42 >= v36)
            {
              if (v36 < v42)
              {
                break;
              }

              v45 = *(*v34 + 16);
              if (v45 >= v37)
              {
                if (v37 < v45)
                {
                  break;
                }

                v46 = *v34[1];
                if (v46 >= v38)
                {
                  v47 = v38 < v46 || *(v34 + 6) >= v41;
                  if (v47)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        ++v32;
      }

      v400 = &v9[v32];
      v421 = &v9[v32 + 1];
      v48 = a2 - 1;
      if (v32 * 8)
      {
        while (1)
        {
          v51 = v48;
          v68 = *v48;
          v69 = *v33;
          v70 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v71 = *(v69 + 16);
          v72 = *v33[1];
          v73 = *(v68 + 4);
          v74 = *(v68 + 5);
          v75 = *(v33 + 6);
          v76 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v68);
          v77 = *(v33 + 4);
          if (v77 < v73)
          {
            break;
          }

          v9 = v426;
          if (v73 >= v77)
          {
            v78 = *(v33 + 5);
            if (v78 < v74 || v74 >= v78 && (v76 < v70 || v70 >= v76 && ((v79 = *(*v68 + 16), v79 < v71) || v71 >= v79 && ((v80 = *v68[1], v80 < v72) || (v72 >= v80 ? (v81 = *(v68 + 6) >= v75) : (v81 = 1), !v81)))))
            {
LABEL_81:
              v5 = a2;
              v49 = v51;
              v67 = v400;
              if (v421 >= v51)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          v48 = v51 - 1;
        }
      }

      else
      {
        v5 = a2;
        v49 = a2;
        if (v421 >= a2)
        {
          v67 = v400;
LABEL_119:
          if (v67 == v9)
          {
            goto LABEL_121;
          }

LABEL_120:
          *v9 = *v67;
          goto LABEL_121;
        }

        for (i = a2 - 1; ; i = v49 - 1)
        {
          v51 = i;
          v52 = *i;
          v53 = *v33;
          v54 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v55 = *(v53 + 16);
          v56 = *v33[1];
          v57 = *(v52 + 4);
          v58 = *(v52 + 5);
          v59 = *(v33 + 6);
          v60 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v52);
          v61 = *(v33 + 4);
          if (v61 < v57)
          {
            break;
          }

          v9 = v426;
          if (v57 < v61)
          {
            goto LABEL_54;
          }

          v62 = *(v33 + 5);
          if (v62 < v58)
          {
            goto LABEL_81;
          }

          if (v58 < v62)
          {
            goto LABEL_54;
          }

          if (v60 < v54)
          {
            goto LABEL_81;
          }

          if (v54 < v60)
          {
            goto LABEL_54;
          }

          v63 = *(*v52 + 16);
          if (v63 < v55)
          {
            goto LABEL_81;
          }

          if (v55 >= v63)
          {
            v64 = *v52[1];
            if (v64 < v56)
            {
              goto LABEL_81;
            }

            v66 = v56 < v64 || *(v52 + 6) >= v59;
            v49 = v51;
            if (v421 >= v51 || !v66)
            {
LABEL_65:
              v5 = a2;
              v67 = v400;
              if (v421 >= v49)
              {
                goto LABEL_119;
              }

              goto LABEL_84;
            }
          }

          else
          {
LABEL_54:
            v49 = v51;
            if (v421 >= v51)
            {
              goto LABEL_65;
            }
          }
        }
      }

      v5 = a2;
      v9 = v426;
      v49 = v51;
      v67 = v400;
      if (v421 >= v51)
      {
        goto LABEL_119;
      }

LABEL_84:
      v82 = v421;
      v401 = v49;
      v83 = v49;
      do
      {
        v84 = *v82;
        *v82++ = *v83;
        *v83 = v84;
        while (1)
        {
          v85 = *v82;
          v86 = *v33;
          v87 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v88 = *(v86 + 16);
          v89 = *v33[1];
          v90 = *(v85 + 4);
          v91 = *(v85 + 5);
          v92 = *(v33 + 6);
          v93 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v85);
          v94 = *(v33 + 4);
          if (v94 >= v90)
          {
            if (v90 < v94)
            {
              break;
            }

            v95 = *(v33 + 5);
            if (v95 >= v91)
            {
              if (v91 < v95)
              {
                break;
              }

              if (v93 >= v87)
              {
                if (v87 < v93)
                {
                  break;
                }

                v96 = *(*v85 + 16);
                if (v96 >= v88)
                {
                  if (v88 < v96)
                  {
                    break;
                  }

                  v97 = *v85[1];
                  if (v97 >= v89 && (v89 < v97 || *(v85 + 6) >= v92))
                  {
                    break;
                  }
                }
              }
            }
          }

          ++v82;
        }

        while (1)
        {
          v100 = *--v83;
          v99 = v100;
          v101 = *v33;
          v102 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
          v103 = *(v101 + 16);
          v104 = *v33[1];
          v105 = *(v100 + 16);
          v106 = *(v100 + 20);
          v107 = *(v33 + 6);
          v108 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v100);
          v109 = *(v33 + 4);
          if (v109 < v105)
          {
            break;
          }

          if (v105 >= v109)
          {
            v110 = *(v33 + 5);
            if (v110 < v106)
            {
              break;
            }

            if (v106 >= v110)
            {
              if (v108 < v102)
              {
                break;
              }

              if (v102 >= v108)
              {
                v111 = *(*v99 + 16);
                if (v111 < v103)
                {
                  break;
                }

                if (v103 >= v111)
                {
                  v112 = **(v99 + 8);
                  if (v112 < v104)
                  {
                    break;
                  }

                  if (v104 >= v112 && *(v99 + 24) < v107)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (v82 < v83);
      v67 = v82 - 1;
      v5 = a2;
      v9 = v426;
      v49 = v401;
      if (v67 != v426)
      {
        goto LABEL_120;
      }

LABEL_121:
      *v67 = v33;
      a3 = v406;
      if (v421 < v49)
      {
        goto LABEL_124;
      }

      j = v67 + 1;
      if (result)
      {
        a2 = v67;
        if (v114)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v114)
      {
LABEL_124:
        a4 = 0;
        j = v67 + 1;
      }
    }

    else
    {
      v12 = v9 + 1;
      v13 = v10;
      v14 = &v9[v13];
      v15 = &v9[v13 - 1];
      v16 = v15;
      v9 = v426;
      v17 = *v426;
      *v426 = *v14;
      *v14 = v17;
      v406 = a3 - 1;
      if (a4)
      {
        goto LABEL_27;
      }

LABEL_16:
      v18 = *(v9 - 1);
      v19 = *v9;
      v20 = **v9;
      v21 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v20);
      v22 = *(v20 + 16);
      v23 = *v19[1];
      v25 = *(v18 + 16);
      v24 = *(v18 + 20);
      v26 = *(v19 + 6);
      v27 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v18);
      v28 = *(v19 + 4);
      if (v28 < v25)
      {
        goto LABEL_27;
      }

      if (v25 >= v28)
      {
        v29 = *(v19 + 5);
        if (v29 < v24)
        {
          goto LABEL_27;
        }

        if (v24 >= v29)
        {
          if (v27 < v21)
          {
            goto LABEL_27;
          }

          if (v21 >= v27)
          {
            v30 = *(*v18 + 16);
            if (v30 < v22)
            {
              goto LABEL_27;
            }

            if (v22 >= v30)
            {
              v31 = **(v18 + 8);
              if (v31 < v23 || v23 >= v31 && *(v18 + 24) < v26)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }

      v115 = *v9;
      v116 = *v414;
      v117 = **v414;
      v118 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v117);
      v119 = *(v117 + 16);
      v120 = *v116[1];
      v122 = *(v115 + 4);
      v121 = *(v115 + 5);
      v123 = *(v116 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
      v124 = *(v116 + 4);
      if (v124 < v122 || v122 >= v124 && ((v196 = *(v116 + 5), v196 < v121) || v121 >= v196 && (result < v118 || v118 >= result && ((v197 = *(*v115 + 16), v197 < v119) || v119 >= v197 && ((v198 = *v115[1], v198 < v120) || v120 >= v198 && *(v115 + 6) < v123)))))
      {
        for (j = v426 + 1; ; ++j)
        {
          v125 = *j;
          v126 = **j;
          v127 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v126);
          v128 = *(v126 + 16);
          v129 = *v125[1];
          v131 = *(v115 + 4);
          v130 = *(v115 + 5);
          v132 = *(v125 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v133 = *(v125 + 4);
          if (v133 < v131)
          {
            break;
          }

          if (v131 >= v133)
          {
            v134 = *(v125 + 5);
            if (v134 < v130)
            {
              break;
            }

            if (v130 >= v134)
            {
              if (result < v127)
              {
                break;
              }

              if (v127 >= result)
              {
                v135 = *(*v115 + 16);
                if (v135 < v128)
                {
                  break;
                }

                if (v128 >= v135)
                {
                  v136 = *v115[1];
                  if (v136 < v129)
                  {
                    break;
                  }

                  if (v129 >= v136 && *(v115 + 6) < v132)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_141:
        v138 = a2;
      }

      else
      {
        for (j = v426 + 1; ; ++j)
        {
          v138 = a2;
          if (j >= a2)
          {
            break;
          }

          v183 = *j;
          v184 = **j;
          v185 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v184);
          v186 = *(v184 + 16);
          v187 = *v183[1];
          v189 = *(v115 + 4);
          v188 = *(v115 + 5);
          v190 = *(v183 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v191 = *(v183 + 4);
          if (v191 < v189)
          {
            goto LABEL_141;
          }

          if (v189 >= v191)
          {
            v192 = *(v183 + 5);
            if (v192 < v188)
            {
              goto LABEL_141;
            }

            if (v188 >= v192)
            {
              if (result < v185)
              {
                goto LABEL_141;
              }

              if (v185 >= result)
              {
                v193 = *(*v115 + 16);
                if (v193 < v186)
                {
                  goto LABEL_141;
                }

                if (v186 >= v193)
                {
                  v194 = *v115[1];
                  if (v194 < v187)
                  {
                    goto LABEL_141;
                  }

                  if (v187 >= v194 && *(v115 + 6) < v190)
                  {
                    goto LABEL_141;
                  }
                }
              }
            }
          }
        }
      }

      k = v138;
      if (j < v138)
      {
        for (k = a2 - 1; ; --k)
        {
          v140 = *k;
          v141 = **k;
          v142 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v141);
          v143 = *(v141 + 16);
          v144 = *v140[1];
          v146 = *(v115 + 4);
          v145 = *(v115 + 5);
          v147 = *(v140 + 6);
          result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v148 = *(v140 + 4);
          if (v148 >= v146)
          {
            if (v146 < v148)
            {
              break;
            }

            v149 = *(v140 + 5);
            if (v149 >= v145)
            {
              if (v145 < v149)
              {
                break;
              }

              if (result >= v142)
              {
                if (v142 < result)
                {
                  break;
                }

                v150 = *(*v115 + 16);
                if (v150 >= v143)
                {
                  if (v143 < v150)
                  {
                    break;
                  }

                  v151 = *v115[1];
                  if (v151 >= v144 && (v144 < v151 || *(v115 + 6) >= v147))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      while (j < k)
      {
        v153 = *j;
        *j++ = *k;
        *k = v153;
        while (1)
        {
          v154 = *j;
          v155 = **j;
          v156 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v155);
          v157 = *(v155 + 16);
          v158 = *v154[1];
          v160 = *(v115 + 4);
          v159 = *(v115 + 5);
          v161 = *(v154 + 6);
          v162 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
          v163 = *(v154 + 4);
          if (v163 < v160)
          {
            break;
          }

          if (v160 >= v163)
          {
            v164 = *(v154 + 5);
            if (v164 < v159)
            {
              break;
            }

            if (v159 >= v164)
            {
              if (v162 < v156)
              {
                break;
              }

              if (v156 >= v162)
              {
                v165 = *(*v115 + 16);
                if (v165 < v157)
                {
                  break;
                }

                if (v157 >= v165)
                {
                  v166 = *v115[1];
                  if (v166 < v158)
                  {
                    break;
                  }

                  if (v158 >= v166 && *(v115 + 6) < v161)
                  {
                    break;
                  }
                }
              }
            }
          }

          ++j;
        }

        while (1)
        {
          do
          {
            v169 = *--k;
            v168 = v169;
            v170 = *v169;
            v171 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v169);
            v172 = *(v170 + 16);
            v173 = **(v169 + 8);
            v175 = *(v115 + 4);
            v174 = *(v115 + 5);
            v176 = *(v169 + 24);
            result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v115);
            v177 = *(v169 + 16);
          }

          while (v177 < v175);
          if (v175 < v177)
          {
            break;
          }

          v178 = *(v168 + 20);
          if (v178 >= v174)
          {
            if (v174 < v178)
            {
              break;
            }

            if (result >= v171)
            {
              if (v171 < result)
              {
                break;
              }

              v179 = *(*v115 + 16);
              if (v179 >= v172)
              {
                if (v172 < v179)
                {
                  break;
                }

                v180 = *v115[1];
                if (v180 >= v173 && (v173 < v180 || *(v115 + 6) >= v176))
                {
                  break;
                }
              }
            }
          }
        }
      }

      v182 = j - 1;
      if (j - 1 != v426)
      {
        *v426 = *v182;
      }

      a4 = 0;
      *v182 = v115;
      v5 = a2;
      a3 = v406;
    }
  }

  v210 = v9 + 1;
  v211 = v9 == v5 || v210 == v5;
  v212 = v211;
  if ((a4 & 1) == 0)
  {
    if ((v212 & 1) == 0)
    {
      do
      {
        v360 = v426;
        v359 = v210;
        v362 = *v426;
        v361 = v426[1];
        v363 = **v426;
        v364 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v363);
        v365 = *(v363 + 16);
        v366 = *v362[1];
        v368 = *(v361 + 4);
        v367 = *(v361 + 5);
        v369 = *(v362 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v361);
        v370 = *(v362 + 4);
        v426 = v359;
        if (v370 < v368 || v368 >= v370 && ((v387 = *(v362 + 5), v387 < v367) || v367 >= v387 && (result < v364 || v364 >= result && ((v388 = *(*v361 + 16), v388 < v365) || v365 >= v388 && ((v389 = *v361[1], v389 < v366) || (v366 >= v389 ? (v390 = *(v361 + 6) >= v369) : (v390 = 1), !v390))))))
        {
          v371 = *v359;
          while (1)
          {
            do
            {
              v372 = v360;
              v360[1] = *v360;
              v374 = *--v360;
              v373 = v374;
              v375 = *v374;
              v376 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v374);
              v377 = *(v375 + 16);
              v378 = **(v374 + 8);
              v380 = *(v371 + 4);
              v379 = *(v371 + 5);
              v381 = *(v374 + 24);
              result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v371);
              v382 = *(v374 + 16);
            }

            while (v382 < v380);
            if (v380 < v382)
            {
              break;
            }

            v383 = *(v373 + 20);
            if (v383 >= v379)
            {
              if (v379 < v383)
              {
                break;
              }

              if (result >= v376)
              {
                if (v376 < result)
                {
                  break;
                }

                v384 = *(*v371 + 16);
                if (v384 >= v377)
                {
                  if (v377 < v384)
                  {
                    break;
                  }

                  v385 = *v371[1];
                  if (v385 >= v378 && (v378 < v385 || *(v371 + 6) >= v381))
                  {
                    break;
                  }
                }
              }
            }
          }

          *v372 = v371;
          v359 = v426;
        }

        v210 = v359 + 1;
      }

      while (v359 + 1 != a2);
    }

    return result;
  }

  if (v212)
  {
    return result;
  }

  v213 = 0;
  v214 = j;
  while (2)
  {
    v415 = v210;
    v217 = *v214;
    v216 = v214[1];
    v218 = **v214;
    v219 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v218);
    v220 = *(v218 + 16);
    v221 = *v217[1];
    v222 = *(v216 + 4);
    v223 = *(v216 + 5);
    v224 = *(v217 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v216);
    v225 = *(v217 + 4);
    if (v225 >= v222)
    {
      if (v222 < v225)
      {
        goto LABEL_246;
      }

      v242 = *(v217 + 5);
      if (v242 >= v223)
      {
        if (v223 < v242)
        {
          goto LABEL_246;
        }

        if (result >= v219)
        {
          if (v219 < result)
          {
            goto LABEL_246;
          }

          v243 = *(*v216 + 16);
          if (v243 >= v220)
          {
            if (v220 < v243)
            {
              goto LABEL_246;
            }

            v244 = *v216[1];
            if (v244 >= v221 && (v221 < v244 || *(v216 + 6) >= v224))
            {
              goto LABEL_246;
            }
          }
        }
      }
    }

    v226 = v214[1];
    v214[1] = *v214;
    v227 = v426;
    v215 = v426;
    if (v214 == v426)
    {
      goto LABEL_245;
    }

    v407 = v213;
    v228 = v213;
    while (2)
    {
      v229 = (v227 + v228);
      v230 = *(v227 + v228 - 8);
      v231 = *v230;
      v232 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v230);
      v233 = *(v231 + 16);
      v234 = **(v230 + 8);
      v235 = *(v226 + 4);
      v236 = *(v226 + 5);
      v422 = *(v230 + 24);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v226);
      v237 = *(v230 + 16);
      if (v237 < v235)
      {
        goto LABEL_250;
      }

      if (v235 < v237)
      {
        goto LABEL_265;
      }

      v238 = *(v230 + 20);
      if (v238 < v236)
      {
        goto LABEL_250;
      }

      if (v236 < v238)
      {
        goto LABEL_265;
      }

      if (result < v232)
      {
        goto LABEL_250;
      }

      if (v232 < result)
      {
        goto LABEL_265;
      }

      v239 = *(*v226 + 16);
      if (v239 < v233)
      {
LABEL_250:
        --v214;
        *v229 = *(v229 - 1);
        v228 -= 8;
        v227 = v426;
        if (!v228)
        {
          v215 = v426;
          goto LABEL_244;
        }

        continue;
      }

      break;
    }

    if (v233 >= v239)
    {
      v240 = *v226[1];
      if (v240 >= v234 && (v234 < v240 || *(v226 + 6) >= v422))
      {
LABEL_265:
        v215 = v214;
        goto LABEL_244;
      }

      goto LABEL_250;
    }

    v215 = (v426 + v228);
LABEL_244:
    v213 = v407;
LABEL_245:
    *v215 = v226;
LABEL_246:
    v214 = v415;
    v210 = v415 + 1;
    v213 += 8;
    if (v415 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}