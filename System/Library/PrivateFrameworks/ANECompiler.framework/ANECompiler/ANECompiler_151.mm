uint64_t std::__merge_move_construct[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (result == a2)
  {
LABEL_24:
    if (a3 != a4)
    {
      v20 = 0;
      do
      {
        v21 = (v5 + v20);
        v22 = a3 + v20;
        *(v5 + v20) = *(a3 + v20);
        v23 = *(a3 + v20 + 8);
        v24 = *(a3 + v20 + 16);
        *(v5 + v20 + 24) = v5 + v20 + 40;
        result = v5 + v20 + 24;
        *(result - 8) = v24;
        *(result - 16) = v23;
        *(result + 8) = 0x400000000;
        if (*(a3 + v20 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v22 + 24));
        }

        v21[17] = 0;
        v21[18] = 0;
        v21[19] = 0;
        *(v21 + 17) = *(v22 + 136);
        v21[19] = *(v22 + 152);
        *(v22 + 136) = 0;
        *(v22 + 144) = 0;
        *(v22 + 152) = 0;
        v21[20] = 0;
        v21[21] = 0;
        v21[22] = 0;
        *(v21 + 10) = *(v22 + 160);
        v21[22] = *(v22 + 176);
        *(v22 + 160) = 0;
        *(v22 + 168) = 0;
        *(v22 + 176) = 0;
        v21[23] = v21 + 25;
        v21[24] = 0;
        v25 = (v21 + 23);
        if (*(v22 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v25, (a3 + v20 + 184));
        }

        v20 += 200;
      }

      while (v22 + 200 != a4);
    }
  }

  else
  {
    v9 = result;
    v10 = a5 + 200;
    while (a3 != a4)
    {
      v11 = (v10 - 192);
      result = v10 - 176;
      v12 = v10 - 160;
      if (*a3 >= *v9)
      {
        *(v10 - 200) = *v9;
        v14 = *(v9 + 8);
        *(v10 - 184) = *(v9 + 16);
        *v11 = v14;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(v9 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v9 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(v9 + 136);
        *(v10 - 48) = *(v9 + 152);
        *(v9 + 136) = 0;
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(v9 + 160);
        *(v10 - 24) = *(v9 + 176);
        *(v9 + 160) = 0;
        *(v9 + 168) = 0;
        *(v9 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(v9 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v10 - 16, (v9 + 184));
        }

        v9 += 200;
        v10 += 200;
        if (v9 == a2)
        {
LABEL_23:
          v5 = v10 - 200;
          goto LABEL_24;
        }
      }

      else
      {
        *(v10 - 200) = *a3;
        v13 = *(a3 + 8);
        *(v10 - 184) = *(a3 + 16);
        *v11 = v13;
        *(v10 - 176) = v12;
        *(v10 - 168) = 0x400000000;
        if (*(a3 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (a3 + 24));
        }

        *(v10 - 64) = 0;
        *(v10 - 56) = 0;
        *(v10 - 48) = 0;
        *(v10 - 64) = *(a3 + 136);
        *(v10 - 48) = *(a3 + 152);
        *(a3 + 136) = 0;
        *(a3 + 144) = 0;
        *(a3 + 152) = 0;
        *(v10 - 40) = 0;
        *(v10 - 32) = 0;
        *(v10 - 24) = 0;
        *(v10 - 40) = *(a3 + 160);
        *(v10 - 24) = *(a3 + 176);
        *(a3 + 160) = 0;
        *(a3 + 168) = 0;
        *(a3 + 176) = 0;
        *(v10 - 16) = v10;
        *(v10 - 8) = 0;
        if (*(a3 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v10 - 16, (a3 + 184));
        }

        a3 += 200;
        v10 += 200;
        if (v9 == a2)
        {
          goto LABEL_23;
        }
      }
    }

    if (v9 != a2)
    {
      v15 = 0;
      do
      {
        v16 = v10 + v15;
        v17 = v9 + v15;
        *(v10 + v15 - 200) = *(v9 + v15);
        v18 = *(v9 + v15 + 8);
        v19 = *(v9 + v15 + 16);
        *(v10 + v15 - 176) = v10 + v15 - 160;
        result = v10 + v15 - 176;
        *(result - 8) = v19;
        *(result - 16) = v18;
        *(result + 8) = 0x400000000;
        if (*(v9 + v15 + 32))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v17 + 24));
        }

        *(v16 - 64) = 0;
        *(v16 - 56) = 0;
        *(v16 - 48) = 0;
        *(v16 - 64) = *(v17 + 136);
        *(v16 - 48) = *(v17 + 152);
        *(v17 + 136) = 0;
        *(v17 + 144) = 0;
        *(v17 + 152) = 0;
        *(v16 - 40) = 0;
        *(v16 - 32) = 0;
        *(v16 - 24) = 0;
        *(v16 - 40) = *(v17 + 160);
        *(v16 - 24) = *(v17 + 176);
        *(v17 + 160) = 0;
        *(v17 + 168) = 0;
        *(v17 + 176) = 0;
        *(v16 - 16) = v16;
        *(v16 - 8) = 0;
        if (*(v17 + 192))
        {
          result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v16 - 16, (v9 + v15 + 184));
        }

        v15 += 200;
      }

      while (v17 + 200 != a2);
    }
  }

  return result;
}

void *std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a2;
  v10 = result;
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = 0;
    v12 = 0;
    do
    {
      v19 = &a7[v18];
      v20 = &v10[v18];
      a7[v18] = v10[v18];
      v21 = v10[v18 + 1];
      v22 = v10[v18 + 2];
      a7[v18 + 3] = &a7[v18 + 5];
      v23 = &a7[v18 + 3];
      *(v23 - 2) = v22;
      *(v23 - 2) = v21;
      v23[1] = 0x400000000;
      if (LODWORD(v10[v18 + 4]))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v23, v20 + 3);
      }

      v19[17] = 0;
      v19[18] = 0;
      v19[19] = 0;
      *(v19 + 17) = *(v20 + 17);
      v19[19] = v20[19];
      v20[17] = 0;
      v20[18] = 0;
      v20[19] = 0;
      v19[20] = 0;
      v19[21] = 0;
      v19[22] = 0;
      *(v19 + 10) = *(v20 + 10);
      v19[22] = v20[22];
      v20[20] = 0;
      v20[21] = 0;
      v20[22] = 0;
      v19[23] = v19 + 25;
      v19[24] = 0;
      v24 = (v19 + 23);
      if (*(v20 + 48))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v24, &v10[v18 + 23]);
      }

      ++v12;
      v18 += 25;
    }

    while (v20 + 25 != v9);
    v32 = &a7[v18];
    v33 = &a7[v18 - 25];
    v34 = a7;
    while (v9 != a3)
    {
      if (*v9 >= *v34)
      {
        *v10 = *v34;
        result = mlir::Diagnostic::operator=((v10 + 1), v34 + 1);
        v34 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }

      else
      {
        *v10 = *v9;
        result = mlir::Diagnostic::operator=((v10 + 1), v9 + 1);
        v9 += 25;
        v10 += 25;
        if (v32 == v34)
        {
          goto LABEL_40;
        }
      }
    }

    v37 = 0;
    do
    {
      v38 = &v34[v37];
      v10[v37] = v34[v37];
      result = mlir::Diagnostic::operator=(&v10[v37 + 1], &v34[v37 + 1]);
      v37 += 25;
    }

    while (v33 != v38);
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      v13 = &a7[v11];
      v14 = &v9[v11];
      a7[v11] = v9[v11];
      v15 = v9[v11 + 1];
      v16 = v9[v11 + 2];
      a7[v11 + 3] = &a7[v11 + 5];
      result = &a7[v11 + 3];
      *(result - 2) = v16;
      *(result - 2) = v15;
      result[1] = 0x400000000;
      if (LODWORD(v9[v11 + 4]))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, v14 + 3);
      }

      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      *(v13 + 17) = *(v14 + 17);
      v13[19] = v14[19];
      v14[17] = 0;
      v14[18] = 0;
      v14[19] = 0;
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      *(v13 + 10) = *(v14 + 10);
      v13[22] = v14[22];
      v14[20] = 0;
      v14[21] = 0;
      v14[22] = 0;
      v13[23] = v13 + 25;
      v13[24] = 0;
      v17 = (v13 + 23);
      if (*(v14 + 48))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v17, &v9[v11 + 23]);
      }

      ++v12;
      v11 += 25;
    }

    while (v14 + 25 != a3);
    v25 = a3 - 25;
    v26 = &a7[v11];
    while (v9 != v10)
    {
      v27 = *(v26 - 25);
      v28 = *(v9 - 25);
      v29 = v27 >= v28;
      if (v27 <= v28)
      {
        v27 = *(v9 - 25);
      }

      if (v29)
      {
        v30 = v26;
      }

      else
      {
        v30 = v9;
      }

      if (v29)
      {
        v26 -= 25;
      }

      else
      {
        v9 -= 25;
      }

      *v25 = v27;
      v31 = v25 - 25;
      result = mlir::Diagnostic::operator=((v25 + 1), v30 - 24);
      v25 = v31;
      if (v26 == a7)
      {
        goto LABEL_40;
      }
    }

    if (v26 != a7)
    {
      v35 = v25;
      do
      {
        v36 = *(v26 - 25);
        v26 -= 25;
        *v35 = v36;
        v35 -= 25;
        result = mlir::Diagnostic::operator=((v25 + 1), v26 + 1);
        v25 = v35;
      }

      while (v26 != a7);
    }
  }

LABEL_40:
  if (a7 && v12)
  {
    result = a7 + 1;
    do
    {
      mlir::Diagnostic::~Diagnostic(result);
      result = (v39 + 200);
      --v12;
    }

    while (v12);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl()::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = *mlir::MLIRContext::getDiagEngine(*(*a1 + 152));

  mlir::detail::DiagnosticEngineImpl::emit(v3, a2);
}

void mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)const::{lambda(mlir::Diagnostic const&)#1}::operator()(llvm::raw_ostream **a1, uint64_t *a2)
{
  llvm::raw_ostream::indent(*a1, 4u);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_4:
    v7 = *(a2 + 2);
    if (v7 <= 1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = *a1;
  v19 = *a2;
  v4.n128_f64[0] = mlir::Attribute::print(&v19, v5, 0);
  v6 = *(v5 + 4);
  if (*(v5 + 3) - v6 <= 1uLL)
  {
    llvm::raw_ostream::write(v5, ": ", 2uLL);
    goto LABEL_4;
  }

  *v6 = 8250;
  *(v5 + 4) += 2;
  v7 = *(a2 + 2);
  if (v7 <= 1)
  {
LABEL_5:
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      v8 = *a1;
      v9 = *(*a1 + 4);
      if ((*(*a1 + 3) - v9) <= 8)
      {
        llvm::raw_ostream::write(v8, "warning: ", 9uLL);
        goto LABEL_23;
      }

      *(v9 + 8) = 32;
      *v9 = *"warning: ";
      v13 = *(v8 + 4) + 9;
    }

    else
    {
      v8 = *a1;
      v11 = *(*a1 + 4);
      if ((*(*a1 + 3) - v11) <= 5)
      {
        llvm::raw_ostream::write(v8, "note: ", 6uLL);
        goto LABEL_23;
      }

      *(v11 + 4) = 8250;
      *v11 = 1702129518;
      v13 = *(v8 + 4) + 6;
    }

    goto LABEL_22;
  }

LABEL_10:
  if (v7 == 3)
  {
    v8 = *a1;
    v12 = *(*a1 + 4);
    if (*(*a1 + 3) - v12 <= 7uLL)
    {
      llvm::raw_ostream::write(v8, "remark: ", 8uLL);
      goto LABEL_23;
    }

    *v12 = 0x203A6B72616D6572;
    v13 = *(v8 + 4) + 8;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_23;
    }

    v8 = *a1;
    v10 = *(*a1 + 4);
    if (*(*a1 + 3) - v10 <= 6uLL)
    {
      llvm::raw_ostream::write(v8, "error: ", 7uLL);
      goto LABEL_23;
    }

    *(v10 + 3) = 540701295;
    *v10 = 1869771365;
    v13 = *(v8 + 4) + 7;
  }

LABEL_22:
  *(v8 + 4) = v13;
LABEL_23:
  v14 = *a1;
  v15 = *(a2 + 6);
  if (v15)
  {
    v16 = a2[2];
    v17 = 24 * v15;
    do
    {
      mlir::DiagnosticArgument::print(v16, v14, v4);
      v16 = (v16 + 24);
      v17 -= 24;
    }

    while (v17);
  }

  v18 = *(v14 + 4);
  if (v18 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 10);
  }

  else
  {
    *(v14 + 4) = v18 + 1;
    *v18 = 10;
  }
}

void std::default_delete<mlir::detail::DiagnosticEngineImpl>::operator()[abi:nn200100](int a1, std::recursive_mutex *this)
{
  if (this)
  {
    v3 = *&this[1].__m_.__opaque[40];
    v4 = *&this[1].__m_.__opaque[48];
    if (v4)
    {
      v5 = v3 + 40 * v4 - 32;
      v6 = -40 * v4;
      do
      {
        v7 = *(v5 + 24);
        if (v7 >= 8)
        {
          if ((v7 & 4) != 0)
          {
            v8 = v5;
            if ((v7 & 2) == 0)
            {
              v8 = *v5;
            }

            (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
          }

          if ((v7 & 2) == 0)
          {
            llvm::deallocate_buffer(*v5, *(v5 + 8));
          }
        }

        v5 -= 40;
        v6 += 40;
      }

      while (v6);
      v3 = *&this[1].__m_.__opaque[40];
    }

    if (v3 != &this[2])
    {
      free(v3);
    }

    if ((this[1].__m_.__opaque[0] & 1) == 0)
    {
      llvm::deallocate_buffer(*&this[1].__m_.__opaque[8], (16 * *&this[1].__m_.__opaque[16]));
    }

    std::recursive_mutex::~recursive_mutex(this);

    JUMPOUT(0x1AC55A070);
  }
}

uint64_t llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(unsigned int *a1, void *a2, __int128 *a3)
{
  v13 = *a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>(a1, &v13, &v14, &v15);
  if (v16 != 1)
  {
    return *(a1 + 5) + 40 * *(v15 + 8);
  }

  v6 = a1[12];
  *(v15 + 8) = v6;
  v12 = a3;
  v13 = a2;
  if (v6 >= a1[13])
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(a1 + 10, &std::piecewise_construct, &v13, &v12);
    v11 = a1[12];
  }

  else
  {
    v7 = *(a1 + 5) + 40 * v6;
    *v7 = *a2;
    *(v7 + 32) = 0;
    v8 = *(a3 + 3);
    *(v7 + 32) = v8;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(v7 + 8, a3);
        (*((*(v7 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a3);
      }

      else
      {
        v9 = *a3;
        *(v7 + 24) = *(a3 + 2);
        *(v7 + 8) = v9;
      }

      *(a3 + 3) = 0;
    }

    v11 = a1[12] + 1;
    a1[12] = v11;
  }

  return *(a1 + 5) + 40 * v11 - 40;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::try_emplace<unsigned int>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 2;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = v7 - 1;
  v10 = (v7 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v11 = &v8[4 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[4 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -2;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[4 * (v19 & v9)];
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 2;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -1)
  {
    --result[1];
  }

  *v11 = *a2;
  v11[2] = *a3;
  if (*result)
  {
    v15 = 2;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[4 * v15];
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,unsigned long long,unsigned int,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::LookupBucketFor<unsigned long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (v3 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void *llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>::grow(unsigned int *a1, unsigned int a2)
{
  v55[2] = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 2)
    {
      v20 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(a1 + 1) = buffer;
      *(a1 + 2) = v20;
      v22 = *a1;
      v9 = (v7 + 16 * v8);
      *a1 = *a1 & 1;
      if ((v22 & 1) == 0)
      {
        v23 = &buffer[4 * v20];
        v24 = 16 * v20 - 16;
        if (v24 < 0x10)
        {
          v26 = buffer;
          goto LABEL_26;
        }

LABEL_20:
        v25 = (v24 >> 4) + 1;
        v26 = &buffer[4 * (v25 & 0x1FFFFFFFFFFFFFFELL)];
        v27 = buffer + 4;
        v28 = v25 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v27 - 2) = -1;
          *v27 = -1;
          v27 += 4;
          v28 -= 2;
        }

        while (v28);
        if (v25 == (v25 & 0x1FFFFFFFFFFFFFFELL))
        {
LABEL_27:
          if (v8)
          {
            v29 = v7;
            do
            {
              v35 = *v29;
              if (*v29 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                if (*a1)
                {
                  v31 = 1;
                  v30 = a1 + 2;
                }

                else
                {
                  v30 = *(a1 + 1);
                  v31 = a1[4] - 1;
                }

                v32 = v31 & (((0xBF58476D1CE4E5B9 * v35) >> 31) ^ (484763065 * v35));
                v33 = &v30[4 * v32];
                v34 = *v33;
                if (v35 != *v33)
                {
                  v36 = 0;
                  v37 = 1;
                  while (v34 != -1)
                  {
                    if (v36)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      v38 = v34 == -2;
                    }

                    if (v38)
                    {
                      v36 = v33;
                    }

                    v39 = v32 + v37++;
                    v32 = v39 & v31;
                    v33 = &v30[4 * (v39 & v31)];
                    v34 = *v33;
                    if (v35 == *v33)
                    {
                      goto LABEL_31;
                    }
                  }

                  if (v36)
                  {
                    v33 = v36;
                  }
                }

LABEL_31:
                *v33 = v35;
                v33[2] = *(v29 + 2);
                *a1 += 2;
              }

              v29 = (v29 + 16);
            }

            while (v29 != v9);
          }

          llvm::deallocate_buffer(v7, (16 * v8));
        }

        do
        {
LABEL_26:
          *v26 = -1;
          v26 += 4;
        }

        while (v26 != v23);
        goto LABEL_27;
      }
    }

    else
    {
      v9 = (v7 + 16 * v8);
      *a1 = 1;
    }

    v23 = a1 + 10;
    buffer = a1 + 2;
    v24 = 16;
    goto LABEL_20;
  }

  result = *(a1 + 1);
  v11 = &v53;
  if (result <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v53 = *(a1 + 1);
    v54 = a1[4];
    v11 = v55;
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      if (a2 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v12 = *(a1 + 3);
    if (v12 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v11 = v12;
  *(v11 + 2) = a1[8];
  v11 += 2;
  if (a2 < 3)
  {
LABEL_11:
    *a1 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v14 = a1 + 10;
    result = a1 + 2;
    v15 = 16;
    goto LABEL_14;
  }

LABEL_53:
  *a1 = v6 & 0xFFFFFFFE;
  v40 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(a1 + 1) = result;
  *(a1 + 2) = v40;
  v41 = *a1;
  *a1 = *a1 & 1;
  if (v41)
  {
    goto LABEL_54;
  }

LABEL_12:
  v13 = a1[4];
  if (!v13)
  {
    goto LABEL_57;
  }

  v14 = &result[2 * v13];
  v15 = v14 - result - 16;
  if (v15 < 0x10)
  {
    v17 = result;
    do
    {
LABEL_56:
      *v17 = -1;
      v17 += 4;
    }

    while (v17 != v14);
    goto LABEL_57;
  }

LABEL_14:
  v16 = (v15 >> 4) + 1;
  v17 = &result[2 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
  v18 = result + 2;
  v19 = v16 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 2) = -1;
    *v18 = -1;
    v18 += 4;
    v19 -= 2;
  }

  while (v19);
  if (v16 != (v16 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_56;
  }

LABEL_57:
  if (&v53 != v11)
  {
    v42 = &v53;
    do
    {
      v48 = *v42;
      if (*v42 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*a1)
        {
          v44 = 1;
          v43 = a1 + 2;
        }

        else
        {
          v43 = *(a1 + 1);
          v44 = a1[4] - 1;
        }

        v45 = v44 & (((0xBF58476D1CE4E5B9 * v48) >> 31) ^ (484763065 * v48));
        v46 = &v43[4 * v45];
        v47 = *v46;
        if (v48 != *v46)
        {
          v49 = 0;
          v50 = 1;
          while (v47 != -1)
          {
            if (v49)
            {
              v51 = 0;
            }

            else
            {
              v51 = v47 == -2;
            }

            if (v51)
            {
              v49 = v46;
            }

            v52 = v45 + v50++;
            v45 = v52 & v44;
            v46 = &v43[4 * (v52 & v44)];
            v47 = *v46;
            if (v48 == *v46)
            {
              goto LABEL_61;
            }
          }

          if (v49)
          {
            v46 = v49;
          }
        }

LABEL_61:
        *v46 = v48;
        v46[2] = *(v42 + 2);
        *a1 += 2;
      }

      v42 += 2;
    }

    while (v42 != v11);
  }

  return result;
}

char *llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>&&>>(unsigned int *a1, uint64_t a2, void **a3, __int128 **a4)
{
  v16 = 0;
  v7 = a1 + 4;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 40, &v16);
  v9 = &v8[40 * a1[2]];
  v10 = *a4;
  *v9 = **a3;
  *(v9 + 4) = 0;
  v11 = *(v10 + 3);
  *(v9 + 4) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v9 + 8, v10);
      (*((*(v9 + 4) & 0xFFFFFFFFFFFFFFF8) + 16))(v10);
    }

    else
    {
      v12 = *v10;
      *(v9 + 3) = *(v10 + 2);
      *(v9 + 8) = v12;
    }

    *(v10 + 3) = 0;
  }

  llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::moveElementsForGrow(a1, v8);
  v13 = v16;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v14 = a1[2] + 1;
  a1[2] = v14;
  a1[3] = v13;
  return &v8[40 * v14 - 40];
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,false>::moveElementsForGrow(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result;
    v4 = (*result + 32);
    v5 = (a2 + 32);
    v6 = 40 * v2;
    do
    {
      *(v5 - 4) = *(v4 - 4);
      *v5 = 0;
      v8 = *v4;
      *v5 = *v4;
      if (v8 >= 8)
      {
        result = (v5 - 3);
        if ((v8 & 2) != 0 && (v8 & 4) != 0)
        {
          (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(result, v4 - 3);
          result = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v4 - 3);
        }

        else
        {
          v7 = *(v4 - 3);
          *(v5 - 1) = *(v4 - 1);
          *result = v7;
        }

        *v4 = 0;
      }

      v4 += 5;
      v5 += 5;
      v6 -= 40;
    }

    while (v6);
    v9 = *(v3 + 8);
    if (v9)
    {
      v10 = *v3 + 40 * v9 - 32;
      v11 = -40 * v9;
      do
      {
        v12 = *(v10 + 24);
        if (v12 >= 8)
        {
          if ((v12 & 4) != 0)
          {
            v13 = v10;
            if ((v12 & 2) == 0)
            {
              v13 = *v10;
            }

            result = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
          }

          if ((v12 & 2) == 0)
          {
            llvm::deallocate_buffer(*v10, *(v10 + 8));
          }
        }

        v10 -= 40;
        v11 += 40;
      }

      while (v11);
    }
  }

  return result;
}

