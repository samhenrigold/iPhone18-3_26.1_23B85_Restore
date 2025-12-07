__n128 mlir::scf::ForallOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v4 = &v16;
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v5 = *(a3 + 8);
  v6 = *a3;
  if (v5 < *(a3 + 12))
  {
    goto LABEL_2;
  }

  if (v6 > &v16 || v6 + 24 * v5 <= &v16)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5 + 1, 24);
    v6 = *a3;
LABEL_2:
    v7 = &v16;
    goto LABEL_3;
  }

  v14 = &v17[-1] - v6;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5 + 1, 24);
  v6 = *a3;
  v7 = &v14[*a3];
LABEL_3:
  v8 = v6 + 24 * *(a3 + 8);
  v9 = *v7;
  *(v8 + 16) = v7[2];
  *v8 = v9;
  ++*(a3 + 8);
  v16 = 0;
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v10 = *(a3 + 8);
  v11 = *a3;
  if (v10 >= *(a3 + 12))
  {
    if (v11 <= &v16 && v11 + 24 * v10 > &v16)
    {
      v15 = &v17[-1] - v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
      v11 = *a3;
      v4 = &v15[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
      v11 = *a3;
      v4 = &v16;
    }
  }

  v12 = (v11 + 24 * *(a3 + 8));
  result = *v4;
  v12[1].n128_u64[0] = v4[1].n128_u64[0];
  *v12 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::InParallelOp::verify(mlir::Block ***this)
{
  v67 = *MEMORY[0x1E69E9840];
  ParentOp = mlir::Block::getParentOp((*this)[2]);
  if (ParentOp)
  {
    v3 = *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v13 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
    if (v13)
    {
      v14 = v13 - 8;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 + 32;
    v16 = *(v14 + 40);
    if (v16 == v14 + 32)
    {
      return 1;
    }

    v17 = ParentOp;
    v18 = ParentOp + 64;
    while (1)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        break;
      }

      v20 = v19;
      v55 = v19;
      ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v55, 1u);
      v22 = *(*(v55 + 72) + 32 * ODSOperandIndexAndLength + 24);
      v23 = *(v17 + 44);
      v24 = v18 + 16 * ((v23 >> 23) & 1);
      v25 = *(((v24 + ((v23 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40) + 8);
      if (v25)
      {
        v26 = v25 - 8;
      }

      else
      {
        v26 = 0;
      }

      v28 = *(v26 + 48);
      v27 = *(v26 + 56);
      v55 = *(v24 + 8);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v55);
      v30 = (v28 + 8 * v29);
      if (v29 != (v27 - v28) >> 3)
      {
        while (*v30 != v22)
        {
          if (++v30 == v27)
          {
            goto LABEL_36;
          }
        }
      }

      if (v30 == v27)
      {
LABEL_36:
        v51 = "may only insert into an output block argument";
        v54 = 259;
        mlir::Operation::emitOpError(v20, &v51, &v55);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
        if (v55)
        {
          mlir::InFlightDiagnostic::report(&v55);
        }

        if ((v66 & 1) == 0)
        {
          return v4;
        }

        if (v65 != &v66)
        {
          free(v65);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v64;
          v33 = __p;
          if (v64 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v64 = v31;
          operator delete(v33);
        }

        v8 = v61;
        if (!v61)
        {
          goto LABEL_75;
        }

        v34 = v62;
        v10 = v61;
        if (v62 == v61)
        {
          goto LABEL_74;
        }

        do
        {
          v36 = *--v34;
          v35 = v36;
          *v34 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v34 != v8);
        goto LABEL_73;
      }

      v16 = *(v16 + 8);
      v4 = 1;
      if (v16 == v15)
      {
        return v4;
      }
    }

    v49 = "expected only ";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v49, &v55);
    if (v55)
    {
      v54 = 262;
      v51 = "tensor.parallel_insert_slice";
      v52 = 28;
      mlir::Diagnostic::operator<<(&v56, &v51);
      if (v55)
      {
        LODWORD(v51) = 3;
        v52 = " ops";
        v53 = 4;
        v37 = &v51;
        v38 = v57;
        if (v58 >= v59)
        {
          if (v57 <= &v51 && v57 + 24 * v58 > &v51)
          {
            v48 = &v51 - v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
            v38 = v57;
            v37 = (v57 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
            v37 = &v51;
            v38 = v57;
          }
        }

        v39 = &v38[24 * v58];
        v40 = *v37;
        *(v39 + 2) = v37[2];
        *v39 = v40;
        ++v58;
      }
    }

    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
    if (v55)
    {
      mlir::InFlightDiagnostic::report(&v55);
    }

    if (v66 != 1)
    {
      return v4;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v64;
      v43 = __p;
      if (v64 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v64 = v41;
      operator delete(v43);
    }

    v8 = v61;
    if (!v61)
    {
      goto LABEL_75;
    }

    v44 = v62;
    v10 = v61;
    if (v62 == v61)
    {
      goto LABEL_74;
    }

    do
    {
      v46 = *--v44;
      v45 = v46;
      *v44 = 0;
      if (v46)
      {
        operator delete[](v45);
      }
    }

    while (v44 != v8);
    goto LABEL_73;
  }

  v51 = "expected forall op parent";
  v54 = 259;
  mlir::OpState::emitOpError(this, &v51, &v55);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
  if (v55)
  {
    mlir::InFlightDiagnostic::report(&v55);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v64;
      v7 = __p;
      if (v64 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v64 = v5;
      operator delete(v7);
    }

    v8 = v61;
    if (!v61)
    {
      goto LABEL_75;
    }

    v9 = v62;
    v10 = v61;
    if (v62 == v61)
    {
LABEL_74:
      v62 = v8;
      operator delete(v10);
LABEL_75:
      if (v57 != v60)
      {
        free(v57);
      }

      return v4;
    }

    do
    {
      v12 = *--v9;
      v11 = v12;
      *v9 = 0;
      if (v12)
      {
        operator delete[](v11);
      }
    }

    while (v9 != v8);
LABEL_73:
    v10 = v61;
    goto LABEL_74;
  }

  return v4;
}

uint64_t mlir::scf::InParallelOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v7, 0, 0);
}

uint64_t mlir::scf::InParallelOp::parse(uint64_t a1, uint64_t a2)
{
  v15[64] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  v13 = v15;
  v14 = 0x800000000;
  v5 = operator new(0x18uLL);
  *v5 = v5;
  *(v5 + 1) = v5;
  *(v5 + 2) = 0;
  v11 = v5;
  if (((*(*a1 + 776))(a1, v5, v15, 0, 0) & 1) == 0)
  {
    v6 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  if (*v5 == v5)
  {
    v10[0] = *v4;
    memset(&v10[1], 0, 24);
    mlir::ValueRange::ValueRange(v12, 0, 0);
    mlir::OpBuilder::createBlock(v10, v5, 0, v12[0], v12[1], 0, 0);
  }

  mlir::OperationState::addRegion(a2, &v11);
  v6 = (*(*a1 + 488))(a1, a2 + 112) & 1;
  v5 = v11;
  v11 = 0;
  if (v5)
  {
LABEL_9:
    mlir::Region::~Region(v5);
    operator delete(v9);
    v7 = v13;
    if (v13 == v15)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v7 = v13;
  if (v13 != v15)
  {
LABEL_6:
    free(v7);
  }

  return v6;
}

uint64_t mlir::scf::IfOp::thenBlock(mlir::scf::IfOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  if (v1)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::scf::IfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a4 + 32))
  {
    return 0;
  }

  v6 = mlir::RegionRange::dereference_iterator((a4 + 24), 0);
  if (*v6 == v6)
  {
    return 0;
  }

  v7 = v6[1];
  v8 = v7 ? v7 - 8 : 0;
  if (*(v8 + 32) == v8 + 32)
  {
    return 0;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    return 0;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v11 = *(v9 + 72);
    v12 = *(v9 + 68);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v17 = v11;
  v18 = v12;
  mlir::OperandRange::getTypes(&v13, &v17);
  mlir::ValueRange::ValueRange(&v17, v13 + 32 * v14, v15 - v14);
  mlir::TypeRange::TypeRange(v16, v17, v18);
  llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a5, *a5 + 8 * *(a5 + 8), v16[0], 0, v16[0], v16[1]);
  return 1;
}

char *llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
      v10 = *a1;
      v12 = *(a1 + 2);
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 2) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v29 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v29, __src, v18);
        v30 = __src;
        do
        {
          *v30++ = mlir::TypeRange::dereference_iterator(a3, v7++);
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = mlir::TypeRange::dereference_iterator(a3, v7);
      }

      return v21;
    }

    v23 = 8 * v14;
    v24 = v12 + ((8 * v14) >> 3);
    if (v24 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v24, 8);
      LODWORD(v12) = *(a1 + 2);
    }

    v25 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == v7)
    {
      goto LABEL_29;
    }

    v26 = (*a1 + 8 * v12);
    v27 = 8 * a6 - 8 * v7 - 8;
    if (v27 >= 0x38)
    {
      v31 = 8 * v12 + *a1;
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v31 - v25) >= 0x20)
      {
        v32 = (v27 >> 3) + 1;
        v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v26 = (v26 + v33 * 8);
        v28 = &v25[v33];
        v34 = (8 * v7 + v16 - 8 * a6 + v10 + 16);
        v35 = (v31 + 16);
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = *v34;
          *(v35 - 1) = *(v34 - 1);
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v38 = *v28++;
      *v26++ = v38;
    }

    while (v28 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v25 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v39 = __src;
      do
      {
        *v39++ = mlir::TypeRange::dereference_iterator(a3, v7++);
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
    v12 = *(a1 + 2);
    v10 = *a1;
  }

  if (a6 != v7)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = mlir::TypeRange::dereference_iterator(a3, v7++);
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 2);
    v10 = *a1;
  }

  *(a1 + 2) = v12 + v14;
  return (v10 + v11);
}

uint64_t *mlir::scf::IfOp::build(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v13, 8);
    v13 = *(a2 + 72);
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      *(v15 + 8 * v14) = mlir::TypeRange::dereference_iterator(a3, v14);
      ++v14;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v16 = a1 + 2;
  v22 = *(a1 + 1);
  v17 = mlir::OperationState::addRegion(a2);
  if (!a6)
  {
    result = mlir::OperationState::addRegion(a2);
    if (!a7)
    {
      goto LABEL_9;
    }

LABEL_13:
    v21 = result;
    mlir::ValueRange::ValueRange(&v24, 0, 0);
    result = mlir::OpBuilder::createBlock(a1, v21, 0, v24, v25, 0, 0);
    v19 = v22;
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_14:
    *v16 = 0;
    a1[3] = 0;
    return result;
  }

  v20 = v17;
  mlir::ValueRange::ValueRange(&v24, 0, 0);
  mlir::OpBuilder::createBlock(a1, v20, 0, v24, v25, 0, 0);
  result = mlir::OperationState::addRegion(a2);
  if (a7)
  {
    goto LABEL_13;
  }

LABEL_9:
  v19 = v22;
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_10:
  *v16 = v19;
  return result;
}

uint64_t *mlir::scf::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = a5;
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v11, 8);
    v11 = *(a2 + 72);
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      *(v13 + 8 * v12) = mlir::TypeRange::dereference_iterator(a3, v12);
      ++v12;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v14 = (a1 + 16);
  v19 = *(a1 + 16);
  v15 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::ValueRange(&v21, 0, 0);
  mlir::OpBuilder::createBlock(a1, v15, 0, v21, v22, 0, 0);
  if (a4)
  {
    result = mlir::OperationState::addRegion(a2);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    mlir::impl::ensureRegionTerminator(v15, a1, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator);
    result = mlir::OperationState::addRegion(a2);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  v17 = result;
  mlir::ValueRange::ValueRange(&v21, 0, 0);
  result = mlir::OpBuilder::createBlock(a1, v17, 0, v21, v22, 0, 0);
  if (!a4)
  {
    result = mlir::impl::ensureRegionTerminator(v17, a1, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator);
    v18 = v19;
    if (v19)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_12:
  v18 = v19;
  if (v19)
  {
LABEL_13:
    *v14 = v18;
    return result;
  }

LABEL_15:
  *v14 = 0;
  *(a1 + 24) = 0;
  return result;
}

double mlir::scf::IfOp::build(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void), uint64_t a5, void (*a6)(uint64_t, uint64_t, void), uint64_t a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v35 = a3;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v13 = a1 + 16;
  v34 = *(a1 + 16);
  v14 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::ValueRange(&__src, 0, 0);
  mlir::OpBuilder::createBlock(a1, v14, 0, __src, v39, 0, 0);
  a4(a5, a1, *a2);
  v15 = mlir::OperationState::addRegion(a2);
  if (a6)
  {
    v16 = v15;
    mlir::ValueRange::ValueRange(&__src, 0, 0);
    mlir::OpBuilder::createBlock(a1, v16, 0, __src, v39, 0, 0);
    a6(a7, a1, *a2);
  }

  __src = v40;
  v39 = 0x600000000;
  v17 = *a1;
  Attrs = mlir::NamedAttrList::getAttrs((a2 + 14));
  v20 = mlir::DictionaryAttr::get(v17, Attrs, v19);
  mlir::ValueRange::ValueRange(&v37, a2[2], *(a2 + 6));
  v21 = mlir::ValueRange::ValueRange(&v36, a2[28], *(a2 + 58));
  v24 = v37;
  *&v43 = v20;
  BYTE8(v43) = 0;
  v44[0] = 0;
  *&v44[8] = v36;
  if (v20)
  {
    v33 = v37;
    Context = mlir::Attribute::getContext(&v43);
    if (v44[0] == 1)
    {
      v44[0] = 0;
    }

    v21 = mlir::OperationName::OperationName(&v43 + 1, "scf.if", 6, Context);
    v44[0] = 1;
    v24 = v33;
  }

  *&v44[24] = v24;
  v41[0] = v43;
  v41[1] = *v44;
  v41[2] = *&v44[16];
  v42 = *(&v24 + 1);
  v26 = mlir::scf::IfOp::inferReturnTypes(v21, v22, v23, v41, &__src);
  v27 = __src;
  if ((v26 & 1) == 0)
  {
    v31 = v34;
    if (__src == v40)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v28 = v39;
  v29 = *(a2 + 18);
  v30 = v29 + v39;
  if (v30 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 8), a2 + 10, v30, 8);
    LODWORD(v29) = *(a2 + 18);
  }

  if (v28)
  {
    memcpy((a2[8] + 8 * v29), v27, 8 * v28);
    LODWORD(v29) = *(a2 + 18);
  }

  v31 = v34;
  *(a2 + 18) = v29 + v28;
  v27 = __src;
  if (__src != v40)
  {
LABEL_15:
    free(v27);
    v31 = v34;
  }

LABEL_16:
  if (v31)
  {
    *v13 = v31;
  }

  else
  {
    *v13 = 0;
    *(v13 + 8) = 0;
  }

  return *&v31;
}

BOOL mlir::scf::IfOp::verify(mlir::Block ***this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(*this + 9))
  {
    return 1;
  }

  v1 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v1 + 24) != v1 + 24)
  {
    return 1;
  }

  v12 = "must have an else block if defining values";
  v13 = 259;
  mlir::OpState::emitOpError(this, &v12, v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  v3 = result;
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
    result = v3;
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
      result = v3;
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
      result = v3;
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            operator delete[](v10);
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
      result = v3;
    }

    if (v15 != &v16)
    {
      free(v15);
      return v3;
    }
  }

  return result;
}