void *llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase(int *a1, void *a2)
{
  v4 = a1 + 2;
  if (*a1)
  {
    v5 = 2;
    v6 = a1 + 2;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 1);
  }

  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = *&v6[4 * (v7 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2)))];
  if (*a2 == v9)
  {
LABEL_6:
    *&v6[4 * v8] = -2;
    v10 = a1[1] + 1;
    *a1 -= 2;
    a1[1] = v10;
  }

  else
  {
    v24 = 1;
    while (v9 != -1)
    {
      v25 = v8 + v24++;
      v8 = v25 & v7;
      v9 = *&v6[4 * v8];
      if (*a2 == v9)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v11 = a1 + 10;
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *>(&v26, (a2 + 5), *(a1 + 5) + 40 * a1[12], a2);
  v12 = a1[12] - 1;
  a1[12] = v12;
  v13 = *v11 + 40 * v12;
  v14 = *(v13 + 32);
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v15 = (v13 + 8);
      if ((v14 & 2) == 0)
      {
        v15 = *v15;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v15);
    }

    if ((v14 & 2) == 0)
    {
      llvm::deallocate_buffer(*(v13 + 8), *(v13 + 16));
    }
  }

  v16 = *(a1 + 5);
  if ((v16 + 40 * a1[12]) != a2)
  {
    v17 = *a1;
    if (*a1 > 1)
    {
      v19 = a1 + 10;
      if ((v17 & 1) != 0 || (v4 = *(a1 + 1), v20 = a1[4], v19 = &v4[4 * v20], v18 = v4, v20))
      {
        v18 = v4;
        while (*v18 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v18 += 4;
          if (v18 == v19)
          {
            v18 = v19;
            break;
          }
        }

        if (*a1)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (v17)
      {
        v18 = a1 + 10;
        v19 = v4 + 8;
        goto LABEL_26;
      }

      v18 = (*(a1 + 1) + 16 * a1[4]);
      v19 = v18;
    }

    v11 = (*(a1 + 1) + 16 * a1[4]);
LABEL_26:
    if (v18 != v11)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v16) >> 3);
      do
      {
        v22 = v18[2];
        if (v21 < v22)
        {
          v18[2] = v22 - 1;
        }

        do
        {
          v18 += 4;
        }

        while (v18 != v19 && *v18 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v18 != v11);
    }
  }

  return a2;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *,std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v9 = a4 + v7;
    *(a4 + v7) = *(a2 + v7);
    v10 = (a4 + v7 + 8);
    if (a2 != a4)
    {
      v11 = *(v9 + 32);
      if (v11 >= 8)
      {
        if ((v11 & 4) != 0)
        {
          v12 = (a4 + v7 + 8);
          if ((v11 & 2) == 0)
          {
            v12 = *v10;
          }

          (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12);
        }

        if ((v11 & 2) == 0)
        {
          llvm::deallocate_buffer(*v10, *(a4 + v7 + 16));
        }
      }

      *(v9 + 32) = 0;
      v13 = *(a2 + v7 + 32);
      *(v9 + 32) = v13;
      if (v13 >= 8)
      {
        if ((v13 & 2) != 0 && (v13 & 4) != 0)
        {
          (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + v7 + 8, a2 + v7 + 8);
          (*((*(v9 + 32) & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + v7 + 8);
        }

        else
        {
          v8 = *(a2 + v7 + 8);
          *(a4 + v7 + 24) = *(a2 + v7 + 24);
          *v10 = v8;
        }

        *(a2 + v7 + 32) = 0;
      }
    }

    v7 += 40;
  }

  while (a2 + v7 != v6);
  return v6;
}

uint64_t mlir::Dialect::Dialect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_1F19FE9D0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void mlir::Dialect::~Dialect(llvm **this)
{
  *this = &unk_1F19FE9D0;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

{
  *this = &unk_1F19FE9D0;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

{
  *this = &unk_1F19FE9D0;
  llvm::deallocate_buffer(this[9], (16 * *(this + 22)));
}

void sub_1A6C0C19C()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::Dialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v27 = 257;
  (*(*a2 + 24))(&v32, a2, v4, v26);
  if (v32)
  {
    LODWORD(v28) = 3;
    v29 = "dialect '";
    v30 = 9;
    v5 = &v28;
    v6 = v34;
    if (v35 >= v36)
    {
      if (v34 <= &v28 && v34 + 24 * v35 > &v28)
      {
        v24 = &v28 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v6 = v34;
        v5 = (v34 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v5 = &v28;
        v6 = v34;
      }
    }

    v7 = &v6[24 * v35];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v35;
    if (v32)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v31 = 261;
      v28 = v9;
      v29 = v10;
      mlir::Diagnostic::operator<<(&v33, &v28);
      if (v32)
      {
        LODWORD(v28) = 3;
        v29 = "' provides no attribute parsing hook";
        v30 = 36;
        v11 = &v28;
        v12 = v34;
        if (v35 >= v36)
        {
          if (v34 <= &v28 && v34 + 24 * v35 > &v28)
          {
            v25 = &v28 - v34;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
            v12 = v34;
            v11 = (v34 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
            v11 = &v28;
            v12 = v34;
          }
        }

        v13 = &v12[24 * v35];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v35;
        if (v32)
        {
          mlir::InFlightDiagnostic::report(&v32);
        }
      }
    }
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v41;
      v17 = __p;
      if (v41 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v41 = v15;
      operator delete(v17);
    }

    v18 = v38;
    if (v38)
    {
      v19 = v39;
      v20 = v38;
      if (v39 != v38)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v38;
      }

      v39 = v18;
      operator delete(v20);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return 0;
}

uint64_t mlir::Dialect::parseType(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 41) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    LOWORD(v41) = 261;
    v38 = v5;
    v39 = v6;
    v7 = mlir::StringAttr::get(v4, &v38);
    v8 = (*(*a2 + 656))(a2);
    return mlir::OpaqueType::get(v7, v8, v9);
  }

  else
  {
    v11 = (*(*a2 + 16))(a2);
    v33 = 257;
    (*(*a2 + 24))(&v38, a2, v11, v32);
    if (v38)
    {
      LODWORD(v34) = 3;
      v35 = "dialect '";
      v36 = 9;
      v12 = &v34;
      v13 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v34 && v40 + 24 * v41 > &v34)
        {
          v30 = &v34 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v13 = v40;
          v12 = (v40 + v30);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v12 = &v34;
          v13 = v40;
        }
      }

      v14 = &v13[24 * v41];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v41;
      if (v38)
      {
        v16 = *(a1 + 8);
        v17 = *(a1 + 16);
        v37 = 261;
        v34 = v16;
        v35 = v17;
        mlir::Diagnostic::operator<<(&v39, &v34);
        if (v38)
        {
          LODWORD(v34) = 3;
          v35 = "' provides no type parsing hook";
          v36 = 31;
          v18 = &v34;
          v19 = v40;
          if (v41 >= v42)
          {
            if (v40 <= &v34 && v40 + 24 * v41 > &v34)
            {
              v31 = &v34 - v40;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
              v19 = v40;
              v18 = (v40 + v31);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
              v18 = &v34;
              v19 = v40;
            }
          }

          v20 = &v19[24 * v41];
          v21 = *v18;
          *(v20 + 2) = v18[2];
          *v20 = v21;
          ++v41;
          if (v38)
          {
            mlir::InFlightDiagnostic::report(&v38);
          }
        }
      }
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v47;
        v24 = __p;
        if (v47 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v47 = v22;
        operator delete(v24);
      }

      v25 = v44;
      if (v44)
      {
        v26 = v45;
        v27 = v44;
        if (v45 != v44)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
            }
          }

          while (v26 != v25);
          v27 = v44;
        }

        v45 = v25;
        operator delete(v27);
      }

      if (v40 != v43)
      {
        free(v40);
      }
    }

    return 0;
  }
}

uint64_t *mlir::Dialect::addInterface(int32x2_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  v4 = a1[11].i32[0];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[9];
    v7 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (((v5.i32[0] >> 4) ^ (v5.i32[0] >> 9)) << 32));
    v8 = v4 - 1;
    v9 = v8 & ((v7 >> 31) ^ v7);
    v10 = (*&v6 + 16 * v9);
    v12 = v10->i64[0];
    v11 = v10->i64[1];
    if (v10->i64[0] == *&v5 && v11 == v3)
    {
LABEL_7:
      *v10 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[10] = vadd_s32(a1[10], 0x1FFFFFFFFLL);
      v3 = *(v2 + 16);
    }

    else
    {
      v15 = 1;
      while (v12 != -4096 || v11 != -4096)
      {
        v16 = v9 + v15++;
        v9 = v16 & v8;
        v10 = (*&v6 + 16 * v9);
        v12 = v10->i64[0];
        v11 = v10->i64[1];
        if (v10->i64[0] == *&v5 && v11 == v3)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v18 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>(&a1[6], &v18, a2, v19);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::try_emplace<std::unique_ptr<mlir::DialectInterface>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = (v6 + 16 * (v18 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_5:
    v22 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        v13 = *a2;
        v14 = *a3;
        *a3 = 0;
        *v9 = v13;
        v9[1] = v14;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v9 = v22;
    ++*(v19 + 2);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(uint64_t a1, mlir::MLIRContext *this, uint64_t a3)
{
  *a1 = &unk_1F19FEA50;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  mlir::MLIRContext::getLoadedDialects(&v17, this);
  v7 = v17;
  v8 = v18;
  if (v17 != v18)
  {
    do
    {
      v9 = *(*v7 + 64);
      if (v9)
      {
        v10 = *(*v7 + 48);
        v11 = (v9 - 1) & ((a3 >> 4) ^ (a3 >> 9));
        v12 = *(v10 + 16 * v11);
        if (v12 == a3)
        {
LABEL_6:
          if (v11 != v9)
          {
            v16 = *(v10 + 16 * v11 + 8);
            if (v16)
            {
              llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(v5, &v16, v19);
              std::vector<mlir::DialectInterface const*>::push_back[abi:nn200100](v6, &v16);
            }
          }
        }

        else
        {
          v13 = 1;
          while (v12 != -4096)
          {
            v14 = v11 + v13++;
            v11 = v14 & (v9 - 1);
            v12 = *(v10 + 16 * v11);
            if (v12 == a3)
            {
              goto LABEL_6;
            }
          }
        }
      }

      v7 += 8;
    }

    while (v7 != v8);
    v7 = v17;
  }

  if (v7)
  {
    v18 = v7;
    operator delete(v7);
  }

  return a1;
}

void std::vector<mlir::DialectInterface const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(mlir::detail::DialectInterfaceCollectionBase *this)
{
  *this = &unk_1F19FEA50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

{
  *this = &unk_1F19FEA50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

{
  *this = &unk_1F19FEA50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  llvm::deallocate_buffer(*(this + 1), (8 * *(this + 6)));
}

void sub_1A6C0CFA8()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(mlir::detail::DialectInterfaceCollectionBase *this, Operation *a2)
{
  v3 = *(a2 + 6);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14 = *(v3 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v14);
    v5 = *(this + 6);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    Values = *(v3 + 24);
    v5 = *(this + 6);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(this + 1);
  v7 = 0x9DDFEA08EB382D69 * ((8 * Values - 0xAE502812AA7333) ^ HIDWORD(Values));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(Values) ^ (v7 >> 47) ^ v7);
  v9 = 1;
  v10 = (-348639895 * ((v8 >> 47) ^ v8)) & (v5 - 1);
  v11 = *(v6 + 8 * v10);
  if (v11 == -8192)
  {
    goto LABEL_8;
  }

  while (v11 != -4096)
  {
    if (*(v11 + 8) == Values)
    {
      if (v10 == v5)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    do
    {
LABEL_8:
      v12 = v10 + v9++;
      v10 = v12 & (v5 - 1);
      v11 = *(v6 + 8 * v10);
    }

    while (v11 == -8192);
  }

  return 0;
}

void mlir::DialectExtensionBase::~DialectExtensionBase(mlir::DialectExtensionBase *this)
{
  *this = &unk_1F19FEA70;
  v1 = *(this + 1);
  if (v1 != this + 24)
  {
    free(v1);
  }
}

int32x2_t *mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(int32x2_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[11].i32[0];
  if (v3)
  {
    v4 = result[9];
    v5 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
    v6 = v3 - 1;
    v7 = v6 & ((v5 >> 31) ^ v5);
    v8 = (*&v4 + 16 * v7);
    v10 = v8->i64[0];
    v9 = v8->i64[1];
    if (v8->i64[0] == a2 && v9 == a3)
    {
LABEL_7:
      *v8 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      result[10] = vadd_s32(result[10], 0x1FFFFFFFFLL);
    }

    else
    {
      v12 = 1;
      while (v10 != -4096 || v9 != -4096)
      {
        v13 = v7 + v12++;
        v7 = v13 & v6;
        v8 = (*&v4 + 16 * v7);
        v10 = v8->i64[0];
        v9 = v8->i64[1];
        if (v8->i64[0] == a2 && v9 == a3)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

mlir::DialectRegistry *mlir::DialectRegistry::DialectRegistry(mlir::DialectRegistry *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0u;
  *this = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0;
  v3[0] = &unk_1F19FEAE0;
  v4 = v3;
  mlir::DialectRegistry::insert(this, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, "builtin", 7uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  return this;
}

uint64_t *(*mlir::DialectRegistry::getDialectAllocator(uint64_t a1, const void *a2, size_t __len))(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v29) = __len;
    if (__len)
    {
      memmove(&__dst, a2, __len);
    }

    *(&__dst + __len) = 0;
    v8 = *(a1 + 8);
    v5 = a1 + 8;
    v6 = v8;
    v7 = HIBYTE(v29);
    if (!v8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    __dst = 0;
    v28 = 0;
    v29 = 0;
    v5 = a1 + 8;
    v6 = *(a1 + 8);
    v7 = 0;
    if (!v6)
    {
LABEL_49:
      v11 = v5;
      goto LABEL_50;
    }
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v28;
  }

  if ((v7 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v11 = v5;
  do
  {
    v12 = *(v6 + 55);
    if (v12 >= 0)
    {
      v13 = *(v6 + 55);
    }

    else
    {
      v13 = *(v6 + 40);
    }

    if (v12 >= 0)
    {
      v14 = (v6 + 32);
    }

    else
    {
      v14 = *(v6 + 32);
    }

    if (v9 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = memcmp(v14, p_dst, v15);
    v17 = v13 < v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    v18 = !v17;
    if (v17)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v11 = v6;
    }

    v6 = *(v6 + v19);
  }

  while (v6);
  if (v11 == v5)
  {
    goto LABEL_49;
  }

  v20 = *(v11 + 55);
  if (v20 >= 0)
  {
    v21 = *(v11 + 55);
  }

  else
  {
    v21 = *(v11 + 40);
  }

  if (v20 >= 0)
  {
    v22 = (v11 + 32);
  }

  else
  {
    v22 = *(v11 + 32);
  }

  if (v21 >= v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v21;
  }

  v24 = memcmp(p_dst, v22, v23);
  v25 = v9 < v21;
  if (v24)
  {
    v25 = v24 < 0;
  }

  if (v25)
  {
    goto LABEL_49;
  }

LABEL_50:
  if ((v7 & 0x80) != 0)
  {
    operator delete(__dst);
  }

  if (v11 == v5)
  {
    return 0;
  }

  else
  {
    return llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>;
  }
}

_BYTE *mlir::DialectRegistry::insert(uint64_t **a1, size_t a2, void *__src, size_t __len, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v21) = __len;
  if (__len)
  {
    memmove(&v20, __src, __len);
    *(&v20 + __len) = 0;
    v22 = a2;
    v10 = *(a5 + 24);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v24 = 0;
    *__p = v20;
    v13 = v21;
    v20 = 0uLL;
    v21 = 0;
    v26 = v13;
    v27 = a2;
    v29 = 0;
    goto LABEL_16;
  }

  LOBYTE(v20) = 0;
  v22 = a2;
  v10 = *(a5 + 24);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v10 == a5)
  {
    v24 = v23;
    (*(*v10 + 24))(v10, v23);
    v12 = v22;
    v11 = v24;
  }

  else
  {
    v11 = (*(*v10 + 16))(v10);
    v24 = v11;
    v12 = a2;
  }

  *__p = v20;
  v14 = v21;
  v21 = 0;
  v20 = 0uLL;
  v26 = v14;
  v27 = v12;
  if (v11)
  {
    if (v11 == v23)
    {
      v29 = v28;
      (*(*v11 + 24))(v11, v28);
    }

    else
    {
      v29 = v11;
      v24 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_16:
  v17 = std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(a1, __p, __p);
  v18 = v15;
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29, v15, v16);
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_20:
      result = v24;
      if (v24 != v23)
      {
        goto LABEL_21;
      }

LABEL_27:
      result = (*(*result + 32))(result);
      if (v18)
      {
        return result;
      }

      goto LABEL_28;
    }
  }

  operator delete(__p[0]);
  result = v24;
  if (v24 == v23)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  if ((v18 & 1) == 0)
  {
LABEL_28:
    if (v17[7] != a2)
    {
      v28[0] = 1283;
      __p[0] = "Trying to register different dialects for the same namespace: ";
      v26 = __src;
      v27 = __len;
      llvm::report_fatal_error(__p, 1);
    }
  }

  return result;
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, size_t *a2)
{
  v48[6] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v41 = a2[4];
    v5 = a2[1];
    v4 = a2[2];
    v6 = *(this + 6);
    v7 = v6 + 16 * v2;
    do
    {
      v8 = v7 - v6;
      v9 = (v7 - v6) >> 4;
      v43 = v45;
      v44 = 0x600000000;
      if (v9 < 7)
      {
        v10 = v45;
        v11 = 0;
        v12 = v45;
        v13 = v8 - 16;
        if (v8 - 16 < 0xA0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, (v7 - v6) >> 4, 8);
        v10 = v43;
        v11 = v44;
        v12 = v43 + 8 * v44;
        v13 = v8 - 16;
        if (v8 - 16 < 0xA0)
        {
          goto LABEL_15;
        }
      }

      v14 = v13 >> 4;
      if (v12 >= v6 + (v13 & 0xFFFFFFFFFFFFFFF0) + 16 || v6 + 8 >= &v10[8 * v14 + 8 + 8 * v11])
      {
        v15 = v14 + 1;
        v16 = v15 & 3;
        if ((v15 & 3) == 0)
        {
          v16 = 4;
        }

        v17 = v15 - v16;
        v12 += 8 * v17;
        v18 = v6 + 16 * v17;
        v19 = (v6 + 40);
        v20 = &v10[8 * v11 + 16];
        do
        {
          v21 = v19 - 4;
          v22 = vld2q_f64(v21);
          v23 = vld2q_f64(v19);
          *(v20 - 1) = v22;
          *v20 = v23;
          v19 += 8;
          v20 += 2;
          v17 -= 4;
        }

        while (v17);
        v6 = v18;
      }

LABEL_15:
      v3 += v9;
      do
      {
        *v12 = *(v6 + 8);
        v12 += 8;
        v6 += 16;
      }

      while (v6 != v7);
      v24 = v11 + (v8 >> 4);
      LODWORD(v44) = v24;
      if (!v24)
      {
        goto LABEL_50;
      }

      v40 = v3;
      v25 = &v10[8 * v24];
      while (2)
      {
        v26 = *v10;
        v27 = *(*v10 + 8);
        v28 = *(*v10 + 16);
        if (v28 == 1)
        {
          if (*(v27 + 8) != v4 || v4 && memcmp(*v27, v5, v4))
          {
            goto LABEL_20;
          }

LABEL_19:
          (*(*v26 + 16))(v26, v41, &v42, 1);
          goto LABEL_20;
        }

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = 16 * v28;
        if (v4)
        {
          v30 = 16 * v28;
          v31 = *(*v10 + 8);
          while (*(v31 + 8) != v4 || memcmp(*v31, v5, v4))
          {
            v31 += 16;
            v30 -= 16;
            if (!v30)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v32 = 16 * v28;
          v31 = *(*v10 + 8);
          while (*(v31 + 8))
          {
            v31 += 16;
            v32 -= 16;
            if (!v32)
            {
              goto LABEL_20;
            }
          }
        }

        if (v31 == v27 + 16 * v28)
        {
          goto LABEL_20;
        }

        v46 = v48;
        v47 = 0x600000000;
        if (v28 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v28, 8);
        }

        v33 = v41;
        do
        {
          if (v27 == v31)
          {
            LoadedDialect = v42;
            v35 = v47;
            if (v47 < HIDWORD(v47))
            {
              goto LABEL_43;
            }

LABEL_46:
            v36 = LoadedDialect;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v35 + 1, 8);
            LoadedDialect = v36;
            v33 = v41;
            v35 = v47;
            goto LABEL_43;
          }

          LoadedDialect = mlir::MLIRContext::getLoadedDialect(v33, *v27, *(v27 + 8));
          if (!LoadedDialect)
          {
            goto LABEL_47;
          }

          v35 = v47;
          if (v47 >= HIDWORD(v47))
          {
            goto LABEL_46;
          }

LABEL_43:
          *(v46 + v35) = LoadedDialect;
          LODWORD(v47) = v47 + 1;
          v27 += 16;
          v29 -= 16;
        }

        while (v29);
        (*(*v26 + 16))(v26, v33, v46);
LABEL_47:
        if (v46 != v48)
        {
          free(v46);
        }

LABEL_20:
        v10 += 8;
        if (v10 != v25)
        {
          continue;
        }

        break;
      }

      v10 = v43;
      v3 = v40;
LABEL_50:
      v37 = *(this + 6);
      v38 = *(this + 14);
      if (v10 != v45)
      {
        free(v10);
      }

      v6 = v37 + 16 * v3;
      v7 = v37 + 16 * v38;
    }

    while (v3 != v38);
  }
}

void mlir::DialectRegistry::applyExtensions(mlir::DialectRegistry *this, mlir::MLIRContext *a2)
{
  v41[6] = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = *(this + 6);
    v7 = v6 + 16 * v2;
    do
    {
      v8 = v7 - v6;
      v9 = (v7 - v6) >> 4;
      v36 = v38;
      v37 = 0x600000000;
      if (v9 < 7)
      {
        v10 = v38;
        v11 = 0;
        v12 = v38;
        v13 = v8 - 16;
        if (v8 - 16 >= 0xA0)
        {
LABEL_8:
          v14 = v13 >> 4;
          if (v12 >= v6 + (v13 & 0xFFFFFFFFFFFFFFF0) + 16 || v6 + 8 >= &v10[8 * v14 + 8 + 8 * v11])
          {
            v15 = v14 + 1;
            v16 = v15 & 3;
            if ((v15 & 3) == 0)
            {
              v16 = 4;
            }

            v17 = v15 - v16;
            v12 += 8 * v17;
            v18 = v6 + 16 * v17;
            v19 = (v6 + 40);
            v20 = &v10[8 * v11 + 16];
            do
            {
              v21 = v19 - 4;
              v22 = vld2q_f64(v21);
              v23 = vld2q_f64(v19);
              *(v20 - 1) = v22;
              *v20 = v23;
              v19 += 8;
              v20 += 2;
              v17 -= 4;
            }

            while (v17);
            v6 = v18;
          }
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, (v7 - v6) >> 4, 8);
        v10 = v36;
        v11 = v37;
        v12 = v36 + 8 * v37;
        v13 = v8 - 16;
        if (v8 - 16 >= 0xA0)
        {
          goto LABEL_8;
        }
      }

      v5 += v9;
      do
      {
        *v12 = *(v6 + 8);
        v12 += 8;
        v6 += 16;
      }

      while (v6 != v7);
      v24 = v11 + (v8 >> 4);
      LODWORD(v37) = v24;
      if (v24)
      {
        v25 = &v10[8 * v24];
        do
        {
          v26 = *v10;
          v27 = *(*v10 + 16);
          if (v27)
          {
            v28 = v26[1];
            __p = v41;
            v40 = 0x600000000;
            if (v27 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v41, v27, 8);
            }

            v29 = &v28[2 * v27];
            while (1)
            {
              LoadedDialect = mlir::MLIRContext::getLoadedDialect(a2, *v28, v28[1]);
              if (!LoadedDialect)
              {
                break;
              }

              v31 = v40;
              if (v40 >= HIDWORD(v40))
              {
                v32 = LoadedDialect;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v41, v40 + 1, 8);
                LoadedDialect = v32;
                v4 = this;
                v31 = v40;
              }

              *(__p + v31) = LoadedDialect;
              LODWORD(v40) = v40 + 1;
              v28 += 2;
              if (v28 == v29)
              {
                (*(*v26 + 16))(v26, a2, __p);
                break;
              }
            }

            if (__p != v41)
            {
              free(__p);
            }
          }

          else
          {
            mlir::MLIRContext::getLoadedDialects(&__p, a2);
            (*(*v26 + 16))(v26, a2);
            if (__p)
            {
              v40 = __p;
              operator delete(__p);
            }
          }

          v10 += 8;
        }

        while (v10 != v25);
        v10 = v36;
      }

      v33 = *(v4 + 6);
      v34 = *(v4 + 14);
      if (v10 != v38)
      {
        free(v10);
      }

      v6 = v33 + 16 * v5;
      v7 = v33 + 16 * v34;
    }

    while (v5 != v34);
  }
}

uint64_t mlir::DialectRegistry::isSubsetOf(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = &v4[2 * v2];
      v6 = *(a2 + 24);
      v7 = v3 - 1;
      while (1)
      {
        v8 = ((*v4 >> 4) ^ (*v4 >> 9)) & v7;
        v9 = *(v6 + 16 * v8);
        if (v9 != *v4)
        {
          break;
        }

LABEL_5:
        if (v8 == v3)
        {
          return 0;
        }

        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_12;
        }
      }

      v10 = 1;
      while (v9 != -4096)
      {
        v11 = v8 + v10++;
        v8 = v11 & v7;
        v9 = *(v6 + 16 * v8);
        if (v9 == *v4)
        {
          goto LABEL_5;
        }
      }
    }

    return 0;
  }

LABEL_12:
  v12 = (a1 + 8);
  v13 = *a1;
  if (*a1 == a1 + 8)
  {
    return 1;
  }

  v14 = *(a2 + 8);
  if (!v14)
  {
    return 0;
  }

  do
  {
    v15 = *(v13 + 55);
    if (v15 >= 0)
    {
      v16 = *(v13 + 55);
    }

    else
    {
      v16 = v13[5];
    }

    if (v15 >= 0)
    {
      v17 = v13 + 4;
    }

    else
    {
      v17 = v13[4];
    }

    v18 = v14;
    while (1)
    {
      v19 = *(v18 + 55);
      if (v19 >= 0)
      {
        v20 = *(v18 + 55);
      }

      else
      {
        v20 = v18[5];
      }

      if (v19 >= 0)
      {
        v21 = (v18 + 4);
      }

      else
      {
        v21 = v18[4];
      }

      if (v20 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v17, v21, v22);
      v24 = v16 < v20;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = memcmp(v21, v17, v22);
      v26 = v20 < v16;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        break;
      }

      ++v18;
LABEL_21:
      v18 = *v18;
      if (!v18)
      {
        return 0;
      }
    }

    v27 = v13[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v13[2];
        v29 = *v28 == v13;
        v13 = v28;
      }

      while (!v29);
    }

    result = 1;
    v13 = v28;
  }

  while (v28 != v12);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
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

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = &v7[2 * v10];
      v12 = v7 + 2;
      v13 = v10;
      do
      {
        *(v12 - 2) = -4096;
        *v12 = -4096;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *result;
    }

    v14 = &v7[2 * v6];
    do
    {
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(v5 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*v5 + 16 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*v5 + 16 * (v24 & v16));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        v20 = v4[1];
        v4[1] = 0;
        *v18 = v15;
        v18[1] = v20;
        ++*(v5 + 8);
        result = v4[1];
        v4[1] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*(*a2 + 8));
  v7 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v6);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v7 & (v4 - 1);
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
    llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(v18, a2, &v20);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>,mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::LookupBucketFor<mlir::DialectInterface const*>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*(*a2 + 8));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(*a2 + 8) - 0xAE502812AA7333) ^ v5);
    LODWORD(v5) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
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

int64x2_t *llvm::DenseMap<mlir::DialectInterface const*,llvm::detail::DenseSetEmpty,mlir::detail::DialectInterfaceCollectionBase::InterfaceKeyInfo,llvm::detail::DenseSetPair<mlir::DialectInterface const*>>::grow(uint64_t a1, int a2)
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
          v29 = HIDWORD(*(v28 + 8));
          v30 = 0x9DDFEA08EB382D69 * ((8 * *(v28 + 8) - 0xAE502812AA7333) ^ v29);
          v31 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30)))) & v18;
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

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::BuiltinDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::BuiltinDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_14BuiltinDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::function_ref<mlir::Dialect * ()(mlir::MLIRContext *)>::callback_fn<std::function<mlir::Dialect * ()(mlir::MLIRContext *)> const>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(v4, v5, v6);
}

uint64_t *std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

uint64_t mlir::DialectResourceBlobManager::update(uint64_t a1, unsigned int *a2, unint64_t a3, __int128 *a4)
{
  llvm::sys::RWMutexImpl::lock_shared(a1);
  v10 = llvm::StringMapImpl::hash(a2, a3, v8, v9);
  Key = llvm::StringMapImpl::FindKey((a1 + 16), a2, a3, v10);
  if (Key == -1 || Key == *(a1 + 24))
  {
    v12 = 0;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (MEMORY[0x50] == 1)
    {
LABEL_4:

      return mlir::AsmResourceBlob::operator=((v12 + 16), a4);
    }
  }

  else
  {
    v12 = *(*(a1 + 16) + 8 * Key) + 8;
    result = llvm::sys::RWMutexImpl::unlock_shared(a1);
    if (*(v12 + 80) == 1)
    {
      goto LABEL_4;
    }
  }

  v14 = *a4;
  *(v12 + 32) = *(a4 + 2);
  *(v12 + 16) = v14;
  *(v12 + 64) = 0;
  v15 = *(a4 + 6);
  *(v12 + 64) = v15;
  if (v15 >= 8)
  {
    if ((v15 & 2) != 0 && (v15 & 4) != 0)
    {
      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 8))(v12 + 40, a4 + 24);
      result = (*((*(v12 + 64) & 0xFFFFFFFFFFFFFFF8) + 16))(a4 + 24);
    }

    else
    {
      v16 = *(a4 + 24);
      *(v12 + 56) = *(a4 + 5);
      *(v12 + 40) = v16;
    }

    *(a4 + 6) = 0;
  }

  *(v12 + 72) = *(a4 + 56);
  *(v12 + 80) = 1;
  return result;
}

uint64_t mlir::DialectResourceBlobManager::insert(pthread_rwlock_t **a1, unsigned int *a2, size_t a3, uint64_t a4)
{
  v25[4] = *MEMORY[0x1E69E9840];
  llvm::sys::RWMutexImpl::lock(a1);
  v22[0] = a1;
  v22[1] = a4;
  v9 = mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v22, a2, a3, v8);
  if (v9)
  {
    goto LABEL_20;
  }

  v23 = v25;
  v24 = xmmword_1A75A2980;
  if (a3 >= 0x21)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, a3, 1);
    v10 = v24;