uint64_t mlir::scf::IfOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(a2 + 224, 2uLL);
  v4 = mlir::OperationState::addRegion(a2);
  v5 = mlir::OperationState::addRegion(a2);
  v6 = (*(*a1 + 32))(a1);
  memset(v11, 0, 24);
  IntegerType = mlir::Builder::getIntegerType(v6, 1);
  if ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 728))(a1, v11, IntegerType, a2 + 16) & 1) != 0 && ((*(*a1 + 568))(a1, a2 + 64) & 1) != 0 && ((*(*a1 + 776))(a1, v4, 0, 0, 0))
  {
    v8 = (*(*a1 + 32))(a1);
    mlir::impl::ensureRegionTerminator(v4, v8, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator);
    if (((*(*a1 + 408))(a1, "else", 4) & 1) == 0)
    {
      return (*(*a1 + 488))(a1, a2 + 112) & 1;
    }

    if ((*(*a1 + 776))(a1, v5, 0, 0, 0))
    {
      v9 = (*(*a1 + 32))(a1);
      mlir::impl::ensureRegionTerminator(v5, v9, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator);
      return (*(*a1 + 488))(a1, a2 + 112) & 1;
    }
  }

  return 0;
}

uint64_t mlir::scf::IfOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 9);
  if (v6)
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = v7[4];
    if ((v7[3] - v8) > 4)
    {
      *(v8 + 4) = 40;
      *v8 = 540945696;
      v7[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v7, " -> (", 5uLL);
    }

    v9 = *(*this + 9);
    v10 = *this - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v35[0] = v10;
    v35[1] = v9;
    mlir::OperandRange::getTypes(&AttrDictionary, v35);
    v11 = v33;
    v12 = v34;
    if (v33 != v34)
    {
      v13 = AttrDictionary;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v33);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v11 + 1; v12 != i; ++i)
      {
        v30 = (*(*a2 + 16))(a2);
        v31 = v30[4];
        if (v30[3] - v31 <= 1uLL)
        {
          llvm::raw_ostream::write(v30, ", ", 2uLL);
        }

        else
        {
          *v31 = 8236;
          v30[4] += 2;
        }

        v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, i);
        (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if (v16[3] == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++v16[4];
    }
  }

  v18 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, v6 != 0, 0);
  v20 = *this;
  v21 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v23 = *(v21 + 24);
  v22 = v21 + 24;
  if (v23 != v22)
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = v24[4];
    if ((v24[3] - v25) > 5)
    {
      *(v25 + 4) = 8293;
      *v25 = 1936483616;
      v24[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v24, " else ", 6uLL);
    }

    (*(*a2 + 224))(a2, v22, 0, v6 != 0, 0);
    v20 = *this;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v20);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v27, 0, 0);
}

__n128 mlir::scf::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(*a1 + 36);
    if (v5)
    {
      v6 = *a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    v22 = 0;
    v7 = &v22;
    mlir::ValueRange::ValueRange(v23, v6, v5);
    v8 = *(a3 + 8);
    v9 = *a3;
    if (v8 >= *(a3 + 12))
    {
LABEL_13:
      if (v9 <= &v22 && v9 + 24 * v8 > &v22)
      {
        v20 = &v23[-1] - v9;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8 + 1, 24);
        v9 = *a3;
        v7 = &v20[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v8 + 1, 24);
        v9 = *a3;
        v7 = &v22;
      }
    }
  }

  else
  {
    v22 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v10 = &v22;
    mlir::ValueRange::ValueRange(v23, 0, 0);
    v11 = *(a3 + 8);
    v12 = *a3;
    if (v11 >= *(a3 + 12))
    {
      if (v12 <= &v22 && v12 + 24 * v11 > &v22)
      {
        v21 = &v23[-1] - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v21[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v22;
      }
    }

    v13 = v12 + 24 * *(a3 + 8);
    v14 = *v10;
    *(v13 + 16) = v10[2];
    *v13 = v14;
    ++*(a3 + 8);
    v15 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v17 = *(v15 + 24);
    v16 = v15 + 24;
    if (v17 == v16)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    v7 = &v22;
    mlir::ValueRange::ValueRange(v23, 0, 0);
    v8 = *(a3 + 8);
    v9 = *a3;
    if (v8 >= *(a3 + 12))
    {
      goto LABEL_13;
    }
  }

  v18 = (v9 + 24 * *(a3 + 8));
  result = *v7;
  v18[1].n128_u64[0] = v7[1].n128_u64[0];
  *v18 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::IfOp::getEntrySuccessorRegions(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v29[1] = *(*a1 + 56);
  v29[2] = v9;
  v30 = 1;
  v10 = *(v8 + 44);
  if ((v10 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange(v31, ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40), v10 & 0x7FFFFF);
    v32 = a2;
    v33 = a3;
    v11 = *a2;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    v29[0] = 0;
    goto LABEL_11;
  }

  mlir::ValueRange::ValueRange(v31, 0, 0);
  v32 = a2;
  v33 = a3;
  v11 = *a2;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (mlir::BoolAttr::classof(v11))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v29[0] = v12;
  if (v12 && !mlir::BoolAttr::getValue(v29))
  {
LABEL_13:
    if (v29[0])
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_11:
  v13 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v28[0] = v13;
  v14 = *(a4 + 8);
  if (v14 < *(a4 + 12))
  {
    v15 = (*a4 + 24 * v14);
    *v15 = v13;
    mlir::ValueRange::ValueRange(v15 + 1, 0, 0);
    ++*(a4 + 8);
    goto LABEL_13;
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v28);
  if (v29[0])
  {
LABEL_14:
    result = mlir::BoolAttr::getValue(v29);
    if (result)
    {
      return result;
    }
  }

LABEL_15:
  v17 = *a1;
  v18 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v20 = *(v18 + 24);
  v19 = v18 + 24;
  if (v20 == v19)
  {
    v23 = *(v17 + 36);
    v24 = v17 - 16;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v28[0] = v25;
    v28[1] = v23;
    v26 = *(a4 + 8);
    if (v26 >= *(a4 + 12))
    {
      return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, v28);
    }

    v27 = (*a4 + 24 * v26);
    *v27 = 0;
    result = mlir::ValueRange::ValueRange(v27 + 1, v25, v23);
  }

  else
  {
    v28[0] = v19;
    v21 = *(a4 + 8);
    if (v21 >= *(a4 + 12))
    {
      return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v28);
    }

    v22 = (*a4 + 24 * v21);
    *v22 = v19;
    result = mlir::ValueRange::ValueRange(v22 + 1, 0, 0);
  }

  ++*(a4 + 8);
  return result;
}

uint64_t mlir::scf::IfOp::fold(uint64_t *a1)
{
  v1 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  if (*(v1 + 24) == v1 + 24)
  {
    return 0;
  }

  __p = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&__p);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    return 0;
  }

  v4 = result;
  v34 = *(*(result + 72) + 56);
  result = mlir::Value::getDefiningOp(&v34);
  if (result)
  {
    v5 = result;
    v37 = 1;
    p_p = &__p;
    __p = 0;
    v38 = &v39;
    v39 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v38, result) && ((v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v9 = 1), v9 && mlir::detail::constant_int_value_binder::match(&p_p, v39)))
    {
      v10 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&__p);
      v11 = v4;
      if (v37 < 0x41)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0;
      v11 = v4;
      if (v37 < 0x41)
      {
        goto LABEL_25;
      }
    }

    if (__p)
    {
      operator delete[](__p);
      v11 = v4;
    }

LABEL_25:
    if (v10)
    {
      v12 = *a1;
      v13 = *(*a1 + 72);
      v14 = *(*(v11 + 72) + 24);
      v15 = v13[1];
      if (v15)
      {
        v16 = *v13;
        *v15 = *v13;
        if (v16)
        {
          *(v16 + 8) = v15;
        }
      }

      v13[3] = v14;
      v13[1] = v14;
      v17 = *v14;
      *v13 = *v14;
      if (v17)
      {
        *(v17 + 8) = v13;
      }

      *v14 = v13;
      v18 = (((v12 + 16 * ((*(v12 + 44) >> 23) & 1) + ((*(v12 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
      v19 = v18[1];
      if (v19)
      {
        v20 = v19 - 1;
      }

      else
      {
        v20 = 0;
      }

      v21 = v18 + 3;
      if (v18[3] != v18 + 3 && v21 != v19)
      {
        v22 = v18[4];
        llvm::ilist_traits<mlir::Block>::transferNodesFromList(v18, (v18 + 3), v22, (v18 + 3));
        if (v22 != v21)
        {
          v23 = *v21;
          v24 = *v22;
          *(v24 + 8) = v21;
          *v21 = v24;
          v25 = *v19;
          *(v23 + 8) = v19;
          *v22 = v25;
          *(v25 + 8) = v22;
          *v19 = v23;
        }
      }

      v26 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v27 = *(v26 + 32);
      if (v19)
      {
        v28 = v20 + 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28[1];
      if (v28 != v27 && v29 != v27)
      {
        llvm::ilist_traits<mlir::Block>::transferNodesFromList(v26 + 24, v26, v28, v28[1]);
        if (v29 != v28)
        {
          v31 = *v29;
          v32 = *v28;
          *(v32 + 8) = v29;
          *v29 = v32;
          v33 = *v27;
          *(v31 + 8) = v27;
          *v28 = v33;
          *(v33 + 8) = v28;
          *v27 = v31;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void mlir::scf::IfOp::getRegionInvocationBounds(uint64_t a1, void **a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a2;
  if (!*a2 || (!(v6 = mlir::BoolAttr::classof(*a2)) ? (v7 = 0) : (v7 = v5), v24 = v7, !v6))
  {
    *v22 = 0;
    *&v22[4] = 0x100000001;
    v14 = *v22;
    if (*(a4 + 3) <= 1u)
    {
      *(a4 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 2uLL, 12);
      v15 = *a4;
      *v15 = v14;
      *(v15 + 8) = 1;
      *(v15 + 12) = v14;
      *(v15 + 20) = 1;
      *(a4 + 2) = 2;
      return;
    }

    v16 = *(a4 + 2);
    if (v16)
    {
      v17 = *a4;
      *v17 = *v22;
      *(v17 + 8) = 1;
      if (v16 != 1)
      {
        *(v17 + 12) = v14;
        *(v17 + 20) = 1;
      }

      v18 = *(a4 + 2);
      if (v18 > 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = *a4 + 12 * v18;
    v20 = v18 - 2;
    do
    {
      *v19 = v14;
      *(v19 + 8) = 1;
      v19 += 12;
    }

    while (!__CFADD__(v20++, 1));
LABEL_21:
    *(a4 + 2) = 2;
    return;
  }

  *v22 = 0;
  Value = mlir::BoolAttr::getValue(&v24);
  v23 = Value;
  v9 = *(a4 + 2);
  if (v9 >= *(a4 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v22, &v23);
  }

  else
  {
    v10 = *a4 + 12 * v9;
    *v10 = 0;
    *(v10 + 4) = Value | 0x100000000;
    ++*(a4 + 2);
  }

  *v22 = 0;
  v11 = mlir::BoolAttr::getValue(&v24);
  v23 = !v11;
  v12 = *(a4 + 2);
  if (v12 >= *(a4 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v22, &v23);
  }

  else
  {
    v13 = *a4 + 12 * v12;
    *v13 = 0;
    *(v13 + 4) = !v11 | 0x100000000;
    ++*(a4 + 2);
  }
}

void mlir::scf::IfOp::getCanonicalizationPatterns(void *a1, mlir::StringAttr *a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v4 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v4 = &unk_1F5B06FD8;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), v4 + 24, v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CombineIfs]";
  v165 = 83;
  v9 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v165;
  }

  v11 = &v164[v10];
  v12 = v165 - v10;
  if (v165 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v165 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_211;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v24 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v24 = &unk_1F5B07078;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), v24 + 24, v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CombineNestedIfs]";
  v165 = 89;
  v29 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v165;
  }

  v31 = &v164[v30];
  v32 = v165 - v30;
  if (v165 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v165 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (v41 >> 61)
    {
      goto LABEL_211;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v44 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v44 = &unk_1F5B070E8;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), v44 + 24, v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConditionPropagation]";
  v165 = 93;
  v49 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v165;
  }

  v51 = &v164[v50];
  v52 = v165 - v50;
  if (v165 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v165 - v50;
  }

  v54 = &v51[v53];
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  if (v60 >= 0x7FFFFFFFFFFFFFF8)
  {
    v61 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    if (v61 >> 61)
    {
      goto LABEL_211;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v64 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v64 = &unk_1F5B07158;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), v64 + 24, v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ConvertTrivialIfToSelect]";
  v165 = 97;
  v69 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v165;
  }

  v71 = &v164[v70];
  v72 = v165 - v70;
  if (v165 - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = v165 - v70;
  }

  v74 = &v71[v73];
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
  {
    v79 = v80 >> 2;
  }

  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    v81 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = v79;
  }

  if (v81)
  {
    if (v81 >> 61)
    {
      goto LABEL_211;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v84 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v84 = &unk_1F5B071C8;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), v84 + 24, v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RemoveEmptyElseBranch]";
  v165 = 94;
  v89 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = v165;
  }

  v91 = &v164[v90];
  v92 = v165 - v90;
  if (v165 - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = v165 - v90;
  }

  v94 = &v91[v93];
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
  {
    v99 = v100 >> 2;
  }

  if (v100 >= 0x7FFFFFFFFFFFFFF8)
  {
    v101 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v101 = v99;
  }

  if (v101)
  {
    if (v101 >> 61)
    {
      goto LABEL_211;
    }

    v102 = operator new(8 * v101);
  }

  else
  {
    v102 = 0;
  }

  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
  v104 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v104 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v104 = &unk_1F5B07238;
  if (*(v104 + 9))
  {
    v105 = v104[22];
    if (v105 <= v104[23])
    {
      goto LABEL_133;
    }

LABEL_144:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v104 + 20), v104 + 24, v105, 16);
    v104[22] = v104[22];
    v107 = a1[2];
    v106 = a1[3];
    if (v107 < v106)
    {
      goto LABEL_134;
    }

    goto LABEL_145;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RemoveStaticCondition]";
  v165 = 94;
  v109 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v109)
  {
    v110 = v109;
  }

  else
  {
    v110 = v165;
  }

  v111 = &v164[v110];
  v112 = v165 - v110;
  if (v165 - v110 >= 0x12)
  {
    v113 = 18;
  }

  else
  {
    v113 = v165 - v110;
  }

  v114 = &v111[v113];
  v115 = v112 - v113;
  if (v115 >= v115 - 1)
  {
    --v115;
  }

  *(v104 + 8) = v114;
  *(v104 + 9) = v115;
  v105 = v104[22];
  if (v105 > v104[23])
  {
    goto LABEL_144;
  }

LABEL_133:
  v104[22] = v105;
  v107 = a1[2];
  v106 = a1[3];
  if (v107 < v106)
  {
LABEL_134:
    *v107 = v104;
    v108 = v107 + 8;
    goto LABEL_157;
  }

LABEL_145:
  v116 = a1[1];
  v117 = v107 - v116;
  v118 = (v107 - v116) >> 3;
  v119 = v118 + 1;
  if ((v118 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v120 = v106 - v116;
  if (v120 >> 2 > v119)
  {
    v119 = v120 >> 2;
  }

  if (v120 >= 0x7FFFFFFFFFFFFFF8)
  {
    v121 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = v119;
  }

  if (v121)
  {
    if (v121 >> 61)
    {
      goto LABEL_211;
    }

    v122 = operator new(8 * v121);
  }

  else
  {
    v122 = 0;
  }

  v123 = &v122[8 * v118];
  *v123 = v104;
  v108 = v123 + 8;
  memcpy(v122, v116, v117);
  a1[1] = v122;
  a1[2] = v108;
  a1[3] = &v122[8 * v121];
  if (v116)
  {
    operator delete(v116);
  }

LABEL_157:
  a1[2] = v108;
  v124 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v124 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v124 = &unk_1F5B072A8;
  if (*(v124 + 9))
  {
    v125 = v124[22];
    if (v125 <= v124[23])
    {
      goto LABEL_159;
    }

LABEL_170:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v124 + 20), v124 + 24, v125, 16);
    v124[22] = v124[22];
    v127 = a1[2];
    v126 = a1[3];
    if (v127 < v126)
    {
      goto LABEL_160;
    }

    goto LABEL_171;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RemoveUnusedResults]";
  v165 = 92;
  v129 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v129)
  {
    v130 = v129;
  }

  else
  {
    v130 = v165;
  }

  v131 = &v164[v130];
  v132 = v165 - v130;
  if (v165 - v130 >= 0x12)
  {
    v133 = 18;
  }

  else
  {
    v133 = v165 - v130;
  }

  v134 = &v131[v133];
  v135 = v132 - v133;
  if (v135 >= v135 - 1)
  {
    --v135;
  }

  *(v124 + 8) = v134;
  *(v124 + 9) = v135;
  v125 = v124[22];
  if (v125 > v124[23])
  {
    goto LABEL_170;
  }