LABEL_5:
    memcpy(v23 + v10, a2, a3);
    v10 = v24;
    goto LABEL_6;
  }

  v10 = 0;
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = v10 + a3;
  *&v24 = v11;
  if (v11 + 1 > *(&v24 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, v11 + 1, 1);
    v11 = v24;
  }

  *(v23 + v11) = 95;
  *&v24 = v24 + 1;
  v12 = a3 + 1;
  v13 = 1;
  while (1)
  {
    v19 = v13;
    v20 = &v19;
    v21 = 267;
    llvm::Twine::toVector(&v20, &v23);
    v9 = mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v22, v23, v24, v14);
    if (v9)
    {
      break;
    }

    v15 = v24;
    if (v24 == v12)
    {
      ++v13;
    }

    else
    {
      if (v24 <= v12)
      {
        if (*(&v24 + 1) < v12)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v23, v25, v12, 1);
          v15 = v24;
        }

        if (v12 != v15)
        {
          bzero(v23 + v15, v12 - v15);
        }
      }

      *&v24 = v12;
      ++v13;
    }
  }

  if (v23 != v25)
  {
    v16 = v9;
    free(v23);
    v9 = v16;
  }

LABEL_20:
  v17 = v9;
  llvm::sys::RWMutexImpl::unlock_shared(a1);
  return v17;
}

uint64_t mlir::DialectResourceBlobManager::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v38 = 0;
  *v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  v9 = llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>((v7 + 16), a2, a3, v8, &v33);
  v11 = v10;
  if (v38 == 1 && v37 >= 8)
  {
    v12 = (v37 & 2) != 0 ? (&v35 + 8) : *(&v35 + 1);
    (*(v37 & 0xFFFFFFFFFFFFFFF8))(v12, v34, *(&v34 + 1), v35);
    v13 = v37;
    if (v37 >= 8)
    {
      if ((v37 & 4) != 0)
      {
        if ((v37 & 2) != 0)
        {
          v14 = &v35 + 8;
        }

        else
        {
          v14 = *(&v35 + 1);
        }

        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(*(&v35 + 1), v36[0]);
      }
    }
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15 = *v9;
  v16 = *v9 + 96;
  v17 = **v9;
  v18 = a1[1];
  LOBYTE(v26) = 0;
  v32 = 0;
  if (*(v18 + 64) == 1)
  {
    v19 = *(v18 + 16);
    v26 = *v18;
    v20 = *(v18 + 48);
    v27 = v19;
    v30 = v20;
    if (v20 >= 8)
    {
      if ((v20 & 2) != 0 && (v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 8))(&v28, v18 + 24);
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 16))(v18 + 24);
      }

      else
      {
        v21 = *(v18 + 24);
        v29 = *(v18 + 40);
        v28 = v21;
      }

      *(v18 + 48) = 0;
    }

    v31 = *(v18 + 56);
    v32 = 1;
  }

  v15[1] = v16;
  v15[2] = v17;
  std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(v15 + 3, &v26);
  if (v32 == 1 && v30 >= 8)
  {
    v23 = (v30 & 2) != 0 ? &v28 : v28;
    (*(v30 & 0xFFFFFFFFFFFFFFF8))(v23, v26, *(&v26 + 1), v27);
    v24 = v30;
    if (v30 >= 8)
    {
      if ((v30 & 4) != 0)
      {
        if ((v30 & 2) != 0)
        {
          v25 = &v28;
        }

        else
        {
          v25 = v28;
        }

        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 16))(v25);
      }

      if ((v24 & 2) == 0)
      {
        llvm::deallocate_buffer(v28, *(&v28 + 1));
      }
    }
  }

  return *v9 + 8;
}

uint64_t *mlir::AsmResourceBlob::operator=(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 3;
  v5 = a1[6];
  if (v5 >= 8)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1 + 3;
    if ((v5 & 2) == 0)
    {
      v9 = *v4;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v9, v6, v7, v8);
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  if (a1 != a2)
  {
    v10 = a1[6];
    if (v10 >= 8)
    {
      if ((v10 & 4) != 0)
      {
        v11 = v4;
        if ((v10 & 2) == 0)
        {
          v11 = *v4;
        }

        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v11);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(a1[3], a1[4]);
      }
    }

    a1[6] = 0;
    v12 = *(a2 + 48);
    a1[6] = v12;
    if (v12 >= 8)
    {
      if ((v12 & 2) != 0 && (v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 8))(v4, a2 + 24);
        (*((a1[6] & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + 24);
      }

      else
      {
        v13 = *(a2 + 24);
        v4[2] = *(a2 + 40);
        *v4 = v13;
      }

      *(a2 + 48) = 0;
    }
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t *llvm::StringMap<mlir::DialectResourceBlobManager::BlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::DialectResourceBlobManager::BlobEntry>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 97, 8uLL);
    v13 = buffer + 96;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v15 = v10[1];
      ++v10;
      v11 = v15;
    }

    return v10;
  }

  buffer = llvm::allocate_buffer(a3 + 97, 8uLL);
  v13 = buffer + 96;
  if (a3)
  {
LABEL_4:
    memcpy(v13, a2, a3);
  }

LABEL_5:
  *(v13 + a3) = 0;
  *buffer = a3;
  *(buffer + 8) = *a5;
  buffer[24] = 0;
  buffer[88] = 0;
  if (*(a5 + 80) == 1)
  {
    *(buffer + 24) = *(a5 + 16);
    *(buffer + 5) = *(a5 + 32);
    v14 = *(a5 + 64);
    *(buffer + 9) = v14;
    if (v14 >= 8)
    {
      if ((v14 & 2) != 0 && (v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(buffer + 48, a5 + 40);
        (*((*(buffer + 9) & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 40);
      }

      else
      {
        *(buffer + 3) = *(a5 + 40);
        *(buffer + 8) = *(a5 + 56);
      }

      *(a5 + 64) = 0;
    }

    buffer[80] = *(a5 + 72);
    buffer[88] = 1;
  }

  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

uint64_t *std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(uint64_t *result, __int128 *a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {

      return mlir::AsmResourceBlob::operator=(result, a2);
    }
  }

  else if (*(result + 64))
  {
    v2 = result[6];
    if (v2 >= 8)
    {
      v3 = result + 3;
      v4 = *result;
      v5 = result[1];
      v6 = result;
      v7 = result[2];
      v8 = result + 3;
      if ((v2 & 2) == 0)
      {
        v8 = *v3;
      }

      (*(v2 & 0xFFFFFFFFFFFFFFF8))(v8, v4, v5, v7);
      result = v6;
      v9 = v6[6];
      if (v9 >= 8)
      {
        if ((v9 & 4) != 0)
        {
          if ((v9 & 2) == 0)
          {
            v3 = *v3;
          }

          (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
          result = v6;
        }

        if ((v9 & 2) == 0)
        {
          llvm::deallocate_buffer(result[3], result[4]);
        }
      }
    }

    *(result + 64) = 0;
  }

  else
  {
    v10 = *a2;
    result[2] = *(a2 + 2);
    *result = v10;
    result[6] = 0;
    v11 = *(a2 + 6);
    result[6] = v11;
    if (v11 >= 8)
    {
      if ((v11 & 2) != 0 && (v11 & 4) != 0)
      {
        v13 = result;
        v14 = a2;
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(result + 3, a2 + 24);
        (*((v13[6] & 0xFFFFFFFFFFFFFFF8) + 16))(v14 + 24);
        a2 = v14;
        result = v13;
      }

      else
      {
        v12 = *(a2 + 24);
        result[5] = *(a2 + 5);
        *(result + 3) = v12;
      }

      *(a2 + 6) = 0;
    }

    *(result + 56) = *(a2 + 56);
    *(result + 64) = 1;
  }

  return result;
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndexForInsert(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v13 = *(a1 + 32);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>((a1 + 88), &v15, &v13, v14);
  v3 = *(v14[0] + 8);
  v4 = *(a1 + 32);
  v5 = (v3 + 1);
  if (v4 <= v3 && v4 != v5)
  {
    if (v4 <= v5)
    {
      if (*(a1 + 36) < v5)
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,false>::grow(a1 + 24, (v3 + 1));
        v4 = *(a1 + 32);
      }

      if (v5 != v4)
      {
        bzero((*(a1 + 24) + 8 * v4), 8 * (v5 - v4));
      }
    }

    else
    {
      v7 = 8 * v4;
      v8 = 8 * v5 - v7;
      v9 = (v7 + *(a1 + 24) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 24);
          if (v11 != (v10 + 40))
          {
            free(v11);
          }

          MEMORY[0x1AC55A070](v10, 0x10A0C40528A66C4);
        }

        --v9;
        v8 += 8;
      }

      while (v8);
    }

    *(a1 + 32) = v5;
  }

  return v3;
}

BOOL llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 88);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 == a2)
  {
LABEL_4:
    if (v6 != v3)
    {
      v8 = *(v4 + 16 * v6 + 8);
      if (*(a1 + 32) > v8)
      {
        v9 = *(*(a1 + 24) + 8 * v8);
        goto LABEL_14;
      }
    }
  }

  else
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
LABEL_14:
  v13 = v5 & ((a3 >> 4) ^ (a3 >> 9));
  v14 = *(v4 + 16 * v13);
  if (v14 != a3)
  {
    v21 = 1;
    while (v14 != -4096)
    {
      v22 = v13 + v21++;
      v13 = v22 & v5;
      v14 = *(v4 + 16 * v13);
      if (v14 == a3)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  if (v13 == v3)
  {
    return 1;
  }

  v15 = *(v4 + 16 * v13 + 8);
  if (*(a1 + 32) <= v15)
  {
    return 1;
  }

  v16 = *(*(a1 + 24) + 8 * v15);
  if (v16 == v9 || v16 == 0)
  {
    return 1;
  }

  if (!v9)
  {
    return 0;
  }

  if (*(v16 + 8) == v9)
  {
    return 1;
  }

  if (*(v9 + 8) == v16)
  {
    return 0;
  }

  v18 = *(v9 + 16);
  if (v18 >= *(v16 + 16))
  {
    return 0;
  }

  if (*(a1 + 128) == 1)
  {
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  v19 = *(a1 + 132) + 1;
  *(a1 + 132) = v19;
  if (v19 > 0x20)
  {
    llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(a1);
    if (*(v16 + 72) < *(v9 + 72))
    {
      return 0;
    }

    return *(v16 + 76) <= *(v9 + 76);
  }

  do
  {
    v20 = v16;
    v16 = *(v16 + 8);
  }

  while (v16 && *(v16 + 16) >= v18);
  return v20 == v9;
}

void llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers(uint64_t a1)
{
  v18[64] = *MEMORY[0x1E69E9840];
  if (*(a1 + 128) == 1)
  {
    *(a1 + 132) = 0;
  }

  else
  {
    v15 = v18;
    v17 = 32;
    v1 = *(a1 + 112);
    if (v1)
    {
      v2 = *(v1 + 24);
      v18[0] = *(a1 + 112);
      v18[1] = v2;
      v3 = 1;
      v16 = 1;
      *(v1 + 72) = 0;
      v4 = 1;
      do
      {
        while (1)
        {
          v5 = v15;
          v6 = v4;
          v7 = v15 + 16 * v4;
          v9 = *(v7 - 2);
          v8 = *(v7 - 1);
          if (v8 != (*(v9 + 24) + 8 * *(v9 + 32)))
          {
            break;
          }

          *(v9 + 76) = v3;
          v4 = v6 - 1;
          v16 = v6 - 1;
          ++v3;
          if (v6 == 1)
          {
            goto LABEL_10;
          }
        }

        v10 = *v8;
        *(v7 - 1) = v8 + 1;
        v11 = *(v10 + 24);
        if (v6 >= v17)
        {
          v13 = a1;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v18, v6 + 1, 16);
          a1 = v13;
          v6 = v16;
          v5 = v15;
        }

        v12 = &v5[16 * v6];
        *v12 = v10;
        *(v12 + 1) = v11;
        v4 = ++v16;
        *(v10 + 72) = v3++;
      }

      while (v4);
LABEL_10:
      v14 = v15;
      *(a1 + 132) = 0;
      *(a1 + 128) = 1;
      if (v14 != v18)
      {
        free(v14);
      }
    }
  }
}

uint64_t llvm::DominatorTreeBase<mlir::Block,false>::reset(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = *(result + 24) - 8;
    do
    {
      v5 = *(v4 + v3);
      *(v4 + v3) = 0;
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6 != (v5 + 40))
        {
          free(v6);
        }

        result = MEMORY[0x1AC55A070](v5, 0x10A0C40528A66C4);
      }

      v3 -= 8;
    }

    while (v3);
  }

  *(v1 + 32) = 0;
  v7 = *(v1 + 96);
  if (v7 || *(v1 + 100))
  {
    v8 = *(v1 + 104);
    if (v8 > 4 * v7 && v8 >= 0x41)
    {
      result = llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::shrink_and_clear(v1 + 88);
      goto LABEL_23;
    }

    if (v8)
    {
      v9 = *(v1 + 88);
      v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10)
      {
        v11 = v10 + 1;
        v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v13 = (v9 + 16 * v12);
        v14 = (v9 + 16);
        v15 = v12;
        do
        {
          *(v14 - 2) = -4096;
          *v14 = -4096;
          v14 += 4;
          v15 -= 2;
        }

        while (v15);
        if (v11 == v12)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = *(v1 + 88);
      }

      v16 = (v9 + 16 * v8);
      do
      {
        *v13 = -4096;
        v13 += 2;
      }

      while (v13 != v16);
    }

LABEL_22:
    *(v1 + 96) = 0;
  }

LABEL_23:
  *(v1 + 8) = 0;
  *(v1 + 132) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

void mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v2)
  {
    v5 = v3;
    if (v4)
    {
      v6 = 16 * v4;
      v5 = v3;
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v5 = (v5 + 16);
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_16;
        }
      }
    }

    v7 = (v3 + 16 * v4);
    if (v5 != v7)
    {
      do
      {
        v8 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
        if (v8)
        {
          llvm::deallocate_buffer(*(v8 + 88), (16 * *(v8 + 104)));
        }

        do
        {
          v5 = (v5 + 16);
        }

        while (v5 != v7 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v5 != v7);
      v3 = *a1;
      v4 = *(a1 + 16);
    }
  }

LABEL_16:
  llvm::deallocate_buffer(v3, (16 * v4));
}

uint64_t mlir::detail::DominanceInfoBase<false>::getDominanceInfo(uint64_t *a1, mlir::Region *a2, int a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16[0] = 4;
  llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(a1, &v15, v16, &v13);
  v5 = v13;
  if (v14)
  {
    if (*a2 == a2 || *(*(a2 + 1) + 8) != a2)
    {
      goto LABEL_4;
    }

    v6 = *(a2 + 2);
    if (v6)
    {
      if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_5:
        *(v5 + 8) = v8;
        return *(v5 + 8);
      }

      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(*(a2 + 2));
      if (InterfaceFor)
      {
        InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v6);
      }

      else
      {
        v6 = 0;
      }

      v15 = v6;
      v16[0] = InterfaceFor;
      if (v6)
      {
        RegionNumber = mlir::Region::getRegionNumber(a2);
        hasSSADominance = mlir::RegionKindInterface::hasSSADominance(&v15, RegionNumber);
        v11 = 4;
        if (!hasSSADominance)
        {
          v11 = 0;
        }

        v8 = *(v5 + 8) & 0xFFFFFFFFFFFFFFFBLL | v11;
        goto LABEL_5;
      }
    }
  }

  else if (a3 && *(v13 + 8) <= 7uLL && (*a2 == a2 || *(*(a2 + 1) + 8) != a2))
  {
LABEL_4:
    operator new();
  }

  return *(v5 + 8);
}

BOOL mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(uint64_t *a1, mlir::Block *this)
{
  Parent = mlir::Block::getParent(this);
  v5 = *(Parent + 1);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == this)
  {
    return 1;
  }

  v7 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, Parent, 1) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 104);
  if (v8)
  {
    v9 = *(v7 + 88);
    v10 = (v8 - 1) & ((this >> 4) ^ (this >> 9));
    v11 = *(v9 + 16 * v10);
    if (v11 == this)
    {
LABEL_7:
      if (v10 != v8)
      {
        v12 = *(v9 + 16 * v10 + 8);
        if (*(v7 + 32) > v12)
        {
          return *(*(v7 + 24) + 8 * v12) != 0;
        }
      }
    }

    else
    {
      v14 = 1;
      while (v11 != -4096)
      {
        v15 = v10 + v14++;
        v10 = v15 & (v8 - 1);
        v11 = *(v9 + 16 * v10);
        if (v11 == this)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::DominanceInfo::properlyDominatesImpl(mlir::DominanceInfo *this, mlir::Block **a2, mlir::Block **a3, char a4)
{
  v5 = a2[2];
  if (a2 == a3)
  {
    Parent = mlir::Block::getParent(a2[2]);
    return (mlir::detail::DominanceInfoBase<false>::getDominanceInfo(this, Parent, 0) & 4) == 0;
  }

  v6 = a3;
  v9 = a3[2];
  v10 = mlir::Block::getParent(a2[2]);
  if (v10 == mlir::Block::getParent(v9))
  {
LABEL_10:
    if (v5 == v9)
    {
      v14 = mlir::Block::getParent(v5);
      if ((mlir::detail::DominanceInfoBase<false>::getDominanceInfo(this, v14, 0) & 4) != 0)
      {

        return mlir::Operation::isBeforeInBlock(a2, v6);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v13 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(this, v10, 1) & 0xFFFFFFFFFFFFFFF8;

      return llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(v13, v5, v9);
    }
  }

  if (!v10)
  {
    return 0;
  }

  result = mlir::Region::findAncestorOpInRegion(v10, v6);
  if (result)
  {
    v6 = result;
    v9 = *(result + 16);
    if (result == a2 && (a4 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t mlir::DominanceInfo::properlyDominates(mlir::DominanceInfo *a1, uint64_t a2, mlir::Block **a3)
{
  v11 = a2;
  if (!a2 || (*(a2 + 8) & 7) != 7)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v11);
    return mlir::DominanceInfo::properlyDominatesImpl(a1, DefiningOp, a3, 0);
  }

  v4 = *(a2 + 16);
  v5 = a3[2];
  if (v4 == v5)
  {
    return 1;
  }

  Parent = mlir::Block::getParent(*(a2 + 16));
  if (Parent == mlir::Block::getParent(v5))
  {
LABEL_8:
    v8 = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(a1, Parent, 1) & 0xFFFFFFFFFFFFFFF8;

    return llvm::DominatorTreeBase<mlir::Block,false>::properlyDominates(v8, v4, v5);
  }

  if (!Parent)
  {
    return 0;
  }

  result = mlir::Region::findAncestorBlockInRegion(Parent, v5);
  if (result)
  {
    v5 = result;
    if (result != v4)
    {
      goto LABEL_8;
    }

    return 1;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[271];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<llvm::DomTreeNodeBase<mlir::Block>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      v23 = *(v22 + 24);
      if (v23 != (v22 + 40))
      {
        free(v23);
      }

      MEMORY[0x1AC55A070](v22, 0x10A0C40528A66C4);
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_21:
  v24 = v25;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v24;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch(void **a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a1[15];
  llvm::DominatorTreeBase<mlir::Block,false>::reset(a1);
  a1[15] = v4;
  if (a2)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      v13 = 0;
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    if (v5 == v6)
    {
      *(v6 + 592) = *(v5 + 592);
LABEL_24:
      v13 = a2;
LABEL_25:
      v27 = 0x4000000001;
      v28[0] = 0;
      v29 = 0u;
      v30 = 0;
      v31 = v13;
      __src = &v25;
      v15 = v4[1];
      if (v15)
      {
        v16 = v15 - 8;
      }

      else
      {
        v16 = 0;
      }

      v25 = v16;
      v26 = v28;
      v24 = 0x100000001;
      if (&__src == a1)
      {
        goto LABEL_37;
      }

      if (*(a1 + 2))
      {
        **a1 = v16;
        goto LABEL_35;
      }

      if (*(a1 + 3))
      {
        v17 = 1;
      }

      else
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 1uLL, 8);
        v17 = v24;
        if (!v24)
        {
          goto LABEL_35;
        }
      }

      memcpy(*a1, __src, 8 * v17);
LABEL_35:
      *(a1 + 2) = 1;
      LODWORD(v24) = 0;
      if (__src != &v25)
      {
        free(__src);
      }

LABEL_37:
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v26, **a1, 0, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::AlwaysDescend, 0, 0);
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(&v26);
      *a2 = 1;
      if (!*(a1 + 2))
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }

    llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(*(a2 + 8), *(a2 + 16));
    llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom((v6 + 296), (v5 + 296));
    *(v6 + 592) = *(v5 + 592);
    v7 = (v6 + 600);
    v8 = *(v5 + 608);
    v9 = *(v6 + 608);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*v7, *(v5 + 600), 16 * v8);
      }

      goto LABEL_23;
    }

    if (*(v6 + 612) >= v8)
    {
      if (v9)
      {
        memmove(*v7, *(v5 + 600), 16 * v9);
        v10 = *(v5 + 608) - v9;
        if (!v10)
        {
LABEL_23:
          *(v6 + 608) = v8;
          v4 = a1[15];
          goto LABEL_24;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(v5 + 608);
        if (!*(v5 + 608))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      *(v6 + 608) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 600, (v6 + 616), v8, 16);
      v9 = 0;
      v10 = *(v5 + 608);
      if (!*(v5 + 608))
      {
        goto LABEL_23;
      }
    }

    memcpy(*v7 + 16 * v9, (*(v5 + 600) + 16 * v9), 16 * v10);
    goto LABEL_23;
  }

  v27 = 0x4000000001;
  v28[0] = 0;
  v29 = 0u;
  v30 = 0;
  v31 = 0;
  __src = &v25;
  v11 = v4[1];
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  v25 = v12;
  v26 = v28;
  v24 = 0x100000001;
  if (&__src == a1)
  {
LABEL_49:
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v26, **a1, 0, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::AlwaysDescend, 0, 0);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(&v26);
    if (!*(a1 + 2))
    {
LABEL_38:
      v18 = v29;
      if (v30)
      {
        v19 = (v29 + 48);
        v20 = v30 << 6;
        do
        {
          if ((*(v19 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v21 = *(v19 - 2);
            if (v19 != v21)
            {
              free(v21);
            }
          }

          v19 += 8;
          v20 -= 64;
        }

        while (v20);
        v18 = v29;
        v22 = (v30 << 6);
      }

      else
      {
        v22 = 0;
      }

      llvm::deallocate_buffer(v18, v22);
    }

LABEL_50:
    operator new();
  }

  if (*(a1 + 2))
  {
    **a1 = v12;
    goto LABEL_47;
  }

  if (*(a1 + 3))
  {
    v14 = 1;
  }

  else
  {
    *(a1 + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 1uLL, 8);
    v14 = v24;
    if (!v24)
    {
      goto LABEL_47;
    }
  }

  memcpy(*a1, __src, 8 * v14);
LABEL_47:
  *(a1 + 2) = 1;
  LODWORD(v24) = 0;
  if (__src != &v25)
  {
    free(__src);
  }

  goto LABEL_49;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(uint64_t a1)
{
  v67[8] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v65 = v67;
  v66 = 0x800000001;
  v67[0] = 0;
  if (v2 < 9)
  {
    if (v2 < 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v2, 8);
  }

  for (i = 1; i != v2; ++i)
  {
    v62 = *(*a1 + 8 * i);
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v62);
    v4[2] = *(*a1 + 8 * *(v4 + 1));
    v5 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v6 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      v4 = v6;
      v5 = v66;
    }

    v65[v5] = v4;
    LODWORD(v66) = v66 + 1;
  }

LABEL_8:
  v62 = v64;
  v63 = 0x2000000000;
  v7 = (v2 - 1);
  if (v7 >= 2)
  {
    v8 = v65;
    v9 = v64;
    v10 = v2;
    do
    {
      v11 = v8[v7];
      v12 = *(v11 + 4);
      *(v11 + 8) = v12;
      v13 = *(v11 + 32);
      if (v13)
      {
        v14 = *(v11 + 24);
        v15 = &v14[v13];
        do
        {
          v16 = v8[*v14];
          if (*(v16 + 4) >= v10)
          {
            v18 = 0;
            do
            {
              if (v18 >= HIDWORD(v63))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v18 + 1, 8);
                v18 = v63;
              }

              *(v62 + v18) = v16;
              v18 = v63 + 1;
              LODWORD(v63) = v63 + 1;
              v16 = v8[*(v16 + 4)];
              v19 = *(v16 + 4);
            }

            while (v19 >= v10);
            v20 = v8[*(v16 + 12)];
            v9 = v62;
            v21 = v62 - 8;
            do
            {
              v22 = *&v21[8 * v18];
              *(v22 + 4) = v19;
              v23 = *(v22 + 12);
              v24 = v8[v23];
              if (*(v20 + 8) < *(v24 + 8))
              {
                v23 = *(v16 + 12);
                *(v22 + 12) = v23;
                v24 = v20;
              }

              v16 = v22;
              v20 = v24;
              --v18;
            }

            while (v18);
            LODWORD(v63) = 0;
            v8 = v65;
            v12 = *(v11 + 8);
            v17 = *(v65[v23] + 8);
            if (v17 >= v12)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = *(v8[*(v16 + 12)] + 8);
            if (v17 >= v12)
            {
              goto LABEL_14;
            }
          }

          *(v11 + 8) = v17;
          v12 = v17;
LABEL_14:
          ++v14;
        }

        while (v14 != v15);
      }

      v10 = v7--;
    }

    while ((v7 & 0xFFFFFFFE) != 0);
    if (v2 >= 3)
    {
      v25 = 2;
      v26 = 0uLL;
      while (1)
      {
        v27 = v65[v25];
        v28 = *v65[*(v27 + 8)];
        v29 = (v27 + 16);
        v30 = (v27 + 16);
        do
        {
          v35 = *v30;
          v36 = *(a1 + 528);
          v37 = *(a1 + 544);
          if (!v37)
          {
            goto LABEL_52;
          }

          v31 = ((v35 >> 4) ^ (v35 >> 9)) & (v37 - 1);
          v32 = &v36[8 * v31];
          v33 = *v32;
          if (v35 == *v32)
          {
            goto LABEL_33;
          }

          v38 = 0;
          v39 = 1;
          while (v33 != -4096)
          {
            if (v38)
            {
              v40 = 0;
            }

            else
            {
              v40 = v33 == -8192;
            }

            if (v40)
            {
              v38 = v32;
            }

            v41 = v31 + v39++;
            v31 = v41 & (v37 - 1);
            v32 = &v36[8 * v31];
            v33 = *v32;
            if (v35 == *v32)
            {
              goto LABEL_33;
            }
          }

          if (v38)
          {
            v32 = v38;
          }

          v42 = *(a1 + 536);
          if (4 * v42 + 4 >= (3 * v37))
          {
LABEL_52:
            v43 = 2 * v37;
            goto LABEL_54;
          }

          if (v37 + ~v42 - *(a1 + 540) <= v37 >> 3)
          {
            v43 = *(a1 + 544);
LABEL_54:
            v44 = (v43 - 1) | ((v43 - 1) >> 1);
            v45 = v44 | (v44 >> 2) | ((v44 | (v44 >> 2)) >> 4);
            v46 = ((v45 | (v45 >> 8)) >> 16) | v45 | (v45 >> 8);
            if ((v46 + 1) > 0x40)
            {
              v47 = v46 + 1;
            }

            else
            {
              v47 = 64;
            }

            *(a1 + 544) = v47;
            buffer = llvm::allocate_buffer(v47 << 6, 8uLL);
            *(a1 + 528) = buffer;
            if (v36)
            {
              v49 = (v37 << 6);
              llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1 + 528, v36, &v49[v36]);
              llvm::deallocate_buffer(v36, v49);
            }

            v26 = 0uLL;
            *(a1 + 536) = 0;
            v50 = *(a1 + 544);
            if (v50)
            {
              v51 = buffer;
              if (((v50 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_88;
              }

              v52 = ((v50 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
              v51 = &buffer[8 * (v52 & 0x7FFFFFFFFFFFFFELL)];
              v53 = buffer + 8;
              v54 = v52 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v53 - 8) = -4096;
                *v53 = -4096;
                v53 += 16;
                v54 -= 2;
              }

              while (v54);
              if (v52 != (v52 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_88:
                do
                {
                  *v51 = -4096;
                  v51 += 8;
                }

                while (v51 != &buffer[8 * v50]);
              }

              v55 = v50 - 1;
              v56 = (v50 - 1) & ((v35 >> 4) ^ (v35 >> 9));
              v32 = &buffer[8 * v56];
              v57 = *v32;
              if (v35 != *v32)
              {
                v58 = 0;
                v59 = 1;
                while (v57 != -4096)
                {
                  if (v58)
                  {
                    v60 = 0;
                  }

                  else
                  {
                    v60 = v57 == -8192;
                  }

                  if (v60)
                  {
                    v58 = v32;
                  }

                  v61 = v56 + v59++;
                  v56 = v61 & v55;
                  v32 = &buffer[8 * v56];
                  v57 = *v32;
                  v26 = 0uLL;
                  if (v35 == *v32)
                  {
                    goto LABEL_76;
                  }
                }

                if (v58)
                {
                  v32 = v58;
                }

                v26 = 0uLL;
              }
            }

            else
            {
              v32 = 0;
            }

LABEL_76:
            ++*(a1 + 536);
            if (*v32 == -4096)
            {
              goto LABEL_39;
            }

LABEL_38:
            --*(a1 + 540);
            goto LABEL_39;
          }

          *(a1 + 536) = v42 + 1;
          if (*v32 != -4096)
          {
            goto LABEL_38;
          }

LABEL_39:
          *v32 = v35;
          *(v32 + 3) = v26;
          *(v32 + 5) = v26;
          *(v32 + 1) = v26;
          v32[7] = 0;
          v32[4] = (v32 + 6);
          *(v32 + 11) = 4;
LABEL_33:
          v34 = *(v32 + 2);
          v30 = v32 + 3;
        }

        while (v34 > v28);
        *v29 = v35;
        if (++v25 == v2)
        {
          v9 = v62;
          break;
        }
      }
    }

    if (v9 != v64)
    {
      free(v9);
    }
  }

  if (v65 != v67)
  {
    free(v65);
  }
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::attachNewSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v20 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v20);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    v9 = (*a1 + 8);
    while (1)
    {
      v12 = *v9;
      v13 = *(a2 + 104);
      if (!v13)
      {
        goto LABEL_4;
      }

      v14 = *(a2 + 88);
      v15 = ((v12 >> 4) ^ (v12 >> 9)) & (v13 - 1);
      v16 = *(v14 + 16 * v15);
      if (v16 != v12)
      {
        break;
      }

LABEL_8:
      if (v15 == v13)
      {
        goto LABEL_4;
      }

      v17 = *(v14 + 16 * v15 + 8);
      if (*(a2 + 32) <= v17 || !*(*(a2 + 24) + 8 * v17))
      {
        goto LABEL_4;
      }

      if (++v9 == v8)
      {
        return result;
      }
    }

    v18 = 1;
    while (v16 != -4096)
    {
      v19 = v15 + v18++;
      v15 = v19 & (v13 - 1);
      v16 = *(v14 + 16 * v15);
      if (v16 == v12)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v20 = *v9;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v20);
    NodeForBlock = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, v10[2], a2);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode(a2, v12, NodeForBlock);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + (v3 << 6));
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + (v3 << 6));
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 1) = 0u;
  v4[7] = 0;
  v4[4] = (v4 + 6);
  *(v4 + 11) = 4;
  return v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + (v6 << 6));
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + (v6 << 6));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(v8 << 6, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (v3 << 6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x7FFFFFFFFFFFFFELL;
      v15 = &result[8 * v14];
      v16 = result + 8;
      v17 = v14;
      do
      {
        *(v16 - 8) = -4096;
        *v16 = -4096;
        v16 += 16;
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

    v18 = &result[8 * v11];
    do
    {
      *v15 = -4096;
      v15 += 8;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x7FFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -4096;
        *v12 = -4096;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -4096;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + (v17 << 6));
        v19 = *v18;
        if (v15 != *v18)
        {
          v24 = 0;
          v25 = 1;
          while (v19 != -4096)
          {
            if (v24)
            {
              v26 = 0;
            }

            else
            {
              v26 = v19 == -8192;
            }

            if (v26)
            {
              v24 = v18;
            }

            v27 = v17 + v25++;
            v17 = v27 & v16;
            v18 = (*a1 + (v17 << 6));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v24)
          {
            v18 = v24;
          }
        }

LABEL_15:
        *v18 = v15;
        v20 = *(v4 + 1);
        v21 = v4[3];
        v18[4] = (v18 + 6);
        v22 = (v18 + 4);
        *(v22 - 8) = v21;
        *(v22 - 24) = v20;
        *(v22 + 8) = 0x400000000;
        if (*(v4 + 10))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v22, v4 + 4);
        }

        ++*(a1 + 8);
        v23 = v4[4];
        if (v23 != v4 + 6)
        {
          free(v23);
        }
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(int *a1@<X0>, mlir::Block *a2@<X1>, uint64_t *a3@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  v7 = v45[0];
  v6 = v45[1];
  v8 = a3 + 2;
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v6 < 9)
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v8, v6, 8);
    v9 = *(a3 + 2);
    v8 = *a3;
    v10 = v9;
  }

  v11 = (v7 + 32 * v6 - 8);
  v12 = v10;
  v13 = v6;
  do
  {
    v14 = *v11;
    v11 -= 4;
    v8[v12++] = v14;
    --v13;
  }

  while (v13);
LABEL_7:
  v15 = v8;
  v16 = v9 + v6;
  v17 = &v8[v16];
  if (v16)
  {
    v18 = 8 * v16;
    v15 = v8;
    while (*v15)
    {
      ++v15;
      v18 -= 8;
      if (!v18)
      {
        v15 = &v8[v16];
        goto LABEL_18;
      }
    }
  }

  if (v15 != v17)
  {
    v19 = v15 + 1;
    if (v15 + 1 != v17)
    {
      v20 = &v8[v16] - v15 - 8;
      do
      {
        if (*v19)
        {
          *v15++ = *v19;
        }

        ++v19;
        v20 -= 8;
      }

      while (v20);
    }
  }

LABEL_18:
  v21 = v15 - v8;
  v22 = (v15 - v8) >> 3;
  *(a3 + 2) = v22;
  v23 = a1 + 2;
  v24 = *a1;
  if (*a1)
  {
    v25 = 4;
  }

  else
  {
    v23 = *(a1 + 1);
    v25 = a1[4];
    if (!v25)
    {
      v26 = 0;
LABEL_21:
      v27 = &v23[18 * v26];
      goto LABEL_25;
    }
  }

  v28 = v25 - 1;
  v29 = (v25 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v27 = &v23[18 * v29];
  v30 = *v27;
  if (*v27 != a2)
  {
    v31 = 1;
    while (v30 != -4096)
    {
      v32 = v29 + v31++;
      v29 = v32 & v28;
      v27 = &v23[18 * (v32 & v28)];
      v30 = *v27;
      if (*v27 == a2)
      {
        goto LABEL_24;
      }
    }

    if ((v24 & 1) == 0)
    {
      v23 = *(a1 + 1);
      v26 = a1[4];
      goto LABEL_21;
    }

    v27 = a1 + 74;
LABEL_34:
    if (v27 == a1 + 74)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_24:
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (v27 == (*(a1 + 1) + 72 * a1[4]))
  {
    return;
  }

LABEL_35:
  v33 = v27[4];
  if (v33)
  {
    v34 = (v21 >> 3);
    v35 = *(v27 + 1);
    v36 = &v35[v33];
    do
    {
      v37 = *v35;
      v38 = &v8[v34];
      if (v34)
      {
        v39 = 8 * v34;
        v40 = v8;
        v41 = v8;
        while (*v41 != v37)
        {
          ++v41;
          ++v40;
          v39 -= 8;
          if (!v39)
          {
            v40 = &v8[v34];
            goto LABEL_37;
          }
        }
      }

      else
      {
        v40 = v8;
        v41 = v8;
      }

      v42 = v40 + 1;
      if (v41 != v38 && v42 != v38)
      {
        v44 = &v8[v34 - 1] - v40;
        do
        {
          if (*v42 != v37)
          {
            *v40++ = *v42;
          }

          ++v42;
          v44 -= 8;
        }

        while (v44);
      }

LABEL_37:
      v34 = ((v40 - v8) >> 3);
      ++v35;
    }

    while (v35 != v36);
    v22 = (v40 - v8) >> 3;
    *(a3 + 2) = v34;
  }

  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, &v8[v22], *(v27 + 5), (*(v27 + 5) + 8 * v27[12]));
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(mlir::Block *a1@<X0>, void *a2@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v19, a1);
  mlir::SuccessorRange::SuccessorRange(v19, a1);
  v5 = v19[0];
  v4 = v19[1];
  v6 = a2 + 2;
  *a2 = a2 + 2;
  a2[1] = 0x800000000;
  if (v4 < 9)
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v6, v4, 8);
    v7 = *(a2 + 2);
    v6 = *a2;
    v8 = v7;
  }

  v9 = (v5 + 32 * v4 - 8);
  v10 = v8;
  v11 = v4;
  do
  {
    v12 = *v9;
    v9 -= 4;
    v6[v10++] = v12;
    --v11;
  }

  while (v11);