LABEL_159:
  v124[22] = v125;
  v127 = a1[2];
  v126 = a1[3];
  if (v127 < v126)
  {
LABEL_160:
    *v127 = v124;
    v128 = v127 + 8;
    goto LABEL_183;
  }

LABEL_171:
  v136 = a1[1];
  v137 = v127 - v136;
  v138 = (v127 - v136) >> 3;
  v139 = v138 + 1;
  if ((v138 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v140 = v126 - v136;
  if (v140 >> 2 > v139)
  {
    v139 = v140 >> 2;
  }

  if (v140 >= 0x7FFFFFFFFFFFFFF8)
  {
    v141 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v141 = v139;
  }

  if (v141)
  {
    if (v141 >> 61)
    {
      goto LABEL_211;
    }

    v142 = operator new(8 * v141);
  }

  else
  {
    v142 = 0;
  }

  v143 = &v142[8 * v138];
  *v143 = v124;
  v128 = v143 + 8;
  memcpy(v142, v136, v137);
  a1[1] = v142;
  a1[2] = v128;
  a1[3] = &v142[8 * v141];
  if (v136)
  {
    operator delete(v136);
  }

LABEL_183:
  a1[2] = v128;
  v144 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v144 + 2), "scf.if", 6, v164, a2, 0, 0);
  *v144 = &unk_1F5B07318;
  if (*(v144 + 9))
  {
    v145 = v144[22];
    if (v145 <= v144[23])
    {
      goto LABEL_185;
    }

LABEL_196:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v144 + 20), v144 + 24, v145, 16);
    v144[22] = v144[22];
    v147 = a1[2];
    v146 = a1[3];
    if (v147 < v146)
    {
      goto LABEL_186;
    }

    goto LABEL_197;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReplaceIfYieldWithConditionOrValue]";
  v165 = 107;
  v149 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v149)
  {
    v150 = v149;
  }

  else
  {
    v150 = v165;
  }

  v151 = &v164[v150];
  v152 = v165 - v150;
  if (v165 - v150 >= 0x12)
  {
    v153 = 18;
  }

  else
  {
    v153 = v165 - v150;
  }

  v154 = &v151[v153];
  v155 = v152 - v153;
  if (v155 >= v155 - 1)
  {
    --v155;
  }

  *(v144 + 8) = v154;
  *(v144 + 9) = v155;
  v145 = v144[22];
  if (v145 > v144[23])
  {
    goto LABEL_196;
  }

LABEL_185:
  v144[22] = v145;
  v147 = a1[2];
  v146 = a1[3];
  if (v147 < v146)
  {
LABEL_186:
    *v147 = v144;
    v148 = v147 + 8;
    goto LABEL_209;
  }

LABEL_197:
  v156 = a1[1];
  v157 = v147 - v156;
  v158 = (v147 - v156) >> 3;
  v159 = v158 + 1;
  if ((v158 + 1) >> 61)
  {
LABEL_210:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v160 = v146 - v156;
  if (v160 >> 2 > v159)
  {
    v159 = v160 >> 2;
  }

  if (v160 >= 0x7FFFFFFFFFFFFFF8)
  {
    v161 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v161 = v159;
  }

  if (v161)
  {
    if (!(v161 >> 61))
    {
      v162 = operator new(8 * v161);
      goto LABEL_207;
    }

LABEL_211:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v162 = 0;
LABEL_207:
  v163 = &v162[8 * v158];
  *v163 = v144;
  v148 = v163 + 8;
  memcpy(v162, v156, v157);
  a1[1] = v162;
  a1[2] = v148;
  a1[3] = &v162[8 * v161];
  if (v156)
  {
    operator delete(v156);
  }

LABEL_209:
  a1[2] = v148;
}

uint64_t mlir::scf::IfOp::elseBlock(mlir::scf::IfOp *this)
{
  v1 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v2 = *(v1 + 24);
  if (v2 == v1 + 24 || v2 == 0)
  {
    return 0;
  }

  else
  {
    return v2 - 8;
  }
}

void mlir::scf::ParallelOp::build(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, __n128 a9, __n128 a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a12)
{
  v16 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v73 = a10;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a10.n128_i64[0], a10.n128_u64[1]);
  v71 = __PAIR64__(a6, v16);
  v72 = __PAIR64__(a10.n128_u32[2], a8);
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, &v71, 4);
  Context = mlir::Attribute::getContext(a2);
  v70 = 261;
  v67.n128_u64[0] = "operandSegmentSizes";
  v67.n128_u64[1] = 19;
  v21 = mlir::StringAttr::get(Context, v67.n128_u64);
  mlir::NamedAttribute::NamedAttribute(&v63, v21, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back((a2 + 14), v63, v64);
  mlir::ValueRange::getTypes(&v67, &v73);
  v22 = v67.n128_u64[1];
  v23 = v67.n128_u64[0];
  v24 = v69;
  v25 = v69 - v67.n128_u32[2];
  v26 = *(a2 + 18);
  v27 = v69 + v26 - v67.n128_u64[1];
  if (v27 > *(a2 + 19))
  {
    v28 = v67.n128_u64[1];
    llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 8), a2 + 10, v27, 8);
    v22 = v28;
    v26 = *(a2 + 18);
  }

  v29 = a2[8];
  v63 = v23;
  v64 = v22;
  if (v24 != v22)
  {
    v30 = (v29 + 8 * v26);
    do
    {
      *v30++ = *(mlir::ValueRange::dereference_iterator(&v63, v22) + 8) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v64 + 1);
      v64 = v22;
    }

    while (v22 != v24);
    LODWORD(v26) = *(a2 + 18);
  }

  *(a2 + 18) = v26 + v25;
  v31 = a1 + 16;
  v61 = *(a1 + 16);
  v32 = a8;
  IndexType = mlir::Builder::getIndexType(a1, v22);
  v34 = IndexType;
  v67.n128_u64[0] = &v68;
  v67.n128_u32[3] = 8;
  if (a8 < 9uLL)
  {
    if (!a8)
    {
      LODWORD(a8) = 0;
      v67.n128_u32[2] = 0;
      v63 = &v65;
      HIDWORD(v64) = 8;
      goto LABEL_38;
    }

    v46 = 0;
    v47 = vdupq_n_s64(a8 - 1);
    v48 = &v69;
    while (1)
    {
      v49 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(vdupq_n_s64(v46), xmmword_1E09700F0)));
      if (v49.i8[0])
      {
        *(v48 - 1) = IndexType;
        if (v49.i8[4])
        {
LABEL_28:
          *v48 = IndexType;
        }
      }

      else if (v49.i8[4])
      {
        goto LABEL_28;
      }

      v46 += 2;
      v48 += 2;
      if (((a8 + 1) & 0x1E) == v46)
      {
        goto LABEL_14;
      }
    }
  }

  v67.n128_u32[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v68, a8, 8);
  v35 = a8 & 3;
  v36 = a8 - v35;
  v37 = (v67.n128_u64[0] + 8 * v36);
  v38 = vdupq_n_s64(v34);
  v39 = (v67.n128_u64[0] + 16);
  do
  {
    v39[-1] = v38;
    *v39 = v38;
    v39 += 2;
    v36 -= 4;
  }

  while (v36);
  if ((a8 & 3) != 0)
  {
    *v37 = v34;
    if (v35 != 1)
    {
      v37[1] = v34;
      if (v35 != 2)
      {
        v37[2] = v34;
      }
    }
  }

LABEL_14:
  v67.n128_u32[2] = a8;
  v63 = &v65;
  v64 = 0x800000000;
  v40 = *a2;
  if (a8 < 9uLL)
  {
    if (!a8)
    {
      goto LABEL_38;
    }

    v50 = 0;
    v51 = vdupq_n_s64(a8 - 1);
    v52 = &v66;
    while (1)
    {
      v53 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v50), xmmword_1E09700F0)));
      if (v53.i8[0])
      {
        *(v52 - 1) = v40;
        if (v53.i8[4])
        {
LABEL_36:
          *v52 = v40;
        }
      }

      else if (v53.i8[4])
      {
        goto LABEL_36;
      }

      v50 += 2;
      v52 += 2;
      if (((a8 + 1) & 0x1E) == v50)
      {
        goto LABEL_38;
      }
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, &v65, a8, 8);
  v41 = a8 & 3;
  v42 = a8 - v41;
  v43 = (v63 + 8 * v42);
  v44 = vdupq_n_s64(v40);
  v45 = (v63 + 16);
  do
  {
    v45[-1] = v44;
    *v45 = v44;
    v45 += 2;
    v42 -= 4;
  }

  while (v42);
  if ((a8 & 3) != 0)
  {
    *v43 = v40;
    if (v41 != 1)
    {
      v43[1] = v40;
      if (v41 != 2)
      {
        v43[2] = v40;
      }
    }
  }

LABEL_38:
  LODWORD(v64) = a8;
  v54 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::ValueRange(&v71, v67.n128_i64[0], v67.n128_u32[2]);
  Block = mlir::OpBuilder::createBlock(a1, v54, 0, v71, v72, v63, v64);
  if (a11)
  {
    v56 = Block[5];
    *(a1 + 16) = Block;
    *(a1 + 24) = v56;
    v57 = *a2;
    v58 = Block[6];
    if ((Block[7] - v58) >> 3 >= v32)
    {
      v59 = v32;
    }

    else
    {
      v59 = (Block[7] - v58) >> 3;
    }

    v60 = Block;
    mlir::ValueRange::ValueRange(&v71, v58, v59);
    mlir::ValueRange::ValueRange(v62, v60[6] + 8 * v32, ((v60[7] - v60[6]) >> 3) - v32);
    a11(a12, a1, v57, v71, v72, v62[0], v62[1]);
    v31 = a1 + 16;
  }

  if (!v73.n128_u64[1])
  {
    mlir::impl::ensureRegionTerminator(v54, a1, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator);
  }

  if (v63 != &v65)
  {
    free(v63);
  }

  if (v67.n128_u64[0] != &v68)
  {
    free(v67.n128_u64[0]);
  }

  if (v61)
  {
    *v31 = v61;
  }

  else
  {
    *v31 = 0;
    *(v31 + 8) = 0;
  }
}

uint64_t mlir::scf::ParallelOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v47[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  v45 = v47;
  v46 = 0x400000000;
  v5 = 0;
  if (((*(*a1 + 768))(a1, &v45, 1, 0, 0) & 1) == 0)
  {
    goto LABEL_30;
  }

  v42 = v44;
  v43 = 0x400000000;
  if (((*(*a1 + 136))(a1) & 1) == 0 || ((*(*a1 + 720))(a1, &v42, 1, 1, v46) & 1) == 0)
  {
    goto LABEL_27;
  }

  IndexType = mlir::Builder::getIndexType(v4, v6);
  if (!v43)
  {
LABEL_8:
    v39 = v41;
    v40 = 0x400000000;
    v38[8] = 257;
    if (((*(*a1 + 400))(a1, "to", 2, &v36) & 1) == 0 || ((*(*a1 + 720))(a1, &v39, 1, 1, v46) & 1) == 0)
    {
LABEL_33:
      v5 = 0;
LABEL_34:
      if (v39 != v41)
      {
        free(v39);
      }

      goto LABEL_28;
    }

    v12 = mlir::Builder::getIndexType(v4, v11);
    if (v40)
    {
      v13 = v12;
      v14 = v39;
      v15 = 32 * v40;
      while (((*(*a1 + 728))(a1, v14, v13, a2 + 16) & 1) != 0)
      {
        v14 += 32;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_33;
    }

LABEL_14:
    v36 = v38;
    v37 = 0x400000000;
    v35[8] = 257;
    if ((*(*a1 + 400))(a1, "step", 4, &v33) & 1) != 0 && ((*(*a1 + 720))(a1, &v36, 1, 1, v46))
    {
      v17 = mlir::Builder::getIndexType(v4, v16);
      if (!v37)
      {
LABEL_20:
        v33 = v35;
        v34 = 0x400000000;
        if (((*(*a1 + 408))(a1, "init", 4) & 1) != 0 && ((*(*a1 + 720))(a1, &v33, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (((*(*a1 + 568))(a1, a2 + 64) & 1) == 0)
        {
          goto LABEL_44;
        }

        v21 = mlir::OperationState::addRegion(a2);
        v23 = v21;
        v24 = v45;
        if (v46)
        {
          v31 = v21;
          v25 = (v45 + 32);
          v26 = v46 << 6;
          do
          {
            *v25 = mlir::Builder::getIndexType(v4, v22);
            v25 += 8;
            v26 -= 64;
          }

          while (v26);
          v24 = v45;
          v27 = v46;
          v23 = v31;
        }

        else
        {
          v27 = 0;
        }

        if ((*(*a1 + 776))(a1, v23, v24, v27, 0) & 1) != 0 && (v32[0] = v43, v32[1] = v40, v32[2] = v37, v32[3] = v34, DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(v4, v32, 4), mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13uLL, DenseI32ArrayAttr), ((*(*a1 + 488))(a1, a2 + 112)) && (v30 = (*(*a1 + 16))(a1), mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v33, a2 + 64, v30, a2 + 16)))
        {
          mlir::impl::ensureRegionTerminator(v23, v4, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator);
          v5 = 1;
        }

        else
        {
LABEL_44:
          v5 = 0;
        }

        if (v33 != v35)
        {
          free(v33);
        }

        goto LABEL_37;
      }

      v18 = v17;
      v19 = v36;
      v20 = 32 * v37;
      while (((*(*a1 + 728))(a1, v19, v18, a2 + 16) & 1) != 0)
      {
        v19 += 32;
        v20 -= 32;
        if (!v20)
        {
          goto LABEL_20;
        }
      }
    }

    v5 = 0;
LABEL_37:
    if (v36 != v38)
    {
      free(v36);
    }

    goto LABEL_34;
  }

  v8 = IndexType;
  v9 = v42;
  v10 = 32 * v43;
  while (((*(*a1 + 728))(a1, v9, v8, a2 + 16) & 1) != 0)
  {
    v9 += 32;
    v10 -= 32;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

LABEL_27:
  v5 = 0;
LABEL_28:
  if (v42 != v44)
  {
    free(v42);
  }

LABEL_30:
  if (v45 != v47)
  {
    free(v45);
  }

  return v5;
}

void mlir::scf::ParallelOp::getLoopInductionVars(mlir::scf::ParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  __src = v30;
  v29 = 0x600000000;
  v7 = v5 - v6;
  v8 = (v5 - v6) >> 3;
  if (v8 < 7)
  {
    v9 = 0;
    v11 = 0;
    v10 = v30;
    v12 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v30, v8, 8);
    v9 = v29;
    v10 = __src;
    v11 = v29;
    v12 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  v13 = &v10[v9];
  v14 = v12 - 8;
  if (v14 < 0x38)
  {
    goto LABEL_27;
  }

  v15 = &v10[v9];
  if ((v15 - v6) < 0x20)
  {
    goto LABEL_27;
  }

  v16 = (v14 >> 3) + 1;
  v17 = 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL);
  v13 = (v13 + v17);
  v18 = &v6[v17];
  v19 = (v6 + 16);
  v20 = v15 + 2;
  v21 = v16 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v22 = *v19;
    *(v20 - 1) = *(v19 - 1);
    *v20 = v22;
    v19 += 2;
    v20 += 2;
    v21 -= 4;
  }

  while (v21);
  v6 = v18;
  if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_27:
    do
    {
      v23 = *v6;
      v6 += 8;
      *v13++ = v23;
    }

    while (v6 != v5);
  }

LABEL_14:
  v24 = v7 >> 3;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v25 = v11 + (v7 >> 3);
  LODWORD(v29) = v25;
  if (v25 && &__src != a2)
  {
    if (v10 == v30)
    {
      v27 = v11 + v24;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), (v11 + v24), 8), v27 = v29, v10 = __src, v29))
      {
        memcpy(*a2, v10, 8 * v27);
        v10 = __src;
      }

      *(a2 + 8) = v25;
    }

    else
    {
      *a2 = v10;
      v26 = HIDWORD(v29);
      *(a2 + 8) = v25;
      *(a2 + 12) = v26;
      __src = v30;
      HIDWORD(v29) = 0;
      v10 = v30;
    }

    LODWORD(v29) = 0;
  }

  *(a2 + 64) = 1;
  if (v10 != v30)
  {
    free(v10);
  }
}