LABEL_7:
  v13 = v6;
  v14 = v7 + v4;
  v15 = &v6[v14];
  if (v14)
  {
    v16 = 8 * v14;
    v13 = v6;
    while (*v13)
    {
      ++v13;
      v16 -= 8;
      if (!v16)
      {
        v13 = &v6[v14];
        goto LABEL_18;
      }
    }
  }

  if (v13 != v15)
  {
    v17 = v13 + 1;
    if (v13 + 1 != v15)
    {
      v18 = &v6[v14] - v13 - 8;
      do
      {
        if (*v17)
        {
          *v13++ = *v17;
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

LABEL_18:
  *(a2 + 2) = (v13 - v6) >> 3;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 104);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(a3 + 88);
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v5 + 16 * v6);
  if (v7 != a2)
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    v17 = a2;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v17);
    NodeForBlock = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, v15[2], a3);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode(a3, a2, NodeForBlock);
  }

LABEL_3:
  if (v6 == v4)
  {
    goto LABEL_11;
  }

  v8 = *(v5 + 16 * v6 + 8);
  if (*(a3 + 32) <= v8)
  {
    goto LABEL_11;
  }

  v9 = *(*(a3 + 24) + 8 * v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  return v9;
}

void llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(int *a1, _DWORD *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 2;
    v5 = 4;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 1);
  }

  v7 = v6 + 14;
  v8 = 72 * v5;
  do
  {
    if ((*(v7 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v9 = *(v7 - 2);
      if (v7 != v9)
      {
        free(v9);
      }

      v10 = *(v7 - 6);
      if (v7 - 8 != v10)
      {
        free(v10);
      }
    }

    v7 += 18;
    v8 -= 72;
  }

  while (v8);
  v4 = *a1;
LABEL_13:
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (72 * a1[4]));
  }

  *a1 = v4 | 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5u)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v11 = a2[4];
    }

    *(a1 + 1) = llvm::allocate_buffer(8 * (v11 + 8 * v11), 8uLL);
    *(a1 + 2) = v11;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(a1, a2);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(unsigned int *result, _DWORD *a2)
{
  v2 = *result & 1;
  *result = *a2 & 0xFFFFFFFE | v2;
  result[1] = a2[1];
  v3 = (result + 2);
  if (v2)
  {
    v4 = (a2 + 2);
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *v3;
    v4 = (a2 + 2);
    if (*a2)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_12:
      v5 = 4;
      if (v3 == v4)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  v4 = *v4;
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = result[4];
  if (!v5)
  {
    return;
  }

  if (v3 != v4)
  {
LABEL_13:
    for (i = 0; ; i += 9)
    {
      v10 = v4[i];
      v3[i] = v10;
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_17;
      }

      v11 = &v3[i];
      v12 = &v3[i + 3];
      v3[i + 1] = v12;
      v13 = &v4[i];
      v3[i + 2] = 0x200000000;
      v14 = LODWORD(v4[i + 2]);
      if (v14)
      {
        break;
      }

LABEL_26:
      v16 = v11 + 7;
      v11[5] = (v11 + 7);
      v11[6] = 0x200000000;
      v17 = *(v13 + 12);
      if (!v17)
      {
        goto LABEL_17;
      }

      if (v17 < 3)
      {
        v9 = *(v13 + 12);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v11 + 5), v11 + 7, *(v13 + 12), 8);
        v9 = *(v13 + 12);
        if (!v9)
        {
          goto LABEL_16;
        }

        v16 = v11[5];
      }

      memcpy(v16, v13[5], 8 * v9);
LABEL_16:
      *(v11 + 12) = v17;
LABEL_17:
      if (!--v5)
      {
        return;
      }
    }

    if (v14 < 3)
    {
      v15 = LODWORD(v4[i + 2]);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v3[i + 1], &v3[i + 3], LODWORD(v4[i + 2]), 8);
      v15 = *(v13 + 4);
      if (!v15)
      {
LABEL_25:
        *(v11 + 4) = v14;
        goto LABEL_26;
      }

      v12 = v3[i + 1];
    }

    memcpy(v12, v13[1], 8 * v15);
    goto LABEL_25;
  }

LABEL_6:
  v6 = v3 + 7;
  do
  {
    v7 = *v4;
    *(v6 - 7) = *v4;
    if ((v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *(v6 - 6) = v6 - 4;
      *(v6 - 5) = 0x200000000;
      *(v6 - 2) = v6;
      *(v6 - 1) = 0x200000000;
    }

    v4 += 9;
    v6 += 9;
    --v5;
  }

  while (v5);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v33 = a2;
  v34 = a5;
  v32 = 0x4000000001;
  v28 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28) + 1) = a5;
  v11 = v32;
  while (v32)
  {
    v12 = v31 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v32) = v11 - 1;
    v28 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      v25 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v15 + 3), v15 + 5, v16 + 1, 4);
      v15 = v25;
      v16 = *(v25 + 8);
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 8);
      v17 = *(a1 + 8);
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v18 + 8), v13, &v28);
      v19 = v29;
      if (a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v13, &v28);
      v19 = v29;
      if (a6)
      {
LABEL_13:
        if (v19 >= 2)
        {
          v27 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v28, v28 + v19, &v27, 126 - 2 * __clz(v19), 1);
          v19 = v29;
        }
      }
    }

    v20 = v28;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          v24 = v32;
          if (v32 >= HIDWORD(v32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, &v33, v32 + 1, 16);
            v24 = v32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = (v31 + 16 * v24);
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v32) = v32 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v28;
    }

    if (v20 != &v30)
    {
      free(v20);
    }

LABEL_3:
    v11 = v32;
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return a3;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = a2 - v11;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:

              return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v10, a3);
            case 4:

              return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v10, a3);
            case 5:

              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v32 = *(a2 - 1);
            v33 = *v11;
            v34 = **a3;
            v35 = *(*a3 + 4);
            if (v35)
            {
              v36 = v35 - 1;
              v37 = (v35 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v38 = *(v34 + 16 * v37);
              if (v38 == v32)
              {
                v39 = *(v34 + 16 * v37 + 8);
LABEL_75:
                v47 = v36 & ((v33 >> 4) ^ (v33 >> 9));
                v48 = *(v34 + 16 * v47);
                if (v48 == v33)
                {
LABEL_76:
                  v35 = v47;
                }

                else
                {
                  v49 = 1;
                  while (v48 != -4096)
                  {
                    v50 = v47 + v49++;
                    v47 = v50 & v36;
                    v48 = *(v34 + 16 * v47);
                    if (v48 == v33)
                    {
                      goto LABEL_76;
                    }
                  }
                }

                goto LABEL_77;
              }

              v45 = 1;
              while (v38 != -4096)
              {
                v46 = v37 + v45++;
                v37 = v46 & v36;
                v38 = *(v34 + 16 * v37);
                if (v38 == v32)
                {
                  goto LABEL_73;
                }
              }
            }

            v37 = *(*a3 + 4);
LABEL_73:
            v39 = *(v34 + 16 * v37 + 8);
            if (v35)
            {
              v36 = v35 - 1;
              goto LABEL_75;
            }

LABEL_77:
            if (v39 < *(v34 + 16 * v35 + 8))
            {
              *v11 = v32;
              *(a2 - 1) = v33;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          if (a5)
          {

            return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }

          else
          {

            return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v40 = (v12 - 2) >> 1;
            v41 = v40 + 1;
            v42 = &v11[v40];
            do
            {
              std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12, v42--);
              --v41;
            }

            while (v41);
            do
            {
              while (1)
              {
                v44 = *v11;
                result = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12);
                if (v10 == result)
                {
                  break;
                }

                *result = *v10;
                *v10-- = v44;
                result = std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, result + 8, a3, (result + 8 - v11) >> 3);
                v43 = v12-- <= 2;
                if (v43)
                {
                  return result;
                }
              }

              *result = v44;
              --v10;
              v43 = v12-- <= 2;
            }

            while (!v43);
          }

          return result;
        }

        if (v12 >= 0x81)
        {
          break;
        }

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v12 >> 1], v11, v10, a3);
        --a4;
        if (a5)
        {
          goto LABEL_29;
        }

LABEL_16:
        v15 = *v11;
        v16 = **a3;
        v17 = *(*a3 + 4);
        if (v17)
        {
          v18 = *(v11 - 1);
          v19 = v17 - 1;
          v20 = (v17 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v21 = *(v16 + 16 * v20);
          if (v21 == v18)
          {
            v22 = *(v16 + 16 * v20 + 8);
            goto LABEL_26;
          }

          v23 = 1;
          while (v21 != -4096)
          {
            v24 = v20 + v23++;
            v20 = v24 & v19;
            v21 = *(v16 + 16 * v20);
            if (v21 == v18)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = *(*a3 + 4);
LABEL_24:
        v22 = *(v16 + 16 * v20 + 8);
        if (v17)
        {
          v19 = v17 - 1;
LABEL_26:
          v25 = v19 & ((v15 >> 4) ^ (v15 >> 9));
          v26 = *(v16 + 16 * v25);
          if (v26 == v15)
          {
LABEL_27:
            v17 = v25;
          }

          else
          {
            v30 = 1;
            while (v26 != -4096)
            {
              v31 = v25 + v30++;
              v25 = v31 & v19;
              v26 = *(v16 + 16 * v25);
              if (v26 == v15)
              {
                goto LABEL_27;
              }
            }
          }
        }

        if (v22 < *(v16 + 16 * v17 + 8))
        {
          goto LABEL_29;
        }

        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
        v11 = result;
        a5 = 0;
      }

      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, &v11[v12 >> 1], v10, a3);
      v13 = v12 >> 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 1, &v11[v13 - 1], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 2, &v11[v13 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v13 - 1], &v11[v13], &v11[v13 + 1], a3);
      v14 = *v11;
      *v11 = v11[v13];
      v11[v13] = v14;
      v10 = a2 - 1;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, v27, a3);
      v11 = v27 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v27 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_32:
        result = std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v27 + 1;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(*a4 + 4);
  v8 = *a2 >> 4;
  v9 = *a1 >> 4;
  if (v7)
  {
    v10 = v7 - 1;
    v11 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v12 = *(v6 + 16 * v11);
    if (v12 == v4)
    {
      v13 = *(v6 + 16 * v11 + 8);
      v14 = v10 & (v9 ^ (v5 >> 9));
      v15 = *(v6 + 16 * v14);
      if (v15 == v5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v30 = 1;
    while (v12 != -4096)
    {
      v31 = v11 + v30++;
      v11 = v31 & v10;
      v12 = *(v6 + 16 * v11);
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = *(*a4 + 4);
LABEL_22:
  v13 = *(v6 + 16 * v11 + 8);
  if (!v7)
  {
    goto LABEL_28;
  }

  v10 = v7 - 1;
  v14 = (v7 - 1) & (v9 ^ (v5 >> 9));
  v15 = *(v6 + 16 * v14);
  if (v15 == v5)
  {
LABEL_4:
    v16 = *(v6 + 16 * v14 + 8);
    v17 = *a3;
    if (v13 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  v32 = 1;
  while (v15 != -4096)
  {
    v33 = v14 + v32++;
    v14 = v33 & v10;
    v15 = *(v6 + 16 * v14);
    if (v15 == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  v14 = v7;
LABEL_29:
  v34 = *(v6 + 16 * v14 + 8);
  v17 = *a3;
  if (v13 < v34)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    v10 = v7 - 1;
LABEL_5:
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
    v19 = *(v6 + 16 * v18);
    if (v19 == v17)
    {
      v20 = *(v6 + 16 * v18 + 8);
      v21 = v10 & (v8 ^ (v4 >> 9));
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
LABEL_7:
        if (v20 < *(v6 + 16 * v21 + 8))
        {
LABEL_8:
          *a1 = v17;
          goto LABEL_15;
        }

        *a1 = v4;
        *a2 = v5;
        v23 = *a3;
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v46 = 1;
    while (v19 != -4096)
    {
      v47 = v18 + v46++;
      v18 = v47 & v10;
      v19 = *(v6 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    v18 = v7;
LABEL_46:
    v20 = *(v6 + 16 * v18 + 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v10 = v7 - 1;
    v21 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v22 = *(v6 + 16 * v21);
    if (v22 == v4)
    {
      goto LABEL_7;
    }

LABEL_48:
    v48 = 1;
    while (v22 != -4096)
    {
      v49 = v21 + v48++;
      v21 = v49 & v10;
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    if (v20 < *(v6 + 16 * v21 + 8))
    {
      goto LABEL_8;
    }

    *a1 = v4;
    *a2 = v5;
    v23 = *a3;
    if (!v7)
    {
      goto LABEL_72;
    }

    v10 = v7 - 1;
LABEL_10:
    v24 = ((v23 >> 4) ^ (v23 >> 9)) & v10;
    v25 = *(v6 + 16 * v24);
    if (v25 == v23)
    {
      v26 = *(v6 + 16 * v24 + 8);
      v27 = v10 & (v9 ^ (v5 >> 9));
      v28 = *(v6 + 16 * v27);
      if (v28 == v5)
      {
LABEL_12:
        v7 = v27;
LABEL_13:
        if (v26 >= *(v6 + 16 * v7 + 8))
        {
          return 1;
        }

        *a2 = v23;
LABEL_15:
        *a3 = v5;
        return 1;
      }

LABEL_75:
      v56 = 1;
      while (v28 != -4096)
      {
        v57 = v27 + v56++;
        v27 = v57 & v10;
        v28 = *(v6 + 16 * v27);
        if (v28 == v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    v54 = 1;
    while (v25 != -4096)
    {
      v55 = v24 + v54++;
      v24 = v55 & v10;
      v25 = *(v6 + 16 * v24);
      if (v25 == v23)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v24 = v7;
LABEL_73:
    v26 = *(v6 + 16 * v24 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = v7 - 1;
    v27 = (v7 - 1) & (v9 ^ (v5 >> 9));
    v28 = *(v6 + 16 * v27);
    if (v28 == v5)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v10 = v7 - 1;
LABEL_34:
  v35 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
  v36 = *(v6 + 16 * v35);
  if (v36 == v17)
  {
    v37 = *(v6 + 16 * v35 + 8);
    v38 = v10 & (v8 ^ (v4 >> 9));
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v50 = 1;
  while (v36 != -4096)
  {
    v51 = v35 + v50++;
    v35 = v51 & v10;
    v36 = *(v6 + 16 * v35);
    if (v36 == v17)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v35 = v7;
LABEL_61:
  v37 = *(v6 + 16 * v35 + 8);
  if (!v7)
  {
    goto LABEL_67;
  }

  v10 = v7 - 1;
  v38 = (v7 - 1) & (v8 ^ (v4 >> 9));
  v39 = *(v6 + 16 * v38);
  if (v39 == v4)
  {
    goto LABEL_36;
  }

LABEL_63:
  v52 = 1;
  while (v39 != -4096)
  {
    v53 = v38 + v52++;
    v38 = v53 & v10;
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }
  }

LABEL_67:
  v38 = v7;
LABEL_36:
  if (v37 >= *(v6 + 16 * v38 + 8))
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v4;
  v40 = *a2;
  v41 = *a1;
  if (v7)
  {
    v42 = v7 - 1;
    v43 = ((v40 >> 4) ^ (v40 >> 9)) & (v7 - 1);
    v44 = *(v6 + 16 * v43);
    if (v44 == v40)
    {
      v45 = *(v6 + 16 * v43 + 8);
      goto LABEL_86;
    }

    v58 = 1;
    while (v44 != -4096)
    {
      v59 = v43 + v58++;
      v43 = v59 & v42;
      v44 = *(v6 + 16 * v43);
      if (v44 == v40)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = v7;
LABEL_84:
  v45 = *(v6 + 16 * v43 + 8);
  if (!v7)
  {
    goto LABEL_88;
  }

  v42 = v7 - 1;
LABEL_86:
  v60 = ((v41 >> 4) ^ (v41 >> 9)) & v42;
  v61 = *(v6 + 16 * v60);
  if (v61 == v41)
  {
LABEL_87:
    v7 = v60;
  }

  else
  {
    v62 = 1;
    while (v61 != -4096)
    {
      v63 = v60 + v62++;
      v60 = v63 & v42;
      v61 = *(v6 + 16 * v60);
      if (v61 == v41)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_88:
  if (v45 >= *(v6 + 16 * v7 + 8))
  {
    return 1;
  }

  *a1 = v40;
  *a2 = v41;
  return 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *(*a5 + 4);
  if (v14)
  {
    v15 = v14 - 1;
    v16 = (v14 - 1) & ((v11 >> 4) ^ (v11 >> 9));
    v17 = *(v13 + 16 * v16);
    if (v17 == v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v13 + 16 * v16);
      if (v17 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v13 + 16 * v16 + 8);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
LABEL_11:
  v21 = v15 & ((v12 >> 4) ^ (v12 >> 9));
  v22 = *(v13 + 16 * v21);
  if (v22 == v12)
  {
    goto LABEL_12;
  }

  v29 = 1;
  while (v22 != -4096)
  {
    v30 = v21 + v29++;
    v21 = v30 & v15;
    v22 = *(v13 + 16 * v21);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v21 = *(*a5 + 4);
LABEL_12:
  if (v18 >= *(v13 + 16 * v21 + 8))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v12;
  v23 = *a3;
  v24 = *a2;
  if (v14)
  {
    v25 = v14 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v14 - 1);
    v27 = *(v13 + 16 * v26);
    if (v27 == v23)
    {
      v28 = *(v13 + 16 * v26 + 8);
      goto LABEL_28;
    }

    v31 = 1;
    while (v27 != -4096)
    {
      v32 = v26 + v31++;
      v26 = v32 & v25;
      v27 = *(v13 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }
  }

  v26 = v14;
LABEL_26:
  v28 = *(v13 + 16 * v26 + 8);
  if (!v14)
  {
    goto LABEL_37;
  }

  v25 = v14 - 1;
LABEL_28:
  v33 = ((v24 >> 4) ^ (v24 >> 9)) & v25;
  v34 = *(v13 + 16 * v33);
  if (v34 == v24)
  {
    goto LABEL_29;
  }

  v41 = 1;
  while (v34 != -4096)
  {
    v42 = v33 + v41++;
    v33 = v42 & v25;
    v34 = *(v13 + 16 * v33);
    if (v34 == v24)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v33 = v14;
LABEL_29:
  if (v28 >= *(v13 + 16 * v33 + 8))
  {
    return result;
  }

  *a2 = v23;
  *a3 = v24;
  v35 = *a2;
  v36 = *a1;
  if (v14)
  {
    v37 = v14 - 1;
    v38 = ((v35 >> 4) ^ (v35 >> 9)) & (v14 - 1);
    v39 = *(v13 + 16 * v38);
    if (v39 == v35)
    {
      v40 = *(v13 + 16 * v38 + 8);
      goto LABEL_45;
    }

    v43 = 1;
    while (v39 != -4096)
    {
      v44 = v38 + v43++;
      v38 = v44 & v37;
      v39 = *(v13 + 16 * v38);
      if (v39 == v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = v14;
LABEL_43:
  v40 = *(v13 + 16 * v38 + 8);
  if (!v14)
  {
    goto LABEL_47;
  }

  v37 = v14 - 1;
LABEL_45:
  v45 = ((v36 >> 4) ^ (v36 >> 9)) & v37;
  v46 = *(v13 + 16 * v45);
  if (v46 == v36)
  {
LABEL_46:
    v14 = v45;
  }

  else
  {
    v47 = 1;
    while (v46 != -4096)
    {
      v48 = v45 + v47++;
      v45 = v48 & v37;
      v46 = *(v13 + 16 * v45);
      if (v46 == v36)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if (v40 < *(v13 + 16 * v14 + 8))
  {
    *a1 = v35;
    *a2 = v36;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *(*a6 + 4);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = (v16 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v19 = *(v15 + 16 * v18);
    if (v19 == v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v15 + 16 * v18);
      if (v19 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v15 + 16 * v18 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16 - 1;
LABEL_11:
  v23 = v17 & ((v14 >> 4) ^ (v14 >> 9));
  v24 = *(v15 + 16 * v23);
  if (v24 == v14)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v24 != -4096)
  {
    v32 = v23 + v31++;
    v23 = v32 & v17;
    v24 = *(v15 + 16 * v23);
    if (v24 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v23 = *(*a6 + 4);
LABEL_12:
  if (v20 >= *(v15 + 16 * v23 + 8))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v14;
  v25 = *a4;
  v26 = *a3;
  if (v16)
  {
    v27 = v16 - 1;
    v28 = ((v25 >> 4) ^ (v25 >> 9)) & (v16 - 1);
    v29 = *(v15 + 16 * v28);
    if (v29 == v25)
    {
      v30 = *(v15 + 16 * v28 + 8);
      goto LABEL_28;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v15 + 16 * v28);
      if (v29 == v25)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = v16;
LABEL_26:
  v30 = *(v15 + 16 * v28 + 8);
  if (!v16)
  {
    goto LABEL_37;
  }

  v27 = v16 - 1;
LABEL_28:
  v35 = ((v26 >> 4) ^ (v26 >> 9)) & v27;
  v36 = *(v15 + 16 * v35);
  if (v36 == v26)
  {
    goto LABEL_29;
  }

  v43 = 1;
  while (v36 != -4096)
  {
    v44 = v35 + v43++;
    v35 = v44 & v27;
    v36 = *(v15 + 16 * v35);
    if (v36 == v26)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v35 = v16;
LABEL_29:
  if (v30 >= *(v15 + 16 * v35 + 8))
  {
    return result;
  }

  *a3 = v25;
  *a4 = v26;
  v37 = *a3;
  v38 = *a2;
  if (v16)
  {
    v39 = v16 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v16 - 1);
    v41 = *(v15 + 16 * v40);
    if (v41 == v37)
    {
      v42 = *(v15 + 16 * v40 + 8);
      goto LABEL_45;
    }

    v45 = 1;
    while (v41 != -4096)
    {
      v46 = v40 + v45++;
      v40 = v46 & v39;
      v41 = *(v15 + 16 * v40);
      if (v41 == v37)
      {
        goto LABEL_43;
      }
    }
  }

  v40 = v16;
LABEL_43:
  v42 = *(v15 + 16 * v40 + 8);
  if (!v16)
  {
    goto LABEL_54;
  }

  v39 = v16 - 1;
LABEL_45:
  v47 = ((v38 >> 4) ^ (v38 >> 9)) & v39;
  v48 = *(v15 + 16 * v47);
  if (v48 == v38)
  {
    goto LABEL_46;
  }

  v55 = 1;
  while (v48 != -4096)
  {
    v56 = v47 + v55++;
    v47 = v56 & v39;
    v48 = *(v15 + 16 * v47);
    if (v48 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  v47 = v16;
LABEL_46:
  if (v42 >= *(v15 + 16 * v47 + 8))
  {
    return result;
  }

  *a2 = v37;
  *a3 = v38;
  v49 = *a2;
  v50 = *a1;
  if (v16)
  {
    v51 = v16 - 1;
    v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v16 - 1);
    v53 = *(v15 + 16 * v52);
    if (v53 == v49)
    {
      v54 = *(v15 + 16 * v52 + 8);
      goto LABEL_62;
    }

    v57 = 1;
    while (v53 != -4096)
    {
      v58 = v52 + v57++;
      v52 = v58 & v51;
      v53 = *(v15 + 16 * v52);
      if (v53 == v49)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = v16;
LABEL_60:
  v54 = *(v15 + 16 * v52 + 8);
  if (!v16)
  {
    goto LABEL_64;
  }

  v51 = v16 - 1;
LABEL_62:
  v59 = ((v50 >> 4) ^ (v50 >> 9)) & v51;
  v60 = *(v15 + 16 * v59);
  if (v60 == v50)
  {
LABEL_63:
    v16 = v59;
  }

  else
  {
    v61 = 1;
    while (v60 != -4096)
    {
      v62 = v59 + v61++;
      v59 = v62 & v51;
      v60 = *(v15 + 16 * v59);
      if (v60 == v50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  if (v54 < *(v15 + 16 * v16 + 8))
  {
    *a1 = v49;
    *a2 = v50;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      v8 = result;
      do
      {
        v10 = v3;
        v12 = *v8;
        v11 = v8[1];
        v13 = v11 >> 4;
        if (v5)
        {
          v14 = v6 & (v13 ^ (v11 >> 9));
          v15 = *(v4 + 16 * v14);
          if (v15 != v11)
          {
            v33 = 1;
            while (v15 != -4096)
            {
              v34 = v14 + v33++;
              v14 = v34 & v6;
              v15 = *(v4 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_9;
              }
            }

            v14 = v5;
          }

LABEL_9:
          v16 = *(v4 + 16 * v14 + 8);
          v17 = v6 & ((v12 >> 4) ^ (v12 >> 9));
          v18 = *(v4 + 16 * v17);
          if (v18 != v12)
          {
            v19 = 1;
            while (v18 != -4096)
            {
              v20 = v17 + v19++;
              v17 = v20 & v6;
              v18 = *(v4 + 16 * v17);
              if (v18 == v12)
              {
                goto LABEL_15;
              }
            }

            if (v16 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_6;
            }

LABEL_16:
            v21 = v6 & (v13 ^ (v11 >> 9));
            v22 = (v4 + 16 * v21);
            v9 = v10;
            while (1)
            {
              *v9 = v12;
              if (v8 == result)
              {
                break;
              }

              v9 = v8;
              v25 = *--v8;
              v12 = v25;
              if (v5)
              {
                v26 = *v22;
                v27 = v21;
                if (*v22 != v11)
                {
                  v31 = 1;
                  LODWORD(v27) = v21;
                  while (v26 != -4096)
                  {
                    v32 = v27 + v31++;
                    v27 = v32 & v6;
                    v26 = *(v4 + 16 * v27);
                    if (v26 == v11)
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v5;
                }

LABEL_22:
                v24 = *(v4 + 16 * v27 + 8);
                v23 = ((v12 >> 4) ^ (v12 >> 9)) & v6;
                v28 = *(v4 + 16 * v23);
                if (v28 != v12)
                {
                  v29 = 1;
                  while (v28 != -4096)
                  {
                    v30 = v23 + v29++;
                    v23 = v30 & v6;
                    v28 = *(v4 + 16 * v23);
                    if (v28 == v12)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = v5;
                }
              }

              else
              {
                v23 = 0;
                v24 = *(v7 + 8);
              }

LABEL_18:
              if (v24 >= *(v4 + 16 * v23 + 8))
              {
                goto LABEL_5;
              }
            }

            v9 = result;
LABEL_5:
            *v9 = v11;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = 0;
          v16 = *(v7 + 8);
        }

LABEL_15:
        if (v16 < *(v4 + 16 * v17 + 8))
        {
          goto LABEL_16;
        }

LABEL_6:
        v3 = v10 + 1;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      do
      {
        v8 = v3;
        v10 = *result;
        v9 = result[1];
        v11 = v9 >> 4;
        if (v5)
        {
          v12 = v6 & (v11 ^ (v9 >> 9));
          v13 = *(v4 + 16 * v12);
          if (v13 != v9)
          {
            v32 = 1;
            while (v13 != -4096)
            {
              v33 = v12 + v32++;
              v12 = v33 & v6;
              v13 = *(v4 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_8;
              }
            }

            v12 = v5;
          }

LABEL_8:
          v14 = *(v4 + 16 * v12 + 8);
          v15 = v6 & ((v10 >> 4) ^ (v10 >> 9));
          v16 = *(v4 + 16 * v15);
          if (v16 != v10)
          {
            v17 = 1;
            while (v16 != -4096)
            {
              v18 = v15 + v17++;
              v15 = v18 & v6;
              v16 = *(v4 + 16 * v15);
              if (v16 == v10)
              {
                goto LABEL_14;
              }
            }

            if (v14 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_5;
            }

LABEL_15:
            v19 = v6 & (v11 ^ (v9 >> 9));
            v20 = (v4 + 16 * v19);
            v21 = v8;
            do
            {
              *v21 = v10;
              v21 = result;
              v24 = *--result;
              v10 = v24;
              if (v5)
              {
                v25 = *v20;
                v26 = v19;
                if (*v20 != v9)
                {
                  v30 = 1;
                  LODWORD(v26) = v19;
                  while (v25 != -4096)
                  {
                    v31 = v26 + v30++;
                    v26 = v31 & v6;
                    v25 = *(v4 + 16 * v26);
                    if (v25 == v9)
                    {
                      goto LABEL_20;
                    }
                  }

                  v26 = v5;
                }

LABEL_20:
                v23 = *(v4 + 16 * v26 + 8);
                v22 = ((v10 >> 4) ^ (v10 >> 9)) & v6;
                v27 = *(v4 + 16 * v22);
                if (v27 != v10)
                {
                  v28 = 1;
                  while (v27 != -4096)
                  {
                    v29 = v22 + v28++;
                    v22 = v29 & v6;
                    v27 = *(v4 + 16 * v22);
                    if (v27 == v10)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v5;
                }
              }

              else
              {
                v22 = 0;
                v23 = *(v7 + 8);
              }

LABEL_17:
              ;
            }

            while (v23 < *(v4 + 16 * v22 + 8));
            *v21 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0;
          v14 = *(v7 + 8);
        }

LABEL_14:
        if (v14 < *(v4 + 16 * v15 + 8))
        {
          goto LABEL_15;
        }

LABEL_5:
        v3 = v8 + 1;
        result = v8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(*a3 + 4);
  v7 = *a1 >> 4;
  if (v6)
  {
    v8 = v6 - 1;
    v9 = (v6 - 1) & (v7 ^ (v3 >> 9));
    v10 = *(v5 + 16 * v9);
    if (v10 == v3)
    {
      v11 = *(v5 + 16 * v9 + 8);
      goto LABEL_11;
    }

    v12 = 1;
    while (v10 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = *(*a3 + 4);
LABEL_9:
  v11 = *(v5 + 16 * v9 + 8);
  if (!v6)
  {
    goto LABEL_107;
  }

  v8 = v6 - 1;
LABEL_11:
  v14 = v8 & ((v4 >> 4) ^ (v4 >> 9));
  v15 = *(v5 + 16 * v14);
  if (v15 == v4)
  {
    goto LABEL_12;
  }

  v81 = 1;
  while (v15 != -4096)
  {
    v82 = v14 + v81++;
    v14 = v82 & v8;
    v15 = *(v5 + 16 * v14);
    if (v15 == v4)
    {
      goto LABEL_12;
    }
  }

LABEL_107:
  v14 = *(*a3 + 4);
LABEL_12:
  v16 = *(v5 + 16 * v14 + 8);
  v17 = v6 - 1;
  v18 = (v6 - 1) & (v7 ^ (v3 >> 9));
  v19 = (v5 + 16 * v18);
  v20 = v5 + 16 * v6;
  v21 = a1;
  if (v11 < v16)
  {
    do
    {
      v25 = v21[1];
      ++v21;
      v24 = v25;
      if (v6)
      {
        v26 = *v19;
        v27 = (v19 + 1);
        if (*v19 != v3)
        {
          v31 = 1;
          LODWORD(v32) = v18;
          while (v26 != -4096)
          {
            v33 = v32 + v31++;
            v32 = v33 & v17;
            v26 = *(v5 + 16 * v32);
            if (v26 == v3)
            {
              goto LABEL_29;
            }
          }

          v32 = v6;
LABEL_29:
          v27 = (v5 + 16 * v32 + 8);
        }

        v23 = *v27;
        v22 = ((v24 >> 4) ^ (v24 >> 9)) & v17;
        v28 = *(v5 + 16 * v22);
        if (v28 != v24)
        {
          v29 = 1;
          while (v28 != -4096)
          {
            v30 = v22 + v29++;
            v22 = v30 & v17;
            v28 = *(v5 + 16 * v22);
            if (v28 == v24)
            {
              goto LABEL_15;
            }
          }

          v22 = v6;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v20 + 8);
      }

LABEL_15:
      ;
    }

    while (v23 >= *(v5 + 16 * v22 + 8));
  }

  else
  {
    do
    {
      if (++v21 >= a2)
      {
        break;
      }

      if (v6)
      {
        v36 = *v19;
        v37 = (v19 + 1);
        if (*v19 != v3)
        {
          v41 = 1;
          LODWORD(v42) = v18;
          while (v36 != -4096)
          {
            v43 = v42 + v41++;
            v42 = v43 & v17;
            v36 = *(v5 + 16 * v42);
            if (v36 == v3)
            {
              goto LABEL_46;
            }
          }

          v42 = v6;
LABEL_46:
          v37 = (v5 + 16 * v42 + 8);
        }

        v35 = *v37;
        v34 = ((*v21 >> 4) ^ (*v21 >> 9)) & v17;
        v38 = *(v5 + 16 * v34);
        if (v38 != *v21)
        {
          v39 = 1;
          while (v38 != -4096)
          {
            v40 = v34 + v39++;
            v34 = v40 & v17;
            v38 = *(v5 + 16 * v34);
            if (v38 == *v21)
            {
              goto LABEL_31;
            }
          }

          v34 = v6;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v20 + 8);
      }

LABEL_31:
      ;
    }

    while (v35 >= *(v5 + 16 * v34 + 8));
  }

  if (v21 < a2)
  {
    do
    {
      v71 = *--a2;
      v70 = v71;
      if (v6)
      {
        v72 = *v19;
        v73 = (v19 + 1);
        if (*v19 != v3)
        {
          v77 = 1;
          LODWORD(v78) = v18;
          while (v72 != -4096)
          {
            v79 = v78 + v77++;
            v78 = v79 & v17;
            v72 = *(v5 + 16 * v78);
            if (v72 == v3)
            {
              goto LABEL_99;
            }
          }

          v78 = v6;
LABEL_99:
          v73 = (v5 + 16 * v78 + 8);
        }

        v69 = *v73;
        v68 = ((v70 >> 4) ^ (v70 >> 9)) & v17;
        v74 = *(v5 + 16 * v68);
        if (v74 != v70)
        {
          v75 = 1;
          while (v74 != -4096)
          {
            v76 = v68 + v75++;
            v68 = v76 & v17;
            v74 = *(v5 + 16 * v68);
            if (v74 == v70)
            {
              goto LABEL_85;
            }
          }

          v68 = v6;
        }
      }

      else
      {
        v68 = 0;
        v69 = *(v20 + 8);
      }

LABEL_85:
      ;
    }

    while (v69 < *(v5 + 16 * v68 + 8));
  }

  if (v21 < a2)
  {
    v44 = *v21;
    v45 = *a2;
    do
    {
      *v21 = v45;
      *a2 = v44;
      do
      {
        v48 = v21[1];
        ++v21;
        v44 = v48;
        if (v6)
        {
          v49 = *v19;
          v50 = (v19 + 1);
          if (*v19 != v3)
          {
            v54 = 1;
            LODWORD(v55) = v18;
            while (v49 != -4096)
            {
              v56 = v55 + v54++;
              v55 = v56 & v17;
              v49 = *(v5 + 16 * v55);
              if (v49 == v3)
              {
                goto LABEL_67;
              }
            }

            v55 = v6;
LABEL_67:
            v50 = (v5 + 16 * v55 + 8);
          }

          v47 = *v50;
          v46 = ((v44 >> 4) ^ (v44 >> 9)) & v17;
          v51 = *(v5 + 16 * v46);
          if (v51 != v44)
          {
            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v46 + v52++;
              v46 = v53 & v17;
              v51 = *(v5 + 16 * v46);
              if (v51 == v44)
              {
                goto LABEL_53;
              }
            }

            v46 = v6;
          }
        }

        else
        {
          v46 = 0;
          v47 = *(v20 + 8);
        }

LABEL_53:
        ;
      }

      while (v47 >= *(v5 + 16 * v46 + 8));
      do
      {
        v59 = *--a2;
        v45 = v59;
        if (v6)
        {
          v60 = *v19;
          v61 = (v19 + 1);
          if (*v19 != v3)
          {
            v65 = 1;
            LODWORD(v66) = v18;
            while (v60 != -4096)
            {
              v67 = v66 + v65++;
              v66 = v67 & v17;
              v60 = *(v5 + 16 * v66);
              if (v60 == v3)
              {
                goto LABEL_83;
              }
            }

            v66 = v6;
LABEL_83:
            v61 = (v5 + 16 * v66 + 8);
          }

          v58 = *v61;
          v57 = ((v45 >> 4) ^ (v45 >> 9)) & v17;
          v62 = *(v5 + 16 * v57);
          if (v62 != v45)
          {
            v63 = 1;
            while (v62 != -4096)
            {
              v64 = v57 + v63++;
              v57 = v64 & v17;
              v62 = *(v5 + 16 * v57);
              if (v62 == v45)
              {
                goto LABEL_69;
              }
            }

            v57 = v6;
          }
        }

        else
        {
          v57 = 0;
          v58 = *(v20 + 8);
        }

LABEL_69:
        ;
      }

      while (v58 < *(v5 + 16 * v57 + 8));
    }

    while (v21 < a2);
  }

  if (v21 - 1 != a1)
  {
    *a1 = *(v21 - 1);
  }

  *(v21 - 1) = v3;
  return v21;
}

void *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(void *a1, void *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(*a3 + 4);
  v6 = v5 - 1;
  v7 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
  v8 = (v4 + 16 * v7);
  v9 = v4 + 16 * v5;
  v10 = a1;
  do
  {
    v13 = v10;
    v15 = v10[1];
    ++v10;
    v14 = v15;
    if (v5)
    {
      v16 = v6 & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v4 + 16 * v16);
      if (v17 != v14)
      {
        v19 = 1;
        while (v17 != -4096)
        {
          v20 = v16 + v19++;
          v16 = v20 & v6;
          v17 = *(v4 + 16 * v16);
          if (v17 == v14)
          {
            goto LABEL_6;
          }
        }

        v16 = v5;
      }

LABEL_6:
      v12 = *(v4 + 16 * v16 + 8);
      v18 = *v8;
      if (*v8 == v3)
      {
        v11 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
      }

      else
      {
        v21 = 1;
        LODWORD(v11) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        while (v18 != -4096)
        {
          v22 = v11 + v21++;
          v11 = v22 & v6;
          v18 = *(v4 + 16 * v11);
          if (v18 == v3)
          {
            goto LABEL_3;
          }
        }

        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v9 + 8);
    }

LABEL_3:
    ;
  }

  while (v12 < *(v4 + 16 * v11 + 8));
  if (v13 == a1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v37 = *--a2;
      v36 = v37;
      if (v5)
      {
        v38 = ((v36 >> 4) ^ (v36 >> 9)) & v6;
        v39 = *(v4 + 16 * v38);
        if (v39 != v36)
        {
          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v6;
            v39 = *(v4 + 16 * v38);
            if (v39 == v36)
            {
              goto LABEL_41;
            }
          }

          v38 = v5;
        }

LABEL_41:
        v35 = *(v4 + 16 * v38 + 8);
        v40 = *v8;
        if (*v8 == v3)
        {
          v34 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v43 = 1;
          LODWORD(v34) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v40 != -4096)
          {
            v44 = v34 + v43++;
            v34 = v44 & v6;
            v40 = *(v4 + 16 * v34);
            if (v40 == v3)
            {
              goto LABEL_37;
            }
          }

          v34 = v5;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v9 + 8);
      }

LABEL_37:
      ;
    }

    while (v35 >= *(v4 + 16 * v34 + 8));
  }

  else
  {
    do
    {
      v26 = *--a2;
      v25 = v26;
      if (v5)
      {
        v27 = ((v25 >> 4) ^ (v25 >> 9)) & v6;
        v28 = *(v4 + 16 * v27);
        if (v28 != v25)
        {
          v30 = 1;
          while (v28 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v6;
            v28 = *(v4 + 16 * v27);
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          v27 = v5;
        }

LABEL_24:
        v24 = *(v4 + 16 * v27 + 8);
        v29 = *v8;
        if (*v8 == v3)
        {
          v23 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v32 = 1;
          LODWORD(v23) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v29 != -4096)
          {
            v33 = v23 + v32++;
            v23 = v33 & v6;
            v29 = *(v4 + 16 * v23);
            if (v29 == v3)
            {
              goto LABEL_21;
            }
          }

          v23 = v5;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v9 + 8);
      }

LABEL_21:
      ;
    }

    while (v24 >= *(v4 + 16 * v23 + 8));
  }

  if (v10 < a2)
  {
    v45 = *a2;
    v46 = v10;
    v47 = a2;
    do
    {
      *v46 = v45;
      *v47 = v14;
      do
      {
        v13 = v46;
        v50 = v46[1];
        ++v46;
        v14 = v50;
        if (v5)
        {
          v51 = ((v14 >> 4) ^ (v14 >> 9)) & v6;
          v52 = *(v4 + 16 * v51);
          if (v52 != v14)
          {
            v54 = 1;
            while (v52 != -4096)
            {
              v55 = v51 + v54++;
              v51 = v55 & v6;
              v52 = *(v4 + 16 * v51);
              if (v52 == v14)
              {
                goto LABEL_61;
              }
            }

            v51 = v5;
          }

LABEL_61:
          v49 = *(v4 + 16 * v51 + 8);
          v53 = *v8;
          if (*v8 == v3)
          {
            v48 = v7;
          }

          else
          {
            v56 = 1;
            LODWORD(v48) = v7;
            while (v53 != -4096)
            {
              v57 = v48 + v56++;
              v48 = v57 & v6;
              v53 = *(v4 + 16 * v48);
              if (v53 == v3)
              {
                goto LABEL_58;
              }
            }

            v48 = v5;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v9 + 8);
        }

LABEL_58:
        ;
      }

      while (v49 < *(v4 + 16 * v48 + 8));
      do
      {
        v60 = *--v47;
        v45 = v60;
        if (v5)
        {
          v61 = ((v45 >> 4) ^ (v45 >> 9)) & v6;
          v62 = *(v4 + 16 * v61);
          if (v62 != v45)
          {
            v64 = 1;
            while (v62 != -4096)
            {
              v65 = v61 + v64++;
              v61 = v65 & v6;
              v62 = *(v4 + 16 * v61);
              if (v62 == v45)
              {
                goto LABEL_77;
              }
            }

            v61 = v5;
          }

LABEL_77:
          v59 = *(v4 + 16 * v61 + 8);
          v63 = *v8;
          if (*v8 == v3)
          {
            v58 = v7;
          }

          else
          {
            v66 = 1;
            LODWORD(v58) = v7;
            while (v63 != -4096)
            {
              v67 = v58 + v66++;
              v58 = v67 & v6;
              v63 = *(v4 + 16 * v58);
              if (v63 == v3)
              {
                goto LABEL_74;
              }
            }

            v58 = v5;
          }
        }

        else
        {
          v58 = 0;
          v59 = *(v9 + 8);
        }

LABEL_74:
        ;
      }

      while (v59 >= *(v4 + 16 * v58 + 8));
    }

    while (v46 < v47);
  }

  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v3;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = *(*a3 + 4);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
        v11 = *(v7 + 16 * v10);
        if (v11 == v5)
        {
          v12 = *(v7 + 16 * v10 + 8);
          goto LABEL_59;
        }

        v48 = 1;
        while (v11 != -4096)
        {
          v49 = v10 + v48++;
          v10 = v49 & v9;
          v11 = *(v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = *(*a3 + 4);
LABEL_57:
      v12 = *(v7 + 16 * v10 + 8);
      if (!v8)
      {
        goto LABEL_61;
      }

      v9 = v8 - 1;
LABEL_59:
      v50 = v9 & ((v6 >> 4) ^ (v6 >> 9));
      v51 = *(v7 + 16 * v50);
      if (v51 == v6)
      {
LABEL_60:
        v8 = v50;
      }

      else
      {
        v52 = 1;
        while (v51 != -4096)
        {
          v53 = v50 + v52++;
          v50 = v53 & v9;
          v51 = *(v7 + 16 * v50);
          if (v51 == v6)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v12 < *(v7 + 16 * v8 + 8))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v18 = 0;
    v19 = **a3;
    v20 = *(*a3 + 4);
    v21 = v20 - 1;
    v22 = v19 + 16 * v20;
    while (1)
    {
      v24 = *v17;
      v25 = *v14;
      v26 = *v17 >> 4;
      if (!v20)
      {
        break;
      }

      v27 = v21 & (v26 ^ (v24 >> 9));
      v28 = *(v19 + 16 * v27);
      if (v28 != v24)
      {
        v46 = 1;
        while (v28 != -4096)
        {
          v47 = v27 + v46++;
          v27 = v47 & v21;
          v28 = *(v19 + 16 * v27);
          if (v28 == v24)
          {
            goto LABEL_19;
          }
        }

        v27 = v20;
      }

LABEL_19:
      v29 = *(v19 + 16 * v27 + 8);
      v30 = v21 & ((v25 >> 4) ^ (v25 >> 9));
      v31 = *(v19 + 16 * v30);
      if (v31 == v25)
      {
        goto LABEL_25;
      }

      v32 = 1;
      while (v31 != -4096)
      {
        v33 = v30 + v32++;
        v30 = v33 & v21;
        v31 = *(v19 + 16 * v30);
        if (v31 == v25)
        {
          goto LABEL_25;
        }
      }

      if (v29 >= *(v19 + 16 * v20 + 8))
      {
        goto LABEL_16;
      }

LABEL_26:
      v34 = v21 & (v26 ^ (v24 >> 9));
      v35 = (v19 + 16 * v34);
      v23 = v17;
      while (1)
      {
        *v23 = v25;
        if (v14 == a1)
        {
          break;
        }

        v23 = v14;
        v38 = *--v14;
        v25 = v38;
        if (v20)
        {
          v39 = *v35;
          v40 = v34;
          if (*v35 != v24)
          {
            v44 = 1;
            LODWORD(v40) = v34;
            while (v39 != -4096)
            {
              v45 = v40 + v44++;
              v40 = v45 & v21;
              v39 = *(v19 + 16 * v40);
              if (v39 == v24)
              {
                goto LABEL_32;
              }
            }

            v40 = v20;
          }

LABEL_32:
          v37 = *(v19 + 16 * v40 + 8);
          v36 = ((v25 >> 4) ^ (v25 >> 9)) & v21;
          v41 = *(v19 + 16 * v36);
          if (v41 != v25)
          {
            v42 = 1;
            while (v41 != -4096)
            {
              v43 = v36 + v42++;
              v36 = v43 & v21;
              v41 = *(v19 + 16 * v36);
              if (v41 == v25)
              {
                goto LABEL_28;
              }
            }

            v36 = v20;
          }
        }

        else
        {
          v36 = 0;
          v37 = *(v22 + 8);
        }

LABEL_28:
        if (v37 >= *(v19 + 16 * v36 + 8))
        {
          goto LABEL_15;
        }
      }

      v23 = a1;
LABEL_15:
      *v23 = v24;
      if (++v18 == 8)
      {
        return v17 + 1 == a2;
      }

LABEL_16:
      v14 = v17++;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v30 = 0;
    v29 = *(v22 + 8);
LABEL_25:
    if (v29 >= *(v19 + 16 * v30 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  return 1;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      v10 = **a2;
      if (v8 >= a3)
      {
        LODWORD(v9) = *(v9 + 4);
        v16 = *v7;
        v17 = *a4;
        v18 = *a4 >> 4;
        if (!v9)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v11 = v7[1];
      v9 = *(v9 + 4);
      if (v9)
      {
        v12 = v9 - 1;
        v13 = (v9 - 1) & ((*v7 >> 4) ^ (*v7 >> 9));
        v14 = *(v10 + 16 * v13);
        if (v14 == *v7)
        {
          v15 = *(v10 + 16 * v13 + 8);
          goto LABEL_16;
        }

        v19 = 1;
        while (v14 != -4096)
        {
          v20 = v13 + v19++;
          v13 = v20 & v12;
          v14 = *(v10 + 16 * v13);
          if (v14 == *v7)
          {
            goto LABEL_14;
          }
        }
      }

      v13 = v9;
LABEL_14:
      v15 = *(v10 + 16 * v13 + 8);
      if (!v9)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
LABEL_16:
      v21 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v22 = *(v10 + 16 * v21);
      if (v22 == v11)
      {
        goto LABEL_17;
      }

      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & v12;
        v22 = *(v10 + 16 * v21);
        if (v22 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_80:
      v21 = v9;
LABEL_17:
      if (v15 < *(v10 + 16 * v21 + 8))
      {
        ++v7;
        v6 = v8;
      }

      v16 = *v7;
      v17 = *a4;
      v18 = *a4 >> 4;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_20:
      v23 = v9 - 1;
      v24 = (v9 - 1) & ((v16 >> 4) ^ (v16 >> 9));
      v25 = *(v10 + 16 * v24);
      if (v25 == v16)
      {
        v26 = *(v10 + 16 * v24 + 8);
        v27 = v23 & (v18 ^ (v17 >> 9));
        v28 = *(v10 + 16 * v27);
        if (v28 != v17)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v29 = 1;
      while (v25 != -4096)
      {
        v30 = v24 + v29++;
        v24 = v30 & v23;
        v25 = *(v10 + 16 * v24);
        if (v25 == v16)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v24 = v9;
LABEL_28:
      v26 = *(v10 + 16 * v24 + 8);
      if (!v9)
      {
        goto LABEL_34;
      }

      v23 = v9 - 1;
      v27 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v28 = *(v10 + 16 * v27);
      if (v28 != v17)
      {
LABEL_30:
        v31 = 1;
        while (v28 != -4096)
        {
          v32 = v27 + v31++;
          v27 = v32 & v23;
          v28 = *(v10 + 16 * v27);
          if (v28 == v17)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        v27 = v9;
      }

LABEL_35:
      if (v26 < *(v10 + 16 * v27 + 8))
      {
        return result;
      }

      v33 = v9 - 1;
      v34 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v35 = (v10 + 16 * v34);
      v36 = v10 + 16 * v9;
      while (1)
      {
        v40 = v7;
        *a4 = v16;
        if (v4 < v6)
        {
LABEL_74:
          *v40 = v17;
          return result;
        }

        v41 = (2 * v6) | 1;
        v7 = (result + 8 * v41);
        v6 = 2 * v6 + 2;
        if (v6 >= a3)
        {
          v6 = v41;
          v16 = *v7;
          if (v9)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v7[1];
          if (v9)
          {
            v43 = ((*v7 >> 4) ^ (*v7 >> 9)) & v33;
            v44 = *(v10 + 16 * v43);
            if (v44 != *v7)
            {
              v57 = 1;
              while (v44 != -4096)
              {
                v58 = v43 + v57++;
                v43 = v58 & v33;
                v44 = *(v10 + 16 * v43);
                if (v44 == *v7)
                {
                  goto LABEL_43;
                }
              }

              v43 = v9;
            }

LABEL_43:
            v45 = *(v10 + 16 * v43 + 8);
            v46 = ((v42 >> 4) ^ (v42 >> 9)) & v33;
            v47 = *(v10 + 16 * v46);
            if (v47 != v42)
            {
              v48 = 1;
              while (v47 != -4096)
              {
                v49 = v46 + v48++;
                v46 = v49 & v33;
                v47 = *(v10 + 16 * v46);
                if (v47 == v42)
                {
                  goto LABEL_51;
                }
              }

              v46 = v9;
            }
          }

          else
          {
            v46 = 0;
            v45 = *(v36 + 8);
          }

LABEL_51:
          if (v45 >= *(v10 + 16 * v46 + 8))
          {
            v6 = v41;
          }

          else
          {
            ++v7;
          }

          v16 = *v7;
          if (v9)
          {
LABEL_55:
            v50 = ((v16 >> 4) ^ (v16 >> 9)) & v33;
            v51 = *(v10 + 16 * v50);
            if (v51 != v16)
            {
              v53 = 1;
              while (v51 != -4096)
              {
                v54 = v50 + v53++;
                v50 = v54 & v33;
                v51 = *(v10 + 16 * v50);
                if (v51 == v16)
                {
                  goto LABEL_56;
                }
              }

              v50 = v9;
            }

LABEL_56:
            v38 = *(v10 + 16 * v50 + 8);
            v52 = *v35;
            if (*v35 == v17)
            {
              v37 = v34;
            }

            else
            {
              v55 = 1;
              LODWORD(v37) = v34;
              while (v52 != -4096)
              {
                v56 = v37 + v55++;
                v37 = v56 & v33;
                v52 = *(v10 + 16 * v37);
                if (v52 == v17)
                {
                  goto LABEL_38;
                }
              }

              v37 = v9;
            }

            goto LABEL_38;
          }
        }

        v37 = 0;
        v38 = *(v36 + 8);
LABEL_38:
        v39 = *(v10 + 16 * v37 + 8);
        a4 = v40;
        if (v38 < v39)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return result;
}