void mlir::scf::ParallelOp::getCanonicalizationPatterns(void *a1, mlir::StringAttr *a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "scf.parallel", 12, v44, a2, 0, 0);
  *v4 = &unk_1F5B07388;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), v4 + 24, v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ParallelOpSingleOrZeroIterationDimsFolder]";
  v45 = 114;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v24 + 2), "scf.parallel", 12, v44, a2, 0, 0);
  *v24 = &unk_1F5B07428;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), v24 + 24, v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MergeNestedParallelLoops]";
  v45 = 97;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::scf::ReduceOp::verifyRegions(mlir::Block ***this)
{
  v88 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 11);
  v2 = *&v1 & 0x7FFFFFLL;
  if ((v1 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(((&(*this)[*(*this + 47) + 10] + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24 * v4 + 8);
    if (v5)
    {
      v6 = (v5 - 8);
    }

    else
    {
      v6 = 0;
    }

    if (*(v6 + 4) == (v6 + 32))
    {
      v73 = 257;
      mlir::OpState::emitOpError(this, v72, v77);
      if (v77[0])
      {
        v74 = 2;
        v75 = v4;
        v43 = &v74;
        v44 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v74 && v78 + 24 * v79 > &v74)
          {
            v70 = &v74 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v44 = v78;
            v43 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v43 = &v74;
            v44 = v78;
          }
        }

        v45 = &v44[24 * v79];
        v46 = *v43;
        *(v45 + 2) = *(v43 + 2);
        *v45 = v46;
        v47 = ++v79;
        if (v77[0])
        {
          v74 = 3;
          v75 = "-th reduction has an empty body";
          v76 = 31;
          v48 = &v74;
          v49 = v78;
          if (v47 >= v80)
          {
            if (v78 <= &v74 && v78 + 24 * v47 > &v74)
            {
              v71 = &v74 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v47 + 1, 24);
              v49 = v78;
              v48 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v47 + 1, 24);
              v48 = &v74;
              v49 = v78;
            }
          }

          v50 = &v49[24 * v79];
          v51 = *v48;
          *(v50 + 2) = *(v48 + 2);
          *v50 = v51;
          ++v79;
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v77);
      if (v77[0])
      {
        mlir::InFlightDiagnostic::report(v77);
      }

      if (v87 != 1)
      {
        return v11;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v85;
        v54 = __p;
        if (v85 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v85 = v52;
        operator delete(v54);
      }

      v38 = v82;
      if (!v82)
      {
        goto LABEL_80;
      }

      v55 = v83;
      v40 = v82;
      if (v83 != v82)
      {
        do
        {
          v57 = *--v55;
          v56 = v57;
          *v55 = 0;
          if (v57)
          {
            operator delete[](v56);
          }
        }

        while (v55 != v38);
        goto LABEL_78;
      }

LABEL_79:
      v83 = v38;
      operator delete(v40);
      goto LABEL_80;
    }

    v7 = *(*((*this)[9] + 4 * v4 + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v6 + 6);
    v8 = *(v6 + 7);
    if (((v8 - v9) & 0x7FFFFFFF8) != 0x10)
    {
      goto LABEL_14;
    }

    if (v8 != v9)
    {
      break;
    }

LABEL_11:
    mlir::Block::getTerminator(v6);
    if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceReturnOp,void>::id)
    {
      v72[0] = "reduction bodies must be terminated with an 'scf.reduce.return' op";
      v73 = 259;
      mlir::OpState::emitOpError(this, v72, v77);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v77);
      if (v77[0])
      {
        mlir::InFlightDiagnostic::report(v77);
      }

      if (v87 != 1)
      {
        return v11;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v58 = __p;
      if (__p)
      {
        v59 = v85;
        v60 = __p;
        if (v85 != __p)
        {
          do
          {
            v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
          }

          while (v59 != v58);
          v60 = __p;
        }

        v85 = v58;
        operator delete(v60);
      }

      v38 = v82;
      if (!v82)
      {
        goto LABEL_80;
      }

      v61 = v83;
      v40 = v82;
      if (v83 != v82)
      {
        do
        {
          v63 = *--v61;
          v62 = v63;
          *v61 = 0;
          if (v63)
          {
            operator delete[](v62);
          }
        }

        while (v61 != v38);
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

  while (v7 == (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v9 += 8;
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  v73 = 257;
  mlir::OpState::emitOpError(this, v72, v77);
  if (v77[0])
  {
    v74 = 3;
    v75 = "expected two block arguments with type ";
    v76 = 39;
    v12 = &v74;
    v13 = v78;
    if (v79 >= v80)
    {
      if (v78 <= &v74 && v78 + 24 * v79 > &v74)
      {
        v65 = &v74 - v78;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
        v13 = v78;
        v12 = (v78 + v65);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
        v12 = &v74;
        v13 = v78;
      }
    }

    v14 = &v13[24 * v79];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v79;
    if (v77[0])
    {
      v16 = &v74;
      mlir::DiagnosticArgument::DiagnosticArgument(&v74, v7);
      v17 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v74 && v78 + 24 * v79 > &v74)
        {
          v66 = &v74 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v17 = v78;
          v16 = (v78 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v16 = &v74;
          v17 = v78;
        }
      }

      v18 = &v17[24 * v79];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v79;
      if (v77[0])
      {
        v74 = 3;
        v75 = " in the ";
        v76 = 8;
        v21 = &v74;
        v22 = v78;
        if (v20 >= v80)
        {
          if (v78 <= &v74 && v78 + 24 * v20 > &v74)
          {
            v67 = &v74 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v20 + 1, 24);
            v22 = v78;
            v21 = (v78 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v20 + 1, 24);
            v21 = &v74;
            v22 = v78;
          }
        }

        v23 = &v22[24 * v79];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        v25 = ++v79;
        if (v77[0])
        {
          v74 = 2;
          v75 = v4;
          v26 = &v74;
          v27 = v78;
          if (v25 >= v80)
          {
            if (v78 <= &v74 && v78 + 24 * v25 > &v74)
            {
              v68 = &v74 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v25 + 1, 24);
              v27 = v78;
              v26 = (v78 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v25 + 1, 24);
              v26 = &v74;
              v27 = v78;
            }
          }

          v28 = &v27[24 * v79];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          v30 = ++v79;
          if (v77[0])
          {
            v74 = 3;
            v75 = "-th reduction region";
            v76 = 20;
            v31 = &v74;
            v32 = v78;
            if (v30 >= v80)
            {
              if (v78 <= &v74 && v78 + 24 * v30 > &v74)
              {
                v69 = &v74 - v78;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v30 + 1, 24);
                v32 = v78;
                v31 = (v78 + v69);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v30 + 1, 24);
                v31 = &v74;
                v32 = v78;
              }
            }

            v33 = &v32[24 * v79];
            v34 = *v31;
            *(v33 + 2) = *(v31 + 2);
            *v33 = v34;
            ++v79;
          }
        }
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v77);
  if (v77[0])
  {
    mlir::InFlightDiagnostic::report(v77);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v85;
      v37 = __p;
      if (v85 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v85 = v35;
      operator delete(v37);
    }

    v38 = v82;
    if (v82)
    {
      v39 = v83;
      v40 = v82;
      if (v83 == v82)
      {
        goto LABEL_79;
      }

      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          operator delete[](v41);
        }
      }

      while (v39 != v38);
LABEL_78:
      v40 = v82;
      goto LABEL_79;
    }

LABEL_80:
    if (v78 != v81)
    {
      free(v78);
    }
  }

  return v11;
}

uint64_t mlir::scf::ReduceReturnOp::verify(mlir::Block ***this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(**((*this)[2] + 6) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v1 == (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v29 = 257;
  mlir::OpState::emitOpError(this, v28, v33);
  if (v33[0])
  {
    v30 = 3;
    v31 = "must have type ";
    v32 = 15;
    v3 = &v30;
    v4 = v34;
    if (v35 >= v36)
    {
      if (v34 <= &v30 && v34 + 24 * v35 > &v30)
      {
        v25 = &v30 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v4 = v34;
        v3 = (v34 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v3 = &v30;
        v4 = v34;
      }
    }

    v5 = &v4[24 * v35];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v35;
    if (v33[0])
    {
      v7 = &v30;
      mlir::DiagnosticArgument::DiagnosticArgument(&v30, v1);
      v8 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v30 && v34 + 24 * v35 > &v30)
        {
          v26 = &v30 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v8 = v34;
          v7 = (v34 + v26);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v7 = &v30;
          v8 = v34;
        }
      }

      v9 = &v8[24 * v35];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      v11 = ++v35;
      if (v33[0])
      {
        v30 = 3;
        v31 = " (the type of the reduction inputs)";
        v32 = 35;
        v12 = &v30;
        v13 = v34;
        if (v11 >= v36)
        {
          if (v34 <= &v30 && v34 + 24 * v11 > &v30)
          {
            v27 = &v30 - v34;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v11 + 1, 24);
            v13 = v34;
            v12 = (v34 + v27);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v11 + 1, 24);
            v12 = &v30;
            v13 = v34;
          }
        }

        v14 = &v13[24 * v35];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v35;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 != v38)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v38;
      }

      v39 = v19;
      operator delete(v21);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return v2;
}

void mlir::scf::WhileOp::build(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t a8, void (*a9)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t a10)
{
  v58 = *MEMORY[0x1E69E9840];
  v56.n128_u64[0] = a5;
  v56.n128_u64[1] = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  v17 = *(a2 + 18);
  if (a4 + v17 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a2 + 8), a2 + 10, a4 + v17, 8);
    v17 = *(a2 + 18);
  }

  if (a4)
  {
    v18 = 0;
    v19 = a2[8] + 8 * v17;
    do
    {
      *(v19 + 8 * v18) = mlir::TypeRange::dereference_iterator(a3, v18);
      ++v18;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 18);
  }

  *(a2 + 18) = v17 + a4;
  v20 = (a1 + 16);
  v21 = *(a1 + 16);
  v53 = v55;
  v54 = 0x400000000;
  v47 = v21;
  if (a6 < 5)
  {
    v48 = a5;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, a6, 8);
    v48 = a5;
  }

  v22 = 0;
  do
  {
    v57.n128_u64[0] = mlir::ValueRange::dereference_iterator(&v48, v22);
    Loc = mlir::Value::getLoc(&v57);
    v24 = v54;
    if (v54 >= HIDWORD(v54))
    {
      v25 = Loc;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v54 + 1, 8);
      Loc = v25;
      v24 = v54;
    }

    *(v53 + v24) = Loc;
    LODWORD(v54) = v54 + 1;
    v22 = v48.n128_u64[1] + 1;
    v48.n128_u64[1] = v22;
  }

  while (v22 != a6);
LABEL_14:
  v26 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::getTypes(&v48, &v56);
  v28 = v48.n128_u64[1];
  v27 = v48.n128_u64[0];
  v29 = v50;
  v57 = v48;
  if (v48.n128_u64[1])
  {
    v27 = mlir::ValueRange::offset_base(&v57, v48.n128_i64[1]);
    v28 = v57.n128_u64[1];
  }

  mlir::TypeRange::TypeRange(v57.n128_u64, v27, v29 - v28);
  Block = mlir::OpBuilder::createBlock(a1, v26, 0, v57.n128_i64[0], v57.n128_i64[1], v53, v54);
  if (a7)
  {
    v31 = *a2;
    mlir::ValueRange::ValueRange(v48.n128_u64, *(Block + 6), (*(Block + 7) - *(Block + 6)) >> 3);
    a7(a8, a1, v31, v48.n128_u64[0], v48.n128_u64[1]);
  }

  v48.n128_u64[0] = &v49;
  v48.n128_u64[1] = 0x400000000;
  v32 = *a2;
  if (a4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, &v49, a4, 8);
    v33 = (v48.n128_u64[0] + 8 * (a4 & 0xFFFFFFFFFFFFFFFCLL));
    v34 = a4 & 3;
    v35 = vdupq_n_s64(v32);
    v36 = (v48.n128_u64[0] + 16);
    v37 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v36[-1] = v35;
      *v36 = v35;
      v36 += 2;
      v37 -= 4;
    }

    while (v37);
    if (a4 != (a4 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        *v33++ = v32;
        --v34;
      }

      while (v34);
    }

    goto LABEL_35;
  }

  if (!a4)
  {
    goto LABEL_35;
  }

  v38 = vdupq_n_s64(a4 - 1);
  v39 = a4 + 1;
  v40 = vmovn_s64(vcgeq_u64(v38, xmmword_1E09700F0));
  if (v40.i8[0])
  {
    v49 = *a2;
    v41 = v39 & 0xE;
    if ((v40.i8[4] & 1) == 0)
    {
LABEL_27:
      if (v41 == 2)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v41 = v39 & 0xE;
    if ((v40.i8[4] & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v50 = v32;
  if (v41 == 2)
  {
    goto LABEL_35;
  }

LABEL_31:
  v42 = vmovn_s64(vcgtq_u64(v38, xmmword_1E0970220));
  if (v42.i8[0])
  {
    v51 = v32;
  }

  if (v42.i8[4])
  {
    v52 = v32;
  }

LABEL_35:
  v48.n128_u32[2] = a4;
  v43 = mlir::OperationState::addRegion(a2);
  v44 = mlir::OpBuilder::createBlock(a1, v43, 0, a3, a4, v48.n128_i64[0], v48.n128_u32[2]);
  if (a9)
  {
    v45 = *a2;
    mlir::ValueRange::ValueRange(v57.n128_u64, *(v44 + 6), (*(v44 + 7) - *(v44 + 6)) >> 3);
    a9(a10, a1, v45, v57.n128_u64[0], v57.n128_u64[1]);
  }

  if (v48.n128_u64[0] != &v49)
  {
    free(v48.n128_u64[0]);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v47)
  {
    *v20 = v47;
  }

  else
  {
    *v20 = 0;
    *(a1 + 24) = 0;
  }
}

unint64_t *mlir::scf::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (v5 + 3 != a2)
    {
      v7 = *(v4 + 36);
      if (v7)
      {
        v8 = v4 - 16;
      }

      else
      {
        v8 = 0;
      }

      v19 = v8;
      v20 = v7;
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a3, &v19);
      }

      else
      {
        v10 = (*a3 + 24 * v9);
        *v10 = 0;
        mlir::ValueRange::ValueRange(v10 + 1, v8, v7);
        ++*(a3 + 8);
      }

      v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v5 = (v11 + 24);
      v21 = (v11 + 24);
      if (*(v11 + 24) != v11 + 24)
      {
        v12 = *(v11 + 32);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  }

  v21 = v5;
  if (*v5 != v5)
  {
    v12 = v5[1];
LABEL_13:
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 48);
    v15 = (*(v13 + 56) - v14) >> 3;
    v19 = v14;
    v20 = v15;
    v16 = *(a3 + 8);
    if (v16 < *(a3 + 12))
    {
      goto LABEL_17;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
  }

LABEL_18:
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v16 = *(a3 + 8);
  if (v16 < *(a3 + 12))
  {
LABEL_17:
    v17 = (*a3 + 24 * v16);
    *v17 = v5;
    result = mlir::ValueRange::ValueRange(v17 + 1, v14, v15);
    ++*(a3 + 8);
    return result;
  }

  return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
}

uint64_t mlir::scf::WhileOp::parse(uint64_t a1, mlir::OperationState *this)
{
  v88[32] = *MEMORY[0x1E69E9840];
  v86 = v88;
  v87 = 0x400000000;
  v83 = v85;
  v84 = 0x400000000;
  v4 = mlir::OperationState::addRegion(this);
  v5 = mlir::OperationState::addRegion(this);
  v6 = (*(*a1 + 824))(a1, &v86, &v83);
  if ((v6 & 0x100) != 0 && (v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  v68 = 0;
  v7 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseColonType<mlir::FunctionType>(a1, &v68))
  {
    goto LABEL_14;
  }

  Results = mlir::FunctionType::getResults(&v68);
  v10 = v9;
  v11 = 8 * v9;
  v12 = *(this + 18);
  v13 = v12 + ((8 * v9) >> 3);
  if (v13 > *(this + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 64, this + 80, v13, 8);
    LODWORD(v12) = *(this + 18);
  }

  if (v10)
  {
    memcpy((*(this + 8) + 8 * v12), Results, v11);
    LODWORD(v12) = *(this + 18);
  }

  *(this + 18) = v12 + (v11 >> 3);
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v68);
  if (v84 == Value)
  {
    v72[0] = mlir::FunctionType::getInputs(&v68);
    v72[1] = v15;
    v16 = (*(*a1 + 40))(a1);
    if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, &v83, v72, v16, this + 16))
    {
      if (v87)
      {
        v17 = 0;
        v18 = 8 * v87;
        do
        {
          Inputs = mlir::FunctionType::getInputs(&v68);
          *(v86 + v17 + 4) = *(Inputs + v17);
          v17 += 8;
        }

        while (v18 != v17);
      }

      if ((*(*a1 + 776))(a1, v4) & 1) != 0 && (LOWORD(v74) = 257, ((*(*a1 + 400))(a1, "do", 2, v72)) && ((*(*a1 + 776))(a1, v5, 0, 0, 0))
      {
        v59 = (*(*a1 + 496))(a1, this + 112);
      }

      else
      {
        v59 = 0;
      }

      v20 = v59 & 1;
      goto LABEL_15;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v67 = 257;
  (*(*a1 + 24))(v72, a1, v7, v66);
  if (v72[0])
  {
    v69 = 3;
    v70 = "expected as many input types as operands ";
    v71 = 41;
    v22 = &v69;
    v23 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v69 && v73 + 24 * v74 > &v69)
      {
        v60 = &v69 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v23 = v73;
        v22 = (v73 + v60);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v22 = &v69;
        v23 = v73;
      }
    }

    v24 = &v23[24 * v74];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    v26 = ++v74;
    if (v72[0])
    {
      v69 = 3;
      v70 = "(expected ";
      v71 = 10;
      v27 = &v69;
      v28 = v73;
      if (v26 >= v75)
      {
        if (v73 <= &v69 && v73 + 24 * v26 > &v69)
        {
          v62 = &v69 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v26 + 1, 24);
          v28 = v73;
          v27 = (v73 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v26 + 1, 24);
          v27 = &v69;
          v28 = v73;
        }
      }

      v29 = &v28[24 * v74];
      v30 = *v27;
      *(v29 + 2) = *(v27 + 2);
      *v29 = v30;
      v31 = ++v74;
      if (v72[0])
      {
        v69 = 5;
        v70 = v84;
        v32 = &v69;
        v33 = v73;
        if (v31 >= v75)
        {
          if (v73 <= &v69 && v73 + 24 * v31 > &v69)
          {
            v64 = &v69 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v31 + 1, 24);
            v33 = v73;
            v32 = (v73 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v31 + 1, 24);
            v32 = &v69;
            v33 = v73;
          }
        }

        v34 = &v33[24 * v74];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        v36 = ++v74;
        if (v72[0])
        {
          v69 = 3;
          v70 = " got ";
          v71 = 5;
          v37 = &v69;
          v38 = v73;
          if (v36 >= v75)
          {
            if (v73 <= &v69 && v73 + 24 * v36 > &v69)
            {
              v65 = &v69 - v73;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v36 + 1, 24);
              v38 = v73;
              v37 = (v73 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v36 + 1, 24);
              v37 = &v69;
              v38 = v73;
            }
          }

          v39 = &v38[24 * v74];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v74;
        }
      }
    }
  }

  v41 = mlir::arith::FastMathFlagsAttr::getValue(&v68);
  if (v72[0])
  {
    v69 = 5;
    v70 = v41;
    v42 = &v69;
    v43 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v69 && v73 + 24 * v74 > &v69)
      {
        v61 = &v69 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v43 = v73;
        v42 = (v73 + v61);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v42 = &v69;
        v43 = v73;
      }
    }

    v44 = &v43[24 * v74];
    v45 = *v42;
    *(v44 + 2) = *(v42 + 2);
    *v44 = v45;
    v46 = ++v74;
    if (v72[0])
    {
      v69 = 3;
      v70 = ")";
      v71 = 1;
      v47 = &v69;
      v48 = v73;
      if (v46 >= v75)
      {
        if (v73 <= &v69 && v73 + 24 * v46 > &v69)
        {
          v63 = &v69 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v46 + 1, 24);
          v48 = v73;
          v47 = (v73 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v46 + 1, 24);
          v47 = &v69;
          v48 = v73;
        }
      }

      v49 = &v48[24 * v74];
      v50 = *v47;
      *(v49 + 2) = *(v47 + 2);
      *v49 = v50;
      ++v74;
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v72);
  if (v72[0])
  {
    mlir::InFlightDiagnostic::report(v72);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v51 = __p;
    if (__p)
    {
      v52 = v80;
      v53 = __p;
      if (v80 != __p)
      {
        do
        {
          v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
        }

        while (v52 != v51);
        v53 = __p;
      }

      v80 = v51;
      operator delete(v53);
    }

    v54 = v77;
    if (v77)
    {
      v55 = v78;
      v56 = v77;
      if (v78 != v77)
      {
        do
        {
          v58 = *--v55;
          v57 = v58;
          *v55 = 0;
          if (v58)
          {
            operator delete[](v57);
          }
        }

        while (v55 != v54);
        v56 = v77;
      }

      v78 = v54;
      operator delete(v56);
    }

    if (v73 != v76)
    {
      free(v73);
    }
  }

LABEL_15:
  if (v83 != v85)
  {
    free(v83);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  return v20;
}

BOOL mlir::AsmParser::parseColonType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 576))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            operator delete[](v14);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::scf::WhileOp::verify(mlir::Block ***this)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v2 == v2)
  {
    goto LABEL_13;
  }

  v3 = v2[1];
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  if (*(v4 + 32) == v4 + 32)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v7 = v6;
  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
LABEL_14:
    v50 = 261;
    v47 = "expects the 'before' region to terminate with 'scf.condition'";
    v48 = 61;
    mlir::Operation::emitOpError(v1, &v47, &v51);
    if (v7)
    {
      v15 = mlir::Diagnostic::attachNote(v52, *(v7 + 24), 1);
      v16 = *(v15 + 16);
      LODWORD(v47) = 3;
      v48 = "terminator here";
      v49 = 15;
      v17 = *(v15 + 24);
      v18 = &v47;
      if (v17 >= *(v15 + 28))
      {
        if (v16 <= &v47 && v16 + 24 * v17 > &v47)
        {
          v43 = &v47 - v16;
          v44 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 16, (v15 + 32), v17 + 1, 24);
          v15 = v44;
          v16 = *(v44 + 16);
          v18 = &v43[v16];
        }

        else
        {
          v41 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 16, (v15 + 32), v17 + 1, 24);
          v15 = v41;
          v16 = *(v41 + 16);
          v18 = &v47;
        }
      }

      v19 = v16 + 24 * *(v15 + 24);
      v20 = *v18;
      *(v19 + 16) = v18[2];
      *v19 = v20;
      ++*(v15 + 24);
    }

    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v60 != 1)
    {
      return 0;
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v58;
      v23 = __p;
      if (v58 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v58 = v21;
      operator delete(v23);
    }

    v24 = v55;
    if (!v55)
    {
      goto LABEL_55;
    }

    v25 = v56;
    v26 = v55;
    if (v56 == v55)
    {
      goto LABEL_54;
    }

    do
    {
      v28 = *--v25;
      v27 = v28;
      *v25 = 0;
      if (v28)
      {
        operator delete[](v27);
      }
    }

    while (v25 != v24);
    goto LABEL_53;
  }

  v8 = *this;
  v9 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v9 + 24) == v9 + 24 || ((v10 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v11 = v10 - 8) : (v11 = 0), *(v11 + 32) == v11 + 32))
  {
    v13 = 0;
  }

  else
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v13 = v12;
    if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      return 1;
    }
  }

  v50 = 261;
  v47 = "expects the 'after' region to terminate with 'scf.yield'";
  v48 = 56;
  mlir::Operation::emitOpError(v8, &v47, &v51);
  if (v13)
  {
    v29 = mlir::Diagnostic::attachNote(v52, *(v13 + 24), 1);
    v30 = *(v29 + 16);
    LODWORD(v47) = 3;
    v48 = "terminator here";
    v49 = 15;
    v31 = *(v29 + 24);
    v32 = &v47;
    if (v31 >= *(v29 + 28))
    {
      if (v30 <= &v47 && v30 + 24 * v31 > &v47)
      {
        v45 = &v47 - v30;
        v46 = v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 16, (v29 + 32), v31 + 1, 24);
        v29 = v46;
        v30 = *(v46 + 16);
        v32 = &v45[v30];
      }

      else
      {
        v42 = v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 16, (v29 + 32), v31 + 1, 24);
        v29 = v42;
        v30 = *(v42 + 16);
        v32 = &v47;
      }
    }

    v33 = v30 + 24 * *(v29 + 24);
    v34 = *v32;
    *(v33 + 16) = v32[2];
    *v33 = v34;
    ++*(v29 + 24);
  }

  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v58;
      v37 = __p;
      if (v58 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v58 = v35;
      operator delete(v37);
    }

    v24 = v55;
    if (!v55)
    {
      goto LABEL_55;
    }

    v38 = v56;
    v26 = v55;
    if (v56 == v55)
    {
LABEL_54:
      v56 = v24;
      operator delete(v26);
LABEL_55:
      if (v53 != &v54)
      {
        free(v53);
      }

      return 0;
    }

    do
    {
      v40 = *--v38;
      v39 = v40;
      *v38 = 0;
      if (v40)
      {
        operator delete[](v39);
      }
    }

    while (v38 != v24);
LABEL_53:
    v26 = v55;
    goto LABEL_54;
  }

  return 0;
}

void mlir::scf::WhileOp::getCanonicalizationPatterns(void *a1, mlir::StringAttr *a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v4 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v4 = &unk_1F5B07498;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), v4 + 24, v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantArgsFromBeforeBlock]";
  v165 = 111;
  v9 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v165;
  }

  v11 = &v164[v10];
  v12 = v165 - v10;
  if (v165 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v165 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
  {
    v19 = v20 >> 2;
  }

  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    v21 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_211;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v24 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v24 = &unk_1F5B07538;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), v24 + 24, v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantValueYielded]";
  v165 = 104;
  v29 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v165;
  }

  v31 = &v164[v30];
  v32 = v165 - v30;
  if (v165 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v165 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (v41 >> 61)
    {
      goto LABEL_211;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v44 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v44 = &unk_1F5B075A8;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), v44 + 24, v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileConditionTruth]";
  v165 = 92;
  v49 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v165;
  }

  v51 = &v164[v50];
  v52 = v165 - v50;
  if (v165 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v165 - v50;
  }

  v54 = &v51[v53];
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  if (v60 >= 0x7FFFFFFFFFFFFFF8)
  {
    v61 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    if (v61 >> 61)
    {
      goto LABEL_211;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v64 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v64 = &unk_1F5B07618;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), v64 + 24, v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileCmpCond]";
  v165 = 85;
  v69 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v165;
  }

  v71 = &v164[v70];
  v72 = v165 - v70;
  if (v165 - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = v165 - v70;
  }

  v74 = &v71[v73];
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
  {
    v79 = v80 >> 2;
  }

  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    v81 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = v79;
  }

  if (v81)
  {
    if (v81 >> 61)
    {
      goto LABEL_211;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v84 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v84 = &unk_1F5B07688;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), v84 + 24, v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileUnusedResult]";
  v165 = 90;
  v89 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = v165;
  }

  v91 = &v164[v90];
  v92 = v165 - v90;
  if (v165 - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = v165 - v90;
  }

  v94 = &v91[v93];
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
  {
    v99 = v100 >> 2;
  }

  if (v100 >= 0x7FFFFFFFFFFFFFF8)
  {
    v101 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v101 = v99;
  }

  if (v101)
  {
    if (v101 >> 61)
    {
      goto LABEL_211;
    }

    v102 = operator new(8 * v101);
  }

  else
  {
    v102 = 0;
  }

  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
  v104 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v104 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v104 = &unk_1F5B076F8;
  if (*(v104 + 9))
  {
    v105 = v104[22];
    if (v105 <= v104[23])
    {
      goto LABEL_133;
    }

LABEL_144:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v104 + 20), v104 + 24, v105, 16);
    v104[22] = v104[22];
    v107 = a1[2];
    v106 = a1[3];
    if (v107 < v106)
    {
      goto LABEL_134;
    }

    goto LABEL_145;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileRemoveDuplicatedResults]";
  v165 = 101;
  v109 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v109)
  {
    v110 = v109;
  }

  else
  {
    v110 = v165;
  }

  v111 = &v164[v110];
  v112 = v165 - v110;
  if (v165 - v110 >= 0x12)
  {
    v113 = 18;
  }

  else
  {
    v113 = v165 - v110;
  }

  v114 = &v111[v113];
  v115 = v112 - v113;
  if (v115 >= v115 - 1)
  {
    --v115;
  }

  *(v104 + 8) = v114;
  *(v104 + 9) = v115;
  v105 = v104[22];
  if (v105 > v104[23])
  {
    goto LABEL_144;
  }

LABEL_133:
  v104[22] = v105;
  v107 = a1[2];
  v106 = a1[3];
  if (v107 < v106)
  {
LABEL_134:
    *v107 = v104;
    v108 = v107 + 8;
    goto LABEL_157;
  }

LABEL_145:
  v116 = a1[1];
  v117 = v107 - v116;
  v118 = (v107 - v116) >> 3;
  v119 = v118 + 1;
  if ((v118 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v120 = v106 - v116;
  if (v120 >> 2 > v119)
  {
    v119 = v120 >> 2;
  }

  if (v120 >= 0x7FFFFFFFFFFFFFF8)
  {
    v121 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = v119;
  }

  if (v121)
  {
    if (v121 >> 61)
    {
      goto LABEL_211;
    }

    v122 = operator new(8 * v121);
  }

  else
  {
    v122 = 0;
  }

  v123 = &v122[8 * v118];
  *v123 = v104;
  v108 = v123 + 8;
  memcpy(v122, v116, v117);
  a1[1] = v122;
  a1[2] = v108;
  a1[3] = &v122[8 * v121];
  if (v116)
  {
    operator delete(v116);
  }

LABEL_157:
  a1[2] = v108;
  v124 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v124 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v124 = &unk_1F5B07768;
  if (*(v124 + 9))
  {
    v125 = v124[22];
    if (v125 <= v124[23])
    {
      goto LABEL_159;
    }

LABEL_170:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v124 + 20), v124 + 24, v125, 16);
    v124[22] = v124[22];
    v127 = a1[2];
    v126 = a1[3];
    if (v127 < v126)
    {
      goto LABEL_160;
    }

    goto LABEL_171;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileRemoveUnusedArgs]";
  v165 = 94;
  v129 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v129)
  {
    v130 = v129;
  }

  else
  {
    v130 = v165;
  }

  v131 = &v164[v130];
  v132 = v165 - v130;
  if (v165 - v130 >= 0x12)
  {
    v133 = 18;
  }

  else
  {
    v133 = v165 - v130;
  }

  v134 = &v131[v133];
  v135 = v132 - v133;
  if (v135 >= v135 - 1)
  {
    --v135;
  }

  *(v124 + 8) = v134;
  *(v124 + 9) = v135;
  v125 = v124[22];
  if (v125 > v124[23])
  {
    goto LABEL_170;
  }

LABEL_159:
  v124[22] = v125;
  v127 = a1[2];
  v126 = a1[3];
  if (v127 < v126)
  {
LABEL_160:
    *v127 = v124;
    v128 = v127 + 8;
    goto LABEL_183;
  }

LABEL_171:
  v136 = a1[1];
  v137 = v127 - v136;
  v138 = (v127 - v136) >> 3;
  v139 = v138 + 1;
  if ((v138 + 1) >> 61)
  {
    goto LABEL_210;
  }

  v140 = v126 - v136;
  if (v140 >> 2 > v139)
  {
    v139 = v140 >> 2;
  }

  if (v140 >= 0x7FFFFFFFFFFFFFF8)
  {
    v141 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v141 = v139;
  }

  if (v141)
  {
    if (v141 >> 61)
    {
      goto LABEL_211;
    }

    v142 = operator new(8 * v141);
  }

  else
  {
    v142 = 0;
  }

  v143 = &v142[8 * v138];
  *v143 = v124;
  v128 = v143 + 8;
  memcpy(v142, v136, v137);
  a1[1] = v142;
  a1[2] = v128;
  a1[3] = &v142[8 * v141];
  if (v136)
  {
    operator delete(v136);
  }

LABEL_183:
  a1[2] = v128;
  v144 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v164, 1);
  mlir::Pattern::Pattern((v144 + 2), "scf.while", 9, v164, a2, 0, 0);
  *v144 = &unk_1F5B077D8;
  if (*(v144 + 9))
  {
    v145 = v144[22];
    if (v145 <= v144[23])
    {
      goto LABEL_185;
    }

LABEL_196:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v144 + 20), v144 + 24, v145, 16);
    v144[22] = v144[22];
    v147 = a1[2];
    v146 = a1[3];
    if (v147 < v146)
    {
      goto LABEL_186;
    }

    goto LABEL_197;
  }

  v164 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::WhileOpAlignBeforeArgs]";
  v165 = 95;
  v149 = llvm::StringRef::find(&v164, "DesiredTypeName = ", 0x12uLL, 0);
  if (v165 >= v149)
  {
    v150 = v149;
  }

  else
  {
    v150 = v165;
  }

  v151 = &v164[v150];
  v152 = v165 - v150;
  if (v165 - v150 >= 0x12)
  {
    v153 = 18;
  }

  else
  {
    v153 = v165 - v150;
  }

  v154 = &v151[v153];
  v155 = v152 - v153;
  if (v155 >= v155 - 1)
  {
    --v155;
  }

  *(v144 + 8) = v154;
  *(v144 + 9) = v155;
  v145 = v144[22];
  if (v145 > v144[23])
  {
    goto LABEL_196;
  }

LABEL_185:
  v144[22] = v145;
  v147 = a1[2];
  v146 = a1[3];
  if (v147 < v146)
  {
LABEL_186:
    *v147 = v144;
    v148 = v147 + 8;
    goto LABEL_209;
  }

LABEL_197:
  v156 = a1[1];
  v157 = v147 - v156;
  v158 = (v147 - v156) >> 3;
  v159 = v158 + 1;
  if ((v158 + 1) >> 61)
  {
LABEL_210:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v160 = v146 - v156;
  if (v160 >> 2 > v159)
  {
    v159 = v160 >> 2;
  }

  if (v160 >= 0x7FFFFFFFFFFFFFF8)
  {
    v161 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v161 = v159;
  }

  if (v161)
  {
    if (!(v161 >> 61))
    {
      v162 = operator new(8 * v161);
      goto LABEL_207;
    }

LABEL_211:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v162 = 0;
LABEL_207:
  v163 = &v162[8 * v158];
  *v163 = v144;
  v148 = v163 + 8;
  memcpy(v162, v156, v157);
  a1[1] = v162;
  a1[2] = v148;
  a1[3] = &v162[8 * v161];
  if (v156)
  {
    operator delete(v156);
  }

LABEL_209:
  a1[2] = v148;
}

BOOL mlir::scf::IndexSwitchOp::verify(mlir::Block ***this)
{
  v83 = *MEMORY[0x1E69E9840];
  v71[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v71);
  v2 = *this;
  v3 = *(*this + 11);
  if (v4 == (v3 & 0x7FFFFF) - 1)
  {
    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    v71[0] = v2[2 * ((v3 >> 23) & 1) + 8];
    v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v71);
    if (v6)
    {
      v7 = v5;
      v8 = 8 * v6;
      while (1)
      {
        v63 = *v7;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v64, &v63, v71);
        if ((v72 & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v66[0] = "has duplicate case value: ";
      v67 = 259;
      mlir::OpState::emitOpError(this, v66, v71);
      if (v71[0])
      {
        LODWORD(v68) = 2;
        v69 = v63;
        v43 = &v68;
        v44 = v73;
        if (v74 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v74 > &v68)
          {
            v62 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v44 = v73;
            v43 = (v73 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v43 = &v68;
            v44 = v73;
          }
        }

        v45 = &v44[24 * v74];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        ++v74;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
      if (v71[0])
      {
        mlir::InFlightDiagnostic::report(v71);
      }

      if (v82)
      {
        if (v81 != &v82)
        {
          free(v81);
        }

        v47 = __p;
        if (__p)
        {
          v48 = v80;
          v49 = __p;
          if (v80 != __p)
          {
            do
            {
              v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v80 = v47;
          operator delete(v49);
        }

        v50 = v77;
        if (v77)
        {
          v51 = v78;
          v52 = v77;
          if (v78 != v77)
          {
            do
            {
              v54 = *--v51;
              v53 = v54;
              *v51 = 0;
              if (v54)
              {
                operator delete[](v53);
              }
            }

            while (v51 != v50);
            v52 = v77;
          }

          v78 = v50;
          operator delete(v52);
        }

        if (v73 != v76)
        {
          free(v73);
        }
      }
    }

    else
    {
LABEL_6:
      v9 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
      v71[0] = "default region";
      LOWORD(v74) = 259;
      if ((mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(this, v9, v71) & 1) == 0)
      {
        goto LABEL_63;
      }

      v10 = *(*this + 11);
      v11 = v10 & 0x7FFFFF;
      if ((v10 & 0x7FFFFF) != 0)
      {
        if (v11 == 1)
        {
          goto LABEL_63;
        }

        v12 = ((&(*this)[2 * ((v10 >> 23) & 1) + 8] + ((v10 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
        v13 = v12 + 24 * v11;
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      v55 = 0;
      v56 = v12 + 24;
      do
      {
        v66[0] = v55;
        v71[0] = "case region #";
        v72 = v66;
        LOWORD(v74) = 2819;
        if ((mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(this, v56, v71) & 1) == 0)
        {
          break;
        }

        v55 = (v55 + 1);
        v56 += 24;
      }

      while (v56 != v13);
    }

LABEL_63:
    llvm::deallocate_buffer(v64[0], (8 * v65));
  }

  v66[0] = "has ";
  v67 = 259;
  mlir::OpState::emitOpError(this, v66, v71);
  if (v71[0])
  {
    v14 = (*(*this + 11) & 0x7FFFFF) - 1;
    LODWORD(v68) = 5;
    v69 = v14;
    v15 = &v68;
    v16 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v68 && v73 + 24 * v74 > &v68)
      {
        v58 = &v68 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v16 = v73;
        v15 = (v73 + v58);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v15 = &v68;
        v16 = v73;
      }
    }

    v17 = &v16[24 * v74];
    v18 = *v15;
    *(v17 + 2) = v15[2];
    *v17 = v18;
    v19 = ++v74;
    if (v71[0])
    {
      LODWORD(v68) = 3;
      v69 = " case regions but ";
      v70 = 18;
      v20 = &v68;
      v21 = v73;
      if (v19 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v19 > &v68)
        {
          v60 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v19 + 1, 24);
          v21 = v73;
          v20 = (v73 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v19 + 1, 24);
          v20 = &v68;
          v21 = v73;
        }
      }

      v22 = &v21[24 * v74];
      v23 = *v20;
      *(v22 + 2) = v20[2];
      *v22 = v23;
      ++v74;
    }
  }

  v68 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v68);
  if (v71[0])
  {
    LODWORD(v68) = 5;
    v69 = v24;
    v25 = &v68;
    v26 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v68 && v73 + 24 * v74 > &v68)
      {
        v59 = &v68 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v26 = v73;
        v25 = (v73 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v25 = &v68;
        v26 = v73;
      }
    }

    v27 = &v26[24 * v74];
    v28 = *v25;
    *(v27 + 2) = v25[2];
    *v27 = v28;
    v29 = ++v74;
    if (v71[0])
    {
      LODWORD(v68) = 3;
      v69 = " case values";
      v70 = 12;
      v30 = &v68;
      v31 = v73;
      if (v29 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v29 > &v68)
        {
          v61 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v29 + 1, 24);
          v31 = v73;
          v30 = (v73 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v29 + 1, 24);
          v30 = &v68;
          v31 = v73;
        }
      }

      v32 = &v31[24 * v74];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      ++v74;
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v80;
      v37 = __p;
      if (v80 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v80 = v35;
      operator delete(v37);
    }

    v38 = v77;
    if (v77)
    {
      v39 = v78;
      v40 = v77;
      if (v78 != v77)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            operator delete[](v41);
          }
        }

        while (v39 != v38);
        v40 = v77;
      }

      v78 = v38;
      operator delete(v40);
    }

    if (v73 != v76)
    {
      free(v73);
    }
  }

  return v34;
}

uint64_t mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(mlir::Block ***a1, uint64_t a2, const void ***a3)
{
  v147 = *MEMORY[0x1E69E9840];
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v128 = "expected region to end with scf.yield, but got ";
    v131 = 259;
    mlir::OpState::emitOpError(a1, &v128, &v135);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    if (v135)
    {
      mlir::Diagnostic::operator<<(v136, *(v6 + 48));
    }

    Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v135);
    if (v135)
    {
      mlir::InFlightDiagnostic::report(&v135);
    }

    if (v146 != 1)
    {
      return Enum;
    }

    if (v145 != &v146)
    {
      free(v145);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v144;
      v10 = __p;
      if (v144 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v144 = v8;
      operator delete(v10);
    }

    v11 = v141;
    if (!v141)
    {
      goto LABEL_97;
    }

    v12 = v142;
    v13 = v141;
    if (v142 == v141)
    {
LABEL_96:
      v142 = v11;
      operator delete(v13);
LABEL_97:
      v74 = v137;
      if (v137 != v140)
      {
LABEL_98:
        free(v74);
        return Enum;
      }

      return Enum;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        operator delete[](v14);
      }
    }

    while (v12 != v11);
LABEL_95:
    v13 = v141;
    goto LABEL_96;
  }

  v16 = v5;
  if ((*(v5 + 46) & 0x80) == 0)
  {
    v17 = 0;
    v18 = *a1;
    if (!*(*a1 + 9))
    {
      goto LABEL_22;
    }

LABEL_66:
    v128 = "expected each region to return ";
    v131 = 259;
    mlir::OpState::emitOpError(a1, &v128, &v135);
    if (v135)
    {
      v75 = *(*a1 + 9);
      LODWORD(v132) = 5;
      v133 = v75;
      v76 = &v132;
      v77 = v137;
      if (v138 >= v139)
      {
        v108 = a3;
        v109 = v16;
        if (v137 <= &v132 && v137 + 24 * v138 > &v132)
        {
          v116 = &v132 - v137;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v77 = v137;
          v76 = (v137 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v76 = &v132;
          v77 = v137;
        }

        v16 = v109;
        a3 = v108;
      }

      v78 = &v77[24 * v138];
      v79 = *v76;
      *(v78 + 2) = v76[2];
      *v78 = v79;
      v80 = ++v138;
      if (v135)
      {
        LODWORD(v132) = 3;
        v133 = " values, but ";
        v134 = 13;
        v81 = &v132;
        v82 = v137;
        if (v80 >= v139)
        {
          v111 = a3;
          v112 = v16;
          if (v137 <= &v132 && v137 + 24 * v80 > &v132)
          {
            v118 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v80 + 1, 24);
            v82 = v137;
            v81 = (v137 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v80 + 1, 24);
            v81 = &v132;
            v82 = v137;
          }

          v16 = v112;
          a3 = v111;
        }

        v83 = &v82[24 * v138];
        v84 = *v81;
        *(v83 + 2) = v81[2];
        *v83 = v84;
        ++v138;
        if (v135)
        {
          mlir::Diagnostic::operator<<(v136, a3);
          if (v135)
          {
            LODWORD(v132) = 3;
            v133 = " returns ";
            v134 = 9;
            v85 = &v132;
            v86 = v137;
            if (v138 >= v139)
            {
              v113 = v16;
              if (v137 <= &v132 && v137 + 24 * v138 > &v132)
              {
                v122 = &v132 - v137;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
                v86 = v137;
                v85 = (v137 + v122);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
                v85 = &v132;
                v86 = v137;
              }

              v16 = v113;
            }

            v87 = &v86[24 * v138];
            v88 = *v85;
            *(v87 + 2) = v85[2];
            *v87 = v88;
            ++v138;
          }
        }
      }
    }

    if ((*(v16 + 46) & 0x80) != 0)
    {
      v89 = *(v16 + 68);
      if (v135)
      {
LABEL_76:
        LODWORD(v132) = 5;
        v133 = v89;
        v90 = &v132;
        v91 = v137;
        if (v138 >= v139)
        {
          v110 = v16;
          if (v137 <= &v132 && v137 + 24 * v138 > &v132)
          {
            v117 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v91 = v137;
            v90 = (v137 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
            v90 = &v132;
            v91 = v137;
          }

          v16 = v110;
        }

        v92 = &v91[24 * v138];
        v93 = *v90;
        *(v92 + 2) = v90[2];
        *v92 = v93;
        ++v138;
      }
    }

    else
    {
      v89 = 0;
      if (v135)
      {
        goto LABEL_76;
      }
    }

    v94 = mlir::Diagnostic::attachNote(v136, *(v16 + 24), 1);
    v95 = *(v94 + 16);
    LODWORD(v132) = 3;
    v133 = "see yield operation here";
    v134 = 24;
    v96 = *(v94 + 24);
    v97 = &v132;
    if (v96 >= *(v94 + 28))
    {
      if (v95 <= &v132 && v95 + 24 * v96 > &v132)
      {
        v114 = &v132 - v95;
        v115 = v94;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v94 + 16, (v94 + 32), v96 + 1, 24);
        v94 = v115;
        v95 = *(v115 + 16);
        v97 = &v114[v95];
      }

      else
      {
        v107 = v94;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v94 + 16, (v94 + 32), v96 + 1, 24);
        v94 = v107;
        v95 = *(v107 + 16);
        v97 = &v132;
      }
    }

    v98 = v95 + 24 * *(v94 + 24);
    v99 = *v97;
    *(v98 + 16) = v97[2];
    *v98 = v99;
    ++*(v94 + 24);
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    if (v135)
    {
      mlir::InFlightDiagnostic::report(&v135);
    }

    if (v146 != 1)
    {
      return Enum;
    }

    if (v145 != &v146)
    {
      free(v145);
    }

    v100 = __p;
    if (__p)
    {
      v101 = v144;
      v102 = __p;
      if (v144 != __p)
      {
        do
        {
          v101 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v101 - 1);
        }

        while (v101 != v100);
        v102 = __p;
      }

      v144 = v100;
      operator delete(v102);
    }

    v11 = v141;
    if (!v141)
    {
      goto LABEL_97;
    }

    v103 = v142;
    v13 = v141;
    if (v142 == v141)
    {
      goto LABEL_96;
    }

    do
    {
      v105 = *--v103;
      v104 = v105;
      *v103 = 0;
      if (v105)
      {
        operator delete[](v104);
      }
    }

    while (v103 != v11);
    goto LABEL_95;
  }

  v17 = *(v5 + 68);
  v18 = *a1;
  if (v17 != *(*a1 + 9))
  {
    goto LABEL_66;
  }

LABEL_22:
  v19 = v17;
  v20 = (v18 - 2);
  if (!v17)
  {
    v20 = 0;
  }

  v128 = v20;
  v129 = v17;
  mlir::OperandRange::getTypes(&v135, &v128);
  if ((*(v16 + 46) & 0x80) != 0)
  {
    v21 = *(v16 + 68);
    v132 = *(v16 + 72);
    v133 = v21;
    mlir::OperandRange::getTypes(&v128, &v132);
    Enum = 1;
    if (!v17)
    {
      return Enum;
    }
  }

  else
  {
    v132 = 0;
    v133 = 0;
    mlir::OperandRange::getTypes(&v128, &v132);
    Enum = 1;
    if (!v17)
    {
      return Enum;
    }
  }

  v126 = a3;
  v127 = v16;
  v22 = v136[0];
  if (v136[0] != v137)
  {
    v23 = 0;
    v24 = v135;
    v25 = &v128[4 * v129 + 3];
    v26 = v130 - v129;
    v27 = v137 - 1;
    v28 = (v19 - 1);
    while (1)
    {
      if (!v26)
      {
        return 1;
      }

      v29 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v22) + 8) & 0xFFFFFFFFFFFFFFF8;
      v30 = *(*v25 + 1) & 0xFFFFFFFFFFFFFFF8;
      if (v29 != v30)
      {
        break;
      }

      Enum = 1;
      if (v28 != v23)
      {
        ++v23;
        v25 += 4;
        --v26;
        if (v27 != v22++)
        {
          continue;
        }
      }

      return Enum;
    }

    v128 = "expected result #";
    v131 = 259;
    mlir::OpState::emitOpError(a1, &v128, &v135);
    v32 = v127;
    if (v135)
    {
      LODWORD(v132) = 5;
      v133 = v23;
      v33 = &v132;
      v34 = v137;
      if (v138 >= v139)
      {
        if (v137 <= &v132 && v137 + 24 * v138 > &v132)
        {
          v123 = &v132 - v137;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v34 = v137;
          v33 = (v137 + v123);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
          v33 = &v132;
          v34 = v137;
        }

        v32 = v127;
      }

      v35 = &v34[24 * v138];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      v37 = ++v138;
      if (v135)
      {
        LODWORD(v132) = 3;
        v133 = " of each region to be ";
        v134 = 22;
        v38 = &v132;
        v39 = v137;
        if (v37 >= v139)
        {
          if (v137 <= &v132 && v137 + 24 * v37 > &v132)
          {
            v124 = &v132 - v137;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v37 + 1, 24);
            v39 = v137;
            v38 = (v137 + v124);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v37 + 1, 24);
            v38 = &v132;
            v39 = v137;
          }

          v32 = v127;
        }

        v40 = &v39[24 * v138];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v138;
        if (v135)
        {
          v42 = &v132;
          mlir::DiagnosticArgument::DiagnosticArgument(&v132, v29);
          v43 = v137;
          if (v138 >= v139)
          {
            if (v137 <= &v132 && v137 + 24 * v138 > &v132)
            {
              v125 = &v132 - v137;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
              v43 = v137;
              v42 = (v137 + v125);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
              v42 = &v132;
              v43 = v137;
            }

            v32 = v127;
          }

          v44 = &v43[24 * v138];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v138;
        }
      }
    }

    v46 = mlir::Diagnostic::attachNote(v136, *(v32 + 24), 1);
    v47 = mlir::Diagnostic::operator<<(v46, v126);
    v48 = v47;
    v50 = v47 + 16;
    v49 = *(v47 + 16);
    LODWORD(v132) = 3;
    v133 = " returns ";
    v134 = 9;
    v51 = *(v47 + 24);
    v52 = &v132;
    if (v51 >= *(v47 + 28))
    {
      if (v49 <= &v132 && v49 + 24 * v51 > &v132)
      {
        v119 = &v132 - v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 16, (v47 + 32), v51 + 1, 24);
        v49 = *(v48 + 16);
        v52 = &v119[v49];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v47 + 16, (v47 + 32), v51 + 1, 24);
        v49 = *(v48 + 16);
        v52 = &v132;
      }
    }

    v53 = v49 + 24 * *(v48 + 24);
    v54 = *v52;
    *(v53 + 16) = v52[2];
    *v53 = v54;
    ++*(v48 + 24);
    v55 = &v132;
    mlir::DiagnosticArgument::DiagnosticArgument(&v132, v30);
    v56 = *(v48 + 24);
    v57 = *(v48 + 16);
    if (v56 >= *(v48 + 28))
    {
      if (v57 <= &v132 && v57 + 24 * v56 > &v132)
      {
        v120 = &v132 - v57;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v50, (v48 + 32), v56 + 1, 24);
        v57 = *(v48 + 16);
        v55 = &v120[v57];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v50, (v48 + 32), v56 + 1, 24);
        v57 = *(v48 + 16);
        v55 = &v132;
      }
    }

    v58 = v57 + 24 * *(v48 + 24);
    v59 = *v55;
    *(v58 + 16) = v55[2];
    *v58 = v59;
    v60 = *(v48 + 28);
    v61 = (*(v48 + 24) + 1);
    *(v48 + 24) = v61;
    LODWORD(v132) = 3;
    v133 = " here";
    v134 = 5;
    v62 = *(v48 + 16);
    v63 = &v132;
    if (v61 >= v60)
    {
      if (v62 <= &v132 && v62 + 24 * v61 > &v132)
      {
        v121 = &v132 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v50, (v48 + 32), v61 + 1, 24);
        v62 = *(v48 + 16);
        v63 = &v121[v62];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v50, (v48 + 32), v61 + 1, 24);
        v62 = *(v48 + 16);
        v63 = &v132;
      }
    }

    v64 = v62 + 24 * *(v48 + 24);
    v65 = *v63;
    *(v64 + 16) = v63[2];
    *v64 = v65;
    ++*(v48 + 24);
    Enum = getEnumTag for MPSGraphDelegateKernelError();
    if (v135)
    {
      mlir::InFlightDiagnostic::report(&v135);
    }

    if (v146)
    {
      if (v145 != &v146)
      {
        free(v145);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v144;
        v68 = __p;
        if (v144 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v144 = v66;
        operator delete(v68);
      }

      v69 = v141;
      if (v141)
      {
        v70 = v142;
        v71 = v141;
        if (v142 != v141)
        {
          do
          {
            v73 = *--v70;
            v72 = v73;
            *v70 = 0;
            if (v73)
            {
              operator delete[](v72);
            }
          }

          while (v70 != v69);
          v71 = v141;
        }

        v142 = v69;
        operator delete(v71);
      }

      v74 = v137;
      if (v137 != v140)
      {
        goto LABEL_98;
      }
    }
  }

  return Enum;
}

void mlir::scf::IndexSwitchOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*a1 + 36);
    if (v4)
    {
      v5 = *a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    v12 = v4;
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a3, &v11);
    }

    else
    {
      v7 = (*a3 + 24 * v6);
      *v7 = 0;
      mlir::ValueRange::ValueRange(v7 + 1, v5, v4);
      ++*(a3 + 8);
    }
  }

  else
  {
    v8 = *(*a1 + 44);
    v9 = v8 & 0x7FFFFF;
    if ((v8 & 0x7FFFFF) != 0)
    {
      v10 = ((*a1 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    mlir::ValueRange::ValueRange(&v11, v10, v9);
    std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v11, 0, v12, a3, &v11);
  }
}

void mlir::scf::IndexSwitchOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v35[2] = *(*a1 + 56);
  v35[3] = v9;
  v36 = 1;
  v10 = *(v8 + 44);
  v11 = v8 + 16 * ((v10 >> 23) & 1);
  v13 = *(v11 + 64);
  v12 = v11 + 64;
  v37 = v13;
  if ((v10 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange(v38, ((v12 + ((v10 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40), v10 & 0x7FFFFF);
    v39 = a2;
    v40 = a3;
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v14 = 0;
    }

    v35[0] = v14;
    if (!v14)
    {
      goto LABEL_11;
    }

    v41[0] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v41);
    v17 = *a1;
    v18 = *(*a1 + 44);
    if ((v18 & 0x7FFFFF) != 0)
    {
      v19 = ((v17 + 16 * ((v18 >> 23) & 1) + ((v18 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40);
      v20 = (v18 & 0x7FFFFF) - 1;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = 0;
      v20 = -1;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    if (v20)
    {
      v24 = v19 + 24;
      v25 = 24 * v20 - 24;
      v26 = 8 * v15 - 8;
      while (1)
      {
        v27 = *v16;
        if (v27 == mlir::IntegerAttr::getInt(v35))
        {
          break;
        }

        if (v26)
        {
          ++v16;
          v24 += 24;
          v28 = v25;
          v25 -= 24;
          v26 -= 8;
          if (v28)
          {
            continue;
          }
        }

        v17 = *a1;
        LODWORD(v18) = *(*a1 + 44);
        goto LABEL_22;
      }

      v41[0] = v24;
      v33 = *(a4 + 8);
      if (v33 < *(a4 + 12))
      {
        v34 = (*a4 + 24 * v33);
        *v34 = v24;
        v32 = (v34 + 1);
        goto LABEL_26;
      }

LABEL_27:
      llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v41);
      return;
    }

LABEL_22:
    v29 = ((v17 + 16 * ((v18 >> 23) & 1) + ((v18 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40);
    v41[0] = v29;
    v30 = *(a4 + 8);
    if (v30 < *(a4 + 12))
    {
      v31 = (*a4 + 24 * v30);
      *v31 = v29;
      v32 = v31 + 1;
LABEL_26:
      mlir::ValueRange::ValueRange(v32, 0, 0);
      ++*(a4 + 8);
      return;
    }

    goto LABEL_27;
  }

  mlir::ValueRange::ValueRange(v38, 0, 0);
  v39 = a2;
  v40 = a3;
  v14 = *a2;
  if (*a2)
  {
    goto LABEL_5;
  }

LABEL_11:
  v21 = *(*a1 + 44);
  v22 = v21 & 0x7FFFFF;
  if ((v21 & 0x7FFFFF) != 0)
  {
    v23 = ((*a1 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  mlir::ValueRange::ValueRange(v41, v23, v22);
  std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v41[0], 0, v41[1], a4, v41);
}

void mlir::scf::IndexSwitchOp::getRegionInvocationBounds(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_13;
  }

  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v27 = v6;
  if (!v6)
  {
LABEL_13:
    v18 = *(*result + 44) & 0x7FFFFF;
    *&v26[1] = 0;
    *&v26[5] = 0x100000001;
    v19 = *&v26[1];
    v20 = *(a4 + 8);
    if (v20 + v18 > *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v20 + v18, 12);
      LODWORD(v20) = *(a4 + 8);
      if (v18)
      {
LABEL_15:
        v21 = *a4 + 12 * v20;
        v22 = v18;
        do
        {
          *v21 = v19;
          *(v21 + 8) = 1;
          v21 += 12;
          --v22;
        }

        while (v22);
        LODWORD(v20) = *(a4 + 8);
      }
    }

    else if (v18)
    {
      goto LABEL_15;
    }

    *(a4 + 8) = v20 + v18;
    return;
  }

  v7 = *(*result + 44);
  *&v26[1] = *(*result + 16 * ((v7 >> 23) & 1) + 64);
  v8 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v26[1]);
  v10 = v9;
  Int = mlir::IntegerAttr::getInt(&v27);
  if (v10)
  {
    v12 = 8 * v10;
    v13 = &v8[v10];
    while (*v8 != Int)
    {
      ++v8;
      v12 -= 8;
      if (!v12)
      {
        v8 = v13;
        break;
      }
    }
  }

  *&v26[1] = *(*result + 16 * ((*(*result + 44) >> 23) & 1) + 64);
  v14 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v26[1]);
  if (v8 == (v14 + 8 * v15))
  {
    LODWORD(v16) = (v7 & 0x7FFFFF) - 1;
    for (i = *(*result + 44) & 0x7FFFFF; i; --i)
    {
LABEL_20:
      while (1)
      {
        v26[4] = 0;
        *v26 = v16 == 0;
        v23 = *(a4 + 8);
        if (v23 < *(a4 + 12))
        {
          break;
        }

        llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,BOOL>(a4, &v26[1], v26);
        LODWORD(v16) = v16 - 1;
        if (!--i)
        {
          return;
        }
      }

      v24 = *a4 + 12 * v23;
      if (v16)
      {
        v25 = 0x100000000;
      }

      else
      {
        v25 = 0x100000001;
      }

      *v24 = 0;
      *(v24 + 4) = v25;
      ++*(a4 + 8);
      LODWORD(v16) = v16 - 1;
    }
  }

  else
  {
    *&v26[1] = *(*result + 16 * ((*(*result + 44) >> 23) & 1) + 64);
    v16 = (v8 - mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v26[1])) >> 3;
    i = *(*result + 44) & 0x7FFFFF;
    if (i)
    {
      goto LABEL_20;
    }
  }
}

unint64_t mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::scf::detail::ConditionOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "FDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &byte_1E097E05B[v6];
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = &byte_1E097E05B[v23];
  v26 = v23 - v6;
  do
  {
    v27 = *v25;
    v25 += 4;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (byte_1E097E05B[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

void mlir::scf::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v12, 8);
    v12 = *(a2 + 72);
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      *(v14 + 8 * v13) = mlir::TypeRange::dereference_iterator(a3, v13);
      ++v13;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
}

BOOL mlir::scf::ConditionOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[16] = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  v9 = ((*(*a1 + 280))(a1, a2, a3, a4) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v16 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v13) & 1) != 0) && (v7 = (*(*a1 + 32))(a1), IntegerType = mlir::Builder::getIntegerType(v7, 1), ((*(*a1 + 728))(a1, v11, IntegerType, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, v13, v6, a2 + 16);
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::scf::ConditionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++v6[4];
  }

  v43 = v45;
  v44 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v43, v44);
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) == 1)
  {
    goto LABEL_28;
  }

  v10 = (*(*a2 + 16))(a2);
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

  v12 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v13 = 0;
    v14 = -1;
    v15 = (*(*a2 + 16))(a2);
LABEL_14:
    v16 = v15;
    (*(*a2 + 160))(a2, *(v13 + 56));
    v17 = v14 - 1;
    if (v17)
    {
      v31 = (v13 + 88);
      do
      {
        v33 = v16[4];
        if (v16[3] - v33 > 1uLL)
        {
          *v33 = 8236;
          v16[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v32 = *v31;
        v31 += 4;
        (*(*a2 + 160))(a2, v32);
        --v17;
      }

      while (v17);
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 9);
  v14 = *(v12 + 17) - 1;
  v15 = (*(*a2 + 16))(a2);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v18 = (*(*a2 + 16))(a2);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    v26 = *(v24 + 9);
    v27 = v25 - 1;
  }

  else
  {
    v26 = 0;
    v27 = -1;
  }

  v39[0] = v26 + 32;
  v39[1] = v27;
  mlir::OperandRange::getTypes(&AttrDictionary, v39);
  v28 = v41;
  v29 = v42;
  if (v41 != v42)
  {
    v30 = AttrDictionary + 32 * v41;
    (*(*a2 + 32))(a2, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v28 + 1 != v29)
    {
      v34 = ~v28 + v29;
      v35 = (v30 + 56);
      do
      {
        v37 = (*(*a2 + 16))(a2);
        v38 = v37[4];
        if (v37[3] - v38 > 1uLL)
        {
          *v38 = 8236;
          v37[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v37, ", ", 2uLL);
        }

        v36 = *v35;
        v35 += 4;
        (*(*a2 + 32))(a2, *(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v34;
      }

      while (v34);
    }
  }

LABEL_28:
  if (v43 != v45)
  {
    free(v43);
  }
}

unint64_t mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::scf::detail::ForOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "hared_ptr_emplaceIN4mlir16ThreadLocalCacheIPNS1_14StorageUniquer16StorageAllocatorEE16PerInstanceStateENS_9allocatorIS7_EEEE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_1E097EB2C + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_1E097EB2C + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_1E097EB2C + v5))
  {
    v31 = (a3 - 3) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 4));
}

BOOL mlir::scf::ForOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(*this, *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(*this, *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) || !mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(*this, *(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 9);
  if (*(*this + 9))
  {
    v4 = (*this - 2);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  v6 = v2[9];
  v7 = *(*(v6 + 3) + 8);
  v8 = *(*(v6 + 7) + 8);
  if ((v8 ^ v7) <= 7 && (*(*(v6 + 11) + 8) ^ v8 | v7 ^ *(*(v6 + 11) + 8)) < 8)
  {
    return mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(v2, ((v2 + ((*(v2 + 11) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10), "region", 6, 0);
  }

  v19 = "failed to verify that all of {lowerBound, upperBound, step} have same type";
  v20 = 259;
  mlir::OpState::emitOpError(this, &v19, v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            operator delete[](v17);
          }
        }

        while (v15 != v14);
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

BOOL mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(mlir::Block **a1, uint64_t a2, const void **a3, const void **a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v43))
  {
    return 1;
  }

  v42 = 261;
  v41[0] = a3;
  v41[1] = a4;
  mlir::Operation::emitOpError(a1, v41, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = " #";
    v46 = 2;
    v10 = &v44;
    v11 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v37 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v11 = v48;
        v10 = (v48 + v37);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v10 = &v44;
        v11 = v48;
      }
    }

    v12 = &v11[24 * v49];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v49;
    if (v47[0])
    {
      v44 = 5;
      v45 = a5;
      v15 = &v44;
      v16 = v48;
      if (v14 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v14 > &v44)
        {
          v38 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v14 + 1, 24);
          v16 = v48;
          v15 = (v48 + v38);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v14 + 1, 24);
          v15 = &v44;
          v16 = v48;
        }
      }

      v17 = &v16[24 * v49];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v49;
      if (v47[0])
      {
        v44 = 3;
        v45 = " must be signless integer or index, but got ";
        v46 = 44;
        v20 = &v44;
        v21 = v48;
        if (v19 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v19 > &v44)
          {
            v39 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v19 + 1, 24);
            v21 = v48;
            v20 = (v48 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v19 + 1, 24);
            v20 = &v44;
            v21 = v48;
          }
        }

        v22 = &v21[24 * v49];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v49;
        if (v47[0])
        {
          v24 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v43);
          v25 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v40 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v25 = v48;
              v24 = (v48 + v40);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v24 = &v44;
              v25 = v48;
            }
          }

          v26 = &v25[24 * v49];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v49;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v55;
      v30 = __p;
      if (v55 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v55 = v28;
      operator delete(v30);
    }

    v31 = v52;
    if (v52)
    {
      v32 = v53;
      v33 = v52;
      if (v53 != v52)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v52;
      }

      v53 = v31;
      operator delete(v33);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v9;
}

BOOL mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(mlir::Block **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v33 = "region #";
  v34 = 259;
  mlir::Operation::emitOpError(a1, &v33, &v38);
  if (v38)
  {
    LODWORD(v31[0]) = 5;
    v31[1] = a5;
    v9 = v31;
    v10 = v40;
    if (v41 >= v42)
    {
      if (v40 <= v31 && v40 + 24 * v41 > v31)
      {
        v27 = v31 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v10 = v40;
        v9 = (v40 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v9 = v31;
        v10 = v40;
      }
    }

    v11 = &v10[24 * v41];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v41;
  }

  if (a4)
  {
    v30 = 1283;
    v29[0] = " ('";
    v29[2] = a3;
    v29[3] = a4;
    v31[0] = v29;
    v31[2] = "') ";
    v32 = 770;
    if (!v38)
    {
      goto LABEL_13;
    }

LABEL_10:
    mlir::Diagnostic::operator<<(&v39, v31);
    if (v38)
    {
      v35 = 3;
      v36 = "failed to verify constraint: region with 1 blocks";
      v37 = 49;
      v13 = &v35;
      v14 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v35 && v40 + 24 * v41 > &v35)
        {
          v28 = &v35 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v14 = v40;
          v13 = (v40 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v13 = &v35;
          v14 = v40;
        }
      }

      v15 = &v14[24 * v41];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v41;
    }

    goto LABEL_13;
  }

  v31[0] = " ";
  v32 = 259;
  if (v38)
  {
    goto LABEL_10;
  }

LABEL_13:
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v47;
      v20 = __p;
      if (v47 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v47 = v18;
      operator delete(v20);
    }

    v21 = v44;
    if (v44)
    {
      v22 = v45;
      v23 = v44;
      if (v45 != v44)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v17;
}

BOOL mlir::scf::ForallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v74 = v6;
  if (!v6)
  {
    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v76 = "expected DictionaryAttr to set properties";
      v77 = 41;
      v26 = &v75;
      v27 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v67 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v27 = v80;
          v26 = (v80 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v26 = &v75;
          v27 = v80;
        }
      }

      v28 = &v27[24 * v81];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v81;
      if (v78)
      {
        mlir::InFlightDiagnostic::report(&v78);
      }
    }

    if (v89 != 1)
    {
      return 0;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v87;
      v32 = __p;
      if (v87 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v87 = v30;
      operator delete(v32);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_81;
    }

    v33 = v85;
    v23 = v84;
    if (v85 == v84)
    {
LABEL_80:
      v85 = v21;
      operator delete(v23);
LABEL_81:
      if (v80 != v83)
      {
        free(v80);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_79;
  }

  v91.var0 = "mapping";
  v91.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v74, v91);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 52;
        v10 = &v75;
        v11 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v68 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v11 = v80;
            v10 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v10 = &v75;
            v11 = v80;
          }
        }

        v12 = &v11[24 * v81];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v81;
        if (v78)
        {
          v14 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v9);
          v15 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v69 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v15 = v80;
              v14 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v14 = &v75;
              v15 = v80;
            }
          }

          v16 = &v15[24 * v81];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v87;
        v20 = __p;
        if (v87 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v87 = v18;
        operator delete(v20);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_81;
      }

      v22 = v85;
      v23 = v84;
      if (v85 == v84)
      {
        goto LABEL_80;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_79;
    }

    *a1 = v8;
  }

  v92.var0 = "staticLowerBound";
  v92.var1 = 16;
  v36 = mlir::DictionaryAttr::get(&v74, v92);
  if (v36)
  {
    v37 = v36;
    if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v77 = 61;
      v44 = &v75;
      v45 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v70 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v45 = v80;
          v44 = (v80 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v44 = &v75;
          v45 = v80;
        }
      }

      v46 = &v45[24 * v81];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      ++v81;
      if (v78)
      {
        v48 = &v75;
        mlir::DiagnosticArgument::DiagnosticArgument(&v75, v37);
        v49 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v72 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v49 = v80;
            v48 = (v80 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v48 = &v75;
            v49 = v80;
          }
        }

        v50 = &v49[24 * v81];
        v51 = *v48;
        *(v50 + 2) = v48[2];
        *v50 = v51;
        ++v81;
        if (v78)
        {
          mlir::InFlightDiagnostic::report(&v78);
        }
      }
    }

    if ((v89 & 1) == 0)
    {
      return 0;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v87;
      v54 = __p;
      if (v87 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v87 = v52;
      operator delete(v54);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_81;
    }

    v55 = v85;
    v23 = v84;
    if (v85 == v84)
    {
      goto LABEL_80;
    }

    do
    {
      v57 = *--v55;
      v56 = v57;
      *v55 = 0;
      if (v57)
      {
        operator delete[](v56);
      }
    }

    while (v55 != v21);
LABEL_79:
    v23 = v84;
    goto LABEL_80;
  }

LABEL_49:
  v93.var0 = "staticStep";
  v93.var1 = 10;
  v38 = mlir::DictionaryAttr::get(&v74, v93);
  if (v38)
  {
    v39 = v38;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v38))
    {
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 55;
        v58 = &v75;
        v59 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v71 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v59 = v80;
            v58 = (v80 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v58 = &v75;
            v59 = v80;
          }
        }

        v60 = &v59[24 * v81];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        ++v81;
        if (v78)
        {
          v62 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v39);
          v63 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v73 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v63 = v80;
              v62 = (v80 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v62 = &v75;
              v63 = v80;
            }
          }

          v64 = &v63[24 * v81];
          v65 = *v62;
          *(v64 + 2) = v62[2];
          *v64 = v65;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if (v89 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v79);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v94.var0 = "staticUpperBound";
  v94.var1 = 16;
  v40 = mlir::DictionaryAttr::get(&v74, v94);
  v75 = v40;
  if (v40)
  {
    v41 = v40;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v40))
    {
      a3(&v78, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v66, &v75);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
      return 0;
    }

    a1[3] = v41;
  }

  v95.var0 = "operandSegmentSizes";
  v95.var1 = 19;
  v42 = mlir::DictionaryAttr::get(&v74, v95);
  if (!v42)
  {
    v96.var0 = "operand_segment_sizes";
    v96.var1 = 21;
    v42 = mlir::DictionaryAttr::get(&v74, v96);
    if (!v42)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 4, 4, v42, a3, a4) & 1) != 0;
}

uint64_t mlir::scf::ForallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v43 = a1;
  v44 = v46;
  v45 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v43, "mapping", 7uLL, *a2);
    v6 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v35 = NamedAttr;
      v36 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v5 = v36;
      NamedAttr = v35;
      v6 = v45;
    }

    v7 = (v44 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v45) = v45 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v43, "staticLowerBound", 0x10uLL, v8);
    v11 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v37 = v9;
      v38 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v10 = v38;
      v9 = v37;
      v11 = v45;
    }

    v12 = (v44 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v45) = v45 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v43, "staticStep", 0xAuLL, v13);
    v16 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v39 = v14;
      v40 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v15 = v40;
      v14 = v39;
      v16 = v45;
    }

    v17 = (v44 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v45) = v45 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v43, "staticUpperBound", 0x10uLL, v18);
    v21 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v41 = v19;
      v42 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v20 = v42;
      v19 = v41;
      v21 = v45;
    }

    v22 = (v44 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v45) = v45 + 1;
  }

  v23 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);
  v24 = mlir::Builder::getNamedAttr(&v43, "operandSegmentSizes", 0x13uLL, v23);
  v26 = v45;
  if (v45 >= HIDWORD(v45))
  {
    v33 = v24;
    v34 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
    v25 = v34;
    v24 = v33;
    v26 = v45;
  }

  v27 = (v44 + 16 * v26);
  *v27 = v24;
  v27[1] = v25;
  v28 = __CFADD__(v45, 1);
  v29 = (v45 + 1);
  LODWORD(v45) = v45 + 1;
  if (v28)
  {
    DictionaryAttr = 0;
    v31 = v44;
    if (v44 == v46)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v43, v44, v29);
  v31 = v44;
  if (v44 != v46)
  {
LABEL_24:
    free(v31);
  }

  return DictionaryAttr;
}

unint64_t mlir::scf::ForallOp::computePropertiesHash(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = a1[5];
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (a1[4] ^ 0xFF51AFD7ED558CCDLL ^ v14);
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v24[0] = v3;
  v24[1] = v6;
  v21 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v21, v25, v26, v9);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v22, v17, v26, v12);
  v23 = v22;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v23, v18, v26, v16 ^ v13);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v24, v23, v19, v26);
}

uint64_t mlir::scf::ForallOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 7)
    {
      if (*__s1 == 1886413165 && *(__s1 + 3) == 1735289200)
      {
        return *a2;
      }
    }

    else if (__n == 10 && !memcmp(__s1, "staticStep", 0xAuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);
    }

    return 0;
  }

  if (memcmp(__s1, "staticLowerBound", 0x10uLL))
  {
    if (!memcmp(__s1, "staticUpperBound", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  return a2[1];
}

uint64_t mlir::scf::ForallOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 15)
  {
    if (a3 == 7)
    {
      if (*__s1 == 1886413165 && *(__s1 + 3) == 1735289200)
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

          *result = v12;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 10)
    {
      result = memcmp(__s1, "staticStep", 0xAuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          v5[2] = v6;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  else if (a3 == 16)
  {
    result = memcmp(__s1, "staticLowerBound", 0x10uLL);
    if (result)
    {
      result = memcmp(__s1, "staticUpperBound", 0x10uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
          if (result)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[3] = v8;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }

    else if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
      if (result)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v5[1] = v13;
    }

    else
    {
      v5[1] = 0;
    }
  }

  else
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      v14 = v9;
      if (v9)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v14);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v14);
          if (v10)
          {
            return memmove(v5 + 4, result, 4 * v10);
          }
        }
      }
    }
  }

  return result;
}

void mlir::scf::ForallOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mapping", 7uLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "staticLowerBound", 0x10uLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "staticStep", 0xAuLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "staticUpperBound", 0x10uLL, v8);
  }

  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v9);
}

BOOL mlir::scf::ForallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(v8, "mapping", 7, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "staticLowerBound", 0x10, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v10, "staticStep", 0xA, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v11, "staticUpperBound", 0x10, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(uint64_t a1, const void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v49 = a1;
    v24 = a4;
    v25 = a5;
    Value = mlir::ArrayAttr::getValue(&v49);
    v27 = mlir::ArrayAttr::getValue(&v49);
    v29 = (v27 + 8 * v28);
    if (v29 != Value)
    {
      a5 = v25;
      a4 = v24;
      while (*Value)
      {
        v30 = **Value;
        {
          v31 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);
          if (!v33)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v43 = v30;
          v44 = v29;
          mlir::scf::ForallOp::verify();
          v29 = v44;
          a5 = v25;
          a4 = v24;
          v31 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
          v32 = *(v43 + 8);
          v33 = *(v43 + 16);
          if (!v33)
          {
            goto LABEL_3;
          }
        }

        v34 = v32;
        v35 = v33;
        do
        {
          v36 = v35 >> 1;
          v37 = &v34[2 * (v35 >> 1)];
          v39 = *v37;
          v38 = v37 + 2;
          v35 += ~(v35 >> 1);
          if (v39 < v31)
          {
            v34 = v38;
          }

          else
          {
            v35 = v36;
          }
        }

        while (v35);
        if (v34 == &v32[2 * v33] || *v34 != v31 || !v34[1])
        {
          break;
        }

        if (++Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v49, a5);
  if (v49)
  {
    LODWORD(v45) = 3;
    v46 = "attribute '";
    v47 = 11;
    v7 = &v45;
    v8 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v45 && v51 + 24 * v52 > &v45)
      {
        v41 = &v45 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v8 = v51;
        v7 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v7 = &v45;
        v8 = v51;
      }
    }

    v9 = &v8[24 * v52];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v52;
    if (v49)
    {
      v48 = 261;
      v45 = a2;
      v46 = a3;
      mlir::Diagnostic::operator<<(&v50, &v45);
      if (v49)
      {
        LODWORD(v45) = 3;
        v46 = "' failed to satisfy constraint: Device Mapping array attribute";
        v47 = 62;
        v11 = &v45;
        v12 = v51;
        if (v52 >= v53)
        {
          if (v51 <= &v45 && v51 + 24 * v52 > &v45)
          {
            v42 = &v45 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
            v12 = v51;
            v11 = (v51 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
            v11 = &v45;
            v12 = v51;
          }
        }

        v13 = &v12[24 * v52];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v52;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v49);
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v58;
      v18 = __p;
      if (v58 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v58 = v16;
      operator delete(v18);
    }

    v19 = v55;
    if (v55)
    {
      v20 = v56;
      v21 = v55;
      if (v56 != v55)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v55;
      }

      v56 = v19;
      operator delete(v21);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

  return v15;
}